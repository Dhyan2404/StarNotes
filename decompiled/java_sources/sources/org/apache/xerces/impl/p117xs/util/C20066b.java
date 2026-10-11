package org.apache.xerces.impl.p117xs.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.xerces.impl.p117xs.util.XSNamedMapImpl;

/* renamed from: org.apache.xerces.impl.xs.util.b */
/* loaded from: classes13.dex */
public class C20066b implements Iterator {

    /* renamed from: e */
    public int f113267e = 0;

    /* renamed from: f */
    public final /* synthetic */ C20065a f113268f;

    public C20066b(C20065a c20065a) {
        this.f113268f = c20065a;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i;
        int i2 = this.f113267e;
        i = this.f113268f.f113264e;
        return i2 < i;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i;
        XSNamedMapImpl.C20063a[] c20063aArr;
        int i2 = this.f113267e;
        i = this.f113268f.f113264e;
        if (i2 >= i) {
            throw new NoSuchElementException();
        }
        c20063aArr = this.f113268f.f113265f;
        int i3 = this.f113267e;
        this.f113267e = i3 + 1;
        return c20063aArr[i3];
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
