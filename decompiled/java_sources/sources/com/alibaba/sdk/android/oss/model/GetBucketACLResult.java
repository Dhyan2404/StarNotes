package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetBucketACLResult extends OSSResult {

    /* renamed from: f */
    public Owner f13147f = new Owner();

    /* renamed from: g */
    public CannedAccessControlList f13148g;

    public String getBucketACL() {
        CannedAccessControlList cannedAccessControlList = this.f13148g;
        if (cannedAccessControlList != null) {
            return cannedAccessControlList.toString();
        }
        return null;
    }

    public String getBucketOwner() {
        return this.f13147f.getDisplayName();
    }

    public String getBucketOwnerID() {
        return this.f13147f.getId();
    }

    public Owner getOwner() {
        return this.f13147f;
    }

    public void setBucketACL(String str) {
        this.f13148g = CannedAccessControlList.parseACL(str);
    }

    public void setBucketOwner(String str) {
        this.f13147f.setDisplayName(str);
    }

    public void setBucketOwnerID(String str) {
        this.f13147f.setId(str);
    }
}
