package com.sunia.HTREnginev2;

import java.util.Iterator;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOIterator;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.Uncheck;

/* loaded from: classes11.dex */
public final class csn<E> implements Iterator<E> {

    /* renamed from: e */
    public final IOIterator<E> f67145e;

    public csn(IOIterator<E> iOIterator) {
        Objects.requireNonNull(iOIterator, "delegate");
        this.f67145e = iOIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        final IOIterator<E> iOIterator = this.f67145e;
        iOIterator.getClass();
        return ((Boolean) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.asn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                return Boolean.valueOf(IOIterator.this.hasNext());
            }
        })).booleanValue();
    }

    @Override // java.util.Iterator
    public E next() {
        final IOIterator<E> iOIterator = this.f67145e;
        iOIterator.getClass();
        return (E) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.bsn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                return IOIterator.this.next();
            }
        });
    }

    @Override // java.util.Iterator
    public void remove() {
        final IOIterator<E> iOIterator = this.f67145e;
        iOIterator.getClass();
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.zrn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                IOIterator.this.remove();
            }
        });
    }
}
