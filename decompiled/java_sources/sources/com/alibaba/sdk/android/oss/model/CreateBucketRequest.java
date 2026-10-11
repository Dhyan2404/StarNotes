package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class CreateBucketRequest extends OSSRequest {
    public static final String TAB_LOCATIONCONSTRAINT = "LocationConstraint";
    public static final String TAB_STORAGECLASS = "StorageClass";

    /* renamed from: c */
    public String f13123c;

    /* renamed from: d */
    public CannedAccessControlList f13124d;

    /* renamed from: e */
    public String f13125e;

    /* renamed from: f */
    public StorageClass f13126f = StorageClass.Standard;

    public CreateBucketRequest(String str) {
        setBucketName(str);
    }

    public CannedAccessControlList getBucketACL() {
        return this.f13124d;
    }

    public String getBucketName() {
        return this.f13123c;
    }

    public StorageClass getBucketStorageClass() {
        return this.f13126f;
    }

    @Deprecated
    public String getLocationConstraint() {
        return this.f13125e;
    }

    public void setBucketACL(CannedAccessControlList cannedAccessControlList) {
        this.f13124d = cannedAccessControlList;
    }

    public void setBucketName(String str) {
        this.f13123c = str;
    }

    public void setBucketStorageClass(StorageClass storageClass) {
        this.f13126f = storageClass;
    }

    @Deprecated
    public void setLocationConstraint(String str) {
        this.f13125e = str;
    }
}
