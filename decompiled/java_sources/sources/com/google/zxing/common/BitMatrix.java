package com.google.zxing.common;

import com.bumptech.glide.load.engine.GlideException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class BitMatrix implements Cloneable {

    /* renamed from: e */
    public final int f38372e;

    /* renamed from: f */
    public final int f38373f;

    /* renamed from: g */
    public final int f38374g;

    /* renamed from: h */
    public final int[] f38375h;

    public BitMatrix(int i) {
        this(i, i);
    }

    public static BitMatrix parse(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < str.length()) {
            if (str.charAt(i2) == '\n' || str.charAt(i2) == '\r') {
                if (i3 > i4) {
                    if (i == -1) {
                        i = i3 - i4;
                    } else if (i3 - i4 != i) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i5++;
                    i4 = i3;
                }
                i2++;
            } else {
                if (str.substring(i2, str2.length() + i2).equals(str2)) {
                    i2 += str2.length();
                    zArr[i3] = true;
                } else {
                    if (!str.substring(i2, str3.length() + i2).equals(str3)) {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(i2));
                    }
                    i2 += str3.length();
                    zArr[i3] = false;
                }
                i3++;
            }
        }
        if (i3 > i4) {
            if (i == -1) {
                i = i3 - i4;
            } else if (i3 - i4 != i) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i5++;
        }
        BitMatrix bitMatrix = new BitMatrix(i, i5);
        for (int i6 = 0; i6 < i3; i6++) {
            if (zArr[i6]) {
                bitMatrix.set(i6 % i, i6 / i);
            }
        }
        return bitMatrix;
    }

    /* renamed from: a */
    public final String m30510a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f38373f * (this.f38372e + 1));
        for (int i = 0; i < this.f38373f; i++) {
            for (int i2 = 0; i2 < this.f38372e; i2++) {
                sb.append(get(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public void clear() {
        int length = this.f38375h.length;
        for (int i = 0; i < length; i++) {
            this.f38375h[i] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        return this.f38372e == bitMatrix.f38372e && this.f38373f == bitMatrix.f38373f && this.f38374g == bitMatrix.f38374g && Arrays.equals(this.f38375h, bitMatrix.f38375h);
    }

    public void flip(int i, int i2) {
        int i3 = (i2 * this.f38374g) + (i / 32);
        int[] iArr = this.f38375h;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public boolean get(int i, int i2) {
        return ((this.f38375h[(i2 * this.f38374g) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public int[] getBottomRightOnBit() {
        int length = this.f38375h.length - 1;
        while (length >= 0 && this.f38375h[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.f38374g;
        int i2 = length / i;
        int i3 = (length % i) << 5;
        int i4 = this.f38375h[length];
        int i5 = 31;
        while ((i4 >>> i5) == 0) {
            i5--;
        }
        return new int[]{i3 + i5, i2};
    }

    public int[] getEnclosingRectangle() {
        int i = this.f38372e;
        int i2 = this.f38373f;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < this.f38373f; i5++) {
            int i6 = 0;
            while (true) {
                int i7 = this.f38374g;
                if (i6 < i7) {
                    int i8 = this.f38375h[(i7 * i5) + i6];
                    if (i8 != 0) {
                        if (i5 < i2) {
                            i2 = i5;
                        }
                        if (i5 > i4) {
                            i4 = i5;
                        }
                        int i9 = i6 << 5;
                        if (i9 < i) {
                            int i10 = 0;
                            while ((i8 << (31 - i10)) == 0) {
                                i10++;
                            }
                            int i11 = i10 + i9;
                            if (i11 < i) {
                                i = i11;
                            }
                        }
                        if (i9 + 31 > i3) {
                            int i12 = 31;
                            while ((i8 >>> i12) == 0) {
                                i12--;
                            }
                            int i13 = i9 + i12;
                            if (i13 > i3) {
                                i3 = i13;
                            }
                        }
                    }
                    i6++;
                }
            }
        }
        if (i3 < i || i4 < i2) {
            return null;
        }
        return new int[]{i, i2, (i3 - i) + 1, (i4 - i2) + 1};
    }

    public int getHeight() {
        return this.f38373f;
    }

    public BitArray getRow(int i, BitArray bitArray) {
        if (bitArray == null || bitArray.getSize() < this.f38372e) {
            bitArray = new BitArray(this.f38372e);
        } else {
            bitArray.clear();
        }
        int i2 = i * this.f38374g;
        for (int i3 = 0; i3 < this.f38374g; i3++) {
            bitArray.setBulk(i3 << 5, this.f38375h[i2 + i3]);
        }
        return bitArray;
    }

    public int getRowSize() {
        return this.f38374g;
    }

    public int[] getTopLeftOnBit() {
        int[] iArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            iArr = this.f38375h;
            if (i2 >= iArr.length || iArr[i2] != 0) {
                break;
            }
            i2++;
        }
        if (i2 == iArr.length) {
            return null;
        }
        int i3 = this.f38374g;
        int i4 = i2 / i3;
        int i5 = (i2 % i3) << 5;
        while ((iArr[i2] << (31 - i)) == 0) {
            i++;
        }
        return new int[]{i5 + i, i4};
    }

    public int getWidth() {
        return this.f38372e;
    }

    public int hashCode() {
        int i = this.f38372e;
        return (((((((i * 31) + i) * 31) + this.f38373f) * 31) + this.f38374g) * 31) + Arrays.hashCode(this.f38375h);
    }

    public void rotate180() {
        int width = getWidth();
        int height = getHeight();
        BitArray bitArray = new BitArray(width);
        BitArray bitArray2 = new BitArray(width);
        for (int i = 0; i < (height + 1) / 2; i++) {
            bitArray = getRow(i, bitArray);
            int i2 = (height - 1) - i;
            bitArray2 = getRow(i2, bitArray2);
            bitArray.reverse();
            bitArray2.reverse();
            setRow(i, bitArray2);
            setRow(i2, bitArray);
        }
    }

    public void set(int i, int i2) {
        int i3 = (i2 * this.f38374g) + (i / 32);
        int[] iArr = this.f38375h;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.f38373f || i5 > this.f38372e) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.f38374g * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f38375h;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public void setRow(int i, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int[] iArr = this.f38375h;
        int i2 = this.f38374g;
        System.arraycopy(bitArray2, 0, iArr, i * i2, i2);
    }

    public String toString() {
        return toString("X ", GlideException.C1935a.f14609h);
    }

    public void unset(int i, int i2) {
        int i3 = (i2 * this.f38374g) + (i / 32);
        int[] iArr = this.f38375h;
        iArr[i3] = (~(1 << (i & 31))) & iArr[i3];
    }

    public void xor(BitMatrix bitMatrix) {
        if (this.f38372e != bitMatrix.getWidth() || this.f38373f != bitMatrix.getHeight() || this.f38374g != bitMatrix.getRowSize()) {
            throw new IllegalArgumentException("input matrix dimensions do not match");
        }
        BitArray bitArray = new BitArray((this.f38372e / 32) + 1);
        for (int i = 0; i < this.f38373f; i++) {
            int i2 = this.f38374g * i;
            int[] bitArray2 = bitMatrix.getRow(i, bitArray).getBitArray();
            for (int i3 = 0; i3 < this.f38374g; i3++) {
                int[] iArr = this.f38375h;
                int i4 = i2 + i3;
                iArr[i4] = iArr[i4] ^ bitArray2[i3];
            }
        }
    }

    public BitMatrix(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.f38372e = i;
            this.f38373f = i2;
            int i3 = (i + 31) / 32;
            this.f38374g = i3;
            this.f38375h = new int[i3 * i2];
            return;
        }
        throw new IllegalArgumentException("Both dimensions must be greater than 0");
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitMatrix m72169clone() {
        return new BitMatrix(this.f38372e, this.f38373f, this.f38374g, (int[]) this.f38375h.clone());
    }

    public String toString(String str, String str2) {
        return m30510a(str, str2, "\n");
    }

    @Deprecated
    public String toString(String str, String str2, String str3) {
        return m30510a(str, str2, str3);
    }

    public BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.f38372e = i;
        this.f38373f = i2;
        this.f38374g = i3;
        this.f38375h = iArr;
    }
}
