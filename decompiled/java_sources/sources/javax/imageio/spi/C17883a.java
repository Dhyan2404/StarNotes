package javax.imageio.spi;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.imageio.spi.ServiceRegistry;

/* renamed from: javax.imageio.spi.a */
/* loaded from: classes5.dex */
public class C17883a<T> implements Iterator<T> {

    /* renamed from: e */
    public Iterator<? extends T> f97959e;

    /* renamed from: f */
    public ServiceRegistry.Filter f97960f;

    /* renamed from: g */
    public T f97961g = null;

    public C17883a(Iterator<? extends T> it2, ServiceRegistry.Filter filter) {
        this.f97959e = it2;
        this.f97960f = filter;
        m61491a();
    }

    /* renamed from: a */
    public final void m61491a() {
        while (this.f97959e.hasNext()) {
            T next = this.f97959e.next();
            if (this.f97960f.filter(next)) {
                this.f97961g = next;
                return;
            }
        }
        this.f97961g = null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f97961g != null;
    }

    @Override // java.util.Iterator
    public T next() {
        T t = this.f97961g;
        if (t == null) {
            throw new NoSuchElementException();
        }
        m61491a();
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
