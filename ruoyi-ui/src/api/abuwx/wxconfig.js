import request from '@/utils/request'

// 查询小程序配置列表
export function listWxconfig(query) {
  return request({
    url: '/abuwx/wxconfig/list',
    method: 'get',
    params: query
  })
}

// 查询小程序配置详细
export function getWxconfig(id) {
  return request({
    url: '/abuwx/wxconfig/' + id,
    method: 'get'
  })
}

// 新增小程序配置
export function addWxconfig(data) {
  return request({
    url: '/abuwx/wxconfig',
    method: 'post',
    data: data
  })
}

// 修改小程序配置
export function updateWxconfig(data) {
  return request({
    url: '/abuwx/wxconfig',
    method: 'put',
    data: data
  })
}

// 删除小程序配置
export function delWxconfig(id) {
  return request({
    url: '/abuwx/wxconfig/' + id,
    method: 'delete'
  })
}
