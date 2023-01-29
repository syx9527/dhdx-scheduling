import request from '@/utils/request'

// 查询地址类型列表
export function listType(query) {
  return request({
    url: '/address/type/list',
    method: 'get',
    params: query
  })
}

// 查询地址类型详细
export function getType(addressTypeId) {
  return request({
    url: '/address/type/' + addressTypeId,
    method: 'get'
  })
}

// 新增地址类型
export function addType(data) {
  return request({
    url: '/address/type',
    method: 'post',
    data: data
  })
}

// 修改地址类型
export function updateType(data) {
  return request({
    url: '/address/type',
    method: 'put',
    data: data
  })
}

// 删除地址类型
export function delType(addressTypeId) {
  return request({
    url: '/address/type/' + addressTypeId,
    method: 'delete'
  })
}
