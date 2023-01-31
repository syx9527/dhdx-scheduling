<template>
  <div class="app-container">
    <el-row :gutter="20">
      <!--部门数据-->
      <el-col :span="4" :xs="24">
        <div class="head-container">
          <el-input
            v-model="deptName"
            placeholder="请输入部门名称"
            clearable
            size="small"
            prefix-icon="el-icon-search"
            style="margin-bottom: 20px"
          />
        </div>
        <div class="head-container">
          <el-tree
            :data="deptOptions"
            :props="defaultProps"
            :expand-on-click-node="false"
            :filter-node-method="filterNode"
            ref="tree"
            node-key="id"
            default-expand-all
            highlight-current
            @node-click="handleNodeClick"
          />
        </div>
      </el-col>

      <!--值班记录数据-->
      <el-col :span="20" :xs="24">
        <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch"
                 label-width="68px"
        >

          <el-form-item label="部门名称" prop="deptName">
            <el-input
              v-model="queryParams.deptName"
              placeholder="请输入部门名称"
              clearable
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="值班开始时间">
            <el-date-picker
              v-model="daterangeStartTime"
              style="width: 240px"
              value-format="yyyy-MM-dd"
              type="daterange"
              range-separator="-"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
            ></el-date-picker>
          </el-form-item>
          <el-form-item label="值班结束时间">
            <el-date-picker
              v-model="daterangeEndTime"
              style="width: 240px"
              value-format="yyyy-MM-dd"
              type="daterange"
              range-separator="-"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
            ></el-date-picker>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
            <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
          </el-form-item>
        </el-form>

        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button
              type="primary"
              plain
              icon="el-icon-plus"
              size="mini"
              @click="handleAdd"
              v-hasPermi="['duty:duty_log:add']"
            >新增
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="success"
              plain
              icon="el-icon-edit"
              size="mini"
              :disabled="single"
              @click="handleUpdate"
              v-hasPermi="['duty:duty_log:edit']"
            >修改
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="danger"
              plain
              icon="el-icon-delete"
              size="mini"
              :disabled="multiple"
              @click="handleDelete"
              v-hasPermi="['duty:duty_log:remove']"
            >删除
            </el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button
              type="warning"
              plain
              icon="el-icon-download"
              size="mini"
              @click="handleExport"
              v-hasPermi="['duty:duty_log:export']"
            >导出
            </el-button>
          </el-col>
          <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
        </el-row>

        <el-table v-loading="loading" :data="duty_logList" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55" align="center"/>
          <!--      <el-table-column label="值班日志主键" align="center" prop="logId" />-->
          <!--      <el-table-column label="值班类型id" align="center" prop="dutyId" />-->
          <el-table-column label="值班类型名称" align="center" prop="duty.dutyType"/>
          <!--      <el-table-column label="值班人员ID" align="center" prop="userId" />-->
          <el-table-column label="值班人员姓名" align="center" prop="user.nickName"/>
          <!--      <el-table-column label="部门id" align="center" prop="deptId" />-->
          <el-table-column label="部门名称" align="center" prop="dept.deptName"/>
          <el-table-column label="值班开始时间" align="center" prop="startTime" width="180">
            <template slot-scope="scope">
              <span>{{ parseTime(scope.row.startTime, '{y}-{m}-{d}') }}</span>
            </template>
          </el-table-column>
          <el-table-column label="值班结束时间" align="center" prop="endTime" width="180">
            <template slot-scope="scope">
              <span>{{ parseTime(scope.row.endTime, '{y}-{m}-{d}') }}</span>
            </template>
          </el-table-column>
          <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
            <template slot-scope="scope">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit"
                @click="handleUpdate(scope.row)"
                v-hasPermi="['duty:duty_log:edit']"
              >修改
              </el-button>
              <el-button
                size="mini"
                type="text"
                icon="el-icon-delete"
                @click="handleDelete(scope.row)"
                v-hasPermi="['duty:duty_log:remove']"
              >删除
              </el-button>
            </template>
          </el-table-column>
        </el-table>

        <pagination
          v-show="total>0"
          :total="total"
          :page.sync="queryParams.pageNum"
          :limit.sync="queryParams.pageSize"
          @pagination="getList"
        />
      </el-col>
    </el-row>

    <!-- 添加或修改值班记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">


        <el-form-item label="归属部门" prop="deptId">
          <treeselect v-model="form.deptId" :options="deptOptions" :show-count="true" placeholder="请选择归属部门"
                      @select="getUserList "
          />
        </el-form-item>

        <el-form-item label="类型">
          <el-select v-model="form.dutyId" placeholder="请选择值班类型">
            <el-option
              v-for="item in dutyOptions"
              :key="item.dutyId"
              :label="item.dutyType"
              :value="item.dutyId"
              :disabled="item.status == 1 "

            ></el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="用户">
          <el-select v-model="form.userId" placeholder="请选择用户">
            <el-option
              v-for="item in userOptions"
              :key="item.userId"
              :label="item.nickName"
              :value="item.userId"
              :disabled="item.status == 1 || item.admin == true"

            ></el-option>
          </el-select>
        </el-form-item>


        <el-form-item label="值班开始时间" prop="startTime">
          <el-date-picker clearable
                          v-model="form.startTime"
                          type="date"
                          value-format="yyyy-MM-dd"
                          placeholder="请选择值班开始时间"
          >
          </el-date-picker>
        </el-form-item>

        <el-form-item label="值班结束时间" prop="endTime">
          <el-date-picker clearable
                          v-model="form.endTime"
                          type="date"
                          value-format="yyyy-MM-dd"
                          placeholder="请选择值班结束时间"
          >
          </el-date-picker>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listDuty_log, getDuty_log, delDuty_log, addDuty_log, updateDuty_log } from '@/api/duty/duty_log'
import {
  listUser,
  getUser,
  delUser,
  addUser,
  updateUser,
  resetUserPwd,
  changeUserStatus,
  deptTreeSelect
} from '@/api/system/user'
import { getToken } from '@/utils/auth'
import Treeselect from '@riophae/vue-treeselect'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'
import { listDuty } from '@/api/duty/duty'

export default {
  name: 'Duty_log',
  components: { Treeselect },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 值班记录表格数据
      duty_logList: [],
      // 弹出层标题
      title: '',

      // 部门名称
      deptName: undefined,

      // 部门树选项
      deptOptions: undefined,
      // 部门树选中的点
      deptCheckedNode: undefined,
      // 用户选项
      userOptions: [],
      // 值班类型选项
      dutyOptions: [],

      // 是否显示弹出层
      open: false,
      // 值班结束时间时间范围
      daterangeStartTime: [],
      // 值班结束时间时间范围
      daterangeEndTime: [],

      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        logId: null,
        dutyId: null,
        dutyName: null,
        userId: null,
        userName: null,
        deptId: null,
        deptName: null,
        startTime: null,
        endTime: null
      },
      defaultProps: {
        children: 'children',
        label: 'label'
      },

      // 临时查询参数
      queryParamsTemp: {

        deptId: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        dutyId: [
          { required: true, message: '值班类型不能为空', trigger: 'change' }
        ],
        deptId: [
          { required: false, message: '部门不能为空', trigger: 'blur' }
        ],
        userId: [
          { required: true, message: '用户不能为空', trigger: 'blur' }
        ],
        startTime: [
          { required: true, message: '值班开始时间不能为空', trigger: 'blur' }
        ],
        endTime: [
          { required: true, message: '值班结束时间不能为空', trigger: 'blur' }
        ]
      }
    }
  },
  watch: {
    // 根据名称筛选部门树
    deptName(val) {
      this.$refs.tree.filter(val)

    }
  },
  created() {
    this.getList()
    this.getDeptTree()
    this.getListDuty()

  },
  methods: {
    /** 查询值班类型列表 */
    getListDuty() {

      listDuty({

        pageNum: 1,
        pageSize: 1000

      }).then(response => {
        this.dutyOptions = response.rows
      })
    },

    /** 点击部门节点后查询用户列表 */
    getUserList(data) {
      this.queryParamsTemp = {
        deptId: data.id,
        pageNum: 1,
        pageSize: 1000,
        isadmin: false
      }
      if (this.form.deptId !== data.id) {
        delete this.form.userId

      }
      listUser(this.queryParamsTemp).then(response => {
          this.userOptions = response.rows
        }
      )
    },
    /** 查询值班记录列表 */
    getList() {
      this.loading = true
      this.queryParams.params = {}
      if (null != this.daterangeStartTime && '' != this.daterangeStartTime) {
        this.queryParams.params['beginStartTime'] = this.daterangeStartTime[0]
        this.queryParams.params['endStartTime'] = this.daterangeStartTime[1]
      }
      if (null != this.daterangeEndTime && '' != this.daterangeEndTime) {
        this.queryParams.params['beginEndTime'] = this.daterangeEndTime[0]
        this.queryParams.params['endEndTime'] = this.daterangeEndTime[1]
      }
      listDuty_log(this.queryParams).then(response => {
        this.duty_logList = response.rows
        this.total = response.total
        this.loading = false
      })
    },
    /** 查询部门下拉树结构 */
    getDeptTree() {
      deptTreeSelect().then(response => {
        this.deptOptions = response.data
      })
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
    },
    // 表单重置
    reset() {
      this.form = {
        logId: null,
        dutyId: null,
        dutyName: null,
        userId: null,
        userName: null,
        deptId: null,
        deptName: null,
        startTime: null,
        endTime: null

      }
      this.userOptions = []
      // this.deptOptions = []
      this.resetForm('form')
    },
    // 筛选节点
    filterNode(value, data) {
      if (!value) return true
      return data.label.indexOf(value) !== -1
    },
    // 节点单击事件
    handleNodeClick(data) {
      this.queryParams.deptId = data.id
      this.handleQuery()
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1
      this.getList()
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.daterangeStartTime = []
      this.daterangeEndTime = []
      this.resetForm('queryForm')
      this.handleQuery()
      this.getDeptTree()
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.logId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {

      this.reset()
      this.getListDuty()
      this.open = true
      this.title = '添加值班记录'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      this.form = {}
      const logId = row.logId || this.ids
      getDuty_log(logId).then(response => {
        let res
        res = response.data

        this.getUserList(res.deptId)

        this.form.deptId = res.deptId
        this.form.userId = res.userId

        this.form.logId = res.logId
        this.form.dutyId = res.dutyId
        this.form.startTime = res.startTime
        this.form.endTime = res.endTime

        this.open = true
        this.title = '修改值班记录'
      })
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.logId != null) {
            updateDuty_log(this.form).then(response => {
              this.$modal.msgSuccess('修改成功')
              this.open = false
              this.getList()
            })
          } else {
            addDuty_log(this.form).then(response => {
              this.$modal.msgSuccess('新增成功')
              this.open = false
              this.getList()
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const logIds = row.logId || this.ids
      this.$modal.confirm('是否确认删除值班记录编号为"' + logIds + '"的数据项？').then(function() {
        return delDuty_log(logIds)
      }).then(() => {
        this.getList()
        this.$modal.msgSuccess('删除成功')
      }).catch(() => {
      })
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('duty/duty_log/export', {
        ...this.queryParams
      }, `duty_log_${new Date().getTime()}.xlsx`)
    }
  }
}
</script>
