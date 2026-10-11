package com.sunia.HTREnginev2;

import com.google.zxing.qrcode.encoder.ByteMatrix;

/* loaded from: classes4.dex */
public final class d9j {

    /* renamed from: a */
    public static final int f67648a = 3;

    /* renamed from: b */
    public static final int f67649b = 3;

    /* renamed from: c */
    public static final int f67650c = 40;

    /* renamed from: d */
    public static final int f67651d = 10;

    /* renamed from: a */
    public static int m53608a(ByteMatrix byteMatrix) {
        return m53609b(byteMatrix, true) + m53609b(byteMatrix, false);
    }

    /* renamed from: b */
    public static int m53609b(ByteMatrix byteMatrix, boolean z) {
        int height = z ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            byte b = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < width; i4++) {
                byte b2 = z ? array[i2][i4] : array[i4][i2];
                if (b2 == b) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    i3 = 1;
                    b = b2;
                }
            }
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static int m53610c(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height - 1; i2++) {
            int i3 = 0;
            while (i3 < width - 1) {
                byte[] bArr = array[i2];
                byte b = bArr[i3];
                int i4 = i3 + 1;
                if (b == bArr[i4]) {
                    byte[] bArr2 = array[i2 + 1];
                    if (b == bArr2[i3] && b == bArr2[i4]) {
                        i++;
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    /* renamed from: d */
    public static int m53611d(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                byte[] bArr = array[i2];
                int i4 = i3 + 6;
                if (i4 < width && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i4] == 1 && (m53614g(bArr, i3 - 4, i3) || m53614g(bArr, i3 + 7, i3 + 11))) {
                    i++;
                }
                int i5 = i2 + 6;
                if (i5 < height && array[i2][i3] == 1 && array[i2 + 1][i3] == 0 && array[i2 + 2][i3] == 1 && array[i2 + 3][i3] == 1 && array[i2 + 4][i3] == 1 && array[i2 + 5][i3] == 0 && array[i5][i3] == 1 && (m53615h(array, i3, i2 - 4, i2) || m53615h(array, i3, i2 + 7, i2 + 11))) {
                    i++;
                }
            }
        }
        return i * 40;
    }

    /* renamed from: e */
    public static int m53612e(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            byte[] bArr = array[i2];
            for (int i3 = 0; i3 < width; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int height2 = byteMatrix.getHeight() * byteMatrix.getWidth();
        return ((Math.abs((i << 1) - height2) * 10) / height2) * 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0001. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0041 A[RETURN] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m53613f(int r1, int r2, int r3) {
        /*
            r0 = 1
            switch(r1) {
                case 0: goto L3c;
                case 1: goto L3d;
                case 2: goto L39;
                case 3: goto L35;
                case 4: goto L30;
                case 5: goto L29;
                case 6: goto L21;
                case 7: goto L18;
                default: goto L4;
            }
        L4:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r0 = "Invalid mask pattern: "
            r3.<init>(r0)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L18:
            int r1 = r3 * r2
            int r1 = r1 % 3
            int r3 = r3 + r2
            r2 = r3 & 1
            int r1 = r1 + r2
            goto L27
        L21:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
        L27:
            r1 = r1 & r0
            goto L3f
        L29:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L3f
        L30:
            int r3 = r3 / 2
            int r2 = r2 / 3
            goto L3c
        L35:
            int r3 = r3 + r2
            int r1 = r3 % 3
            goto L3f
        L39:
            int r1 = r2 % 3
            goto L3f
        L3c:
            int r3 = r3 + r2
        L3d:
            r1 = r3 & 1
        L3f:
            if (r1 != 0) goto L42
            return r0
        L42:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.d9j.m53613f(int, int, int):boolean");
    }

    /* renamed from: g */
    public static boolean m53614g(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, bArr.length);
        for (int max = Math.max(i, 0); max < min; max++) {
            if (bArr[max] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public static boolean m53615h(byte[][] bArr, int i, int i2, int i3) {
        int min = Math.min(i3, bArr.length);
        for (int max = Math.max(i2, 0); max < min; max++) {
            if (bArr[max][i] == 1) {
                return false;
            }
        }
        return true;
    }
}
