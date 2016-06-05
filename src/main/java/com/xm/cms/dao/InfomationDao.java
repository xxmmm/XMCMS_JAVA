package com.xm.cms.dao;

import com.xm.cms.entity.Infomation;

public interface InfomationDao {
    int deleteByPrimaryKey(Long memberid);

    int insert(Infomation record);

    int insertSelective(Infomation record);

    Infomation selectByPrimaryKey(Long memberid);

    int updateByPrimaryKeySelective(Infomation record);

    int updateByPrimaryKey(Infomation record);
}