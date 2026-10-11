package com.sunia.commonv2.enum2;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public enum EEngineVersion {
    v521("5.2.1.310", "release5.2.1"),
    v522("5.2.1.201", "release5.2.2"),
    v523("5.2.1.201", "release5.2.3"),
    v524("5.2.4.201", "release5.2.4"),
    v531("5.3.1.201", "release5.3.1"),
    v541("5.4.1.201", "develop"),
    v551("5.5.1.200", "develop");

    private String gitBranch;
    private String versionName;

    EEngineVersion(String str, String str2) {
        this.versionName = str;
        this.gitBranch = str2;
    }

    public String getGitBranch() {
        return this.gitBranch;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public boolean isGreaterThanOrEqualV54() {
        return this.versionName.compareTo("5.4") >= 0;
    }

    public boolean isV52() {
        return this.versionName.startsWith("5.2");
    }

    public boolean isV53() {
        return this.versionName.startsWith("5.3");
    }

    public boolean isV54() {
        return this.versionName.startsWith("5.4");
    }

    public boolean isV55() {
        return this.versionName.startsWith("5.5");
    }

    public void setGitBranch(String str) {
        this.gitBranch = str;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EEngineVersion{versionName='" + this.versionName + Chars.QUOTE + ", gitBranch='" + this.gitBranch + Chars.QUOTE + '}';
    }
}
