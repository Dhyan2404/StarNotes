package com.sunia.HTREnginev2;

import java.util.Enumeration;
import java.util.Iterator;

/* loaded from: classes5.dex */
public class p4m implements Iterator {

    /* renamed from: e */
    public final /* synthetic */ Enumeration f80451e;

    /* renamed from: f */
    public final /* synthetic */ q4m f80452f;

    public p4m(q4m q4mVar, Enumeration enumeration) {
        this.f80452f = q4mVar;
        this.f80451e = enumeration;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f80451e.hasMoreElements();
    }

    @Override // java.util.Iterator
    public Object next() {
        return this.f80451e.nextElement();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
