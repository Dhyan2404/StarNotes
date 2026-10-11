package com.sunia.commonv2.bean;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class ConfigBean {
    private String fileName;
    private String filePath;
    private String showName;

    public ConfigBean() {
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getShowName() {
        return this.showName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setShowName(String str) {
        this.showName = str;
    }

    public String toString() {
        return "ConfigBean{filePath='" + this.filePath + Chars.QUOTE + ", fileName='" + this.fileName + Chars.QUOTE + ", showName='" + this.showName + Chars.QUOTE + '}';
    }

    public ConfigBean(String str, String str2) {
        this(str, str2, str2);
    }

    public ConfigBean(String str, String str2, String str3) {
        this.filePath = str;
        this.fileName = str2;
        this.showName = str3;
    }
}
