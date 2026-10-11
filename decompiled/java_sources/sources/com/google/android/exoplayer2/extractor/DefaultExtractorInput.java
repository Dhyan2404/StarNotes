package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class DefaultExtractorInput implements ExtractorInput {

    /* renamed from: h */
    public static final int f23499h = 65536;

    /* renamed from: i */
    public static final int f23500i = 524288;

    /* renamed from: j */
    public static final int f23501j = 4096;

    /* renamed from: b */
    public final DataReader f23503b;

    /* renamed from: c */
    public final long f23504c;

    /* renamed from: d */
    public long f23505d;

    /* renamed from: f */
    public int f23507f;

    /* renamed from: g */
    public int f23508g;

    /* renamed from: e */
    public byte[] f23506e = new byte[65536];

    /* renamed from: a */
    public final byte[] f23502a = new byte[4096];

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.extractor");
    }

    public DefaultExtractorInput(DataReader dataReader, long j, long j2) {
        this.f23503b = dataReader;
        this.f23505d = j;
        this.f23504c = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean advancePeekPosition(int i, boolean z) throws IOException {
        m18784e(i);
        int i2 = this.f23508g - this.f23507f;
        while (i2 < i) {
            i2 = m18786g(this.f23506e, this.f23507f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f23508g = this.f23507f + i2;
        }
        this.f23507f += i;
        return true;
    }

    /* renamed from: d */
    public final void m18783d(int i) {
        if (i != -1) {
            this.f23505d += i;
        }
    }

    /* renamed from: e */
    public final void m18784e(int i) {
        int i2 = this.f23507f + i;
        byte[] bArr = this.f23506e;
        if (i2 > bArr.length) {
            this.f23506e = Arrays.copyOf(this.f23506e, Util.constrainValue(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: f */
    public final int m18785f(byte[] bArr, int i, int i2) {
        int i3 = this.f23508g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f23506e, 0, bArr, i, min);
        m18788i(min);
        return min;
    }

    /* renamed from: g */
    public final int m18786g(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int read = this.f23503b.read(bArr, i + i3, i2 - i3);
        if (read != -1) {
            return i3 + read;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getLength() {
        return this.f23504c;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.f23505d + this.f23507f;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPosition() {
        return this.f23505d;
    }

    /* renamed from: h */
    public final int m18787h(int i) {
        int min = Math.min(this.f23508g, i);
        m18788i(min);
        return min;
    }

    /* renamed from: i */
    public final void m18788i(int i) {
        int i2 = this.f23508g - i;
        this.f23508g = i2;
        this.f23507f = 0;
        byte[] bArr = this.f23506e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f23506e = bArr2;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int peek(byte[] bArr, int i, int i2) throws IOException {
        int min;
        m18784e(i2);
        int i3 = this.f23508g;
        int i4 = this.f23507f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            min = m18786g(this.f23506e, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f23508g += min;
        } else {
            min = Math.min(i2, i5);
        }
        System.arraycopy(this.f23506e, this.f23507f, bArr, i, min);
        this.f23507f += min;
        return min;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!advancePeekPosition(i2, z)) {
            return false;
        }
        System.arraycopy(this.f23506e, this.f23507f - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int m18785f = m18785f(bArr, i, i2);
        if (m18785f == 0) {
            m18785f = m18786g(bArr, i, i2, 0, true);
        }
        m18783d(m18785f);
        return m18785f;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int m18785f = m18785f(bArr, i, i2);
        while (m18785f < i2 && m18785f != -1) {
            m18785f = m18786g(bArr, i, i2, m18785f, z);
        }
        m18783d(m18785f);
        return m18785f != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.f23507f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public <E extends Throwable> void setRetryPosition(long j, E e) throws Throwable {
        Assertions.checkArgument(j >= 0);
        this.f23505d = j;
        throw e;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int skip(int i) throws IOException {
        int m18787h = m18787h(i);
        if (m18787h == 0) {
            byte[] bArr = this.f23502a;
            m18787h = m18786g(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m18783d(m18787h);
        return m18787h;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean skipFully(int i, boolean z) throws IOException {
        int m18787h = m18787h(i);
        while (m18787h < i && m18787h != -1) {
            m18787h = m18786g(this.f23502a, -m18787h, Math.min(i, this.f23502a.length + m18787h), m18787h, z);
        }
        m18783d(m18787h);
        return m18787h != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i, int i2) throws IOException {
        peekFully(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        readFully(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void skipFully(int i) throws IOException {
        skipFully(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void advancePeekPosition(int i) throws IOException {
        advancePeekPosition(i, false);
    }
}
