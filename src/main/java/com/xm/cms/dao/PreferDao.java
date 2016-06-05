package com.xm.cms.dao;

import com.xm.cms.entity.Prefer;

public interface PreferDao {
    int deleteByPrimaryKey(Long memberid);

    int insert(Prefer record);

    int insertSelective(Prefer record);

    Prefer selectByPrimaryKey(Long memberid);

    int updateByPrimaryKeySelective(Prefer record);

    int updateByPrimaryKey(Prefer record);
}