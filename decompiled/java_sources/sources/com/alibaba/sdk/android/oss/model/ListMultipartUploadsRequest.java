package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class ListMultipartUploadsRequest extends OSSRequest {

    /* renamed from: c */
    public String f13197c;

    /* renamed from: d */
    public String f13198d;

    /* renamed from: e */
    public String f13199e;

    /* renamed from: f */
    public Integer f13200f;

    /* renamed from: g */
    public String f13201g;

    /* renamed from: h */
    public String f13202h;

    /* renamed from: i */
    public String f13203i;

    public ListMultipartUploadsRequest(String str) {
        this.f13197c = str;
    }

    public String getBucketName() {
        return this.f13197c;
    }

    public String getDelimiter() {
        return this.f13198d;
    }

    public String getEncodingType() {
        return this.f13203i;
    }

    public String getKeyMarker() {
        return this.f13201g;
    }

    public Integer getMaxUploads() {
        return this.f13200f;
    }

    public String getPrefix() {
        return this.f13199e;
    }

    public String getUploadIdMarker() {
        return this.f13202h;
    }

    public void setDelimiter(String str) {
        this.f13198d = str;
    }

    public void setEncodingType(String str) {
        this.f13203i = str;
    }

    public void setKeyMarker(String str) {
        this.f13201g = str;
    }

    public void setMaxUploads(Integer num) {
        this.f13200f = num;
    }

    public void setPrefix(String str) {
        this.f13199e = str;
    }

    public void setUploadIdMarker(String str) {
        this.f13202h = str;
    }
}
