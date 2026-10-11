package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;

/* loaded from: classes4.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;

    /* renamed from: a */
    public static final int f38251a = 32;

    /* renamed from: b */
    public static final int f38252b = 4;

    /* renamed from: c */
    public static final int[] f38253c = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    /* renamed from: a */
    public static int[] m30451a(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    /* renamed from: b */
    public static void m30452b(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bitMatrix.set(i5, i4);
                    bitMatrix.set(i5, i6);
                    bitMatrix.set(i4, i5);
                    bitMatrix.set(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bitMatrix.set(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.set(i8, i7);
        bitMatrix.set(i7, i8);
        int i9 = i + i2;
        bitMatrix.set(i9, i7);
        bitMatrix.set(i9, i8);
        bitMatrix.set(i9, i9 - 1);
    }

    /* renamed from: c */
    public static void m30453c(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (bitArray.get(i3)) {
                    bitMatrix.set(i4, i2 - 5);
                }
                if (bitArray.get(i3 + 7)) {
                    bitMatrix.set(i2 + 5, i4);
                }
                if (bitArray.get(20 - i3)) {
                    bitMatrix.set(i4, i2 + 5);
                }
                if (bitArray.get(27 - i3)) {
                    bitMatrix.set(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (bitArray.get(i3)) {
                bitMatrix.set(i5, i2 - 7);
            }
            if (bitArray.get(i3 + 10)) {
                bitMatrix.set(i2 + 7, i5);
            }
            if (bitArray.get(29 - i3)) {
                bitMatrix.set(i5, i2 + 7);
            }
            if (bitArray.get(39 - i3)) {
                bitMatrix.set(i2 - 7, i5);
            }
            i3++;
        }
    }

    /* renamed from: d */
    public static BitArray m30454d(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(m30456f(i2));
        int i3 = i / i2;
        int[] m30451a = m30451a(bitArray, i2, i3);
        reedSolomonEncoder.encode(m30451a, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : m30451a) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    /* renamed from: e */
    public static BitArray m30455e(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return m30454d(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return m30454d(bitArray, 40, 4);
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    /* renamed from: f */
    public static GenericGF m30456f(int i) {
        if (i == 4) {
            return GenericGF.AZTEC_PARAM;
        }
        if (i == 6) {
            return GenericGF.AZTEC_DATA_6;
        }
        if (i == 8) {
            return GenericGF.AZTEC_DATA_8;
        }
        if (i == 10) {
            return GenericGF.AZTEC_DATA_10;
        }
        if (i == 12) {
            return GenericGF.AZTEC_DATA_12;
        }
        throw new IllegalArgumentException("Unsupported word size " + i);
    }

    /* renamed from: g */
    public static BitArray m30457g(BitArray bitArray, int i) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < size) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= size || bitArray.get(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                bitArray2.appendBits(i7, i);
            } else if (i7 == 0) {
                bitArray2.appendBits(i4 | 1, i);
            } else {
                bitArray2.appendBits(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return bitArray2;
    }

    /* renamed from: h */
    public static int m30458h(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AztecCode encode(byte[] bArr, int i, int i2) {
        int i3;
        BitArray bitArray;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        BitArray encode = new HighLevelEncoder(bArr).encode();
        int size = ((encode.getSize() * i) / 100) + 11;
        int size2 = encode.getSize() + size;
        int i8 = 1;
        if (i2 != 0) {
            z = i2 < 0;
            i4 = Math.abs(i2);
            if (i4 <= (z ? 4 : 32)) {
                i5 = m30458h(i4, z);
                i6 = f38253c[i4];
                int i9 = i5 - (i5 % i6);
                bitArray = m30457g(encode, i6);
                if (bitArray.getSize() + size <= i9) {
                    if (z && bitArray.getSize() > (i6 << 6)) {
                        throw new IllegalArgumentException("Data to large for user specified layer");
                    }
                } else {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            } else {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
        } else {
            BitArray bitArray2 = null;
            int i10 = 0;
            int i11 = 0;
            while (i10 <= 32) {
                boolean z2 = i10 <= 3 ? i8 : 0;
                int i12 = z2 != 0 ? i10 + 1 : i10;
                int m30458h = m30458h(i12, z2);
                if (size2 <= m30458h) {
                    int i13 = f38253c[i12];
                    if (i11 != i13) {
                        bitArray2 = m30457g(encode, i13);
                    } else {
                        i13 = i11;
                    }
                    int i14 = m30458h - (m30458h % i13);
                    if ((z2 == 0 || bitArray2.getSize() <= (i13 << 6)) && bitArray2.getSize() + size <= i14) {
                        bitArray = bitArray2;
                        z = z2;
                        i4 = i12;
                        i5 = m30458h;
                        i6 = i13;
                    } else {
                        i3 = i8;
                        i11 = i13;
                    }
                } else {
                    i3 = i8;
                }
                i10++;
                i8 = i3;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        BitArray m30454d = m30454d(bitArray, i5, i6);
        int size3 = bitArray.getSize() / i6;
        BitArray m30455e = m30455e(z, i4, size3);
        int i15 = (z ? 11 : 14) + (i4 << 2);
        int[] iArr = new int[i15];
        int i16 = 2;
        if (z) {
            for (int i17 = 0; i17 < i15; i17++) {
                iArr[i17] = i17;
            }
            i7 = i15;
        } else {
            int i18 = i15 / 2;
            i7 = i15 + 1 + (((i18 - 1) / 15) * 2);
            int i19 = i7 / 2;
            for (int i20 = 0; i20 < i18; i20++) {
                iArr[(i18 - i20) - i8] = (i19 - r14) - 1;
                iArr[i18 + i20] = (i20 / 15) + i20 + i19 + i8;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i7);
        int i21 = 0;
        int i22 = 0;
        while (i21 < i4) {
            int i23 = ((i4 - i21) << i16) + (z ? 9 : 12);
            int i24 = 0;
            while (i24 < i23) {
                int i25 = i24 << 1;
                int i26 = 0;
                while (i26 < i16) {
                    if (m30454d.get(i22 + i25 + i26)) {
                        int i27 = i21 << 1;
                        bitMatrix.set(iArr[i27 + i26], iArr[i27 + i24]);
                    }
                    if (m30454d.get((i23 << 1) + i22 + i25 + i26)) {
                        int i28 = i21 << 1;
                        bitMatrix.set(iArr[i28 + i24], iArr[((i15 - 1) - i28) - i26]);
                    }
                    if (m30454d.get((i23 << 2) + i22 + i25 + i26)) {
                        int i29 = (i15 - 1) - (i21 << 1);
                        bitMatrix.set(iArr[i29 - i26], iArr[i29 - i24]);
                    }
                    if (m30454d.get((i23 * 6) + i22 + i25 + i26)) {
                        int i30 = i21 << 1;
                        bitMatrix.set(iArr[((i15 - 1) - i30) - i24], iArr[i30 + i26]);
                    }
                    i26++;
                    i16 = 2;
                }
                i24++;
                i16 = 2;
            }
            i22 += i23 << 3;
            i21++;
            i16 = 2;
        }
        m30453c(bitMatrix, z, i7, m30455e);
        if (z) {
            m30452b(bitMatrix, i7 / 2, 5);
        } else {
            int i31 = i7 / 2;
            m30452b(bitMatrix, i31, 7);
            int i32 = 0;
            int i33 = 0;
            while (i33 < (i15 / 2) - 1) {
                for (int i34 = i31 & 1; i34 < i7; i34 += 2) {
                    int i35 = i31 - i32;
                    bitMatrix.set(i35, i34);
                    int i36 = i31 + i32;
                    bitMatrix.set(i36, i34);
                    bitMatrix.set(i34, i35);
                    bitMatrix.set(i34, i36);
                }
                i33 += 15;
                i32 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i7);
        aztecCode.setLayers(i4);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }
}
