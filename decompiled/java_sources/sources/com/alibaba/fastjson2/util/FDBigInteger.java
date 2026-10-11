package com.alibaba.fastjson2.util;

import java.util.Arrays;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes3.dex */
public final class FDBigInteger {

    /* renamed from: f */
    public static final int f12785f = 340;

    /* renamed from: h */
    public static final /* synthetic */ boolean f12787h = false;

    /* renamed from: a */
    public int[] f12788a;

    /* renamed from: b */
    public int f12789b;

    /* renamed from: c */
    public int f12790c;

    /* renamed from: d */
    public boolean f12791d;

    /* renamed from: e */
    public static final int[] f12784e = {1, 5, 25, 125, StandardNames.XS_UNIQUE, 3125, 15625, 78125, 390625, 1953125, 9765625, 48828125, 244140625, 1220703125};

    /* renamed from: g */
    public static final FDBigInteger[] f12786g = new FDBigInteger[340];

    static {
        int i = 0;
        while (true) {
            int[] iArr = f12784e;
            if (i >= iArr.length) {
                break;
            }
            FDBigInteger fDBigInteger = new FDBigInteger(new int[]{iArr[i]}, 0);
            fDBigInteger.f12791d = true;
            f12786g[i] = fDBigInteger;
            i++;
        }
        FDBigInteger fDBigInteger2 = f12786g[i - 1];
        while (i < 340) {
            FDBigInteger[] fDBigIntegerArr = f12786g;
            fDBigInteger2 = fDBigInteger2.m7590e(5);
            fDBigIntegerArr[i] = fDBigInteger2;
            fDBigInteger2.f12791d = true;
            i++;
        }
    }

    public FDBigInteger(int[] iArr, int i) {
        this.f12788a = iArr;
        this.f12789b = i;
        this.f12790c = iArr.length;
        m7592i();
    }

    /* renamed from: a */
    public static FDBigInteger m7584a(int i) {
        return i < 340 ? f12786g[i] : m7585b(i);
    }

    /* renamed from: b */
    public static FDBigInteger m7585b(int i) {
        if (i < 340) {
            return f12786g[i];
        }
        int i2 = i >> 1;
        int i3 = i - i2;
        FDBigInteger m7585b = m7585b(i2);
        int[] iArr = f12784e;
        if (i3 < iArr.length) {
            return m7585b.m7590e(iArr[i3]);
        }
        FDBigInteger m7585b2 = m7585b(i3);
        int i4 = m7585b.f12790c;
        if (i4 == 0) {
            return m7585b;
        }
        if (m7585b.f12789b + i4 == 1) {
            return m7585b2.m7590e(m7585b.f12788a[0]);
        }
        int i5 = m7585b2.f12790c;
        if (i5 == 0) {
            return m7585b2;
        }
        if (m7585b2.f12789b + i5 == 1) {
            return m7585b.m7590e(m7585b2.f12788a[0]);
        }
        int[] iArr2 = new int[i4 + i5];
        m7589g(m7585b.f12788a, i4, m7585b2.f12788a, i5, iArr2);
        return new FDBigInteger(iArr2, m7585b.f12789b + m7585b2.f12789b);
    }

    /* renamed from: c */
    public static int m7586c(int[] iArr, int i) {
        while (i > 0) {
            i--;
            if (iArr[i] != 0) {
                return 1;
            }
        }
        return 0;
    }

    /* renamed from: d */
    public static void m7587d(int[] iArr, int i, int[] iArr2, int i2, int i3, int i4) {
        while (i > 0) {
            int i5 = iArr[i - 1];
            iArr2[i] = (i4 << i2) | (i5 >>> i3);
            i--;
            i4 = i5;
        }
        iArr2[0] = i4 << i2;
    }

    /* renamed from: f */
    public static void m7588f(int[] iArr, int i, int i2, int[] iArr2) {
        long j = i2 & 4294967295L;
        long j2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long j3 = ((iArr[i3] & 4294967295L) * j) + j2;
            iArr2[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        iArr2[i] = (int) j2;
    }

    /* renamed from: g */
    public static void m7589g(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3) {
        for (int i3 = 0; i3 < i; i3++) {
            long j = iArr[i3] & 4294967295L;
            long j2 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                long j3 = j2 + (iArr3[r11] & 4294967295L) + ((iArr2[i4] & 4294967295L) * j);
                iArr3[i3 + i4] = (int) j3;
                j2 = j3 >>> 32;
            }
            iArr3[i3 + i2] = (int) j2;
        }
    }

    public static FDBigInteger valueOfMulPow52(long j, int i, int i2) {
        int i3 = (int) j;
        int i4 = (int) (j >>> 32);
        int i5 = i2 >> 5;
        int i6 = i2 & 31;
        if (i == 0) {
            if (i2 == 0) {
                return new FDBigInteger(new int[]{i3, i4}, 0);
            }
            if (i6 == 0) {
                return new FDBigInteger(new int[]{i3, i4}, i5);
            }
            int i7 = i3 << i6;
            int i8 = i4 << i6;
            int i9 = 32 - i6;
            return new FDBigInteger(new int[]{i7, (i3 >>> i9) | i8, i4 >>> i9}, i5);
        }
        if (i < f12784e.length) {
            long j2 = r8[i] & 4294967295L;
            long j3 = (i3 & 4294967295L) * j2;
            int i10 = (int) j3;
            long j4 = ((i4 & 4294967295L) * j2) + (j3 >>> 32);
            int i11 = (int) j4;
            int i12 = (int) (j4 >>> 32);
            if (i6 == 0) {
                return new FDBigInteger(new int[]{i10, i11, i12}, i5);
            }
            int i13 = 32 - i6;
            return new FDBigInteger(new int[]{i10 << i6, (i10 >>> i13) | (i11 << i6), (i11 >>> i13) | (i12 << i6), i12 >>> i13}, i5);
        }
        FDBigInteger m7584a = m7584a(i);
        int[] iArr = m7584a.f12788a;
        int i14 = m7584a.f12790c;
        long j5 = i3 & 4294967295L;
        int[] iArr2 = i4 == 0 ? new int[i14 + 1 + (i2 != 0 ? 1 : 0)] : new int[i14 + 2 + (i2 != 0 ? 1 : 0)];
        long j6 = 0;
        for (int i15 = 0; i15 < i14; i15++) {
            long j7 = ((iArr[i15] & 4294967295L) * j5) + j6;
            iArr2[i15] = (int) j7;
            j6 = j7 >>> 32;
        }
        iArr2[i14] = (int) j6;
        if (i4 != 0) {
            long j8 = i4 & 4294967295L;
            int i16 = 0;
            long j9 = 0;
            while (i16 < i14) {
                int i17 = i16 + 1;
                long j10 = (iArr2[i17] & 4294967295L) + ((iArr[i16] & 4294967295L) * j8) + j9;
                iArr2[i17] = (int) j10;
                j9 = j10 >>> 32;
                i16 = i17;
                iArr = iArr;
            }
            iArr2[i14 + 1] = (int) j9;
        }
        return new FDBigInteger(iArr2, m7584a.f12789b).leftShift(i2);
    }

    public int cmp(FDBigInteger fDBigInteger) {
        int i = this.f12790c;
        int i2 = this.f12789b + i;
        int i3 = fDBigInteger.f12790c;
        int i4 = fDBigInteger.f12789b + i3;
        if (i2 > i4) {
            return 1;
        }
        if (i2 < i4) {
            return -1;
        }
        while (i > 0 && i3 > 0) {
            i--;
            int i5 = this.f12788a[i];
            i3--;
            int i6 = fDBigInteger.f12788a[i3];
            if (i5 != i6) {
                return (((long) i5) & 4294967295L) < (4294967295L & ((long) i6)) ? -1 : 1;
            }
        }
        if (i > 0) {
            return m7586c(this.f12788a, i);
        }
        if (i3 > 0) {
            return -m7586c(fDBigInteger.f12788a, i3);
        }
        return 0;
    }

    public int cmpPow52(int i, int i2) {
        if (i != 0) {
            return cmp(m7584a(i).leftShift(i2));
        }
        int i3 = i2 >> 5;
        int i4 = i2 & 31;
        int i5 = this.f12790c;
        int i6 = this.f12789b + i5;
        int i7 = i3 + 1;
        if (i6 > i7) {
            return 1;
        }
        if (i6 < i7) {
            return -1;
        }
        int[] iArr = this.f12788a;
        int i8 = iArr[i5 - 1];
        int i9 = 1 << i4;
        return i8 != i9 ? (((long) i8) & 4294967295L) < (4294967295L & ((long) i9)) ? -1 : 1 : m7586c(iArr, i5 - 1);
    }

    /* renamed from: e */
    public final FDBigInteger m7590e(int i) {
        int i2 = this.f12790c;
        if (i2 == 0) {
            return this;
        }
        int[] iArr = new int[i2 + 1];
        m7588f(this.f12788a, i2, i, iArr);
        return new FDBigInteger(iArr, this.f12789b);
    }

    /* renamed from: h */
    public final void m7591h(int i, int i2) {
        int i3;
        long j = i & 4294967295L;
        long j2 = ((r10[0] & 4294967295L) * j) + (i2 & 4294967295L);
        this.f12788a[0] = (int) j2;
        long j3 = j2 >>> 32;
        int i4 = 1;
        while (true) {
            i3 = this.f12790c;
            if (i4 >= i3) {
                break;
            }
            long j4 = j3 + ((r6[i4] & 4294967295L) * j);
            this.f12788a[i4] = (int) j4;
            j3 = j4 >>> 32;
            i4++;
        }
        if (j3 != 0) {
            int[] iArr = this.f12788a;
            this.f12790c = i3 + 1;
            iArr[i3] = (int) j3;
        }
    }

    /* renamed from: i */
    public final void m7592i() {
        int i = this.f12790c;
        if (i > 0) {
            int i2 = i - 1;
            if (this.f12788a[i2] == 0) {
                while (i2 > 0 && this.f12788a[i2 - 1] == 0) {
                    i2--;
                }
                this.f12790c = i2;
                if (i2 == 0) {
                    this.f12789b = 0;
                }
            }
        }
    }

    public FDBigInteger leftInplaceSub(FDBigInteger fDBigInteger) {
        FDBigInteger fDBigInteger2 = this;
        if (fDBigInteger2.f12791d) {
            fDBigInteger2 = new FDBigInteger((int[]) fDBigInteger2.f12788a.clone(), fDBigInteger2.f12789b);
        }
        int i = fDBigInteger.f12789b - fDBigInteger2.f12789b;
        int[] iArr = fDBigInteger.f12788a;
        int[] iArr2 = fDBigInteger2.f12788a;
        int i2 = fDBigInteger.f12790c;
        int i3 = fDBigInteger2.f12790c;
        int i4 = 0;
        if (i < 0) {
            int i5 = i3 - i;
            if (i5 < iArr2.length) {
                int i6 = -i;
                System.arraycopy(iArr2, 0, iArr2, i6, i3);
                Arrays.fill(iArr2, 0, i6, 0);
            } else {
                int[] iArr3 = new int[i5];
                System.arraycopy(iArr2, 0, iArr3, -i, i3);
                fDBigInteger2.f12788a = iArr3;
                iArr2 = iArr3;
            }
            fDBigInteger2.f12789b = fDBigInteger.f12789b;
            fDBigInteger2.f12790c = i5;
            i = 0;
            i3 = i5;
        }
        long j = 0;
        while (i4 < i2 && i < i3) {
            long j2 = ((iArr2[i] & 4294967295L) - (iArr[i4] & 4294967295L)) + j;
            iArr2[i] = (int) j2;
            j = j2 >> 32;
            i4++;
            i++;
        }
        while (j != 0 && i < i3) {
            long j3 = (iArr2[i] & 4294967295L) + j;
            iArr2[i] = (int) j3;
            j = j3 >> 32;
            i++;
        }
        fDBigInteger2.m7592i();
        return fDBigInteger2;
    }

    public FDBigInteger leftShift(int i) {
        int[] iArr;
        int i2;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4 = this.f12788a;
        int i3 = this.f12790c;
        int i4 = this.f12789b;
        if (i != 0 && i3 != 0) {
            int i5 = i >> 5;
            int i6 = i & 31;
            if (this.f12791d) {
                if (i6 == 0) {
                    return new FDBigInteger(Arrays.copyOf(iArr4, i3), i4 + i5);
                }
                int i7 = 32 - i6;
                int i8 = i3 - 1;
                int i9 = iArr4[i8];
                int i10 = i9 >>> i7;
                if (i10 != 0) {
                    iArr3 = new int[i3 + 1];
                    iArr3[i3] = i10;
                } else {
                    iArr3 = new int[i3];
                }
                int[] iArr5 = iArr3;
                m7587d(iArr4, i8, iArr5, i6, i7, i9);
                return new FDBigInteger(iArr5, i4 + i5);
            }
            if (i6 != 0) {
                int i11 = 32 - i6;
                int i12 = 0;
                int i13 = iArr4[0];
                if ((i13 << i6) == 0) {
                    while (i12 < i3 - 1) {
                        int i14 = i12 + 1;
                        int i15 = iArr4[i14];
                        iArr4[i12] = (i13 >>> i11) | (i15 << i6);
                        i12 = i14;
                        i13 = i15;
                    }
                    int i16 = i13 >>> i11;
                    iArr4[i12] = i16;
                    if (i16 == 0) {
                        i3--;
                    }
                    i4++;
                } else {
                    int i17 = i3 - 1;
                    int i18 = iArr4[i17];
                    int i19 = i18 >>> i11;
                    if (i19 != 0) {
                        if (i3 == iArr4.length) {
                            iArr2 = new int[i3 + 1];
                            this.f12788a = iArr2;
                        } else {
                            iArr2 = iArr4;
                        }
                        i2 = i3 + 1;
                        iArr2[i3] = i19;
                        iArr = iArr2;
                    } else {
                        iArr = iArr4;
                        i2 = i3;
                    }
                    m7587d(iArr4, i17, iArr, i6, i11, i18);
                    i3 = i2;
                }
            }
            this.f12790c = i3;
            this.f12789b = i4 + i5;
        }
        return this;
    }

    public FDBigInteger multByPow52(int i, int i2) {
        int i3 = this.f12790c;
        if (i3 == 0) {
            return this;
        }
        if (i != 0) {
            int i4 = i2 != 0 ? 1 : 0;
            int[] iArr = f12784e;
            if (i < iArr.length) {
                int[] iArr2 = new int[i3 + 1 + i4];
                m7588f(this.f12788a, i3, iArr[i], iArr2);
                this = new FDBigInteger(iArr2, this.f12789b);
            } else {
                FDBigInteger m7584a = m7584a(i);
                int i5 = this.f12790c;
                int i6 = m7584a.f12790c;
                int[] iArr3 = new int[i5 + i6 + m7584a.f12789b + i4];
                m7589g(this.f12788a, i5, m7584a.f12788a, i6, iArr3);
                this = new FDBigInteger(iArr3, this.f12789b + m7584a.f12789b);
            }
        }
        return this.leftShift(i2);
    }

    public FDBigInteger rightInplaceSub(FDBigInteger fDBigInteger) {
        if (fDBigInteger.f12791d) {
            fDBigInteger = new FDBigInteger((int[]) fDBigInteger.f12788a.clone(), fDBigInteger.f12789b);
        }
        int i = this.f12789b - fDBigInteger.f12789b;
        int[] iArr = fDBigInteger.f12788a;
        int[] iArr2 = this.f12788a;
        int i2 = fDBigInteger.f12790c;
        int i3 = this.f12790c;
        if (i < 0) {
            if (i3 < iArr.length) {
                int i4 = -i;
                System.arraycopy(iArr, 0, iArr, i4, i2);
                Arrays.fill(iArr, 0, i4, 0);
            } else {
                int[] iArr3 = new int[i3];
                System.arraycopy(iArr, 0, iArr3, -i, i2);
                fDBigInteger.f12788a = iArr3;
                iArr = iArr3;
            }
            fDBigInteger.f12789b = this.f12789b;
            i = 0;
        } else {
            int i5 = i3 + i;
            if (i5 >= iArr.length) {
                iArr = Arrays.copyOf(iArr, i5);
                fDBigInteger.f12788a = iArr;
            }
        }
        long j = 0;
        int i6 = 0;
        while (i6 < i) {
            long j2 = (-(4294967295L & iArr[i6])) + j;
            iArr[i6] = (int) j2;
            j = j2 >> 32;
            i6++;
        }
        for (int i7 = 0; i7 < i3; i7++) {
            long j3 = ((iArr2[i7] & 4294967295L) - (iArr[i6] & 4294967295L)) + j;
            iArr[i6] = (int) j3;
            j = j3 >> 32;
            i6++;
        }
        fDBigInteger.f12790c = i6;
        fDBigInteger.m7592i();
        return fDBigInteger;
    }

    public FDBigInteger(long j, char[] cArr, int i, int i2) {
        int[] iArr = new int[Math.max((i2 + 8) / 9, 2)];
        this.f12788a = iArr;
        int i3 = 0;
        iArr[0] = (int) j;
        iArr[1] = (int) (j >>> 32);
        this.f12789b = 0;
        this.f12790c = 2;
        int i4 = i2 - 5;
        while (i < i4) {
            int i5 = i + 5;
            int i6 = cArr[i] - '0';
            i++;
            while (i < i5) {
                i6 = ((i6 * 10) + cArr[i]) - 48;
                i++;
            }
            m7591h(100000, i6);
        }
        int i7 = 1;
        while (i < i2) {
            i3 = ((i3 * 10) + cArr[i]) - 48;
            i7 *= 10;
            i++;
        }
        if (i7 != 1) {
            m7591h(i7, i3);
        }
        m7592i();
    }
}
