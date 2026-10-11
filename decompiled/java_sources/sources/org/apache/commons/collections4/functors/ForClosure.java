package org.apache.commons.collections4.functors;

import org.apache.commons.collections4.Closure;

/* loaded from: classes11.dex */
public class ForClosure<E> implements Closure<E> {

    /* renamed from: e */
    public final int f104994e;

    /* renamed from: f */
    public final Closure<? super E> f104995f;

    public ForClosure(int i, Closure<? super E> closure) {
        this.f104994e = i;
        this.f104995f = closure;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Closure<E> forClosure(int i, Closure<? super E> closure) {
        return (i <= 0 || closure == 0) ? NOPClosure.nopClosure() : i == 1 ? closure : new ForClosure(i, closure);
    }

    @Override // org.apache.commons.collections4.Closure
    public void execute(E e) {
        for (int i = 0; i < this.f104994e; i++) {
            this.f104995f.execute(e);
        }
    }

    public Closure<? super E> getClosure() {
        return this.f104995f;
    }

    public int getCount() {
        return this.f104994e;
    }
}
