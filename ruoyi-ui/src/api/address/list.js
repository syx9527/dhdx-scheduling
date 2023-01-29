import request from '@/utils/request'

// 查询地址-类型列表
export function listList(query) {
  return request({
    url: '/address/list/list',
    method: 'get',
    params: query
  })
}

// 查询地址-类型详细
export function getList(id) {
  return request({
    url: '/address/list/' + id,
    method: 'get'
  })
}

// 新增地址-类型
export function addList(data) {
  return request({
    url: '/address/list',
    method: 'post',
    data: data
  })
}

// 修改地址-类型
export function updateList(data) {
  return request({
    url: '/address/list',
    method: 'put',
    data: data
  })
}

// 删除地址-类型
export function delList(id) {
  return request({
    url: '/address/list/' + id,
    method: 'delete'
  })
}
