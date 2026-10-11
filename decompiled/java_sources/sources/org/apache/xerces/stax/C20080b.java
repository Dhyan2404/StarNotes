package org.apache.xerces.stax;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: org.apache.xerces.stax.b */
/* loaded from: classes13.dex */
public class C20080b implements Iterator {

    /* renamed from: e */
    public boolean f113444e = true;

    /* renamed from: f */
    public final /* synthetic */ DefaultNamespaceContext f113445f;

    public C20080b(DefaultNamespaceContext defaultNamespaceContext) {
        this.f113445f = defaultNamespaceContext;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f113444e;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f113444e = false;
        return "xmlns";
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
