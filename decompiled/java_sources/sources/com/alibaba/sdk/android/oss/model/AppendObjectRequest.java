package com.alibaba.sdk.android.oss.model;

import android.net.Uri;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;

/* loaded from: classes3.dex */
public class AppendObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13077c;

    /* renamed from: d */
    public String f13078d;

    /* renamed from: e */
    public String f13079e;

    /* renamed from: f */
    public byte[] f13080f;

    /* renamed from: g */
    public Uri f13081g;

    /* renamed from: h */
    public ObjectMetadata f13082h;

    /* renamed from: i */
    public OSSProgressCallback<AppendObjectRequest> f13083i;

    /* renamed from: j */
    public long f13084j;

    /* renamed from: k */
    public Long f13085k;

    public AppendObjectRequest(String str, String str2, String str3) {
        this(str, str2, str3, (ObjectMetadata) null);
    }

    public String getBucketName() {
        return this.f13077c;
    }

    public Long getInitCRC64() {
        return this.f13085k;
    }

    public ObjectMetadata getMetadata() {
        return this.f13082h;
    }

    public String getObjectKey() {
        return this.f13078d;
    }

    public long getPosition() {
        return this.f13084j;
    }

    public OSSProgressCallback<AppendObjectRequest> getProgressCallback() {
        return this.f13083i;
    }

    public byte[] getUploadData() {
        return this.f13080f;
    }

    public String getUploadFilePath() {
        return this.f13079e;
    }

    public Uri getUploadUri() {
        return this.f13081g;
    }

    public void setBucketName(String str) {
        this.f13077c = str;
    }

    public void setInitCRC64(Long l) {
        this.f13085k = l;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13082h = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.f13078d = str;
    }

    public void setPosition(long j) {
        this.f13084j = j;
    }

    public void setProgressCallback(OSSProgressCallback<AppendObjectRequest> oSSProgressCallback) {
        this.f13083i = oSSProgressCallback;
    }

    public void setUploadData(byte[] bArr) {
        this.f13080f = bArr;
    }

    public void setUploadFilePath(String str) {
        this.f13079e = str;
    }

    public void setUploadUri(Uri uri) {
        this.f13081g = uri;
    }

    public AppendObjectRequest(String str, String str2, String str3, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadFilePath(str3);
        setMetadata(objectMetadata);
    }

    public AppendObjectRequest(String str, String str2, byte[] bArr) {
        this(str, str2, bArr, (ObjectMetadata) null);
    }

    public AppendObjectRequest(String str, String str2, byte[] bArr, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadData(bArr);
        setMetadata(objectMetadata);
    }

    public AppendObjectRequest(String str, String str2, Uri uri) {
        this(str, str2, uri, (ObjectMetadata) null);
    }

    public AppendObjectRequest(String str, String str2, Uri uri, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadUri(uri);
        setMetadata(objectMetadata);
    }
}
