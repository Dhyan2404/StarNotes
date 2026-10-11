package com.tencent.cos.xml.model.tag;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class ListBucketVersions {
    public boolean isTruncated;
    public String keyMarker;
    public long maxKeys;
    public String name;
    public String nextKeyMarker;
    public String nextVersionIdMarker;
    public List<ObjectVersion> objectVersionList;
    public String prefix;
    public String versionIdMarker;

    /* loaded from: classes10.dex */
    public static class DeleteMarker extends ObjectVersion {
        public String toString() {
            StringBuilder sb = new StringBuilder("{DeleteMarker:\n");
            sb.append("Key:");
            sb.append(this.key);
            sb.append("\n");
            sb.append("VersionId:");
            sb.append(this.versionId);
            sb.append("\n");
            sb.append("IsLatest:");
            sb.append(this.isLatest);
            sb.append("\n");
            sb.append("LastModified:");
            sb.append(this.lastModified);
            sb.append("\n");
            Owner owner = this.owner;
            if (owner != null) {
                sb.append(owner.toString());
                sb.append("\n");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes10.dex */
    public static class ObjectVersion {
        public boolean isLatest;
        public String key;
        public String lastModified;
        public Owner owner;
        public String versionId;
    }

    /* loaded from: classes10.dex */
    public static class Owner {
        public String uid;

        public String toString() {
            return "{Owner:\nUid:" + this.uid + "\n}";
        }
    }

    /* loaded from: classes10.dex */
    public static class Version extends ObjectVersion {
        public String eTag;
        public long size;
        public String storageClass;

        public String toString() {
            StringBuilder sb = new StringBuilder("{Version:\n");
            sb.append("Key:");
            sb.append(this.key);
            sb.append("\n");
            sb.append("VersionId:");
            sb.append(this.versionId);
            sb.append("\n");
            sb.append("IsLatest:");
            sb.append(this.isLatest);
            sb.append("\n");
            sb.append("LastModified:");
            sb.append(this.lastModified);
            sb.append("\n");
            sb.append("ETag:");
            sb.append(this.eTag);
            sb.append("\n");
            sb.append("Size:");
            sb.append(this.size);
            sb.append("\n");
            sb.append("StorageClass:");
            sb.append(this.storageClass);
            sb.append("\n");
            Owner owner = this.owner;
            if (owner != null) {
                sb.append(owner.toString());
                sb.append("\n");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ListVersionsResult:\n");
        sb.append("Name:");
        sb.append(this.name);
        sb.append("\n");
        sb.append("Prefix:");
        sb.append(this.prefix);
        sb.append("\n");
        sb.append("KeyMarker:");
        sb.append(this.keyMarker);
        sb.append("\n");
        sb.append("VersionIdMarker:");
        sb.append(this.versionIdMarker);
        sb.append("\n");
        sb.append("MaxKeys:");
        sb.append(this.maxKeys);
        sb.append("\n");
        sb.append("IsTruncated:");
        sb.append(this.isTruncated);
        sb.append("\n");
        sb.append("NextKeyMarker:");
        sb.append(this.nextKeyMarker);
        sb.append("\n");
        sb.append("NextVersionIdMarker:");
        sb.append(this.nextVersionIdMarker);
        sb.append("\n");
        List<ObjectVersion> list = this.objectVersionList;
        if (list != null) {
            Iterator<ObjectVersion> it2 = list.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().toString());
                sb.append("\n");
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
