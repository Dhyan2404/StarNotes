package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class DiskCacheManager {
    private String cacheDir;

    /* loaded from: classes8.dex */
    public static class Metadata {
        public static final int VERSION = 1;
        public long modifyTime;
        public String password;
        public int version;
    }

    static {
        System.loadLibrary("engine_sdk");
    }

    public DiskCacheManager(String str) {
        this.cacheDir = str;
    }

    private native String nativeGetMetadata(String str, String str2);

    private native boolean nativeWriteMetadata(String str, String str2, String str3);

    public String getCacheDir() {
        return this.cacheDir;
    }

    public Metadata getMetadata(String str) {
        Metadata metadata = (Metadata) JsonUtils.fromJson(nativeGetMetadata(this.cacheDir, str), Metadata.class);
        return metadata == null ? new Metadata() : metadata;
    }

    public boolean writeMetadata(String str, Metadata metadata) {
        return nativeWriteMetadata(this.cacheDir, str, JsonUtils.toJson(metadata));
    }
}
