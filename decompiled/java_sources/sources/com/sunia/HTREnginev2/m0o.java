package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class m0o {

    /* renamed from: d */
    public static final int f77066d = 0;

    /* renamed from: e */
    public static final int f77067e = 1;

    /* renamed from: f */
    public static final long[] f77068f = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f77069a = new byte[8];

    /* renamed from: b */
    public int f77070b;

    /* renamed from: c */
    public int f77071c;

    /* renamed from: a */
    public static long m55537a(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~f77068f[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    /* renamed from: c */
    public static int m55538c(int i) {
        int i2 = 0;
        while (true) {
            long[] jArr = f77068f;
            if (i2 >= jArr.length) {
                return -1;
            }
            if ((jArr[i2] & i) != 0) {
                return i2 + 1;
            }
            i2++;
        }
    }

    /* renamed from: b */
    public int m55539b() {
        return this.f77071c;
    }

    /* renamed from: d */
    public long m55540d(ExtractorInput extractorInput, boolean z, boolean z2, int i) throws IOException {
        if (this.f77070b == 0) {
            if (!extractorInput.readFully(this.f77069a, 0, 1, z)) {
                return -1L;
            }
            int m55538c = m55538c(this.f77069a[0] & 255);
            this.f77071c = m55538c;
            if (m55538c == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f77070b = 1;
        }
        int i2 = this.f77071c;
        if (i2 > i) {
            this.f77070b = 0;
            return -2L;
        }
        if (i2 != 1) {
            extractorInput.readFully(this.f77069a, 1, i2 - 1);
        }
        this.f77070b = 0;
        return m55537a(this.f77069a, this.f77071c, z2);
    }

    /* renamed from: e */
    public void m55541e() {
        this.f77070b = 0;
        this.f77071c = 0;
    }
}
