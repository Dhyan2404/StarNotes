package com.liulishuo.okdownload.core.breakpoint;

import androidx.annotation.IntRange;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class BlockInfo {

    /* renamed from: a */
    @IntRange(from = 0)
    public final long f39256a;

    /* renamed from: b */
    @IntRange(from = 0)
    public final long f39257b;

    /* renamed from: c */
    public final AtomicLong f39258c;

    public BlockInfo(long j, long j2) {
        this(j, j2, 0L);
    }

    public BlockInfo copy() {
        return new BlockInfo(this.f39256a, this.f39257b, this.f39258c.get());
    }

    public long getContentLength() {
        return this.f39257b;
    }

    public long getCurrentOffset() {
        return this.f39258c.get();
    }

    public long getRangeLeft() {
        return this.f39256a + this.f39258c.get();
    }

    public long getRangeRight() {
        return (this.f39256a + this.f39257b) - 1;
    }

    public long getStartOffset() {
        return this.f39256a;
    }

    public void increaseCurrentOffset(@IntRange(from = 1) long j) {
        this.f39258c.addAndGet(j);
    }

    public void resetBlock() {
        this.f39258c.set(0L);
    }

    public String toString() {
        return IteratorUtils.f104923a + this.f39256a + ", " + getRangeRight() + ")-current:" + this.f39258c;
    }

    public BlockInfo(long j, long j2, @IntRange(from = 0) long j3) {
        if (j >= 0 && ((j2 >= 0 || j2 == -1) && j3 >= 0)) {
            this.f39256a = j;
            this.f39257b = j2;
            this.f39258c = new AtomicLong(j3);
            return;
        }
        throw new IllegalArgumentException();
    }
}
