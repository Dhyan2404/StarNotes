package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import java.util.Map;

/* loaded from: classes3.dex */
public class ResumableDownloadRequest extends OSSRequest {

    /* renamed from: c */
    public String f13306c;

    /* renamed from: d */
    public String f13307d;

    /* renamed from: e */
    public Range f13308e;

    /* renamed from: f */
    public OSSProgressCallback f13309f;

    /* renamed from: g */
    public String f13310g;

    /* renamed from: h */
    public Boolean f13311h;

    /* renamed from: i */
    public String f13312i;

    /* renamed from: j */
    public long f13313j;

    /* renamed from: k */
    public Map<String, String> f13314k;

    public ResumableDownloadRequest(String str, String str2, String str3) {
        this.f13311h = Boolean.FALSE;
        this.f13313j = 262144L;
        this.f13306c = str;
        this.f13307d = str2;
        this.f13310g = str3;
    }

    public String getBucketName() {
        return this.f13306c;
    }

    public String getCheckPointFilePath() {
        return this.f13312i;
    }

    public String getDownloadToFilePath() {
        return this.f13310g;
    }

    public Boolean getEnableCheckPoint() {
        return this.f13311h;
    }

    public String getObjectKey() {
        return this.f13307d;
    }

    public long getPartSize() {
        return this.f13313j;
    }

    public OSSProgressCallback getProgressListener() {
        return this.f13309f;
    }

    public Range getRange() {
        return this.f13308e;
    }

    public Map<String, String> getRequestHeader() {
        return this.f13314k;
    }

    public String getTempFilePath() {
        return this.f13310g + ".tmp";
    }

    public void setBucketName(String str) {
        this.f13306c = str;
    }

    public void setCheckPointFilePath(String str) {
        this.f13312i = str;
    }

    public void setDownloadToFilePath(String str) {
        this.f13310g = str;
    }

    public void setEnableCheckPoint(Boolean bool) {
        this.f13311h = bool;
    }

    public void setObjectKey(String str) {
        this.f13307d = str;
    }

    public void setPartSize(long j) {
        this.f13313j = j;
    }

    public void setProgressListener(OSSProgressCallback oSSProgressCallback) {
        this.f13309f = oSSProgressCallback;
    }

    public void setRange(Range range) {
        this.f13308e = range;
    }

    public void setRequestHeader(Map<String, String> map) {
        this.f13314k = map;
    }

    public ResumableDownloadRequest(String str, String str2, String str3, String str4) {
        this.f13313j = 262144L;
        this.f13306c = str;
        this.f13307d = str2;
        this.f13310g = str3;
        this.f13311h = Boolean.TRUE;
        this.f13312i = str4;
    }
}
