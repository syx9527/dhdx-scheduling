import request from '@/utils/request'

// 查询值班记录列表
export function listDuty_log(query) {
  return request({
    url: '/duty/duty_log/list',
    method: 'get',
    params: query
  })
}

// 查询值班记录详细
export function getDuty_log(logId) {
  return request({
    url: '/duty/duty_log/' + logId,
    method: 'get'
  })
}

// 新增值班记录
export function addDuty_log(data) {
  return request({
    url: '/duty/duty_log',
    method: 'post',
    data: data
  })
}

// 修改值班记录
export function updateDuty_log(data) {
  return request({
    url: '/duty/duty_log',
    method: 'put',
    data: data
  })
}

// 删除值班记录
export function delDuty_log(logId) {
  return request({
    url: '/duty/duty_log/' + logId,
    method: 'delete'
  })
}
