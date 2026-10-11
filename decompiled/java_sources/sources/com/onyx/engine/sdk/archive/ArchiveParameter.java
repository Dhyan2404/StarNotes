package com.onyx.engine.sdk.archive;

import com.onyx.engine.sdk.JsonUtils;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class ArchiveParameter {
    String outDir;
    String password;
    String path;

    public ArchiveParameter() {
    }

    public String getOutDir() {
        return this.outDir;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPath() {
        return this.path;
    }

    public ArchiveParameter setOutDir(String str) {
        this.outDir = str;
        return this;
    }

    public ArchiveParameter setPassword(String str) {
        this.password = str;
        return this;
    }

    public ArchiveParameter setPath(String str) {
        this.path = str;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }

    public String toString() {
        return "ArchiveParameter{path='" + this.path + Chars.QUOTE + ", password='" + this.password + Chars.QUOTE + ", outDir='" + this.outDir + Chars.QUOTE + '}';
    }

    public ArchiveParameter(String str) {
        this.path = str;
    }

    public ArchiveParameter(String str, String str2) {
        this.path = str;
        this.password = str2;
    }

    public ArchiveParameter(String str, String str2, String str3) {
        this.path = str;
        this.password = str2;
        this.outDir = str3;
    }
}
