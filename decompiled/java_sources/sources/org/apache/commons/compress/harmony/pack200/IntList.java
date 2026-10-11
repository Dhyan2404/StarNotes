package org.apache.commons.compress.harmony.pack200;

import java.util.Arrays;

/* loaded from: classes12.dex */
public class IntList {

    /* renamed from: a */
    public int[] f106651a;

    /* renamed from: b */
    public int f106652b;

    /* renamed from: c */
    public int f106653c;

    /* renamed from: d */
    public int f106654d;

    public IntList() {
        this(10);
    }

    /* renamed from: a */
    public final void m66949a(int i) {
        int i2 = this.f106653c;
        int i3 = this.f106652b;
        int i4 = i2 - i3;
        int[] iArr = this.f106651a;
        if (i3 >= i - (iArr.length - i2)) {
            int i5 = i2 - i3;
            if (i4 > 0) {
                System.arraycopy(iArr, i3, iArr, 0, i4);
            }
            this.f106652b = 0;
            this.f106653c = i5;
            return;
        }
        int i6 = i4 / 2;
        if (i <= i6) {
            i = i6;
        }
        if (i < 12) {
            i = 12;
        }
        int[] iArr2 = new int[i + i4];
        if (i4 > 0) {
            System.arraycopy(iArr, i3, iArr2, 0, i4);
            this.f106652b = 0;
            this.f106653c = i4;
        }
        this.f106651a = iArr2;
    }

    public boolean add(int i) {
        if (this.f106653c == this.f106651a.length) {
            m66949a(1);
        }
        int[] iArr = this.f106651a;
        int i2 = this.f106653c;
        this.f106653c = i2 + 1;
        iArr[i2] = i;
        this.f106654d++;
        return true;
    }

    public void addAll(IntList intList) {
        m66949a(intList.size());
        for (int i = 0; i < intList.size(); i++) {
            add(intList.get(i));
        }
    }

    /* renamed from: b */
    public final void m66950b(int i) {
        int i2 = this.f106653c;
        int i3 = this.f106652b;
        int i4 = i2 - i3;
        int[] iArr = this.f106651a;
        if ((iArr.length - i2) + i3 >= i) {
            int length = iArr.length - i4;
            if (i4 > 0) {
                System.arraycopy(iArr, i3, iArr, length, i4);
            }
            this.f106652b = length;
            this.f106653c = this.f106651a.length;
            return;
        }
        int i5 = i4 / 2;
        if (i <= i5) {
            i = i5;
        }
        if (i < 12) {
            i = 12;
        }
        int i6 = i + i4;
        int[] iArr2 = new int[i6];
        if (i4 > 0) {
            System.arraycopy(iArr, i3, iArr2, i6 - i4, i4);
        }
        this.f106652b = i6 - i4;
        this.f106653c = i6;
        this.f106651a = iArr2;
    }

    /* renamed from: c */
    public final void m66951c(int i, int i2) {
        int i3 = this.f106653c;
        int i4 = this.f106652b;
        int i5 = i3 - i4;
        int i6 = i5 / 2;
        if (i2 > i6) {
            i6 = i2;
        }
        if (i6 < 12) {
            i6 = 12;
        }
        int i7 = i5 + i6;
        int[] iArr = new int[i7];
        int i8 = i6 - i2;
        System.arraycopy(this.f106651a, i4 + i, iArr, i8 + i + i2, i5 - i);
        System.arraycopy(this.f106651a, this.f106652b, iArr, i8, i);
        this.f106652b = i8;
        this.f106653c = i7;
        this.f106651a = iArr;
    }

    public void clear() {
        int i = this.f106652b;
        int i2 = this.f106653c;
        if (i != i2) {
            Arrays.fill(this.f106651a, i, i2, -1);
            this.f106653c = 0;
            this.f106652b = 0;
            this.f106654d++;
        }
    }

    public int get(int i) {
        if (i >= 0) {
            int i2 = this.f106653c;
            int i3 = this.f106652b;
            if (i < i2 - i3) {
                return this.f106651a[i3 + i];
            }
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    public void increment(int i) {
        if (i >= 0) {
            int i2 = this.f106653c;
            int i3 = this.f106652b;
            if (i < i2 - i3) {
                int[] iArr = this.f106651a;
                int i4 = i3 + i;
                iArr[i4] = iArr[i4] + 1;
                return;
            }
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    public boolean isEmpty() {
        return this.f106653c == this.f106652b;
    }

    public int remove(int i) {
        int i2;
        int i3 = this.f106653c;
        int i4 = this.f106652b;
        int i5 = i3 - i4;
        if (i < 0 || i >= i5) {
            throw new IndexOutOfBoundsException();
        }
        if (i == i5 - 1) {
            int[] iArr = this.f106651a;
            int i6 = i3 - 1;
            this.f106653c = i6;
            i2 = iArr[i6];
            iArr[i6] = 0;
        } else if (i == 0) {
            int[] iArr2 = this.f106651a;
            int i7 = iArr2[i4];
            this.f106652b = i4 + 1;
            iArr2[i4] = 0;
            i2 = i7;
        } else {
            int i8 = i4 + i;
            int[] iArr3 = this.f106651a;
            int i9 = iArr3[i8];
            if (i < i5 / 2) {
                System.arraycopy(iArr3, i4, iArr3, i4 + 1, i);
                int[] iArr4 = this.f106651a;
                int i10 = this.f106652b;
                this.f106652b = i10 + 1;
                iArr4[i10] = 0;
            } else {
                System.arraycopy(iArr3, i8 + 1, iArr3, i8, (i5 - i) - 1);
                int[] iArr5 = this.f106651a;
                int i11 = this.f106653c - 1;
                this.f106653c = i11;
                iArr5[i11] = 0;
            }
            i2 = i9;
        }
        if (this.f106652b == this.f106653c) {
            this.f106653c = 0;
            this.f106652b = 0;
        }
        this.f106654d++;
        return i2;
    }

    public int size() {
        return this.f106653c - this.f106652b;
    }

    public int[] toArray() {
        int i = this.f106653c;
        int i2 = this.f106652b;
        int i3 = i - i2;
        int[] iArr = new int[i3];
        System.arraycopy(this.f106651a, i2, iArr, 0, i3);
        return iArr;
    }

    public IntList(int i) {
        if (i >= 0) {
            this.f106653c = 0;
            this.f106652b = 0;
            this.f106651a = new int[i];
            return;
        }
        throw new IllegalArgumentException();
    }

    public void add(int i, int i2) {
        int i3 = this.f106653c;
        int i4 = this.f106652b;
        int i5 = i3 - i4;
        if (i > 0 && i < i5) {
            if (i4 == 0 && i3 == this.f106651a.length) {
                m66951c(i, 1);
            } else {
                if (i >= i5 / 2 || i4 <= 0) {
                    int[] iArr = this.f106651a;
                    if (i3 != iArr.length) {
                        int i6 = i4 + i;
                        System.arraycopy(iArr, i6, iArr, i6 + 1, i5 - i);
                        this.f106653c++;
                    }
                }
                int[] iArr2 = this.f106651a;
                int i7 = i4 - 1;
                this.f106652b = i7;
                System.arraycopy(iArr2, i4, iArr2, i7, i);
            }
            this.f106651a[i + this.f106652b] = i2;
        } else if (i == 0) {
            if (i4 == 0) {
                m66950b(1);
            }
            int[] iArr3 = this.f106651a;
            int i8 = this.f106652b - 1;
            this.f106652b = i8;
            iArr3[i8] = i2;
        } else if (i == i5) {
            if (i3 == this.f106651a.length) {
                m66949a(1);
            }
            int[] iArr4 = this.f106651a;
            int i9 = this.f106653c;
            this.f106653c = i9 + 1;
            iArr4[i9] = i2;
        } else {
            throw new IndexOutOfBoundsException();
        }
        this.f106654d++;
    }
}
