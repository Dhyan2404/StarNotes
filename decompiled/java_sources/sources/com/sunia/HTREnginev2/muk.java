package com.sunia.HTREnginev2;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;

/* loaded from: classes4.dex */
public final class muk extends DataCharacter {

    /* renamed from: c */
    public final FinderPattern f78022c;

    /* renamed from: d */
    public int f78023d;

    public muk(int i, int i2, FinderPattern finderPattern) {
        super(i, i2);
        this.f78022c = finderPattern;
    }

    /* renamed from: a */
    public int m55686a() {
        return this.f78023d;
    }

    /* renamed from: b */
    public FinderPattern m55687b() {
        return this.f78022c;
    }

    /* renamed from: c */
    public void m55688c() {
        this.f78023d++;
    }
}
