package com.sunia.commonv2.bean;

/* loaded from: classes10.dex */
public class TestBean {
    private ConfigBean configBean;
    private int index;
    private String pointFile;

    public TestBean(int i, ConfigBean configBean, String str) {
        this.index = i;
        this.configBean = configBean;
        this.pointFile = str;
    }

    public ConfigBean getConfigBean() {
        return this.configBean;
    }

    public int getIndex() {
        return this.index;
    }

    public String getPointFile() {
        return this.pointFile;
    }
}
