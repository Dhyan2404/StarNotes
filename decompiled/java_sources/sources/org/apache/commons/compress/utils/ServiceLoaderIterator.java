package org.apache.commons.compress.utils;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

@Deprecated
/* loaded from: classes12.dex */
public class ServiceLoaderIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public E f107340e;

    /* renamed from: f */
    public final Class<E> f107341f;

    /* renamed from: g */
    public final Iterator<E> f107342g;

    public ServiceLoaderIterator(Class<E> cls) {
        this(cls, ClassLoader.getSystemClassLoader());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (this.f107340e == null) {
            try {
            } catch (ServiceConfigurationError e) {
                if (!(e.getCause() instanceof SecurityException)) {
                    throw e;
                }
            }
            if (!this.f107342g.hasNext()) {
                return false;
            }
            this.f107340e = this.f107342g.next();
        }
        return true;
    }

    @Override // java.util.Iterator
    public E next() {
        if (hasNext()) {
            E e = this.f107340e;
            this.f107340e = null;
            return e;
        }
        throw new NoSuchElementException("No more elements for service " + this.f107341f.getName());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("service=" + this.f107341f.getName());
    }

    public ServiceLoaderIterator(Class<E> cls, ClassLoader classLoader) {
        this.f107341f = cls;
        this.f107342g = ServiceLoader.load(cls, classLoader).iterator();
    }
}
