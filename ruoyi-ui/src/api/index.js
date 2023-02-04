import request from '@/utils/request'

/// 查询首页
export function listDuty_log_index() {
  return request({
    url: '/duty/duty_log/list/index',
    method: 'get',
  })
}
