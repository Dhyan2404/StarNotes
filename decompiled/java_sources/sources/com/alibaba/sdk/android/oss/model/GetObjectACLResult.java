package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetObjectACLResult extends OSSResult {

    /* renamed from: f */
    public Owner f13162f = new Owner();

    /* renamed from: g */
    public CannedAccessControlList f13163g;

    public String getObjectACL() {
        CannedAccessControlList cannedAccessControlList = this.f13163g;
        if (cannedAccessControlList != null) {
            return cannedAccessControlList.toString();
        }
        return null;
    }

    public String getObjectOwner() {
        return this.f13162f.getDisplayName();
    }

    public String getObjectOwnerID() {
        return this.f13162f.getId();
    }

    public Owner getOwner() {
        return this.f13162f;
    }

    public void setObjectACL(String str) {
        this.f13163g = CannedAccessControlList.parseACL(str);
    }

    public void setObjectOwner(String str) {
        this.f13162f.setDisplayName(str);
    }

    public void setObjectOwnerID(String str) {
        this.f13162f.setId(str);
    }
}
