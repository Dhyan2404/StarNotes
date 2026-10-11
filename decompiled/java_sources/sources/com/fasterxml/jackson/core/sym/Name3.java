package com.fasterxml.jackson.core.sym;

/* loaded from: classes4.dex */
public final class Name3 extends Name {

    /* renamed from: a */
    public final int f21331a;

    /* renamed from: b */
    public final int f21332b;

    /* renamed from: c */
    public final int f21333c;

    public Name3(String str, int i, int i2, int i3, int i4) {
        super(str, i);
        this.f21331a = i2;
        this.f21332b = i3;
        this.f21333c = i4;
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
        return this.f21331a == i && this.f21332b == i2 && this.f21333c == i3;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i) {
        return i == 3 && iArr[0] == this.f21331a && iArr[1] == this.f21332b && iArr[2] == this.f21333c;
    }
}
