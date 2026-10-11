package com.tencent.cos.xml.common;

/* loaded from: classes10.dex */
public class Range {
    private long end;
    private long start;

    public Range(long j, long j2) {
        this.start = j;
        this.end = j2;
    }

    public long getEnd() {
        return this.end;
    }

    public String getRange() {
        Object[] objArr = new Object[2];
        objArr[0] = Long.valueOf(this.start);
        long j = this.end;
        objArr[1] = j == -1 ? "" : String.valueOf(j);
        return String.format("bytes=%s-%s", objArr);
    }

    public long getStart() {
        return this.start;
    }

    public Range(long j) {
        this(j, -1L);
    }
}
