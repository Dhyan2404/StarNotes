package com.google.android.exoplayer2.source.chunk;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {

    /* renamed from: a */
    public final long f25582a;

    /* renamed from: b */
    public final long f25583b;

    /* renamed from: c */
    public long f25584c;

    public BaseMediaChunkIterator(long j, long j2) {
        this.f25582a = j;
        this.f25583b = j2;
        reset();
    }

    public final void checkInBounds() {
        long j = this.f25584c;
        if (j < this.f25582a || j > this.f25583b) {
            throw new NoSuchElementException();
        }
    }

    public final long getCurrentIndex() {
        return this.f25584c;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public boolean isEnded() {
        return this.f25584c > this.f25583b;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public boolean next() {
        this.f25584c++;
        return !isEnded();
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
    public void reset() {
        this.f25584c = this.f25582a - 1;
    }
}
