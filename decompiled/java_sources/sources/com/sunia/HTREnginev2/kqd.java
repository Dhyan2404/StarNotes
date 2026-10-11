package com.sunia.HTREnginev2;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes12.dex */
public final class kqd<E> {

    /* renamed from: a */
    public final LinkedList<E> f75741a = new LinkedList<>();

    /* renamed from: b */
    public final Map<Class<?>, E> f75742b = new HashMap();

    /* renamed from: a */
    public kqd<E> m55299a(Collection<E> collection) {
        if (collection == null) {
            return this;
        }
        Iterator<E> it2 = collection.iterator();
        while (it2.hasNext()) {
            m55303e(it2.next());
        }
        return this;
    }

    /* renamed from: b */
    public kqd<E> m55300b(E... eArr) {
        if (eArr == null) {
            return this;
        }
        for (E e : eArr) {
            m55303e(e);
        }
        return this;
    }

    /* renamed from: c */
    public kqd<E> m55301c(Collection<E> collection) {
        if (collection == null) {
            return this;
        }
        Iterator<E> it2 = collection.iterator();
        while (it2.hasNext()) {
            m55304f(it2.next());
        }
        return this;
    }

    /* renamed from: d */
    public kqd<E> m55302d(E... eArr) {
        if (eArr == null) {
            return this;
        }
        for (E e : eArr) {
            m55304f(e);
        }
        return this;
    }

    /* renamed from: e */
    public kqd<E> m55303e(E e) {
        if (e == null) {
            return this;
        }
        m55306h(e);
        this.f75741a.addFirst(e);
        return this;
    }

    /* renamed from: f */
    public kqd<E> m55304f(E e) {
        if (e == null) {
            return this;
        }
        m55306h(e);
        this.f75741a.addLast(e);
        return this;
    }

    /* renamed from: g */
    public LinkedList<E> m55305g() {
        return new LinkedList<>(this.f75741a);
    }

    /* renamed from: h */
    public final void m55306h(E e) {
        E remove = this.f75742b.remove(e.getClass());
        if (remove != null) {
            this.f75741a.remove(remove);
        }
        this.f75742b.put(e.getClass(), e);
    }
}
