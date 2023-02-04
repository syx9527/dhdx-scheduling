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
      <el-col :span="20" :xs="24">
        <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch"
                 label-width="68px"
        >
          <el-form-item label="专业名称" prop="majorName">
            <el-input
              v-model="queryParams.majorName"
              placeholder="请输入专业名称"
              clearable
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="部门" prop="deptName">
            <el-input
              v-model="queryParams.deptName"
              placeholder="请输入部门名称"
              clearable
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>

          <el-form-item label="状态" prop="status">
            <el-select
              v-model="queryParams.status"
              placeholder="状态"
              clearable
              style="width: 240px"
              @keyup.enter.native="handleQuery"
            >
              <el-option
                v-for="dict in dict.type.sys_normal_disable"
                :key="dict.value"
                :label="dict.label"
                :value="dict.value"
              />
            </el-select>
          </el-form-item>

          <!--          <el-form-item label="负责人" prop="leader">-->
          <!--            <el-input-->
          <!--              v-model="queryParams.leader"-->
          <!--              placeholder="请输入负责人"-->
          <!--              clearable-->
          <!--              @keyup.enter.native="handleQuery"-->
          <!--            />-->
          <!--          </el-form-item>-->
          <!--          <el-form-item label="联系电话" prop="phone">-->
          <!--            <el-input-->
          <!--              v-model="queryParams.phone"-->
          <!--              placeholder="请输入联系电话"-->
          <!--              clearable-->
          <!--              @keyup.enter.native="handleQuery"-->
          <!--            />-->
          <!--          </el-form-item>-->
          <!--          <el-form-item label="邮箱" prop="email">-->
          <!--            <el-input-->
          <!--              v-model="queryParams.email"-->
          <!--              placeholder="请输入邮箱"-->
          <!--              clearable-->
          <!--              @keyup.enter.native="handleQuery"-->
          <!--            />-->
          <!--          </el-form-item>-->
          <!--          <el-form-item label="备注" prop="remark">-->
          <!--            <el-input-->
          <!--              v-model="queryParams.remark"-->
          <!--              placeholder="请输入备注"-->
          <!--              clearable-->
          <!--              @keyup.enter.native="handleQuery"-->
          <!--            />-->
          <!--          </el-form-item>-->
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
              v-hasPermi="['system:major:add']"
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
              v-hasPermi="['system:major:edit']"
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
              v-hasPermi="['system:major:remove']"
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
              v-hasPermi="['system:major:export']"
            >导出
            </el-button>
          </el-col>
          <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
        </el-row>

        <el-table v-loading="loading" :data="majorList" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55" align="center"/>
          <el-table-column label="序号" align="center" type="index" :index="indexMethod"/>
          <el-table-column label="专业名称" align="center" prop="majorName"/>
          <el-table-column label="部门" align="center" prop="dept.deptName"/>
          <!--          <el-table-column label="显示顺序" align="center" prop="orderNum"/>-->
<!--          <el-table-column label="负责人" align="center" prop="leader"/>-->
<!--          <el-table-column label="联系电话" align="center" prop="phone"/>-->
<!--          <el-table-column label="邮箱" align="center" prop="email"/>-->
          <el-table-column label="状态" align="center" prop="status">
            <template slot-scope="scope">
              <el-switch
                v-model="scope.row.status"
                active-value="0"
                inactive-value="1"
                @change="changeMajorStatus(scope.row)"
              ></el-switch>
            </template>
          </el-table-column>
          <el-table-column label="备注" align="center" prop="remark"/>
          <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
            <template slot-scope="scope">
              <el-button
                size="mini"
                type="text"
                icon="el-icon-edit"
                @click="handleUpdate(scope.row)"
                v-hasPermi="['system:major:edit']"
              >修改
              </el-button>
              <el-button
                size="mini"
                type="text"
                icon="el-icon-delete"
                @click="handleDelete(scope.row)"
                v-hasPermi="['system:major:remove']"
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

    <!-- 添加或修改专业对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="600px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="专业名称" prop="majorName">
              <el-input v-model="form.majorName" placeholder="请输入专业名称"
                        clearable
                        @keyup.enter.native="submitForm"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="归属部门" prop="deptId">
              <treeselect v-model="form.deptId" :options="deptOptions" :show-count="true" placeholder="请选择归属部门"
                          clearable
                          @keyup.enter.native="submitForm"
              />
            </el-form-item>
          </el-col>

        </el-row>

        <!--        <el-form-item label="显示顺序" prop="orderNum">-->
        <!--          <el-input v-model="form.orderNum" placeholder="请输入显示顺序"/>-->
        <!--        </el-form-item>-->
        <el-row>
          <el-col :span="12">
            <el-form-item label="负责人" prop="leader">
              <el-input v-model="form.leader" placeholder="请输入负责人" clearable @keyup.enter.native="submitForm"/>

            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="联系电话" prop="phone">
              <el-input v-model="form.phone" placeholder="请输入联系电话" clearable @keyup.enter.native="submitForm"/>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="邮箱" prop="email">
              <el-input v-model="form.email" placeholder="请输入邮箱" clearable @keyup.enter.native="submitForm"/>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="备注" prop="remark">
              <el-input v-model="form.remark" placeholder="请输入备注" clearable @keyup.enter.native="submitForm"/>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listMajor, getMajor, delMajor, addMajor, updateMajor, changeMajorStatus } from '@/api/system/major'
import { changeUserStatus, deptTreeSelect } from '@/api/system/user'
import Treeselect from '@riophae/vue-treeselect'
import '@riophae/vue-treeselect/dist/vue-treeselect.css'

export default {
  name: 'Major',
  components: { Treeselect },
  dicts: ['sys_normal_disable'],
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
      // 专业表格数据
      majorList: [],
      // 弹出层标题
      title: '',
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        majorName: null,
        deptId: null,
        orderNum: null,
        leader: null,
        phone: null,
        email: null,
        status: null,
        remark: null
      },

      // 部门树选项
      deptOptions: undefined,
      // 部门名称
      deptName: undefined,

      // 表单参数
      form: {},
      defaultProps: {
        children: 'children',
        label: 'label'
      },
      // 表单校验
      rules: {
        majorName: [
          { required: true, message: '请输入专业名称', trigger: 'blur' }
        ], deptId: [
          { required: true, message: '请选择部门', trigger: 'changes' }
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
  },
  methods: {
    /** 表格序号 */
    indexMethod(index) {
      return index + 1
    },

    /** 查询专业列表 */
    getList() {
      this.loading = true
      listMajor(this.queryParams).then(response => {
        this.majorList = response.rows
        this.total = response.total
        this.loading = false
      })
    },
    // 用户状态修改
    changeMajorStatus(row) {
      let text = row.status === '0' ? '启用' : '停用'
      this.$modal.confirm('确认要"' + text + '""' + row.majorName + '"专业吗？').then(function() {
        return changeMajorStatus(row.majorId, row.status)
      }).then(() => {
        this.$modal.msgSuccess(text + '成功')
      }).catch(function() {
        row.status = row.status === '0' ? '1' : '0'
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
        majorId: null,
        majorName: null,
        deptId: null,
        deptName: null,
        orderNum: null,
        leader: null,
        phone: null,
        email: null,
        status: null,
        delFlag: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
      }
      this.resetForm('form')
    },

    /** 查询部门下拉树结构 */
    getDeptTree() {
      deptTreeSelect().then(response => {
        this.deptOptions = response.data
        console.log('deptOptions', this.deptOptions)
      })
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
      this.resetForm('queryForm')
      this.queryParams.deptId = undefined
      this.$refs.tree.setCurrentKey(null)
      this.handleQuery()
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.majorId)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset()

      this.form.deptId = this.deptOptions[0].id

      this.open = true
      this.title = '添加专业'
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      const majorId = row.majorId || this.ids
      getMajor(majorId).then(response => {
        this.form = response.data
        this.open = true
        this.title = '修改专业'
      })
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs['form'].validate(valid => {
        if (valid) {
          if (this.form.majorId != null) {
            updateMajor(this.form).then(response => {
              this.$modal.msgSuccess('修改成功')
              this.open = false
              this.form.deptId = null
              this.getList()
            })
          } else {
            addMajor(this.form).then(response => {
              this.$modal.msgSuccess('新增成功')
              this.open = false
              this.form.deptId = null
              this.getList()
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const majorIds = row.majorId || this.ids
      this.$modal.confirm('是否确认删除专业编号为"' + majorIds + '"的数据项？').then(function() {
        return delMajor(majorIds)
      }).then(() => {
        this.getList()
        this.$modal.msgSuccess('删除成功')
      }).catch(() => {
      })
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/major/export', {
        ...this.queryParams
      }, `major_${new Date().getTime()}.xlsx`)
    }
  }
}
</script>
