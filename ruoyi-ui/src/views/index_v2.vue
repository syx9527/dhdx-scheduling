<template>
  <div class="app-container">


    <el-table
      :row-style="{height:'30px'}"
      :cell-style="{padding:'10px'}"
      style="font-size: 10px"
      :data="tableData"
      :span-method="objectSpanMethod"
      border

    >
      <el-table-column
        align="center"
        label="中国电信德宏分公司2023-02-02值班表"
      >

        <el-table-column
          align="center"
          label="序号"
          type="index"
          :index="indexMethod"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="deptName"
          label="部门"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="dutyLeaderName"
          label="值班领导"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="dutyLeaderPhone"
          label="值班领导联系电话"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="major"
          label="专业"
        >
        </el-table-column>

        <el-table-column
          align="center"
          prop="dutyUsername"
          label="值班人员"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="dutyUserPhone"
          label="值班人员联系电话"
        >
        </el-table-column>
        <el-table-column
          align="center"
          prop="remark"
          label="备注"
        >
        </el-table-column>


      </el-table-column>

    </el-table>
  </div>
</template>

<script>
import {listDuty_log_index} from "@/api";

export default {
  data() {
    return {
      tableData: [],
      tableDataTest: [
        {
          deptId: '',
          deptName: '网络部',
          dutyLeaderName: '网络部主任',
          dutyLeaderPhone: '13633941493',
          major: '城域网',
          dutyUsername: '张三',
          dutyUserPhone: '16240865016',
          remark: '这里是备注'
        }, {
          deptId: '',
          deptName: '网络部',
          dutyLeaderName: '网络部主任',
          dutyLeaderPhone: '13633941493',
          major: '城域网',
          dutyUsername: '李四',
          dutyUserPhone: '18360492443',
          remark: '这里是备注'
        }, {
          deptId: '',
          deptName: '网络部',
          dutyLeaderName: '网络部主任',
          dutyLeaderPhone: '13633941493',
          major: '无线',
          dutyUsername: '杨素',
          dutyUserPhone: '17922005870',
          remark: '这里是备注'
        }, {
          deptId: '',
          deptName: '云中台',
          dutyLeaderName: '云中台主任',
          dutyLeaderPhone: '14768182759',
          major: '政企支撑',
          dutyUsername: '张强',
          dutyUserPhone: '19473359436',
          remark: '这里是备注！！'
        }, {
          deptId: '',
          deptName: '云中台',
          dutyLeaderName: '云中台主任',
          dutyLeaderPhone: '14768182759',
          major: '政企装维',
          dutyUsername: '王二',
          dutyUserPhone: '17078089341',
          remark: '这里是备注--'
        }, {
          deptId: '',
          deptName: '政企客户部',
          dutyLeaderName: '政企客户部主任',
          dutyLeaderPhone: '13980947943',
          major: '-',
          dutyUsername: '刘毅',
          dutyUserPhone: '13275723430',
          remark: '这里是备注--'
        }, {
          deptId: '',
          deptName: '办公室',
          dutyLeaderName: '办公室主任',
          dutyLeaderPhone: '13986547943',
          major: '-',
          dutyUsername: '刘毅',
          dutyUserPhone: '13265478430',
          remark: '这里是备注--'
        }
      ],

      mergeObj: {},
      mergeArr: ['deptName', 'dutyLeaderName', 'dutyLeaderPhone', 'major', 'dutyUsername', 'dutyUserPhone']
    }
  },
  created() {
    this.initIndexData()

  },
  methods: {
    indexMethod(index) {
      return index + 1
    },
    initIndexData() {
      listDuty_log_index().then(response => {
        this.tableData = response.rows
        this.getSpanArr(this.tableData)

      })

    },

    getSpanArr(data) {
      this.mergeArr.forEach((key, index1) => {
        let count = 0 // 用来记录需要合并行的起始位置
        this.mergeObj[key] = [] // 记录每一列的合并信息
        data.forEach((item, index) => {
          // index == 0表示数据为第一行，直接 push 一个 1
          if (index === 0) {
            this.mergeObj[key].push(1)
          } else {
            // 判断当前行是否与上一行其值相等并且存在 如果相等 在 count 记录的位置其值 +1 表示当前行需要合并 并push 一个 0 作为占位
            if (item[key] === data[index - 1][key] && item["deptName"] === data[index - 1]["deptName"]) {
              this.mergeObj[key][count] += 1
              this.mergeObj[key].push(0)
            } else {
              // 如果当前行和上一行其值不相等
              count = index // 记录当前位置
              this.mergeObj[key].push(1) // 重新push 一个 1
            }
          }
        })
      })


    },
    // 默认接受四个值 { 当前行的值, 当前列的值, 行的下标, 列的下标 }
    objectSpanMethod({row, column, rowIndex, columnIndex}) {
      // 判断列的属性
      if (this.mergeArr.indexOf(column.property) !== -1) {
        // 判断其值是不是为0
        if (this.mergeObj[column.property][rowIndex]) {
          return [this.mergeObj[column.property][rowIndex], 1]
        } else {
          // 如果为0则为需要合并的行
          return [0, 0]
        }
      }
    }
  },

}
</script>
