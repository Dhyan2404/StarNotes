package com.google.common.util.concurrent;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Sets;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.j2objc.annotations.ReflectionSupport;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.pnf;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ReflectionSupport(ReflectionSupport.Level.FULL)
@pnf
/* renamed from: com.google.common.util.concurrent.c */
/* loaded from: classes6.dex */
public abstract class AbstractC6411c<OutputT> extends AbstractFuture.AbstractC6303i<OutputT> {

    /* renamed from: o */
    public static final b f35464o;

    /* renamed from: p */
    public static final Logger f35465p = Logger.getLogger(AbstractC6411c.class.getName());

    /* renamed from: m */
    @CheckForNull
    public volatile Set<Throwable> f35466m = null;

    /* renamed from: n */
    public volatile int f35467n;

    /* renamed from: com.google.common.util.concurrent.c$b */
    /* loaded from: classes6.dex */
    public static abstract class b {
        public b() {
        }

        /* renamed from: a */
        public abstract void mo27869a(AbstractC6411c<?> abstractC6411c, @CheckForNull Set<Throwable> set, Set<Throwable> set2);

        /* renamed from: b */
        public abstract int mo27870b(AbstractC6411c<?> abstractC6411c);
    }

    /* renamed from: com.google.common.util.concurrent.c$c */
    /* loaded from: classes6.dex */
    public static final class c extends b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<AbstractC6411c<?>, Set<Throwable>> f35468a;

        /* renamed from: b */
        public final AtomicIntegerFieldUpdater<AbstractC6411c<?>> f35469b;

        public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f35468a = atomicReferenceFieldUpdater;
            this.f35469b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.AbstractC6411c.b
        /* renamed from: a */
        public void mo27869a(AbstractC6411c<?> abstractC6411c, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
            C14434t4.m57298a(this.f35468a, abstractC6411c, set, set2);
        }

        @Override // com.google.common.util.concurrent.AbstractC6411c.b
        /* renamed from: b */
        public int mo27870b(AbstractC6411c<?> abstractC6411c) {
            return this.f35469b.decrementAndGet(abstractC6411c);
        }
    }

    /* renamed from: com.google.common.util.concurrent.c$d */
    /* loaded from: classes6.dex */
    public static final class d extends b {
        public d() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractC6411c.b
        /* renamed from: a */
        public void mo27869a(AbstractC6411c<?> abstractC6411c, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
            synchronized (abstractC6411c) {
                if (abstractC6411c.f35466m == set) {
                    abstractC6411c.f35466m = set2;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractC6411c.b
        /* renamed from: b */
        public int mo27870b(AbstractC6411c<?> abstractC6411c) {
            int m27865z;
            synchronized (abstractC6411c) {
                m27865z = AbstractC6411c.m27865z(abstractC6411c);
            }
            return m27865z;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b dVar;
        Throwable th = null;
        Object[] objArr = 0;
        try {
            dVar = new c(AtomicReferenceFieldUpdater.newUpdater(AbstractC6411c.class, Set.class, "m"), AtomicIntegerFieldUpdater.newUpdater(AbstractC6411c.class, GoogleApiAvailabilityLight.f29016b));
        } catch (Throwable th2) {
            dVar = new d();
            th = th2;
        }
        f35464o = dVar;
        if (th != null) {
            f35465p.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public AbstractC6411c(int i) {
        this.f35467n = i;
    }

    /* renamed from: z */
    public static /* synthetic */ int m27865z(AbstractC6411c abstractC6411c) {
        int i = abstractC6411c.f35467n - 1;
        abstractC6411c.f35467n = i;
        return i;
    }

    /* renamed from: A */
    public abstract void mo27613A(Set<Throwable> set);

    /* renamed from: B */
    public final void m27866B() {
        this.f35466m = null;
    }

    /* renamed from: C */
    public final int m27867C() {
        return f35464o.mo27870b(this);
    }

    /* renamed from: D */
    public final Set<Throwable> m27868D() {
        Set<Throwable> set = this.f35466m;
        if (set != null) {
            return set;
        }
        Set<Throwable> newConcurrentHashSet = Sets.newConcurrentHashSet();
        mo27613A(newConcurrentHashSet);
        f35464o.mo27869a(this, null, newConcurrentHashSet);
        Set<Throwable> set2 = this.f35466m;
        Objects.requireNonNull(set2);
        return set2;
    }
}
