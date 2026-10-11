package com.sun.imageio.plugins.png;

/* loaded from: classes9.dex */
public class RowFilter {
    private static final int abs(int i) {
        return i < 0 ? -i : i;
    }

    public static int subFilter(byte[] bArr, byte[] bArr2, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i2 + i; i4++) {
            int i5 = (bArr[i4] & 255) - (bArr[i4 - i] & 255);
            bArr2[i4] = (byte) i5;
            i3 += abs(i5);
        }
        return i3;
    }

    public static int upFilter(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i2 + i; i4++) {
            int i5 = (bArr[i4] & 255) - (bArr2[i4] & 255);
            bArr3[i4] = (byte) i5;
            i3 += abs(i5);
        }
        return i3;
    }

    public int filterRow(int i, byte[] bArr, byte[] bArr2, byte[][] bArr3, int i2, int i3) {
        int i4;
        if (i != 3) {
            System.arraycopy(bArr, i3, bArr3[0], i3, i2);
            return 0;
        }
        int[] iArr = new int[5];
        for (int i5 = 0; i5 < 5; i5++) {
            iArr[i5] = Integer.MAX_VALUE;
        }
        int i6 = i3;
        int i7 = 0;
        while (true) {
            i4 = i2 + i3;
            if (i6 >= i4) {
                break;
            }
            i7 += bArr[i6] & 255;
            i6++;
        }
        iArr[0] = i7;
        iArr[1] = subFilter(bArr, bArr3[1], i3, i2);
        iArr[2] = upFilter(bArr, bArr2, bArr3[2], i3, i2);
        byte[] bArr4 = bArr3[3];
        int i8 = 0;
        for (int i9 = i3; i9 < i4; i9++) {
            int i10 = (bArr[i9] & 255) - (((bArr[i9 - i3] & 255) + (bArr2[i9] & 255)) / 2);
            bArr4[i9] = (byte) i10;
            i8 += abs(i10);
        }
        iArr[3] = i8;
        byte[] bArr5 = bArr3[4];
        int i11 = 0;
        for (int i12 = i3; i12 < i4; i12++) {
            int i13 = i12 - i3;
            int paethPredictor = (bArr[i12] & 255) - paethPredictor(bArr[i13] & 255, bArr2[i12] & 255, bArr2[i13] & 255);
            bArr5[i12] = (byte) paethPredictor;
            i11 += abs(paethPredictor);
        }
        iArr[4] = i11;
        int i14 = iArr[0];
        int i15 = 0;
        for (int i16 = 1; i16 < 5; i16++) {
            int i17 = iArr[i16];
            if (i17 < i14) {
                i15 = i16;
                i14 = i17;
            }
        }
        if (i15 == 0) {
            System.arraycopy(bArr, i3, bArr3[0], i3, i2);
        }
        return i15;
    }

    public final int paethPredictor(int i, int i2, int i3) {
        int i4 = (i + i2) - i3;
        int abs = abs(i4 - i);
        int abs2 = abs(i4 - i2);
        int abs3 = abs(i4 - i3);
        return (abs > abs2 || abs > abs3) ? abs2 <= abs3 ? i2 : i3 : i;
    }
}
