package com.tencent.cos.xml.model.tag;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "ListAllMyBucketsResult")
/* loaded from: classes10.dex */
public class ListAllMyBuckets {
    public List<Bucket> buckets;
    public Owner owner;

    @XmlBean(method = XmlBean.GenerateMethod.FROM)
    /* loaded from: classes10.dex */
    public static class Bucket {

        @XmlElement(name = "CreationDate")
        public String createDate;
        public String location;
        public String name;
        public String type;

        public String toString() {
            return "{Bucket:\nName:" + this.name + "\nLocation:" + this.location + "\nCreateDate:" + this.createDate + "\n}";
        }
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM)
    /* loaded from: classes10.dex */
    public static class Owner {

        @XmlElement(name = "DisplayName")
        public String disPlayName;

        /* renamed from: id */
        @XmlElement(name = "ID")
        public String f93313id;

        public String toString() {
            return "{Owner:\nID:" + this.f93313id + "\nDisPlayName:" + this.disPlayName + "\n}";
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ListAllMyBuckets:\n");
        Owner owner = this.owner;
        if (owner != null) {
            sb.append(owner.toString());
            sb.append("\n");
        }
        sb.append("Buckets:\n");
        for (Bucket bucket : this.buckets) {
            if (bucket != null) {
                sb.append(bucket.toString());
                sb.append("\n");
            }
        }
        sb.append("}");
        sb.append("\n");
        sb.append("}");
        return sb.toString();
    }
}
