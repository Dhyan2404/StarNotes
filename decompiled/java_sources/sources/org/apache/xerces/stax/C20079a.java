package org.apache.xerces.stax;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: org.apache.xerces.stax.a */
/* loaded from: classes13.dex */
public class C20079a implements Iterator {

    /* renamed from: e */
    public boolean f113442e = true;

    /* renamed from: f */
    public final /* synthetic */ DefaultNamespaceContext f113443f;

    public C20079a(DefaultNamespaceContext defaultNamespaceContext) {
        this.f113443f = defaultNamespaceContext;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f113442e;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f113442e = false;
        return "xml";
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
