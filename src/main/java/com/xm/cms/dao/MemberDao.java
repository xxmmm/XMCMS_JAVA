package com.xm.cms.dao;

import com.xm.cms.entity.Member;

public interface MemberDao {
    int deleteByPrimaryKey(Long memberid);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Long memberid);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}