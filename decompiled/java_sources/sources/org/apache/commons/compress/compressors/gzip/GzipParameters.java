package org.apache.commons.compress.compressors.gzip;

/* loaded from: classes12.dex */
public class GzipParameters {

    /* renamed from: b */
    public long f106165b;

    /* renamed from: c */
    public String f106166c;

    /* renamed from: d */
    public String f106167d;

    /* renamed from: a */
    public int f106164a = -1;

    /* renamed from: e */
    public int f106168e = 255;

    /* renamed from: f */
    public int f106169f = 512;

    public int getBufferSize() {
        return this.f106169f;
    }

    public String getComment() {
        return this.f106167d;
    }

    public int getCompressionLevel() {
        return this.f106164a;
    }

    public String getFilename() {
        return this.f106166c;
    }

    public long getModificationTime() {
        return this.f106165b;
    }

    public int getOperatingSystem() {
        return this.f106168e;
    }

    public void setBufferSize(int i) {
        if (i > 0) {
            this.f106169f = i;
            return;
        }
        throw new IllegalArgumentException("invalid buffer size: " + i);
    }

    public void setComment(String str) {
        this.f106167d = str;
    }

    public void setCompressionLevel(int i) {
        if (i >= -1 && i <= 9) {
            this.f106164a = i;
            return;
        }
        throw new IllegalArgumentException("Invalid gzip compression level: " + i);
    }

    public void setFilename(String str) {
        this.f106166c = str;
    }

    public void setModificationTime(long j) {
        this.f106165b = j;
    }

    public void setOperatingSystem(int i) {
        this.f106168e = i;
    }
}
