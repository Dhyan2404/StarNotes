package com.fasterxml.jackson.core.sym;

/* loaded from: classes4.dex */
public final class Name2 extends Name {

    /* renamed from: a */
    public final int f21329a;

    /* renamed from: b */
    public final int f21330b;

    public Name2(String str, int i, int i2, int i3) {
        super(str, i);
        this.f21329a = i2;
        this.f21330b = i3;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2, int i3) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i, int i2) {
        return i == this.f21329a && i2 == this.f21330b;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i) {
        return i == 2 && iArr[0] == this.f21329a && iArr[1] == this.f21330b;
    }
}
