package com.xm.cms.entity;

import java.util.Date;

public class Prefer {
    private Long memberid;

    private Integer agemin;

    private Integer agemax;

    private Integer heightmin;

    private Integer heightmax;

    private String degree;

    private Integer income;

    private String occupation;

    private String country;

    private String province;

    private String city;

    private String district;

    private String bornprovince;

    private String borncity;

    private String nation;

    private Integer status;

    private Integer cretifications;

    private Boolean picture;

    private String folder;

    private Date createtime;

    public Long getMemberid() {
        return memberid;
    }

    public void setMemberid(Long memberid) {
        this.memberid = memberid;
    }

    public Integer getAgemin() {
        return agemin;
    }

    public void setAgemin(Integer agemin) {
        this.agemin = agemin;
    }

    public Integer getAgemax() {
        return agemax;
    }

    public void setAgemax(Integer agemax) {
        this.agemax = agemax;
    }

    public Integer getHeightmin() {
        return heightmin;
    }

    public void setHeightmin(Integer heightmin) {
        this.heightmin = heightmin;
    }

    public Integer getHeightmax() {
        return heightmax;
    }

    public void setHeightmax(Integer heightmax) {
        this.heightmax = heightmax;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree == null ? null : degree.trim();
    }

    public Integer getIncome() {
        return income;
    }

    public void setIncome(Integer income) {
        this.income = income;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation == null ? null : occupation.trim();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district == null ? null : district.trim();
    }

    public String getBornprovince() {
        return bornprovince;
    }

    public void setBornprovince(String bornprovince) {
        this.bornprovince = bornprovince == null ? null : bornprovince.trim();
    }

    public String getBorncity() {
        return borncity;
    }

    public void setBorncity(String borncity) {
        this.borncity = borncity == null ? null : borncity.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getCretifications() {
        return cretifications;
    }

    public void setCretifications(Integer cretifications) {
        this.cretifications = cretifications;
    }

    public Boolean getPicture() {
        return picture;
    }

    public void setPicture(Boolean picture) {
        this.picture = picture;
    }

    public String getFolder() {
        return folder;
    }

    public void setFolder(String folder) {
        this.folder = folder == null ? null : folder.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}