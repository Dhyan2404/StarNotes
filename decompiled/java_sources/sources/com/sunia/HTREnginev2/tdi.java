package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOIterator;

/* loaded from: classes11.dex */
public final class tdi<E> implements IOIterator<E> {

    /* renamed from: a */
    public final Iterator<E> f85218a;

    public tdi(Iterator<E> it2) {
        Objects.requireNonNull(it2, "delegate");
        this.f85218a = it2;
    }

    /* renamed from: a */
    public static <E> tdi<E> m57364a(Iterator<E> it2) {
        return new tdi<>(it2);
    }

    @Override // onyx.org.apache.commons.io.function.IOIterator
    public boolean hasNext() throws IOException {
        return this.f85218a.hasNext();
    }

    @Override // onyx.org.apache.commons.io.function.IOIterator
    public E next() throws IOException {
        return this.f85218a.next();
    }

    @Override // onyx.org.apache.commons.io.function.IOIterator
    public Iterator<E> unwrap() {
        return this.f85218a;
    }
}
