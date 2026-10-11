package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.sunia.HTREnginev2.snf;
import javax.annotation.CheckForNull;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class Interners {

    /* loaded from: classes6.dex */
    public static class InternerBuilder {

        /* renamed from: a */
        public final MapMaker f34068a;

        /* renamed from: b */
        public boolean f34069b;

        public <E> Interner<E> build() {
            if (!this.f34069b) {
                this.f34068a.weakKeys();
            }
            return new C5853c(this.f34068a);
        }

        public InternerBuilder concurrencyLevel(int i) {
            this.f34068a.concurrencyLevel(i);
            return this;
        }

        public InternerBuilder strong() {
            this.f34069b = true;
            return this;
        }

        @GwtIncompatible("java.lang.ref.WeakReference")
        public InternerBuilder weak() {
            this.f34069b = false;
            return this;
        }

        public InternerBuilder() {
            this.f34068a = new MapMaker();
            this.f34069b = true;
        }
    }

    /* renamed from: com.google.common.collect.Interners$b */
    /* loaded from: classes6.dex */
    public static class C5852b<E> implements Function<E, E> {

        /* renamed from: e */
        public final Interner<E> f34070e;

        public C5852b(Interner<E> interner) {
            this.f34070e = interner;
        }

        @Override // com.google.common.base.Function, java.util.function.Function
        public E apply(E e) {
            return this.f34070e.intern(e);
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C5852b) {
                return this.f34070e.equals(((C5852b) obj).f34070e);
            }
            return false;
        }

        public int hashCode() {
            return this.f34070e.hashCode();
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.collect.Interners$c */
    /* loaded from: classes6.dex */
    public static final class C5853c<E> implements Interner<E> {

        /* renamed from: a */
        @VisibleForTesting
        public final MapMakerInternalMap<E, MapMaker.Dummy, ?, ?> f34071a;

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.MapMakerInternalMap$i] */
        @Override // com.google.common.collect.Interner
        public E intern(E e) {
            E e2;
            do {
                ?? entry = this.f34071a.getEntry(e);
                if (entry != 0 && (e2 = (E) entry.getKey()) != null) {
                    return e2;
                }
            } while (this.f34071a.putIfAbsent(e, MapMaker.Dummy.VALUE) != null);
            return e;
        }

        public C5853c(MapMaker mapMaker) {
            this.f34071a = MapMakerInternalMap.createWithDummyValues(mapMaker.m26394f(Equivalence.equals()));
        }
    }

    public static <E> Function<E, E> asFunction(Interner<E> interner) {
        return new C5852b((Interner) Preconditions.checkNotNull(interner));
    }

    public static InternerBuilder newBuilder() {
        return new InternerBuilder();
    }

    public static <E> Interner<E> newStrongInterner() {
        return newBuilder().strong().build();
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public static <E> Interner<E> newWeakInterner() {
        return newBuilder().weak().build();
    }
}
