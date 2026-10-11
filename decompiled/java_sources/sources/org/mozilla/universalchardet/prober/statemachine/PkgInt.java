package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes13.dex */
public class PkgInt {
    public static final int BIT_SHIFT_16BITS = 4;
    public static final int BIT_SHIFT_4BITS = 2;
    public static final int BIT_SHIFT_8BITS = 3;
    public static final int INDEX_SHIFT_16BITS = 1;
    public static final int INDEX_SHIFT_4BITS = 3;
    public static final int INDEX_SHIFT_8BITS = 2;
    public static final int SHIFT_MASK_16BITS = 1;
    public static final int SHIFT_MASK_4BITS = 7;
    public static final int SHIFT_MASK_8BITS = 3;
    public static final int UNIT_MASK_16BITS = 65535;
    public static final int UNIT_MASK_4BITS = 15;
    public static final int UNIT_MASK_8BITS = 255;

    /* renamed from: a */
    public int f115641a;

    /* renamed from: b */
    public int f115642b;

    /* renamed from: c */
    public int f115643c;

    /* renamed from: d */
    public int f115644d;

    /* renamed from: e */
    public int[] f115645e;

    public PkgInt(int i, int i2, int i3, int i4, int[] iArr) {
        this.f115641a = i;
        this.f115642b = i2;
        this.f115643c = i3;
        this.f115644d = i4;
        this.f115645e = (int[]) iArr.clone();
    }

    public static int pack16bits(int i, int i2) {
        return i | (i2 << 16);
    }

    public static int pack4bits(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return pack8bits(i | (i2 << 4), (i4 << 4) | i3, (i6 << 4) | i5, (i8 << 4) | i7);
    }

    public static int pack8bits(int i, int i2, int i3, int i4) {
        return pack16bits(i | (i2 << 8), (i4 << 8) | i3);
    }

    public int unpack(int i) {
        return this.f115644d & (this.f115645e[i >> this.f115641a] >> ((i & this.f115642b) << this.f115643c));
    }
}
