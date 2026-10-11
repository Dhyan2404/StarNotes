package com.google.zxing.pdf417;

/* loaded from: classes4.dex */
public final class PDF417ResultMetadata {

    /* renamed from: a */
    public int f38663a;

    /* renamed from: b */
    public String f38664b;

    /* renamed from: c */
    public int[] f38665c;

    /* renamed from: d */
    public boolean f38666d;

    public String getFileId() {
        return this.f38664b;
    }

    public int[] getOptionalData() {
        return this.f38665c;
    }

    public int getSegmentIndex() {
        return this.f38663a;
    }

    public boolean isLastSegment() {
        return this.f38666d;
    }

    public void setFileId(String str) {
        this.f38664b = str;
    }

    public void setLastSegment(boolean z) {
        this.f38666d = z;
    }

    public void setOptionalData(int[] iArr) {
        this.f38665c = iArr;
    }

    public void setSegmentIndex(int i) {
        this.f38663a = i;
    }
}
