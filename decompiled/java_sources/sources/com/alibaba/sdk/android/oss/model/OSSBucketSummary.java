package com.alibaba.sdk.android.oss.model;

import java.util.Date;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class OSSBucketSummary {

    /* renamed from: a */
    public CannedAccessControlList f13250a;
    public Date createDate;
    public String extranetEndpoint;
    public String intranetEndpoint;
    public String location;
    public String name;
    public Owner owner;
    public String storageClass;

    public String getAcl() {
        CannedAccessControlList cannedAccessControlList = this.f13250a;
        if (cannedAccessControlList != null) {
            return cannedAccessControlList.toString();
        }
        return null;
    }

    public void setAcl(String str) {
        this.f13250a = CannedAccessControlList.parseACL(str);
    }

    public String toString() {
        if (this.storageClass == null) {
            return "OSSBucket [name=" + this.name + ", creationDate=" + this.createDate + ", owner=" + this.owner.toString() + ", location=" + this.location + IteratorUtils.f104924b;
        }
        return "OSSBucket [name=" + this.name + ", creationDate=" + this.createDate + ", owner=" + this.owner.toString() + ", location=" + this.location + ", storageClass=" + this.storageClass + IteratorUtils.f104924b;
    }
}
