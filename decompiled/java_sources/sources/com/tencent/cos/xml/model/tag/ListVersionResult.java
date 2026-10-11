package com.tencent.cos.xml.model.tag;

import java.util.List;

/* loaded from: classes10.dex */
public class ListVersionResult {
    public List<CommonPrefixes> commonPrefixes;
    public List<DeleteMarker> deleteMarkers;
    public String delimiter;
    public String encodingType;
    public boolean isTruncated;
    public String keyMarker;
    public int maxKeys;
    public String name;
    public String nextKeyMarker;
    public String nextVersionIdMarker;
    public String prefix;
    public String versionIdMarker;
    public List<Version> versions;

    /* loaded from: classes10.dex */
    public static class CommonPrefixes {
        public String prefix;
    }

    /* loaded from: classes10.dex */
    public static class DeleteMarker {
        public boolean isLatest;
        public String key;
        public String lastModified;
        public Owner owner;
        public String versionId;
    }

    /* loaded from: classes10.dex */
    public static class Owner {
        public String displayName;

        /* renamed from: id */
        public String f93319id;
    }

    /* loaded from: classes10.dex */
    public static class Version {
        public String etag;
        public boolean isLatest;
        public String key;
        public String lastModified;
        public Owner owner;
        public long size;
        public String storageClass;
        public String versionID;
    }
}
