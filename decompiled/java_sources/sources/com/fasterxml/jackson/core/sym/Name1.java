package com.fasterxml.jackson.core.sym;

/* loaded from: classes4.dex */
public final class Name1 extends Name {

    /* renamed from: b */
    public static final Name1 f21327b = new Name1("", 0, 0);

    /* renamed from: a */
    public final int f21328a;

    public Name1(String str, int i, int i2) {
        super(str, i);
        this.f21328a = i2;
    }

    public static Name1 getEmptyName() {
        return f21327b;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2, int i3) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i) {
        return i == this.f21328a;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2) {
        return i == this.f21328a && i2 == 0;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i) {
        return i == 1 && iArr[0] == this.f21328a;
    }
}
