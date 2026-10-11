package com.alibaba.sdk.android.oss.model;

import android.net.Uri;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.callback.OSSRetryCallback;
import java.util.Map;

/* loaded from: classes3.dex */
public class PutObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13286c;

    /* renamed from: d */
    public String f13287d;

    /* renamed from: e */
    public String f13288e;

    /* renamed from: f */
    public byte[] f13289f;

    /* renamed from: g */
    public Uri f13290g;

    /* renamed from: h */
    public ObjectMetadata f13291h;

    /* renamed from: i */
    public Map<String, String> f13292i;

    /* renamed from: j */
    public Map<String, String> f13293j;

    /* renamed from: k */
    public OSSProgressCallback<PutObjectRequest> f13294k;

    /* renamed from: l */
    public OSSRetryCallback f13295l;

    public PutObjectRequest(String str, String str2, String str3) {
        this(str, str2, str3, (ObjectMetadata) null);
    }

    public String getBucketName() {
        return this.f13286c;
    }

    public Map<String, String> getCallbackParam() {
        return this.f13292i;
    }

    public Map<String, String> getCallbackVars() {
        return this.f13293j;
    }

    public ObjectMetadata getMetadata() {
        return this.f13291h;
    }

    public String getObjectKey() {
        return this.f13287d;
    }

    public OSSProgressCallback<PutObjectRequest> getProgressCallback() {
        return this.f13294k;
    }

    public OSSRetryCallback getRetryCallback() {
        return this.f13295l;
    }

    public byte[] getUploadData() {
        return this.f13289f;
    }

    public String getUploadFilePath() {
        return this.f13288e;
    }

    public Uri getUploadUri() {
        return this.f13290g;
    }

    public void setBucketName(String str) {
        this.f13286c = str;
    }

    public void setCallbackParam(Map<String, String> map) {
        this.f13292i = map;
    }

    public void setCallbackVars(Map<String, String> map) {
        this.f13293j = map;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13291h = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.f13287d = str;
    }

    public void setProgressCallback(OSSProgressCallback<PutObjectRequest> oSSProgressCallback) {
        this.f13294k = oSSProgressCallback;
    }

    public void setRetryCallback(OSSRetryCallback oSSRetryCallback) {
        this.f13295l = oSSRetryCallback;
    }

    public void setUploadData(byte[] bArr) {
        this.f13289f = bArr;
    }

    public void setUploadFilePath(String str) {
        this.f13288e = str;
    }

    public void setUploadUri(Uri uri) {
        this.f13290g = uri;
    }

    public PutObjectRequest(String str, String str2, String str3, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadFilePath(str3);
        setMetadata(objectMetadata);
    }

    public PutObjectRequest(String str, String str2, byte[] bArr) {
        this(str, str2, bArr, (ObjectMetadata) null);
    }

    public PutObjectRequest(String str, String str2, byte[] bArr, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadData(bArr);
        setMetadata(objectMetadata);
    }

    public PutObjectRequest(String str, String str2, Uri uri) {
        this(str, str2, uri, (ObjectMetadata) null);
    }

    public PutObjectRequest(String str, String str2, Uri uri, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadUri(uri);
        setMetadata(objectMetadata);
    }
}
