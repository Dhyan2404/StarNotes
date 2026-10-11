package com.tencent.cos.xml.model.tag;

/* loaded from: classes10.dex */
public class UrlUploadPolicy {
    private final Type downloadType;
    private final long fileLength;

    /* loaded from: classes10.dex */
    public enum Type {
        NOTSUPPORT,
        RANGE,
        ENTIRETY
    }

    public UrlUploadPolicy(Type type, long j) {
        this.downloadType = type;
        this.fileLength = j;
    }

    public Type getDownloadType() {
        return this.downloadType;
    }

    public long getFileLength() {
        return this.fileLength;
    }
}
