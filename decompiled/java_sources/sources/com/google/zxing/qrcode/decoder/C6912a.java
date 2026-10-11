package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.sunia.HTREnginev2.dtg;

/* renamed from: com.google.zxing.qrcode.decoder.a */
/* loaded from: classes4.dex */
public final class C6912a {

    /* renamed from: a */
    public final BitMatrix f38758a;

    /* renamed from: b */
    public Version f38759b;

    /* renamed from: c */
    public dtg f38760c;

    /* renamed from: d */
    public boolean f38761d;

    public C6912a(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.f38758a = bitMatrix;
    }

    /* renamed from: a */
    public final int m30756a(int i, int i2, int i3) {
        boolean z = this.f38761d;
        BitMatrix bitMatrix = this.f38758a;
        return z ? bitMatrix.get(i2, i) : bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    /* renamed from: b */
    public void m30757b() {
        int i = 0;
        while (i < this.f38758a.getWidth()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f38758a.getHeight(); i3++) {
                if (this.f38758a.get(i, i3) != this.f38758a.get(i3, i)) {
                    this.f38758a.flip(i3, i);
                    this.f38758a.flip(i, i3);
                }
            }
            i = i2;
        }
    }

    /* renamed from: c */
    public byte[] m30758c() throws FormatException {
        dtg m30759d = m30759d();
        Version m30760e = m30760e();
        DataMask dataMask = DataMask.values()[m30759d.m53708c()];
        int height = this.f38758a.getHeight();
        dataMask.unmaskBitMatrix(this.f38758a, height);
        BitMatrix m30755a = m30760e.m30755a();
        byte[] bArr = new byte[m30760e.getTotalCodewords()];
        int i = height - 1;
        boolean z = true;
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i2 == 6) {
                i2--;
            }
            for (int i6 = 0; i6 < height; i6++) {
                int i7 = z ? i - i6 : i6;
                for (int i8 = 0; i8 < 2; i8++) {
                    int i9 = i2 - i8;
                    if (!m30755a.get(i9, i7)) {
                        i4++;
                        i5 <<= 1;
                        if (this.f38758a.get(i9, i7)) {
                            i5 |= 1;
                        }
                        if (i4 == 8) {
                            bArr[i3] = (byte) i5;
                            i3++;
                            i4 = 0;
                            i5 = 0;
                        }
                    }
                }
            }
            z = !z;
            i2 -= 2;
        }
        if (i3 == m30760e.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    /* renamed from: d */
    public dtg m30759d() throws FormatException {
        dtg dtgVar = this.f38760c;
        if (dtgVar != null) {
            return dtgVar;
        }
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            i2 = m30756a(i3, 8, i2);
        }
        int m30756a = m30756a(8, 7, m30756a(8, 8, m30756a(7, 8, i2)));
        for (int i4 = 5; i4 >= 0; i4--) {
            m30756a = m30756a(8, i4, m30756a);
        }
        int height = this.f38758a.getHeight();
        int i5 = height - 7;
        for (int i6 = height - 1; i6 >= i5; i6--) {
            i = m30756a(8, i6, i);
        }
        for (int i7 = height - 8; i7 < height; i7++) {
            i = m30756a(i7, 8, i);
        }
        dtg m53705a = dtg.m53705a(m30756a, i);
        this.f38760c = m53705a;
        if (m53705a != null) {
            return m53705a;
        }
        throw FormatException.getFormatInstance();
    }

    /* renamed from: e */
    public Version m30760e() throws FormatException {
        Version version = this.f38759b;
        if (version != null) {
            return version;
        }
        int height = this.f38758a.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = height - 9; i6 >= i2; i6--) {
                i4 = m30756a(i6, i5, i4);
            }
        }
        Version m30754c = Version.m30754c(i4);
        if (m30754c != null && m30754c.getDimensionForVersion() == height) {
            this.f38759b = m30754c;
            return m30754c;
        }
        for (int i7 = 5; i7 >= 0; i7--) {
            for (int i8 = height - 9; i8 >= i2; i8--) {
                i3 = m30756a(i7, i8, i3);
            }
        }
        Version m30754c2 = Version.m30754c(i3);
        if (m30754c2 == null || m30754c2.getDimensionForVersion() != height) {
            throw FormatException.getFormatInstance();
        }
        this.f38759b = m30754c2;
        return m30754c2;
    }

    /* renamed from: f */
    public void m30761f() {
        if (this.f38760c == null) {
            return;
        }
        DataMask.values()[this.f38760c.m53708c()].unmaskBitMatrix(this.f38758a, this.f38758a.getHeight());
    }

    /* renamed from: g */
    public void m30762g(boolean z) {
        this.f38759b = null;
        this.f38760c = null;
        this.f38761d = z;
    }
}
