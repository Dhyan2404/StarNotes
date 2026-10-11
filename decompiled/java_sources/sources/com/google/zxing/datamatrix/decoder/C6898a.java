package com.google.zxing.datamatrix.decoder;

import com.google.zxing.datamatrix.decoder.Version;

/* renamed from: com.google.zxing.datamatrix.decoder.a */
/* loaded from: classes4.dex */
public final class C6898a {

    /* renamed from: a */
    public final int f38460a;

    /* renamed from: b */
    public final byte[] f38461b;

    public C6898a(int i, byte[] bArr) {
        this.f38460a = i;
        this.f38461b = bArr;
    }

    /* renamed from: b */
    public static C6898a[] m30556b(byte[] bArr, Version version) {
        Version.C6897c m30551b = version.m30551b();
        Version.C6896b[] m30554a = m30551b.m30554a();
        int i = 0;
        for (Version.C6896b c6896b : m30554a) {
            i += c6896b.m30552a();
        }
        C6898a[] c6898aArr = new C6898a[i];
        int i2 = 0;
        for (Version.C6896b c6896b2 : m30554a) {
            int i3 = 0;
            while (i3 < c6896b2.m30552a()) {
                int m30553b = c6896b2.m30553b();
                c6898aArr[i2] = new C6898a(m30553b, new byte[m30551b.m30555b() + m30553b]);
                i3++;
                i2++;
            }
        }
        int length = c6898aArr[0].f38461b.length - m30551b.m30555b();
        int i4 = length - 1;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = 0;
            while (i7 < i2) {
                c6898aArr[i7].f38461b[i6] = bArr[i5];
                i7++;
                i5++;
            }
        }
        boolean z = version.getVersionNumber() == 24;
        int i8 = z ? 8 : i2;
        int i9 = 0;
        while (i9 < i8) {
            c6898aArr[i9].f38461b[i4] = bArr[i5];
            i9++;
            i5++;
        }
        int length2 = c6898aArr[0].f38461b.length;
        while (length < length2) {
            int i10 = 0;
            while (i10 < i2) {
                int i11 = z ? (i10 + 8) % i2 : i10;
                c6898aArr[i11].f38461b[(!z || i11 <= 7) ? length : length - 1] = bArr[i5];
                i10++;
                i5++;
            }
            length++;
        }
        if (i5 == bArr.length) {
            return c6898aArr;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public byte[] m30557a() {
        return this.f38461b;
    }

    /* renamed from: c */
    public int m30558c() {
        return this.f38460a;
    }
}
