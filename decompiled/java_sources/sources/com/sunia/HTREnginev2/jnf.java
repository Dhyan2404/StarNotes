package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.events.Namespace;

/* loaded from: classes13.dex */
public abstract class jnf extends plo {

    /* renamed from: g */
    public final QName f74501g;

    /* renamed from: h */
    public final List f74502h;

    /* renamed from: com.sunia.HTREnginev2.jnf$a */
    /* loaded from: classes13.dex */
    public static final class C13940a implements Iterator {

        /* renamed from: e */
        public final Iterator f74503e;

        public C13940a(Iterator it2) {
            this.f74503e = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f74503e.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return this.f74503e.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Attributes iterator is read-only.");
        }
    }

    public jnf(QName qName, boolean z, Iterator it2, Location location) {
        super(z ? 1 : 2, location);
        this.f74501g = qName;
        if (it2 == null || !it2.hasNext()) {
            this.f74502h = Collections.EMPTY_LIST;
            return;
        }
        this.f74502h = new ArrayList();
        do {
            this.f74502h.add((Namespace) it2.next());
        } while (it2.hasNext());
    }

    /* renamed from: a */
    public static Iterator m54983a(Iterator it2) {
        return new C13940a(it2);
    }

    public final QName getName() {
        return this.f74501g;
    }

    public final Iterator getNamespaces() {
        return m54983a(this.f74502h.iterator());
    }
}
