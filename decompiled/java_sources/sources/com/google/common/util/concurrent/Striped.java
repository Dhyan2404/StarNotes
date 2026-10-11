package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import com.google.common.util.concurrent.Striped;
import com.sunia.HTREnginev2.fug;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.r1n;
import com.sunia.HTREnginev2.ytg;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@Beta
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class Striped<L> {

    /* renamed from: a */
    public static final int f35425a = 1024;

    /* renamed from: b */
    public static final int f35426b = -1;

    /* loaded from: classes6.dex */
    public static class PaddedLock extends ReentrantLock {
        long unused1;
        long unused2;
        long unused3;

        public PaddedLock() {
            super(false);
        }
    }

    /* loaded from: classes6.dex */
    public static class PaddedSemaphore extends Semaphore {
        long unused1;
        long unused2;
        long unused3;

        public PaddedSemaphore(int i) {
            super(i, false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.Striped$b */
    /* loaded from: classes6.dex */
    public static class C6398b<L> extends AbstractC6400d<L> {

        /* renamed from: d */
        public final Object[] f35427d;

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            return (L) this.f35427d[i];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.f35427d.length;
        }

        public C6398b(int i, Supplier<L> supplier) {
            super(i);
            int i2 = 0;
            Preconditions.checkArgument(i <= 1073741824, "Stripes must be <= 2^30)");
            this.f35427d = new Object[this.f35431c + 1];
            while (true) {
                Object[] objArr = this.f35427d;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = supplier.get();
                i2++;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.util.concurrent.Striped$c */
    /* loaded from: classes6.dex */
    public static class C6399c<L> extends AbstractC6400d<L> {

        /* renamed from: d */
        public final ConcurrentMap<Integer, L> f35428d;

        /* renamed from: e */
        public final Supplier<L> f35429e;

        /* renamed from: f */
        public final int f35430f;

        public C6399c(int i, Supplier<L> supplier) {
            super(i);
            int i2 = this.f35431c;
            this.f35430f = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f35429e = supplier;
            this.f35428d = new MapMaker().weakValues().makeMap();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.f35430f != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            L l = this.f35428d.get(Integer.valueOf(i));
            if (l != null) {
                return l;
            }
            L l2 = this.f35429e.get();
            return (L) MoreObjects.firstNonNull(this.f35428d.putIfAbsent(Integer.valueOf(i), l2), l2);
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.f35430f;
        }
    }

    /* renamed from: com.google.common.util.concurrent.Striped$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6400d<L> extends Striped<L> {

        /* renamed from: c */
        public final int f35431c;

        public AbstractC6400d(int i) {
            super();
            Preconditions.checkArgument(i > 0, "Stripes must be positive");
            this.f35431c = i > 1073741824 ? -1 : Striped.m27828f(i) - 1;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(mo27835h(obj));
        }

        @Override // com.google.common.util.concurrent.Striped
        /* renamed from: h */
        public final int mo27835h(Object obj) {
            return this.f35431c & Striped.m27834m(obj.hashCode());
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.common.util.concurrent.Striped$e */
    /* loaded from: classes6.dex */
    public static class C6401e<L> extends AbstractC6400d<L> {

        /* renamed from: d */
        public final AtomicReferenceArray<a<? extends L>> f35432d;

        /* renamed from: e */
        public final Supplier<L> f35433e;

        /* renamed from: f */
        public final int f35434f;

        /* renamed from: g */
        public final ReferenceQueue<L> f35435g;

        /* renamed from: com.google.common.util.concurrent.Striped$e$a */
        /* loaded from: classes6.dex */
        public static final class a<L> extends WeakReference<L> {

            /* renamed from: a */
            public final int f35436a;

            public a(L l, int i, ReferenceQueue<L> referenceQueue) {
                super(l, referenceQueue);
                this.f35436a = i;
            }
        }

        public C6401e(int i, Supplier<L> supplier) {
            super(i);
            this.f35435g = new ReferenceQueue<>();
            int i2 = this.f35431c;
            int i3 = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f35434f = i3;
            this.f35432d = new AtomicReferenceArray<>(i3);
            this.f35433e = supplier;
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.f35434f != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            a<? extends L> aVar = this.f35432d.get(i);
            L l = aVar == null ? null : aVar.get();
            if (l != null) {
                return l;
            }
            L l2 = this.f35433e.get();
            a aVar2 = new a(l2, i, this.f35435g);
            while (!r1n.m56886a(this.f35432d, i, aVar, aVar2)) {
                aVar = this.f35432d.get(i);
                L l3 = aVar == null ? null : aVar.get();
                if (l3 != null) {
                    return l3;
                }
            }
            m27836n();
            return l2;
        }

        /* renamed from: n */
        public final void m27836n() {
            while (true) {
                Reference<? extends L> poll = this.f35435g.poll();
                if (poll == null) {
                    return;
                }
                a aVar = (a) poll;
                r1n.m56886a(this.f35432d, aVar.f35436a, aVar, null);
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.f35434f;
        }
    }

    /* renamed from: com.google.common.util.concurrent.Striped$f */
    /* loaded from: classes6.dex */
    public static final class C6402f extends ytg {

        /* renamed from: a */
        public final Condition f35437a;

        /* renamed from: b */
        public final ReadWriteLockC6404h f35438b;

        public C6402f(Condition condition, ReadWriteLockC6404h readWriteLockC6404h) {
            this.f35437a = condition;
            this.f35438b = readWriteLockC6404h;
        }

        @Override // com.sunia.HTREnginev2.ytg
        /* renamed from: a */
        public Condition mo27837a() {
            return this.f35437a;
        }
    }

    /* renamed from: com.google.common.util.concurrent.Striped$g */
    /* loaded from: classes6.dex */
    public static final class C6403g extends fug {

        /* renamed from: e */
        public final Lock f35439e;

        /* renamed from: f */
        public final ReadWriteLockC6404h f35440f;

        public C6403g(Lock lock, ReadWriteLockC6404h readWriteLockC6404h) {
            this.f35439e = lock;
            this.f35440f = readWriteLockC6404h;
        }

        @Override // com.sunia.HTREnginev2.fug
        /* renamed from: a */
        public Lock mo27838a() {
            return this.f35439e;
        }

        @Override // com.sunia.HTREnginev2.fug, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new C6402f(this.f35439e.newCondition(), this.f35440f);
        }
    }

    /* renamed from: com.google.common.util.concurrent.Striped$h */
    /* loaded from: classes6.dex */
    public static final class ReadWriteLockC6404h implements ReadWriteLock {

        /* renamed from: e */
        public final ReadWriteLock f35441e = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new C6403g(this.f35441e.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new C6403g(this.f35441e.writeLock(), this);
        }
    }

    /* renamed from: f */
    public static int m27828f(int i) {
        return 1 << IntMath.log2(i, RoundingMode.CEILING);
    }

    /* renamed from: g */
    public static <L> Striped<L> m27829g(int i, Supplier<L> supplier) {
        return new C6398b(i, supplier);
    }

    /* renamed from: i */
    public static /* synthetic */ Lock m27830i() {
        return new ReentrantLock(false);
    }

    /* renamed from: j */
    public static /* synthetic */ Semaphore m27831j(int i) {
        return new Semaphore(i, false);
    }

    /* renamed from: k */
    public static /* synthetic */ Semaphore m27832k(int i) {
        return new PaddedSemaphore(i);
    }

    /* renamed from: l */
    public static <L> Striped<L> m27833l(int i, Supplier<L> supplier) {
        return i < 1024 ? new C6401e(i, supplier) : new C6399c(i, supplier);
    }

    public static Striped<Lock> lazyWeakLock(int i) {
        return m27833l(i, new Supplier() { // from class: com.sunia.HTREnginev2.q1n
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                Lock m27830i;
                m27830i = Striped.m27830i();
                return m27830i;
            }
        });
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i) {
        return m27833l(i, new Supplier() { // from class: com.sunia.HTREnginev2.o1n
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                return new Striped.ReadWriteLockC6404h();
            }
        });
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i, final int i2) {
        return m27833l(i, new Supplier() { // from class: com.sunia.HTREnginev2.n1n
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                Semaphore m27831j;
                m27831j = Striped.m27831j(i2);
                return m27831j;
            }
        });
    }

    public static Striped<Lock> lock(int i) {
        return m27829g(i, new Supplier() { // from class: com.google.common.util.concurrent.k
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                return new Striped.PaddedLock();
            }
        });
    }

    /* renamed from: m */
    public static int m27834m(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    public static Striped<ReadWriteLock> readWriteLock(int i) {
        return m27829g(i, new Supplier() { // from class: com.sunia.HTREnginev2.p1n
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                return new ReentrantReadWriteLock();
            }
        });
    }

    public static Striped<Semaphore> semaphore(int i, final int i2) {
        return m27829g(i, new Supplier() { // from class: com.sunia.HTREnginev2.m1n
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public final Object get() {
                Semaphore m27832k;
                m27832k = Striped.m27832k(i2);
                return m27832k;
            }
        });
    }

    public Iterable<L> bulkGet(Iterable<? extends Object> iterable) {
        ArrayList newArrayList = Lists.newArrayList(iterable);
        if (newArrayList.isEmpty()) {
            return ImmutableList.m26161of();
        }
        int[] iArr = new int[newArrayList.size()];
        for (int i = 0; i < newArrayList.size(); i++) {
            iArr[i] = mo27835h(newArrayList.get(i));
        }
        Arrays.sort(iArr);
        int i2 = iArr[0];
        newArrayList.set(0, getAt(i2));
        for (int i3 = 1; i3 < newArrayList.size(); i3++) {
            int i4 = iArr[i3];
            if (i4 == i2) {
                newArrayList.set(i3, newArrayList.get(i3 - 1));
            } else {
                newArrayList.set(i3, getAt(i4));
                i2 = i4;
            }
        }
        return Collections.unmodifiableList(newArrayList);
    }

    public abstract L get(Object obj);

    public abstract L getAt(int i);

    /* renamed from: h */
    public abstract int mo27835h(Object obj);

    public abstract int size();

    public Striped() {
    }
}
