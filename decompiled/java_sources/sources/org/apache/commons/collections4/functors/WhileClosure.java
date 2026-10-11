package org.apache.commons.collections4.functors;

import org.apache.commons.collections4.Closure;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public class WhileClosure<E> implements Closure<E> {

    /* renamed from: e */
    public final Predicate<? super E> f105009e;

    /* renamed from: f */
    public final Closure<? super E> f105010f;

    /* renamed from: g */
    public final boolean f105011g;

    public WhileClosure(Predicate<? super E> predicate, Closure<? super E> closure, boolean z) {
        this.f105009e = predicate;
        this.f105010f = closure;
        this.f105011g = z;
    }

    public static <E> Closure<E> whileClosure(Predicate<? super E> predicate, Closure<? super E> closure, boolean z) {
        if (predicate == null) {
            throw new NullPointerException("Predicate must not be null");
        }
        if (closure != null) {
            return new WhileClosure(predicate, closure, z);
        }
        throw new NullPointerException("Closure must not be null");
    }

    @Override // org.apache.commons.collections4.Closure
    public void execute(E e) {
        if (this.f105011g) {
            this.f105010f.execute(e);
        }
        while (this.f105009e.evaluate(e)) {
            this.f105010f.execute(e);
        }
    }

    public Closure<? super E> getClosure() {
        return this.f105010f;
    }

    public Predicate<? super E> getPredicate() {
        return this.f105009e;
    }

    public boolean isDoLoop() {
        return this.f105011g;
    }
}
