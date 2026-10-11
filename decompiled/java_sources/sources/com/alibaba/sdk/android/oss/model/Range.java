package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class Range {
    public static final long INFINITE = -1;

    /* renamed from: a */
    public long f13302a;

    /* renamed from: b */
    public long f13303b;

    public Range(long j, long j2) {
        setBegin(j);
        setEnd(j2);
    }

    public boolean checkIsValid() {
        long j = this.f13302a;
        if (j >= -1) {
            long j2 = this.f13303b;
            if (j2 >= -1) {
                return j < 0 || j2 < 0 || j <= j2;
            }
        }
        return false;
    }

    public long getBegin() {
        return this.f13302a;
    }

    public long getEnd() {
        return this.f13303b;
    }

    public void setBegin(long j) {
        this.f13302a = j;
    }

    public void setEnd(long j) {
        this.f13303b = j;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        long j = this.f13302a;
        sb.append(j == -1 ? "" : String.valueOf(j));
        sb.append("-");
        long j2 = this.f13303b;
        sb.append(j2 != -1 ? String.valueOf(j2) : "");
        return sb.toString();
    }
}
