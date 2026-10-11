package com.fasterxml.jackson.core.sym;

import java.util.Arrays;

/* loaded from: classes4.dex */
public final class NameN extends Name {

    /* renamed from: a */
    public final int f21334a;

    /* renamed from: b */
    public final int f21335b;

    /* renamed from: c */
    public final int f21336c;

    /* renamed from: d */
    public final int f21337d;

    /* renamed from: e */
    public final int f21338e;

    /* renamed from: f */
    public final int[] f21339f;

    public NameN(String str, int i, int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        super(str, i);
        this.f21334a = i2;
        this.f21335b = i3;
        this.f21336c = i4;
        this.f21337d = i5;
        this.f21339f = iArr;
        this.f21338e = i6;
    }

    public static NameN construct(String str, int i, int[] iArr, int i2) {
        if (i2 >= 4) {
            return new NameN(str, i, iArr[0], iArr[1], iArr[2], iArr[3], i2 + (-4) > 0 ? Arrays.copyOfRange(iArr, 4, i2) : null, i2);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final boolean m17304a(int[] iArr) {
        int i = this.f21338e - 4;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2 + 4] != this.f21339f[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2, int i3) {
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0025. Please report as an issue. */
    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i) {
        if (i != this.f21338e || iArr[0] != this.f21334a || iArr[1] != this.f21335b || iArr[2] != this.f21336c || iArr[3] != this.f21337d) {
            return false;
        }
        switch (i) {
            case 8:
                if (iArr[7] != this.f21339f[3]) {
                    return false;
                }
            case 7:
                if (iArr[6] != this.f21339f[2]) {
                    return false;
                }
            case 6:
                if (iArr[5] != this.f21339f[1]) {
                    return false;
                }
            case 5:
                if (iArr[4] != this.f21339f[0]) {
                    return false;
                }
            case 4:
                return true;
            default:
                return m17304a(iArr);
        }
    }
}
