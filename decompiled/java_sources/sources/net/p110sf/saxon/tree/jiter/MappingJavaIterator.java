package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.function.Function;

/* loaded from: classes11.dex */
public class MappingJavaIterator<S, T> implements Iterator<T> {

    /* renamed from: e */
    public final Iterator<S> f102477e;

    /* renamed from: f */
    public final Function<S, T> f102478f;

    /* renamed from: g */
    public T f102479g;

    public MappingJavaIterator(Iterator<S> it2, Function<S, T> function) {
        this.f102477e = it2;
        this.f102478f = function;
        m64513a();
    }

    /* renamed from: a */
    public final void m64513a() {
        while (this.f102477e.hasNext()) {
            T t = (T) this.f102478f.apply(this.f102477e.next());
            this.f102479g = t;
            if (t != null) {
                return;
            }
        }
        this.f102479g = null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f102479g != null;
    }

    @Override // java.util.Iterator
    public T next() {
        T t = this.f102479g;
        if (t != null) {
            m64513a();
        }
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f102477e.remove();
    }
}
