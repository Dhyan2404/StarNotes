package com.sunia.HTREnginev2;

import java.util.Enumeration;
import java.util.Iterator;

/* loaded from: classes5.dex */
public class emo implements Iterator {

    /* renamed from: e */
    public final /* synthetic */ Enumeration f69097e;

    /* renamed from: f */
    public final /* synthetic */ fmo f69098f;

    public emo(fmo fmoVar, Enumeration enumeration) {
        this.f69098f = fmoVar;
        this.f69097e = enumeration;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f69097e.hasMoreElements();
    }

    @Override // java.util.Iterator
    public Object next() {
        return this.f69097e.nextElement();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
