package sun.font;

import java.text.Bidi;

/* loaded from: classes16.dex */
public final class BidiUtils {
    static final char NUMLEVELS = '>';

    private static int[] computeContiguousOrder(int[] iArr, int i, int i2) {
        int i3 = i2 - i;
        int[] iArr2 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            iArr2[i5] = i5 + i;
        }
        for (int i6 = 0; i6 < i3 - 1; i6++) {
            int i7 = iArr[iArr2[i6]];
            int i8 = i6;
            int i9 = i8;
            while (i8 < i3) {
                int i10 = iArr[iArr2[i8]];
                if (i10 < i7) {
                    i9 = i8;
                    i7 = i10;
                }
                i8++;
            }
            int i11 = iArr2[i6];
            iArr2[i6] = iArr2[i9];
            iArr2[i9] = i11;
        }
        if (i != 0) {
            for (int i12 = 0; i12 < i3; i12++) {
                iArr2[i12] = iArr2[i12] - i;
            }
        }
        while (i4 < i3 && iArr2[i4] == i4) {
            i4++;
        }
        if (i4 == i3) {
            return null;
        }
        return createInverseMap(iArr2);
    }

    public static int[] createContiguousOrder(int[] iArr) {
        if (iArr != null) {
            return computeContiguousOrder(iArr, 0, iArr.length);
        }
        return null;
    }

    public static int[] createInverseMap(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[iArr[i]] = i;
        }
        return iArr2;
    }

    public static int[] createNormalizedMap(int[] iArr, byte[] bArr, int i, int i2) {
        byte b;
        boolean z;
        boolean z2;
        int[] iArr2 = null;
        if (iArr != null) {
            if (i == 0 && i2 == iArr.length) {
                return iArr;
            }
            if (bArr == null) {
                b = 0;
                z = true;
                z2 = true;
            } else {
                b = bArr[i];
                if (b == bArr[i2 - 1]) {
                    z2 = (b & 1) == 0;
                    int i3 = i;
                    while (i3 < i2) {
                        byte b2 = bArr[i3];
                        if (b2 < b) {
                            break;
                        }
                        if (z2) {
                            z2 = b2 == b;
                        }
                        i3++;
                    }
                    z = i3 == i2;
                } else {
                    z = false;
                    b = 0;
                    z2 = false;
                }
            }
            if (!z) {
                return computeContiguousOrder(iArr, i, i2);
            }
            if (z2) {
                return null;
            }
            int i4 = i2 - i;
            iArr2 = new int[i4];
            int i5 = (b & 1) != 0 ? iArr[i2 - 1] : iArr[i];
            if (i5 == 0) {
                System.arraycopy(iArr, i, iArr2, 0, i4);
            } else {
                for (int i6 = 0; i6 < i4; i6++) {
                    iArr2[i6] = iArr[i6 + i] - i5;
                }
            }
        }
        return iArr2;
    }

    public static int[] createVisualToLogicalMap(byte[] bArr) {
        int length = bArr.length;
        int[] iArr = new int[length];
        byte b = 63;
        byte b2 = 0;
        for (int i = 0; i < length; i++) {
            iArr[i] = i;
            byte b3 = bArr[i];
            if (b3 > b2) {
                b2 = b3;
            }
            if ((b3 & 1) != 0 && b3 < b) {
                b = b3;
            }
        }
        while (b2 >= b) {
            int i2 = 0;
            while (true) {
                if (i2 >= length || bArr[i2] >= b2) {
                    int i3 = i2 + 1;
                    if (i2 == bArr.length) {
                        break;
                    }
                    while (i3 < length && bArr[i3] >= b2) {
                        i3++;
                    }
                    for (int i4 = i3 - 1; i2 < i4; i4--) {
                        int i5 = iArr[i2];
                        iArr[i2] = iArr[i4];
                        iArr[i4] = i5;
                        i2++;
                    }
                    i2 = i3;
                } else {
                    i2++;
                }
            }
            b2 = (byte) (b2 - 1);
        }
        return iArr;
    }

    public static void getLevels(Bidi bidi, byte[] bArr, int i) {
        int length = bidi.getLength() + i;
        if (i >= 0 && length <= bArr.length) {
            int runCount = bidi.getRunCount();
            int i2 = i;
            for (int i3 = 0; i3 < runCount; i3++) {
                int runLimit = bidi.getRunLimit(i3) + i;
                byte runLevel = (byte) bidi.getRunLevel(i3);
                while (i2 < runLimit) {
                    bArr[i2] = runLevel;
                    i2++;
                }
            }
            return;
        }
        throw new IndexOutOfBoundsException("levels.length = " + bArr.length + " start: " + i + " limit: " + length);
    }

    public static void reorderVisually(byte[] bArr, Object[] objArr) {
        int length = bArr.length;
        byte b = 63;
        byte b2 = 0;
        for (byte b3 : bArr) {
            if (b3 > b2) {
                b2 = b3;
            }
            if ((b3 & 1) != 0 && b3 < b) {
                b = b3;
            }
        }
        while (b2 >= b) {
            int i = 0;
            while (true) {
                if (i >= length || bArr[i] >= b2) {
                    int i2 = i + 1;
                    if (i == bArr.length) {
                        break;
                    }
                    while (i2 < length && bArr[i2] >= b2) {
                        i2++;
                    }
                    for (int i3 = i2 - 1; i < i3; i3--) {
                        Object obj = objArr[i];
                        objArr[i] = objArr[i3];
                        objArr[i3] = obj;
                        i++;
                    }
                    i = i2;
                } else {
                    i++;
                }
            }
            b2 = (byte) (b2 - 1);
        }
    }

    public static byte[] getLevels(Bidi bidi) {
        byte[] bArr = new byte[bidi.getLength()];
        getLevels(bidi, bArr, 0);
        return bArr;
    }
}
