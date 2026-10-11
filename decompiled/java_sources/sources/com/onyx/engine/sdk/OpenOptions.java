package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;

/* loaded from: classes8.dex */
public class OpenOptions {
    private String certificate;
    private ChapterScanOption chapterScanOption;
    private String charsetName;
    private String deviceId;

    @JSONField(deserialize = false, serialize = false)
    private DrmSDK drmCallback;
    private boolean isDictLookup = false;
    private String password;
    private String path;
    private String random;

    public OpenOptions(String str) {
        this.path = str;
    }

    public String getCertificate() {
        return this.certificate;
    }

    public ChapterScanOption getChapterScanOption() {
        return this.chapterScanOption;
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public DrmSDK getDrmCallback() {
        return this.drmCallback;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPath() {
        return this.path;
    }

    public String getRandom() {
        return this.random;
    }

    public boolean isDictLookup() {
        return this.isDictLookup;
    }

    public OpenOptions setCertificate(String str) {
        this.certificate = str;
        return this;
    }

    public OpenOptions setChapterScanOption(ChapterScanOption chapterScanOption) {
        this.chapterScanOption = chapterScanOption;
        return this;
    }

    public OpenOptions setCharsetName(String str) {
        this.charsetName = str;
        return this;
    }

    public OpenOptions setDeviceId(String str) {
        this.deviceId = str;
        return this;
    }

    public OpenOptions setDictLookup(boolean z) {
        this.isDictLookup = z;
        return this;
    }

    public OpenOptions setDrmCallback(DrmSDK drmSDK) {
        this.drmCallback = drmSDK;
        return this;
    }

    public OpenOptions setPassword(String str) {
        this.password = str;
        return this;
    }

    public OpenOptions setPath(String str) {
        this.path = str;
        return this;
    }

    public OpenOptions setRandom(String str) {
        this.random = str;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
