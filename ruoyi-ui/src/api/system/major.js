import request from '@/utils/request'

// 查询专业列表
export function listMajor(query) {
  return request({
    url: '/system/major/list',
    method: 'get',
    params: query
  })
}

// 专业状态修改
export function changeMajorStatus(majorId, status) {
  const data = {
    majorId,
    status
  }
  return request({
    url: '/system/major/changeStatus/put',
    method: 'post',
    data: data
  })
}

// 查询专业详细
export function getMajor(majorId) {
  return request({
    url: '/system/major/' + majorId,
    method: 'get'
  })
}

// 新增专业
export function addMajor(data) {
  return request({
    url: '/system/major',
    method: 'post',
    data: data
  })
}

// 修改专业
export function updateMajor(data) {
  return request({
    url: '/system/major/put',
    method: 'post',
    data: data
  })
}

// 删除专业
export function delMajor(majorId) {
  return request({
    url: '/system/major/' + majorId + '/delete',
    method: 'post'
  })
}

// 根据专业ID查询专业所属部门下用户列表
export function listUserByMajorId(query) {
  return request({
    url: '/system/user/list/majorId',
    method: 'get',
    params: query
  })
}
