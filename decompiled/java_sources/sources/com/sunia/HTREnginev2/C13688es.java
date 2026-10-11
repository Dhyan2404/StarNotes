package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.decoder.Version;

/* renamed from: com.sunia.HTREnginev2.es */
/* loaded from: classes4.dex */
public final class C13688es {

    /* renamed from: a */
    public final BitMatrix f69250a;

    /* renamed from: b */
    public final BitMatrix f69251b;

    /* renamed from: c */
    public final Version f69252c;

    public C13688es(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 8 || height > 144 || (height & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        this.f69252c = m54008j(bitMatrix);
        BitMatrix m54009a = m54009a(bitMatrix);
        this.f69250a = m54009a;
        this.f69251b = new BitMatrix(m54009a.getWidth(), m54009a.getHeight());
    }

    /* renamed from: j */
    public static Version m54008j(BitMatrix bitMatrix) throws FormatException {
        return Version.getVersionForDimensions(bitMatrix.getHeight(), bitMatrix.getWidth());
    }

    /* renamed from: a */
    public final BitMatrix m54009a(BitMatrix bitMatrix) {
        int symbolSizeRows = this.f69252c.getSymbolSizeRows();
        int symbolSizeColumns = this.f69252c.getSymbolSizeColumns();
        if (bitMatrix.getHeight() != symbolSizeRows) {
            throw new IllegalArgumentException("Dimension of bitMarix must match the version size");
        }
        int dataRegionSizeRows = this.f69252c.getDataRegionSizeRows();
        int dataRegionSizeColumns = this.f69252c.getDataRegionSizeColumns();
        int i = symbolSizeRows / dataRegionSizeRows;
        int i2 = symbolSizeColumns / dataRegionSizeColumns;
        BitMatrix bitMatrix2 = new BitMatrix(i2 * dataRegionSizeColumns, i * dataRegionSizeRows);
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 * dataRegionSizeRows;
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = i5 * dataRegionSizeColumns;
                for (int i7 = 0; i7 < dataRegionSizeRows; i7++) {
                    int i8 = ((dataRegionSizeRows + 2) * i3) + 1 + i7;
                    int i9 = i4 + i7;
                    for (int i10 = 0; i10 < dataRegionSizeColumns; i10++) {
                        if (bitMatrix.get(((dataRegionSizeColumns + 2) * i5) + 1 + i10, i8)) {
                            bitMatrix2.set(i6 + i10, i9);
                        }
                    }
                }
            }
        }
        return bitMatrix2;
    }

    /* renamed from: b */
    public Version m54010b() {
        return this.f69252c;
    }

    /* renamed from: c */
    public byte[] m54011c() throws FormatException {
        byte[] bArr = new byte[this.f69252c.getTotalCodewords()];
        int height = this.f69250a.getHeight();
        int width = this.f69250a.getWidth();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        int i3 = 4;
        while (true) {
            if (i3 == height && i == 0 && !z) {
                bArr[i2] = (byte) m54012d(height, width);
                i3 -= 2;
                i += 2;
                i2++;
                z = true;
            } else {
                int i4 = height - 2;
                if (i3 == i4 && i == 0 && (width & 3) != 0 && !z2) {
                    bArr[i2] = (byte) m54013e(height, width);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z2 = true;
                } else if (i3 == height + 4 && i == 2 && (width & 7) == 0 && !z3) {
                    bArr[i2] = (byte) m54014f(height, width);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z3 = true;
                } else if (i3 == i4 && i == 0 && (width & 7) == 4 && !z4) {
                    bArr[i2] = (byte) m54015g(height, width);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z4 = true;
                } else {
                    do {
                        if (i3 < height && i >= 0 && !this.f69251b.get(i, i3)) {
                            bArr[i2] = (byte) m54017i(i3, i, height, width);
                            i2++;
                        }
                        i3 -= 2;
                        i += 2;
                        if (i3 < 0) {
                            break;
                        }
                    } while (i < width);
                    int i5 = i3 + 1;
                    int i6 = i + 3;
                    do {
                        if (i5 >= 0 && i6 < width && !this.f69251b.get(i6, i5)) {
                            bArr[i2] = (byte) m54017i(i5, i6, height, width);
                            i2++;
                        }
                        i5 += 2;
                        i6 -= 2;
                        if (i5 >= height) {
                            break;
                        }
                    } while (i6 >= 0);
                    i3 = i5 + 3;
                    i = i6 + 1;
                }
            }
            if (i3 >= height && i >= width) {
                break;
            }
        }
        if (i2 == this.f69252c.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    /* renamed from: d */
    public final int m54012d(int i, int i2) {
        int i3 = i - 1;
        int i4 = (m54016h(i3, 0, i, i2) ? 1 : 0) << 1;
        if (m54016h(i3, 1, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m54016h(i3, 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (m54016h(0, i2 - 2, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        int i8 = i2 - 1;
        if (m54016h(0, i8, i, i2)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        if (m54016h(1, i8, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        if (m54016h(2, i8, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        return m54016h(3, i8, i, i2) ? i11 | 1 : i11;
    }

    /* renamed from: e */
    public final int m54013e(int i, int i2) {
        int i3 = (m54016h(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (m54016h(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (m54016h(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m54016h(0, i2 - 4, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (m54016h(0, i2 - 3, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (m54016h(0, i2 - 2, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        int i9 = i2 - 1;
        if (m54016h(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        return m54016h(1, i9, i, i2) ? i10 | 1 : i10;
    }

    /* renamed from: f */
    public final int m54014f(int i, int i2) {
        int i3 = i - 1;
        int i4 = (m54016h(i3, 0, i, i2) ? 1 : 0) << 1;
        int i5 = i2 - 1;
        if (m54016h(i3, i5, i, i2)) {
            i4 |= 1;
        }
        int i6 = i4 << 1;
        int i7 = i2 - 3;
        if (m54016h(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        int i9 = i2 - 2;
        if (m54016h(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        if (m54016h(0, i5, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        if (m54016h(1, i7, i, i2)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (m54016h(1, i9, i, i2)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        return m54016h(1, i5, i, i2) ? i13 | 1 : i13;
    }

    /* renamed from: g */
    public final int m54015g(int i, int i2) {
        int i3 = (m54016h(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (m54016h(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (m54016h(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (m54016h(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        int i7 = i2 - 1;
        if (m54016h(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        if (m54016h(1, i7, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        if (m54016h(2, i7, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        return m54016h(3, i7, i, i2) ? i10 | 1 : i10;
    }

    /* renamed from: h */
    public final boolean m54016h(int i, int i2, int i3, int i4) {
        if (i < 0) {
            i += i3;
            i2 += 4 - ((i3 + 4) & 7);
        }
        if (i2 < 0) {
            i2 += i4;
            i += 4 - ((i4 + 4) & 7);
        }
        this.f69251b.set(i2, i);
        return this.f69250a.get(i2, i);
    }

    /* renamed from: i */
    public final int m54017i(int i, int i2, int i3, int i4) {
        int i5 = i - 2;
        int i6 = i2 - 2;
        int i7 = (m54016h(i5, i6, i3, i4) ? 1 : 0) << 1;
        int i8 = i2 - 1;
        if (m54016h(i5, i8, i3, i4)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        int i10 = i - 1;
        if (m54016h(i10, i6, i3, i4)) {
            i9 |= 1;
        }
        int i11 = i9 << 1;
        if (m54016h(i10, i8, i3, i4)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (m54016h(i10, i2, i3, i4)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        if (m54016h(i, i6, i3, i4)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (m54016h(i, i8, i3, i4)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        return m54016h(i, i2, i3, i4) ? i15 | 1 : i15;
    }
}
