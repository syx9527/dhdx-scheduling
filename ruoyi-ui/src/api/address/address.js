import request from '@/utils/request'

// 查询地址列表
export function listAddress(query) {
  return request({
    url: '/address/address/list',
    method: 'get',
    params: query
  })
}

// 查询地址详细
export function getAddress(addressId) {
  return request({
    url: '/address/address/' + addressId,
    method: 'get'
  })
}

// 新增地址
export function addAddress(data) {
  return request({
    url: '/address/address',
    method: 'post',
    data: data
  })
}

// 修改地址
export function updateAddress(data) {
  return request({
    url: '/address/address/put',
    method: 'post',
    data: data
  })
}

// 删除地址
export function delAddress(addressId) {
  return request({
    url: '/address/address/' + addressId+'/delete',
    method: 'post'
  })
}
