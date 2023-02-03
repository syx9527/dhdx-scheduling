import request from '@/utils/request'

// 查询值班类型列表
export function listDuty(query) {
  return request({
    url: '/duty/duty/list',
    method: 'get',
    params: query
  })
}

// 查询值班类型详细
export function getDuty(dutyId) {
  return request({
    url: '/duty/duty/' + dutyId,
    method: 'get'
  })
}

// 新增值班类型
export function addDuty(data) {
  return request({
    url: '/duty/duty',
    method: 'post',
    data: data
  })
}

// 修改值班类型
export function updateDuty(data) {
  return request({
    url: '/duty/duty/put',
    method: 'post',
    data: data
  })
}

// 删除值班类型
export function delDuty(dutyId) {
  return request({
    url: '/duty/duty/' + dutyId+'/delete',
    method: 'post'
  })
}
