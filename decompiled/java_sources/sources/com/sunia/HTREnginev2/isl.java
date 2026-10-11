package com.sunia.HTREnginev2;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.Future;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

/* loaded from: classes12.dex */
public abstract class isl<T, C, E extends PoolEntry<T, C>> {

    /* renamed from: a */
    public final T f73551a;

    /* renamed from: b */
    public final Set<E> f73552b = new HashSet();

    /* renamed from: c */
    public final LinkedList<E> f73553c = new LinkedList<>();

    /* renamed from: d */
    public final LinkedList<Future<E>> f73554d = new LinkedList<>();

    public isl(T t) {
        this.f73551a = t;
    }

    /* renamed from: a */
    public E m54777a(C c) {
        E mo54778b = mo54778b(c);
        this.f73552b.add(mo54778b);
        return mo54778b;
    }

    /* renamed from: b */
    public abstract E mo54778b(C c);

    /* renamed from: c */
    public void m54779c(E e, boolean z) {
        Args.notNull(e, "Pool entry");
        Asserts.check(this.f73552b.remove(e), "Entry %s has not been leased from this pool", e);
        if (z) {
            this.f73553c.addFirst(e);
        }
    }

    /* renamed from: d */
    public int m54780d() {
        return this.f73553c.size() + this.f73552b.size();
    }

    /* renamed from: e */
    public int m54781e() {
        return this.f73553c.size();
    }

    /* renamed from: f */
    public E m54782f(Object obj) {
        if (this.f73553c.isEmpty()) {
            return null;
        }
        if (obj != null) {
            Iterator<E> it2 = this.f73553c.iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                if (obj.equals(next.getState())) {
                    it2.remove();
                    this.f73552b.add(next);
                    return next;
                }
            }
        }
        Iterator<E> it3 = this.f73553c.iterator();
        while (it3.hasNext()) {
            E next2 = it3.next();
            if (next2.getState() == null) {
                it3.remove();
                this.f73552b.add(next2);
                return next2;
            }
        }
        return null;
    }

    /* renamed from: g */
    public E m54783g() {
        if (this.f73553c.isEmpty()) {
            return null;
        }
        return this.f73553c.getLast();
    }

    /* renamed from: h */
    public int m54784h() {
        return this.f73552b.size();
    }

    /* renamed from: i */
    public int m54785i() {
        return this.f73554d.size();
    }

    /* renamed from: j */
    public final T m54786j() {
        return this.f73551a;
    }

    /* renamed from: k */
    public Future<E> m54787k() {
        return this.f73554d.poll();
    }

    /* renamed from: l */
    public void m54788l(Future<E> future) {
        if (future == null) {
            return;
        }
        this.f73554d.add(future);
    }

    /* renamed from: m */
    public boolean m54789m(E e) {
        Args.notNull(e, "Pool entry");
        return this.f73553c.remove(e) || this.f73552b.remove(e);
    }

    /* renamed from: n */
    public void m54790n() {
        Iterator<Future<E>> it2 = this.f73554d.iterator();
        while (it2.hasNext()) {
            it2.next().cancel(true);
        }
        this.f73554d.clear();
        Iterator<E> it3 = this.f73553c.iterator();
        while (it3.hasNext()) {
            it3.next().close();
        }
        this.f73553c.clear();
        Iterator<E> it4 = this.f73552b.iterator();
        while (it4.hasNext()) {
            it4.next().close();
        }
        this.f73552b.clear();
    }

    /* renamed from: o */
    public void m54791o(Future<E> future) {
        if (future == null) {
            return;
        }
        this.f73554d.remove(future);
    }

    public String toString() {
        return "[route: " + this.f73551a + "][leased: " + this.f73552b.size() + "][available: " + this.f73553c.size() + "][pending: " + this.f73554d.size() + IteratorUtils.f104924b;
    }
}
