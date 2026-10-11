package com.google.common.cache;

import Abdullah.hook;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LocalCache;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* renamed from: J */
    public static final int f33732J = 1073741824;

    /* renamed from: O */
    public static final int f33733O = 65536;

    /* renamed from: Q */
    public static final int f33734Q = 3;

    /* renamed from: Z */
    public static final int f33735Z = 63;

    /* renamed from: k0 */
    public static final int f33736k0 = 16;

    /* renamed from: q0 */
    public static final Logger f33737q0 = Logger.getLogger(LocalCache.class.getName());

    /* renamed from: t0 */
    public static final InterfaceC5731t<Object, Object> f33738t0 = new C5707a();

    /* renamed from: u0 */
    public static final Queue<?> f33739u0 = new C5709b();

    /* renamed from: e */
    public final int f33740e;

    /* renamed from: f */
    public final int f33741f;

    /* renamed from: g */
    public final Segment<K, V>[] f33742g;

    /* renamed from: h */
    public final int f33743h;

    /* renamed from: i */
    public final Equivalence<Object> f33744i;

    /* renamed from: j */
    public final Equivalence<Object> f33745j;

    /* renamed from: k */
    public final Strength f33746k;

    /* renamed from: l */
    public final Strength f33747l;

    /* renamed from: m */
    public final long f33748m;

    /* renamed from: n */
    public final Weigher<K, V> f33749n;

    /* renamed from: o */
    public final long f33750o;

    /* renamed from: p */
    public final long f33751p;

    /* renamed from: q */
    public final long f33752q;

    /* renamed from: r */
    public final Queue<RemovalNotification<K, V>> f33753r;

    /* renamed from: s */
    public final RemovalListener<K, V> f33754s;

    /* renamed from: t */
    public final Ticker f33755t;

    /* renamed from: u */
    public final EntryFactory f33756u;

    /* renamed from: v */
    public final AbstractCache.StatsCounter f33757v;

    /* renamed from: w */
    public final CacheLoader<? super K, V> f33758w;

    /* renamed from: x */
    @RetainedWith
    public Set<K> f33759x;

    /* renamed from: y */
    @RetainedWith
    public Collection<V> f33760y;

    /* renamed from: z */
    @RetainedWith
    public Set<Map.Entry<K, V>> f33761z;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.common.cache.LocalCache$EntryFactory, still in use, count: 1, list:
      (r0v0 com.google.common.cache.LocalCache$EntryFactory) from 0x0058: FILLED_NEW_ARRAY 
      (r0v0 com.google.common.cache.LocalCache$EntryFactory)
      (r1v1 com.google.common.cache.LocalCache$EntryFactory)
      (r3v1 com.google.common.cache.LocalCache$EntryFactory)
      (r5v1 com.google.common.cache.LocalCache$EntryFactory)
      (r7v1 com.google.common.cache.LocalCache$EntryFactory)
      (r9v1 com.google.common.cache.LocalCache$EntryFactory)
      (r11v1 com.google.common.cache.LocalCache$EntryFactory)
      (r13v1 com.google.common.cache.LocalCache$EntryFactory)
     A[WRAPPED] elemType: com.google.common.cache.LocalCache$EntryFactory
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes6.dex */
    public static abstract class EntryFactory {
        STRONG { // from class: com.google.common.cache.LocalCache.EntryFactory.1
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5727p(k, i, interfaceC5747a);
            }
        },
        STRONG_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.2
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5725n(k, i, interfaceC5747a);
            }
        },
        STRONG_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.3
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5729r(k, i, interfaceC5747a);
            }
        },
        STRONG_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.4
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5726o(k, i, interfaceC5747a);
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.EntryFactory.5
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5735x(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        },
        WEAK_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.6
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5733v(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        },
        WEAK_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.7
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5737z(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        },
        WEAK_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.8
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5734w(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        };

        static final int ACCESS_MASK = 1;
        static final int WEAK_MASK = 4;
        static final int WRITE_MASK = 2;
        static final EntryFactory[] factories = {new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.1
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5727p(k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.2
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5725n(k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.3
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5729r(k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.4
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5726o(k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.5
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5735x(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.6
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5733v(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.7
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5737z(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        }, new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.8
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = super.copyEntry(segment, interfaceC5747a, interfaceC5747a2);
                copyAccessEntry(interfaceC5747a, copyEntry);
                copyWriteEntry(interfaceC5747a, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
                return new C5734w(segment.keyReferenceQueue, k, i, interfaceC5747a);
            }
        }};

        static {
        }

        private EntryFactory() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EntryFactory getFactory(Strength strength, boolean z, boolean z2) {
            return factories[(strength == Strength.WEAK ? (char) 4 : (char) 0) | (z ? 1 : 0) | (z2 ? 2 : 0)];
        }

        public static EntryFactory valueOf(String str) {
            return (EntryFactory) Enum.valueOf(EntryFactory.class, str);
        }

        public static EntryFactory[] values() {
            return (EntryFactory[]) $VALUES.clone();
        }

        public <K, V> void copyAccessEntry(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
            interfaceC5747a2.setAccessTime(interfaceC5747a.getAccessTime());
            LocalCache.m25925f(interfaceC5747a.getPreviousInAccessQueue(), interfaceC5747a2);
            LocalCache.m25925f(interfaceC5747a2, interfaceC5747a.getNextInAccessQueue());
            LocalCache.m25916J(interfaceC5747a);
        }

        public <K, V> InterfaceC5747a<K, V> copyEntry(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
            return newEntry(segment, interfaceC5747a.getKey(), interfaceC5747a.getHash(), interfaceC5747a2);
        }

        public <K, V> void copyWriteEntry(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
            interfaceC5747a2.setWriteTime(interfaceC5747a.getWriteTime());
            LocalCache.m25926g(interfaceC5747a.getPreviousInWriteQueue(), interfaceC5747a2);
            LocalCache.m25926g(interfaceC5747a2, interfaceC5747a.getNextInWriteQueue());
            LocalCache.m25917K(interfaceC5747a);
        }

        public abstract <K, V> InterfaceC5747a<K, V> newEntry(Segment<K, V> segment, K k, int i, InterfaceC5747a<K, V> interfaceC5747a);

        public /* synthetic */ EntryFactory(C5707a c5707a) {
            this(r1, r2);
        }
    }

    /* loaded from: classes6.dex */
    public static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        transient LoadingCache<K, V> autoDelegate;

        public LoadingSerializationProxy(LocalCache<K, V> localCache) {
            super(localCache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = (LoadingCache<K, V>) recreateCacheBuilder().build(this.loader);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function, java.util.function.Function
        public final V apply(K k) {
            return this.autoDelegate.apply(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return this.autoDelegate.get(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.autoDelegate.getAll(iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            return this.autoDelegate.getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.autoDelegate.refresh(k);
        }
    }

    /* loaded from: classes6.dex */
    public static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        public LocalLoadingCache(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
            super(new LocalCache(cacheBuilder, (CacheLoader) Preconditions.checkNotNull(cacheLoader)), null);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function, java.util.function.Function
        public final V apply(K k) {
            return getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return this.localCache.m25963v(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.localCache.m25958q(iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.localCache.m25939R(k);
        }

        @Override // com.google.common.cache.LocalCache.LocalManualCache
        public Object writeReplace() {
            return new LoadingSerializationProxy(this.localCache);
        }
    }

    /* loaded from: classes6.dex */
    public static class LocalManualCache<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        final LocalCache<K, V> localCache;

        /* renamed from: com.google.common.cache.LocalCache$LocalManualCache$a */
        /* loaded from: classes6.dex */
        public class C5702a extends CacheLoader<Object, V> {

            /* renamed from: e */
            public final /* synthetic */ Callable f33762e;

            public C5702a(LocalManualCache localManualCache, Callable callable) {
                this.f33762e = callable;
            }

            @Override // com.google.common.cache.CacheLoader
            public V load(Object obj) throws Exception {
                return (V) this.f33762e.call();
            }
        }

        public /* synthetic */ LocalManualCache(LocalCache localCache, C5707a c5707a) {
            this(localCache);
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.localCache.m25949e();
        }

        @Override // com.google.common.cache.Cache
        public V get(K k, Callable<? extends V> callable) throws ExecutionException {
            Preconditions.checkNotNull(callable);
            return this.localCache.m25957p(k, new C5702a(this, callable));
        }

        @Override // com.google.common.cache.Cache
        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            return this.localCache.m25959r(iterable);
        }

        @Override // com.google.common.cache.Cache
        public V getIfPresent(Object obj) {
            return this.localCache.m25961t(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object obj) {
            Preconditions.checkNotNull(obj);
            this.localCache.remove(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> iterable) {
            this.localCache.m25965x(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void put(K k, V v) {
            this.localCache.put(k, v);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> map) {
            this.localCache.putAll(map);
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            return this.localCache.m25929E();
        }

        @Override // com.google.common.cache.Cache
        public CacheStats stats() {
            AbstractCache.SimpleStatsCounter simpleStatsCounter = new AbstractCache.SimpleStatsCounter();
            simpleStatsCounter.incrementBy(this.localCache.f33757v);
            for (Segment<K, V> segment : this.localCache.f33742g) {
                simpleStatsCounter.incrementBy(segment.statsCounter);
            }
            return simpleStatsCounter.snapshot();
        }

        Object writeReplace() {
            return new ManualSerializationProxy(this.localCache);
        }

        public LocalManualCache(CacheBuilder<? super K, ? super V> cacheBuilder) {
            this(new LocalCache(cacheBuilder, null));
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() {
            this.localCache.clear();
        }

        private LocalManualCache(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }
    }

    /* loaded from: classes6.dex */
    public static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        final int concurrencyLevel;
        transient Cache<K, V> delegate;
        final long expireAfterAccessNanos;
        final long expireAfterWriteNanos;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final CacheLoader<? super K, V> loader;
        final long maxWeight;
        final RemovalListener<? super K, ? super V> removalListener;
        final Ticker ticker;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;
        final Weigher<K, V> weigher;

        public ManualSerializationProxy(LocalCache<K, V> localCache) {
            this(localCache.f33746k, localCache.f33747l, localCache.f33744i, localCache.f33745j, localCache.f33751p, localCache.f33750o, localCache.f33748m, localCache.f33749n, localCache.f33743h, localCache.f33754s, localCache.f33755t, localCache.f33758w);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = (Cache<K, V>) recreateCacheBuilder().build();
        }

        private Object readResolve() {
            return this.delegate;
        }

        public CacheBuilder<K, V> recreateCacheBuilder() {
            CacheBuilder<K, V> cacheBuilder = (CacheBuilder<K, V>) CacheBuilder.newBuilder().m25900t(this.keyStrength).m25901u(this.valueStrength).m25898r(this.keyEquivalence).m25902w(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel).removalListener(this.removalListener);
            cacheBuilder.f33683a = false;
            long j = this.expireAfterWriteNanos;
            if (j > 0) {
                cacheBuilder.expireAfterWrite(j, TimeUnit.NANOSECONDS);
            }
            long j2 = this.expireAfterAccessNanos;
            if (j2 > 0) {
                cacheBuilder.expireAfterAccess(j2, TimeUnit.NANOSECONDS);
            }
            Weigher weigher = this.weigher;
            if (weigher != CacheBuilder.OneWeigher.INSTANCE) {
                cacheBuilder.weigher(weigher);
                long j3 = this.maxWeight;
                if (j3 != -1) {
                    cacheBuilder.maximumWeight(j3);
                }
            } else {
                long j4 = this.maxWeight;
                if (j4 != -1) {
                    cacheBuilder.maximumSize(j4);
                }
            }
            Ticker ticker = this.ticker;
            if (ticker != null) {
                cacheBuilder.ticker(ticker);
            }
            return cacheBuilder;
        }

        private ManualSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, long j3, Weigher<K, V> weigher, int i, RemovalListener<? super K, ? super V> removalListener, Ticker ticker, CacheLoader<? super K, V> cacheLoader) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.expireAfterWriteNanos = j;
            this.expireAfterAccessNanos = j2;
            this.maxWeight = j3;
            this.weigher = weigher;
            this.concurrencyLevel = i;
            this.removalListener = removalListener;
            this.ticker = (ticker == Ticker.systemTicker() || ticker == CacheBuilder.f33680x) ? null : ticker;
            this.loader = cacheLoader;
        }

        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    /* loaded from: classes6.dex */
    public enum NullEntry implements InterfaceC5747a<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            return 0L;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public int getHash() {
            return 0;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<Object, Object> getNext() {
            return null;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5731t<Object, Object> getValueReference() {
            return null;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            return 0L;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<Object, Object> interfaceC5747a) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<Object, Object> interfaceC5747a) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<Object, Object> interfaceC5747a) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<Object, Object> interfaceC5747a) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setValueReference(InterfaceC5731t<Object, Object> interfaceC5731t) {
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
        }
    }

    /* loaded from: classes6.dex */
    public enum Strength {
        STRONG { // from class: com.google.common.cache.LocalCache.Strength.1
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> InterfaceC5731t<K, V> referenceValue(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, V v, int i) {
                return i == 1 ? new C5728q(v) : new C5710b0(v, i);
            }
        },
        SOFT { // from class: com.google.common.cache.LocalCache.Strength.2
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> InterfaceC5731t<K, V> referenceValue(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, V v, int i) {
                return i == 1 ? new C5724m(segment.valueReferenceQueue, v, interfaceC5747a) : new C5708a0(segment.valueReferenceQueue, v, interfaceC5747a, i);
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.Strength.3
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> InterfaceC5731t<K, V> referenceValue(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, V v, int i) {
                return i == 1 ? new C5736y(segment.valueReferenceQueue, v, interfaceC5747a) : new C5712c0(segment.valueReferenceQueue, v, interfaceC5747a, i);
            }
        };

        public abstract Equivalence<Object> defaultEquivalence();

        public abstract <K, V> InterfaceC5731t<K, V> referenceValue(Segment<K, V> segment, InterfaceC5747a<K, V> interfaceC5747a, V v, int i);

        /* synthetic */ Strength(C5707a c5707a) {
            this();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$a */
    /* loaded from: classes6.dex */
    public class C5707a implements InterfaceC5731t<Object, Object> {
        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: a */
        public void mo25968a(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: b */
        public Object mo25969b() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: c */
        public InterfaceC5731t<Object, Object> mo25970c(ReferenceQueue<Object> referenceQueue, Object obj, InterfaceC5747a<Object, Object> interfaceC5747a) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public InterfaceC5747a<Object, Object> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$a0 */
    /* loaded from: classes6.dex */
    public static final class C5708a0<K, V> extends C5724m<K, V> {

        /* renamed from: f */
        public final int f33768f;

        public C5708a0(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a, int i) {
            super(referenceQueue, v, interfaceC5747a);
            this.f33768f = i;
        }

        @Override // com.google.common.cache.LocalCache.C5724m, com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return new C5708a0(referenceQueue, v, interfaceC5747a, this.f33768f);
        }

        @Override // com.google.common.cache.LocalCache.C5724m, com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return this.f33768f;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$b */
    /* loaded from: classes6.dex */
    public class C5709b extends AbstractQueue<Object> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.m26234of().iterator();
        }

        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$b0 */
    /* loaded from: classes6.dex */
    public static final class C5710b0<K, V> extends C5728q<K, V> {

        /* renamed from: f */
        public final int f33769f;

        public C5710b0(V v, int i) {
            super(v);
            this.f33769f = i;
        }

        @Override // com.google.common.cache.LocalCache.C5728q, com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return this.f33769f;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$c */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5711c<T> extends AbstractSet<T> {
        public AbstractC5711c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LocalCache.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LocalCache.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return LocalCache.m25919W(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.m25919W(this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$c0 */
    /* loaded from: classes6.dex */
    public static final class C5712c0<K, V> extends C5736y<K, V> {

        /* renamed from: f */
        public final int f33771f;

        public C5712c0(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a, int i) {
            super(referenceQueue, v, interfaceC5747a);
            this.f33771f = i;
        }

        @Override // com.google.common.cache.LocalCache.C5736y, com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return new C5712c0(referenceQueue, v, interfaceC5747a, this.f33771f);
        }

        @Override // com.google.common.cache.LocalCache.C5736y, com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return this.f33771f;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5713d<K, V> implements InterfaceC5747a<K, V> {
        @Override // com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5731t<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setValueReference(InterfaceC5731t<K, V> interfaceC5731t) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$d0 */
    /* loaded from: classes6.dex */
    public static final class C5714d0<K, V> extends AbstractQueue<InterfaceC5747a<K, V>> {

        /* renamed from: e */
        public final InterfaceC5747a<K, V> f33772e = new a(this);

        /* renamed from: com.google.common.cache.LocalCache$d0$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5713d<K, V> {

            /* renamed from: e */
            @Weak
            public InterfaceC5747a<K, V> f33773e = this;

            /* renamed from: f */
            @Weak
            public InterfaceC5747a<K, V> f33774f = this;

            public a(C5714d0 c5714d0) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public InterfaceC5747a<K, V> getNextInWriteQueue() {
                return this.f33773e;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
                return this.f33774f;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
                this.f33773e = interfaceC5747a;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
                this.f33774f = interfaceC5747a;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setWriteTime(long j) {
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$d0$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractSequentialIterator<InterfaceC5747a<K, V>> {
            public b(InterfaceC5747a interfaceC5747a) {
                super(interfaceC5747a);
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public InterfaceC5747a<K, V> computeNext(InterfaceC5747a<K, V> interfaceC5747a) {
                InterfaceC5747a<K, V> nextInWriteQueue = interfaceC5747a.getNextInWriteQueue();
                if (nextInWriteQueue == C5714d0.this.f33772e) {
                    return null;
                }
                return nextInWriteQueue;
            }
        }

        @Override // java.util.Queue
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(InterfaceC5747a<K, V> interfaceC5747a) {
            LocalCache.m25926g(interfaceC5747a.getPreviousInWriteQueue(), interfaceC5747a.getNextInWriteQueue());
            LocalCache.m25926g(this.f33772e.getPreviousInWriteQueue(), interfaceC5747a);
            LocalCache.m25926g(interfaceC5747a, this.f33772e);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public InterfaceC5747a<K, V> peek() {
            InterfaceC5747a<K, V> nextInWriteQueue = this.f33772e.getNextInWriteQueue();
            if (nextInWriteQueue == this.f33772e) {
                return null;
            }
            return nextInWriteQueue;
        }

        @Override // java.util.Queue
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public InterfaceC5747a<K, V> poll() {
            InterfaceC5747a<K, V> nextInWriteQueue = this.f33772e.getNextInWriteQueue();
            if (nextInWriteQueue == this.f33772e) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            InterfaceC5747a<K, V> nextInWriteQueue = this.f33772e.getNextInWriteQueue();
            while (true) {
                InterfaceC5747a<K, V> interfaceC5747a = this.f33772e;
                if (nextInWriteQueue == interfaceC5747a) {
                    interfaceC5747a.setNextInWriteQueue(interfaceC5747a);
                    InterfaceC5747a<K, V> interfaceC5747a2 = this.f33772e;
                    interfaceC5747a2.setPreviousInWriteQueue(interfaceC5747a2);
                    return;
                } else {
                    InterfaceC5747a<K, V> nextInWriteQueue2 = nextInWriteQueue.getNextInWriteQueue();
                    LocalCache.m25917K(nextInWriteQueue);
                    nextInWriteQueue = nextInWriteQueue2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((InterfaceC5747a) obj).getNextInWriteQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33772e.getNextInWriteQueue() == this.f33772e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<InterfaceC5747a<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            InterfaceC5747a interfaceC5747a = (InterfaceC5747a) obj;
            InterfaceC5747a<K, V> previousInWriteQueue = interfaceC5747a.getPreviousInWriteQueue();
            InterfaceC5747a<K, V> nextInWriteQueue = interfaceC5747a.getNextInWriteQueue();
            LocalCache.m25926g(previousInWriteQueue, nextInWriteQueue);
            LocalCache.m25917K(interfaceC5747a);
            return nextInWriteQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (InterfaceC5747a<K, V> nextInWriteQueue = this.f33772e.getNextInWriteQueue(); nextInWriteQueue != this.f33772e; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$e */
    /* loaded from: classes6.dex */
    public static final class C5715e<K, V> extends AbstractQueue<InterfaceC5747a<K, V>> {

        /* renamed from: e */
        public final InterfaceC5747a<K, V> f33776e = new a(this);

        /* renamed from: com.google.common.cache.LocalCache$e$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC5713d<K, V> {

            /* renamed from: e */
            @Weak
            public InterfaceC5747a<K, V> f33777e = this;

            /* renamed from: f */
            @Weak
            public InterfaceC5747a<K, V> f33778f = this;

            public a(C5715e c5715e) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public InterfaceC5747a<K, V> getNextInAccessQueue() {
                return this.f33777e;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
                return this.f33778f;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setAccessTime(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
                this.f33777e = interfaceC5747a;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
            public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
                this.f33778f = interfaceC5747a;
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$e$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractSequentialIterator<InterfaceC5747a<K, V>> {
            public b(InterfaceC5747a interfaceC5747a) {
                super(interfaceC5747a);
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public InterfaceC5747a<K, V> computeNext(InterfaceC5747a<K, V> interfaceC5747a) {
                InterfaceC5747a<K, V> nextInAccessQueue = interfaceC5747a.getNextInAccessQueue();
                if (nextInAccessQueue == C5715e.this.f33776e) {
                    return null;
                }
                return nextInAccessQueue;
            }
        }

        @Override // java.util.Queue
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(InterfaceC5747a<K, V> interfaceC5747a) {
            LocalCache.m25925f(interfaceC5747a.getPreviousInAccessQueue(), interfaceC5747a.getNextInAccessQueue());
            LocalCache.m25925f(this.f33776e.getPreviousInAccessQueue(), interfaceC5747a);
            LocalCache.m25925f(interfaceC5747a, this.f33776e);
            return true;
        }

        @Override // java.util.Queue
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public InterfaceC5747a<K, V> peek() {
            InterfaceC5747a<K, V> nextInAccessQueue = this.f33776e.getNextInAccessQueue();
            if (nextInAccessQueue == this.f33776e) {
                return null;
            }
            return nextInAccessQueue;
        }

        @Override // java.util.Queue
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public InterfaceC5747a<K, V> poll() {
            InterfaceC5747a<K, V> nextInAccessQueue = this.f33776e.getNextInAccessQueue();
            if (nextInAccessQueue == this.f33776e) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            InterfaceC5747a<K, V> nextInAccessQueue = this.f33776e.getNextInAccessQueue();
            while (true) {
                InterfaceC5747a<K, V> interfaceC5747a = this.f33776e;
                if (nextInAccessQueue == interfaceC5747a) {
                    interfaceC5747a.setNextInAccessQueue(interfaceC5747a);
                    InterfaceC5747a<K, V> interfaceC5747a2 = this.f33776e;
                    interfaceC5747a2.setPreviousInAccessQueue(interfaceC5747a2);
                    return;
                } else {
                    InterfaceC5747a<K, V> nextInAccessQueue2 = nextInAccessQueue.getNextInAccessQueue();
                    LocalCache.m25916J(nextInAccessQueue);
                    nextInAccessQueue = nextInAccessQueue2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((InterfaceC5747a) obj).getNextInAccessQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33776e.getNextInAccessQueue() == this.f33776e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<InterfaceC5747a<K, V>> iterator() {
            return new b(peek());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            InterfaceC5747a interfaceC5747a = (InterfaceC5747a) obj;
            InterfaceC5747a<K, V> previousInAccessQueue = interfaceC5747a.getPreviousInAccessQueue();
            InterfaceC5747a<K, V> nextInAccessQueue = interfaceC5747a.getNextInAccessQueue();
            LocalCache.m25925f(previousInAccessQueue, nextInAccessQueue);
            LocalCache.m25916J(interfaceC5747a);
            return nextInAccessQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (InterfaceC5747a<K, V> nextInAccessQueue = this.f33776e.getNextInAccessQueue(); nextInAccessQueue != this.f33776e; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$e0 */
    /* loaded from: classes6.dex */
    public final class C5716e0 implements Map.Entry<K, V> {

        /* renamed from: e */
        public final K f33780e;

        /* renamed from: f */
        public V f33781f;

        public C5716e0(K k, V v) {
            this.f33780e = k;
            this.f33781f = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f33780e.equals(entry.getKey()) && this.f33781f.equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f33780e;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f33781f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f33781f.hashCode() ^ this.f33780e.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) LocalCache.this.put(this.f33780e, v);
            this.f33781f = v;
            return v2;
        }

        public String toString() {
            String valueOf = String.valueOf(getKey());
            String valueOf2 = String.valueOf(getValue());
            StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
            sb.append(valueOf);
            sb.append("=");
            sb.append(valueOf2);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$f */
    /* loaded from: classes6.dex */
    public static class C5717f<K, V> extends C5723l<K, V> {
        public C5717f(InterfaceC5731t<K, V> interfaceC5731t) {
            super(interfaceC5731t);
        }

        @Override // com.google.common.cache.LocalCache.C5723l, com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$g */
    /* loaded from: classes6.dex */
    public final class C5718g extends LocalCache<K, V>.AbstractC5720i<Map.Entry<K, V>> {
        public C5718g(LocalCache localCache) {
            super();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5720i, java.util.Iterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m25984c();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$h */
    /* loaded from: classes6.dex */
    public final class C5719h extends LocalCache<K, V>.AbstractC5711c<Map.Entry<K, V>> {
        public C5719h() {
            super();
        }

        /* renamed from: b */
        public static /* synthetic */ boolean m25981b(Predicate predicate, Object obj, Object obj2) {
            return predicate.test(Maps.immutableEntry(obj, obj2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = LocalCache.this.get(key)) != null && LocalCache.this.f33745j.equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5718g(LocalCache.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && LocalCache.this.remove(key, entry.getValue());
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super Map.Entry<K, V>> predicate) {
            Preconditions.checkNotNull(predicate);
            return LocalCache.this.m25941U(new BiPredicate() { // from class: com.sunia.HTREnginev2.l0j
                @Override // java.util.function.BiPredicate
                public final boolean test(Object obj, Object obj2) {
                    boolean m25981b;
                    m25981b = LocalCache.C5719h.m25981b(predicate, obj, obj2);
                    return m25981b;
                }
            });
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$i */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5720i<T> implements Iterator<T> {

        /* renamed from: e */
        public int f33784e;

        /* renamed from: f */
        public int f33785f = -1;

        /* renamed from: g */
        public Segment<K, V> f33786g;

        /* renamed from: h */
        public AtomicReferenceArray<InterfaceC5747a<K, V>> f33787h;

        /* renamed from: i */
        public InterfaceC5747a<K, V> f33788i;

        /* renamed from: j */
        public LocalCache<K, V>.C5716e0 f33789j;

        /* renamed from: k */
        public LocalCache<K, V>.C5716e0 f33790k;

        public AbstractC5720i() {
            this.f33784e = LocalCache.this.f33742g.length - 1;
            m25982a();
        }

        /* renamed from: a */
        public final void m25982a() {
            this.f33789j = null;
            if (m25985d() || m25986e()) {
                return;
            }
            while (true) {
                int i = this.f33784e;
                if (i < 0) {
                    return;
                }
                Segment<K, V>[] segmentArr = LocalCache.this.f33742g;
                this.f33784e = i - 1;
                Segment<K, V> segment = segmentArr[i];
                this.f33786g = segment;
                if (segment.count != 0) {
                    this.f33787h = this.f33786g.table;
                    this.f33785f = r0.length() - 1;
                    if (m25986e()) {
                        return;
                    }
                }
            }
        }

        /* renamed from: b */
        public boolean m25983b(InterfaceC5747a<K, V> interfaceC5747a) {
            try {
                long read = LocalCache.this.f33755t.read();
                K key = interfaceC5747a.getKey();
                Object m25962u = LocalCache.this.m25962u(interfaceC5747a, read);
                if (m25962u == null) {
                    this.f33786g.postReadCleanup();
                    return false;
                }
                this.f33789j = new C5716e0(key, m25962u);
                this.f33786g.postReadCleanup();
                return true;
            } catch (Throwable th) {
                this.f33786g.postReadCleanup();
                throw th;
            }
        }

        /* renamed from: c */
        public LocalCache<K, V>.C5716e0 m25984c() {
            LocalCache<K, V>.C5716e0 c5716e0 = this.f33789j;
            if (c5716e0 == null) {
                throw new NoSuchElementException();
            }
            this.f33790k = c5716e0;
            m25982a();
            return this.f33790k;
        }

        /* renamed from: d */
        public boolean m25985d() {
            InterfaceC5747a<K, V> interfaceC5747a = this.f33788i;
            if (interfaceC5747a == null) {
                return false;
            }
            while (true) {
                this.f33788i = interfaceC5747a.getNext();
                InterfaceC5747a<K, V> interfaceC5747a2 = this.f33788i;
                if (interfaceC5747a2 == null) {
                    return false;
                }
                if (m25983b(interfaceC5747a2)) {
                    return true;
                }
                interfaceC5747a = this.f33788i;
            }
        }

        /* renamed from: e */
        public boolean m25986e() {
            while (true) {
                int i = this.f33785f;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.f33787h;
                this.f33785f = i - 1;
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(i);
                this.f33788i = interfaceC5747a;
                if (interfaceC5747a != null && (m25983b(interfaceC5747a) || m25985d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33789j != null;
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f33790k != null);
            LocalCache.this.remove(this.f33790k.getKey());
            this.f33790k = null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$j */
    /* loaded from: classes6.dex */
    public final class C5721j extends LocalCache<K, V>.AbstractC5720i<K> {
        public C5721j(LocalCache localCache) {
            super();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5720i, java.util.Iterator
        public K next() {
            return m25984c().getKey();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$k */
    /* loaded from: classes6.dex */
    public final class C5722k extends LocalCache<K, V>.AbstractC5711c<K> {
        public C5722k() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LocalCache.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C5721j(LocalCache.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LocalCache.this.remove(obj) != null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$l */
    /* loaded from: classes6.dex */
    public static class C5723l<K, V> implements InterfaceC5731t<K, V> {

        /* renamed from: e */
        public volatile InterfaceC5731t<K, V> f33793e;

        /* renamed from: f */
        public final SettableFuture<V> f33794f;

        /* renamed from: g */
        public final Stopwatch f33795g;

        /* renamed from: com.google.common.cache.LocalCache$l$a */
        /* loaded from: classes6.dex */
        public class a implements Function<V, V> {
            public a() {
            }

            @Override // com.google.common.base.Function, java.util.function.Function
            public V apply(V v) {
                C5723l.this.m25992i(v);
                return v;
            }
        }

        public C5723l() {
            this(null);
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: a */
        public void mo25968a(V v) {
            if (v != null) {
                m25992i(v);
            } else {
                this.f33793e = LocalCache.m25920X();
            }
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: b */
        public V mo25969b() throws ExecutionException {
            return (V) Uninterruptibles.getUninterruptibly(this.f33794f);
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return this;
        }

        /* renamed from: d */
        public V m25987d(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            hook.C0008i c0008i;
            this.f33795g.start();
            try {
                c0008i = this.f33793e.mo25969b();
            } catch (ExecutionException unused) {
                c0008i = null;
            }
            try {
                V apply = biFunction.apply(k, c0008i);
                m25992i(apply);
                return apply;
            } catch (Throwable th) {
                m25993j(th);
                throw th;
            }
        }

        /* renamed from: e */
        public long m25988e() {
            return this.f33795g.elapsed(TimeUnit.NANOSECONDS);
        }

        /* renamed from: f */
        public final ListenableFuture<V> m25989f(Throwable th) {
            return Futures.immediateFailedFuture(th);
        }

        /* renamed from: g */
        public InterfaceC5731t<K, V> m25990g() {
            return this.f33793e;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public V get() {
            return this.f33793e.get();
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public InterfaceC5747a<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return this.f33793e.getWeight();
        }

        /* renamed from: h */
        public ListenableFuture<V> m25991h(K k, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.f33795g.start();
                V v = this.f33793e.get();
                if (v == null) {
                    V load = cacheLoader.load(k);
                    return m25992i(load) ? this.f33794f : Futures.immediateFuture(load);
                }
                ListenableFuture<V> reload = cacheLoader.reload(k, v);
                return reload == null ? Futures.immediateFuture(null) : Futures.transform(reload, new a(), MoreExecutors.directExecutor());
            } catch (Throwable th) {
                ListenableFuture<V> m25989f = m25993j(th) ? this.f33794f : m25989f(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return m25989f;
            }
        }

        /* renamed from: i */
        public boolean m25992i(V v) {
            return this.f33794f.set(v);
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isActive() {
            return this.f33793e.isActive();
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return true;
        }

        /* renamed from: j */
        public boolean m25993j(Throwable th) {
            return this.f33794f.setException(th);
        }

        public C5723l(InterfaceC5731t<K, V> interfaceC5731t) {
            this.f33794f = SettableFuture.create();
            this.f33795g = Stopwatch.createUnstarted();
            this.f33793e = interfaceC5731t == null ? LocalCache.m25920X() : interfaceC5731t;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$m */
    /* loaded from: classes6.dex */
    public static class C5724m<K, V> extends SoftReference<V> implements InterfaceC5731t<K, V> {

        /* renamed from: e */
        public final InterfaceC5747a<K, V> f33797e;

        public C5724m(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            super(v, referenceQueue);
            this.f33797e = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: a */
        public void mo25968a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: b */
        public V mo25969b() {
            return get();
        }

        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return new C5724m(referenceQueue, v, interfaceC5747a);
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public InterfaceC5747a<K, V> getEntry() {
            return this.f33797e;
        }

        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$n */
    /* loaded from: classes6.dex */
    public static final class C5725n<K, V> extends C5727p<K, V> {

        /* renamed from: i */
        public volatile long f33798i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33799j;

        /* renamed from: k */
        @Weak
        public InterfaceC5747a<K, V> f33800k;

        public C5725n(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(k, i, interfaceC5747a);
            this.f33798i = Long.MAX_VALUE;
            this.f33799j = LocalCache.m25915I();
            this.f33800k = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            return this.f33798i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            return this.f33799j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            return this.f33800k;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
            this.f33798i = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33799j = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33800k = interfaceC5747a;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$o */
    /* loaded from: classes6.dex */
    public static final class C5726o<K, V> extends C5727p<K, V> {

        /* renamed from: i */
        public volatile long f33801i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33802j;

        /* renamed from: k */
        @Weak
        public InterfaceC5747a<K, V> f33803k;

        /* renamed from: l */
        public volatile long f33804l;

        /* renamed from: m */
        @Weak
        public InterfaceC5747a<K, V> f33805m;

        /* renamed from: n */
        @Weak
        public InterfaceC5747a<K, V> f33806n;

        public C5726o(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(k, i, interfaceC5747a);
            this.f33801i = Long.MAX_VALUE;
            this.f33802j = LocalCache.m25915I();
            this.f33803k = LocalCache.m25915I();
            this.f33804l = Long.MAX_VALUE;
            this.f33805m = LocalCache.m25915I();
            this.f33806n = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            return this.f33801i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            return this.f33802j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            return this.f33805m;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            return this.f33803k;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            return this.f33806n;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            return this.f33804l;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
            this.f33801i = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33802j = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33805m = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33803k = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33806n = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
            this.f33804l = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$p */
    /* loaded from: classes6.dex */
    public static class C5727p<K, V> extends AbstractC5713d<K, V> {

        /* renamed from: e */
        public final K f33807e;

        /* renamed from: f */
        public final int f33808f;

        /* renamed from: g */
        public final InterfaceC5747a<K, V> f33809g;

        /* renamed from: h */
        public volatile InterfaceC5731t<K, V> f33810h = LocalCache.m25920X();

        public C5727p(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33807e = k;
            this.f33808f = i;
            this.f33809g = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public int getHash() {
            return this.f33808f;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public K getKey() {
            return this.f33807e;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNext() {
            return this.f33809g;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5731t<K, V> getValueReference() {
            return this.f33810h;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setValueReference(InterfaceC5731t<K, V> interfaceC5731t) {
            this.f33810h = interfaceC5731t;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$q */
    /* loaded from: classes6.dex */
    public static class C5728q<K, V> implements InterfaceC5731t<K, V> {

        /* renamed from: e */
        public final V f33811e;

        public C5728q(V v) {
            this.f33811e = v;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: a */
        public void mo25968a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: b */
        public V mo25969b() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public V get() {
            return this.f33811e;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public InterfaceC5747a<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$r */
    /* loaded from: classes6.dex */
    public static final class C5729r<K, V> extends C5727p<K, V> {

        /* renamed from: i */
        public volatile long f33812i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33813j;

        /* renamed from: k */
        @Weak
        public InterfaceC5747a<K, V> f33814k;

        public C5729r(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(k, i, interfaceC5747a);
            this.f33812i = Long.MAX_VALUE;
            this.f33813j = LocalCache.m25915I();
            this.f33814k = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            return this.f33813j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            return this.f33814k;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            return this.f33812i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33813j = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33814k = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5713d, com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
            this.f33812i = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$s */
    /* loaded from: classes6.dex */
    public final class C5730s extends LocalCache<K, V>.AbstractC5720i<V> {
        public C5730s(LocalCache localCache) {
            super();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC5720i, java.util.Iterator
        public V next() {
            return m25984c().getValue();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$t */
    /* loaded from: classes6.dex */
    public interface InterfaceC5731t<K, V> {
        /* renamed from: a */
        void mo25968a(V v);

        /* renamed from: b */
        V mo25969b() throws ExecutionException;

        /* renamed from: c */
        InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a);

        V get();

        InterfaceC5747a<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();
    }

    /* renamed from: com.google.common.cache.LocalCache$u */
    /* loaded from: classes6.dex */
    public final class C5732u extends AbstractCollection<V> {
        public C5732u() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            LocalCache.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return LocalCache.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C5730s(LocalCache.this);
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super V> predicate) {
            Preconditions.checkNotNull(predicate);
            return LocalCache.this.m25941U(new BiPredicate() { // from class: com.sunia.HTREnginev2.m0j
                @Override // java.util.function.BiPredicate
                public final boolean test(Object obj, Object obj2) {
                    boolean test;
                    test = predicate.test(obj2);
                    return test;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return LocalCache.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return LocalCache.m25919W(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.m25919W(this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$v */
    /* loaded from: classes6.dex */
    public static final class C5733v<K, V> extends C5735x<K, V> {

        /* renamed from: h */
        public volatile long f33816h;

        /* renamed from: i */
        @Weak
        public InterfaceC5747a<K, V> f33817i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33818j;

        public C5733v(ReferenceQueue<K> referenceQueue, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(referenceQueue, k, i, interfaceC5747a);
            this.f33816h = Long.MAX_VALUE;
            this.f33817i = LocalCache.m25915I();
            this.f33818j = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            return this.f33816h;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            return this.f33817i;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            return this.f33818j;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
            this.f33816h = j;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33817i = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33818j = interfaceC5747a;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$w */
    /* loaded from: classes6.dex */
    public static final class C5734w<K, V> extends C5735x<K, V> {

        /* renamed from: h */
        public volatile long f33819h;

        /* renamed from: i */
        @Weak
        public InterfaceC5747a<K, V> f33820i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33821j;

        /* renamed from: k */
        public volatile long f33822k;

        /* renamed from: l */
        @Weak
        public InterfaceC5747a<K, V> f33823l;

        /* renamed from: m */
        @Weak
        public InterfaceC5747a<K, V> f33824m;

        public C5734w(ReferenceQueue<K> referenceQueue, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(referenceQueue, k, i, interfaceC5747a);
            this.f33819h = Long.MAX_VALUE;
            this.f33820i = LocalCache.m25915I();
            this.f33821j = LocalCache.m25915I();
            this.f33822k = Long.MAX_VALUE;
            this.f33823l = LocalCache.m25915I();
            this.f33824m = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public long getAccessTime() {
            return this.f33819h;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            return this.f33820i;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            return this.f33823l;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            return this.f33821j;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            return this.f33824m;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            return this.f33822k;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setAccessTime(long j) {
            this.f33819h = j;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33820i = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33823l = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33821j = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33824m = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
            this.f33822k = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$x */
    /* loaded from: classes6.dex */
    public static class C5735x<K, V> extends WeakReference<K> implements InterfaceC5747a<K, V> {

        /* renamed from: e */
        public final int f33825e;

        /* renamed from: f */
        public final InterfaceC5747a<K, V> f33826f;

        /* renamed from: g */
        public volatile InterfaceC5731t<K, V> f33827g;

        public C5735x(ReferenceQueue<K> referenceQueue, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(k, referenceQueue);
            this.f33827g = LocalCache.m25920X();
            this.f33825e = i;
            this.f33826f = interfaceC5747a;
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public int getHash() {
            return this.f33825e;
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public K getKey() {
            return get();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNext() {
            return this.f33826f;
        }

        public InterfaceC5747a<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public InterfaceC5747a<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public InterfaceC5731t<K, V> getValueReference() {
            return this.f33827g;
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.InterfaceC5747a
        public void setValueReference(InterfaceC5731t<K, V> interfaceC5731t) {
            this.f33827g = interfaceC5731t;
        }

        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$y */
    /* loaded from: classes6.dex */
    public static class C5736y<K, V> extends WeakReference<V> implements InterfaceC5731t<K, V> {

        /* renamed from: e */
        public final InterfaceC5747a<K, V> f33828e;

        public C5736y(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            super(v, referenceQueue);
            this.f33828e = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: a */
        public void mo25968a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        /* renamed from: b */
        public V mo25969b() {
            return get();
        }

        /* renamed from: c */
        public InterfaceC5731t<K, V> mo25970c(ReferenceQueue<V> referenceQueue, V v, InterfaceC5747a<K, V> interfaceC5747a) {
            return new C5736y(referenceQueue, v, interfaceC5747a);
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public InterfaceC5747a<K, V> getEntry() {
            return this.f33828e;
        }

        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.InterfaceC5731t
        public boolean isLoading() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$z */
    /* loaded from: classes6.dex */
    public static final class C5737z<K, V> extends C5735x<K, V> {

        /* renamed from: h */
        public volatile long f33829h;

        /* renamed from: i */
        @Weak
        public InterfaceC5747a<K, V> f33830i;

        /* renamed from: j */
        @Weak
        public InterfaceC5747a<K, V> f33831j;

        public C5737z(ReferenceQueue<K> referenceQueue, K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            super(referenceQueue, k, i, interfaceC5747a);
            this.f33829h = Long.MAX_VALUE;
            this.f33830i = LocalCache.m25915I();
            this.f33831j = LocalCache.m25915I();
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getNextInWriteQueue() {
            return this.f33830i;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public InterfaceC5747a<K, V> getPreviousInWriteQueue() {
            return this.f33831j;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public long getWriteTime() {
            return this.f33829h;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33830i = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a) {
            this.f33831j = interfaceC5747a;
        }

        @Override // com.google.common.cache.LocalCache.C5735x, com.google.common.cache.InterfaceC5747a
        public void setWriteTime(long j) {
            this.f33829h = j;
        }
    }

    public LocalCache(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
        this.f33743h = Math.min(cacheBuilder.m25883c(), 65536);
        Strength m25888h = cacheBuilder.m25888h();
        this.f33746k = m25888h;
        this.f33747l = cacheBuilder.m25895o();
        this.f33744i = cacheBuilder.m25887g();
        this.f33745j = cacheBuilder.m25894n();
        long m25889i = cacheBuilder.m25889i();
        this.f33748m = m25889i;
        this.f33749n = (Weigher<K, V>) cacheBuilder.m25896p();
        this.f33750o = cacheBuilder.m25884d();
        this.f33751p = cacheBuilder.m25885e();
        this.f33752q = cacheBuilder.m25890j();
        CacheBuilder.NullListener nullListener = (RemovalListener<K, V>) cacheBuilder.m25891k();
        this.f33754s = nullListener;
        this.f33753r = nullListener == CacheBuilder.NullListener.INSTANCE ? m25927k() : new ConcurrentLinkedQueue<>();
        this.f33755t = cacheBuilder.m25893m(m25937P());
        this.f33756u = EntryFactory.getFactory(m25888h, m25943Y(), m25947c0());
        this.f33757v = cacheBuilder.m25892l().get();
        this.f33758w = cacheLoader;
        int min = Math.min(cacheBuilder.m25886f(), 1073741824);
        if (m25953l() && !m25952j()) {
            min = (int) Math.min(min, m25889i);
        }
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        int i4 = 1;
        while (i4 < this.f33743h && (!m25953l() || i4 * 20 <= this.f33748m)) {
            i3++;
            i4 <<= 1;
        }
        this.f33741f = 32 - i3;
        this.f33740e = i4 - 1;
        this.f33742g = m25931G(i4);
        int i5 = min / i4;
        while (i2 < (i5 * i4 < min ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        if (m25953l()) {
            long j = this.f33748m;
            long j2 = i4;
            long j3 = (j / j2) + 1;
            long j4 = j % j2;
            while (true) {
                Segment<K, V>[] segmentArr = this.f33742g;
                if (i >= segmentArr.length) {
                    return;
                }
                if (i == j4) {
                    j3--;
                }
                segmentArr[i] = m25951i(i2, j3, cacheBuilder.m25892l().get());
                i++;
            }
        } else {
            while (true) {
                Segment<K, V>[] segmentArr2 = this.f33742g;
                if (i >= segmentArr2.length) {
                    return;
                }
                segmentArr2[i] = m25951i(i2, -1L, cacheBuilder.m25892l().get());
                i++;
            }
        }
    }

    /* renamed from: A */
    public static /* synthetic */ Object m25912A(java.util.function.Function function, Object obj, Object obj2, Object obj3) {
        return obj3 == null ? function.apply(obj) : obj3;
    }

    /* renamed from: B */
    public static /* synthetic */ Object m25913B(BiFunction biFunction, Object obj, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        return biFunction.apply(obj, obj2);
    }

    /* renamed from: C */
    public static /* synthetic */ Object m25914C(Object obj, BiFunction biFunction, Object obj2, Object obj3) {
        return obj3 == null ? obj : biFunction.apply(obj3, obj);
    }

    /* renamed from: I */
    public static <K, V> InterfaceC5747a<K, V> m25915I() {
        return NullEntry.INSTANCE;
    }

    /* renamed from: J */
    public static <K, V> void m25916J(InterfaceC5747a<K, V> interfaceC5747a) {
        InterfaceC5747a<K, V> m25915I = m25915I();
        interfaceC5747a.setNextInAccessQueue(m25915I);
        interfaceC5747a.setPreviousInAccessQueue(m25915I);
    }

    /* renamed from: K */
    public static <K, V> void m25917K(InterfaceC5747a<K, V> interfaceC5747a) {
        InterfaceC5747a<K, V> m25915I = m25915I();
        interfaceC5747a.setNextInWriteQueue(m25915I);
        interfaceC5747a.setPreviousInWriteQueue(m25915I);
    }

    /* renamed from: T */
    public static int m25918T(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    /* renamed from: W */
    public static <E> ArrayList<E> m25919W(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    /* renamed from: X */
    public static <K, V> InterfaceC5731t<K, V> m25920X() {
        return (InterfaceC5731t<K, V>) f33738t0;
    }

    /* renamed from: f */
    public static <K, V> void m25925f(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
        interfaceC5747a.setNextInAccessQueue(interfaceC5747a2);
        interfaceC5747a2.setPreviousInAccessQueue(interfaceC5747a);
    }

    /* renamed from: g */
    public static <K, V> void m25926g(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
        interfaceC5747a.setNextInWriteQueue(interfaceC5747a2);
        interfaceC5747a2.setPreviousInWriteQueue(interfaceC5747a);
    }

    /* renamed from: k */
    public static <E> Queue<E> m25927k() {
        return (Queue<E>) f33739u0;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cd  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<K, V> m25928D(java.util.Set<? extends K> r7, com.google.common.cache.CacheLoader<? super K, V> r8) throws java.util.concurrent.ExecutionException {
        /*
            r6 = this;
            com.google.common.base.Preconditions.checkNotNull(r8)
            com.google.common.base.Preconditions.checkNotNull(r7)
            com.google.common.base.Stopwatch r0 = com.google.common.base.Stopwatch.createStarted()
            r1 = 1
            r2 = 0
            java.util.Map r7 = r8.loadAll(r7)     // Catch: java.lang.Throwable -> La2 java.lang.Error -> La5 java.lang.Exception -> Lac java.lang.RuntimeException -> Lb3 java.lang.InterruptedException -> Lba com.google.common.cache.CacheLoader.UnsupportedLoadingOperationException -> Lc8
            if (r7 == 0) goto L76
            r0.stop()
            java.util.Set r3 = r7.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L1d:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L3c
            java.lang.Object r4 = r3.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r5 = r4.getKey()
            java.lang.Object r4 = r4.getValue()
            if (r5 == 0) goto L3a
            if (r4 != 0) goto L36
            goto L3a
        L36:
            r6.put(r5, r4)
            goto L1d
        L3a:
            r2 = r1
            goto L1d
        L3c:
            if (r2 != 0) goto L4a
            com.google.common.cache.AbstractCache$StatsCounter r6 = r6.f33757v
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.elapsed(r8)
            r6.recordLoadSuccess(r0)
            return r7
        L4a:
            com.google.common.cache.AbstractCache$StatsCounter r6 = r6.f33757v
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.elapsed(r7)
            r6.recordLoadException(r0)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r6 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.String r7 = java.lang.String.valueOf(r8)
            int r8 = r7.length()
            int r8 = r8 + 42
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r8)
            r0.append(r7)
            java.lang.String r7 = " returned null keys or values from loadAll"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.<init>(r7)
            throw r6
        L76:
            com.google.common.cache.AbstractCache$StatsCounter r6 = r6.f33757v
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.elapsed(r7)
            r6.recordLoadException(r0)
            com.google.common.cache.CacheLoader$InvalidCacheLoadException r6 = new com.google.common.cache.CacheLoader$InvalidCacheLoadException
            java.lang.String r7 = java.lang.String.valueOf(r8)
            int r8 = r7.length()
            int r8 = r8 + 31
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r8)
            r0.append(r7)
            java.lang.String r7 = " returned null map from loadAll"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.<init>(r7)
            throw r6
        La2:
            r7 = move-exception
            r1 = r2
            goto Lcb
        La5:
            r7 = move-exception
            com.google.common.util.concurrent.ExecutionError r8 = new com.google.common.util.concurrent.ExecutionError     // Catch: java.lang.Throwable -> La2
            r8.<init>(r7)     // Catch: java.lang.Throwable -> La2
            throw r8     // Catch: java.lang.Throwable -> La2
        Lac:
            r7 = move-exception
            java.util.concurrent.ExecutionException r8 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> La2
            r8.<init>(r7)     // Catch: java.lang.Throwable -> La2
            throw r8     // Catch: java.lang.Throwable -> La2
        Lb3:
            r7 = move-exception
            com.google.common.util.concurrent.UncheckedExecutionException r8 = new com.google.common.util.concurrent.UncheckedExecutionException     // Catch: java.lang.Throwable -> La2
            r8.<init>(r7)     // Catch: java.lang.Throwable -> La2
            throw r8     // Catch: java.lang.Throwable -> La2
        Lba:
            r7 = move-exception
            java.lang.Thread r8 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> La2
            r8.interrupt()     // Catch: java.lang.Throwable -> La2
            java.util.concurrent.ExecutionException r8 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> La2
            r8.<init>(r7)     // Catch: java.lang.Throwable -> La2
            throw r8     // Catch: java.lang.Throwable -> La2
        Lc8:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> Lca
        Lca:
            r7 = move-exception
        Lcb:
            if (r1 != 0) goto Ld8
            com.google.common.cache.AbstractCache$StatsCounter r6 = r6.f33757v
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r0 = r0.elapsed(r8)
            r6.recordLoadException(r0)
        Ld8:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.m25928D(java.util.Set, com.google.common.cache.CacheLoader):java.util.Map");
    }

    /* renamed from: E */
    public long m25929E() {
        long j = 0;
        for (int i = 0; i < this.f33742g.length; i++) {
            j += r5[i].count;
        }
        return j;
    }

    @VisibleForTesting
    /* renamed from: F */
    public InterfaceC5747a<K, V> m25930F(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
        Segment<K, V> m25942V = m25942V(i);
        m25942V.lock();
        try {
            return m25942V.newEntry(k, i, interfaceC5747a);
        } finally {
            m25942V.unlock();
        }
    }

    /* renamed from: G */
    public final Segment<K, V>[] m25931G(int i) {
        return new Segment[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    /* renamed from: H */
    public InterfaceC5731t<K, V> m25932H(InterfaceC5747a<K, V> interfaceC5747a, V v, int i) {
        return this.f33747l.referenceValue(m25942V(interfaceC5747a.getHash()), interfaceC5747a, Preconditions.checkNotNull(v), i);
    }

    /* renamed from: L */
    public void m25933L() {
        while (true) {
            RemovalNotification<K, V> poll = this.f33753r.poll();
            if (poll == null) {
                return;
            }
            try {
                this.f33754s.onRemoval(poll);
            } catch (Throwable th) {
                f33737q0.log(Level.WARNING, "Exception thrown by removal listener", th);
            }
        }
    }

    /* renamed from: M */
    public void m25934M(InterfaceC5747a<K, V> interfaceC5747a) {
        int hash = interfaceC5747a.getHash();
        m25942V(hash).reclaimKey(interfaceC5747a, hash);
    }

    /* renamed from: N */
    public void m25935N(InterfaceC5731t<K, V> interfaceC5731t) {
        InterfaceC5747a<K, V> entry = interfaceC5731t.getEntry();
        int hash = entry.getHash();
        m25942V(hash).reclaimValue(entry.getKey(), hash, interfaceC5731t);
    }

    /* renamed from: O */
    public boolean m25936O() {
        return m25955n();
    }

    /* renamed from: P */
    public boolean m25937P() {
        return m25938Q() || m25936O();
    }

    /* renamed from: Q */
    public boolean m25938Q() {
        return m25956o() || m25940S();
    }

    /* renamed from: R */
    public void m25939R(K k) {
        int m25964w = m25964w(Preconditions.checkNotNull(k));
        m25942V(m25964w).refresh(k, m25964w, this.f33758w, false);
    }

    /* renamed from: S */
    public boolean m25940S() {
        return this.f33752q > 0;
    }

    /* renamed from: U */
    public boolean m25941U(BiPredicate<? super K, ? super V> biPredicate) {
        Preconditions.checkNotNull(biPredicate);
        boolean z = false;
        for (K k : keySet()) {
            while (true) {
                V v = get(k);
                if (v != null && biPredicate.test(k, v)) {
                    if (remove(k, v)) {
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: V */
    public Segment<K, V> m25942V(int i) {
        return this.f33742g[this.f33740e & (i >>> this.f33741f)];
    }

    /* renamed from: Y */
    public boolean m25943Y() {
        return m25944Z() || m25936O();
    }

    /* renamed from: Z */
    public boolean m25944Z() {
        return m25955n() || m25953l();
    }

    /* renamed from: a0 */
    public boolean m25945a0() {
        return this.f33746k != Strength.STRONG;
    }

    /* renamed from: b0 */
    public boolean m25946b0() {
        return this.f33747l != Strength.STRONG;
    }

    /* renamed from: c0 */
    public boolean m25947c0() {
        return m25948d0() || m25938Q();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.f33742g) {
            segment.clear();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V compute(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(biFunction);
        int m25964w = m25964w(k);
        return m25942V(m25964w).compute(k, m25964w, biFunction);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V computeIfAbsent(final K k, final java.util.function.Function<? super K, ? extends V> function) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(function);
        return compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.i0j
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m25912A;
                m25912A = LocalCache.m25912A(function, k, obj, obj2);
                return m25912A;
            }
        });
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V computeIfPresent(K k, final BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(biFunction);
        return compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.j0j
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m25913B;
                m25913B = LocalCache.m25913B(biFunction, obj, obj2);
                return m25913B;
            }
        });
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int m25964w = m25964w(obj);
        return m25942V(m25964w).containsKey(obj, m25964w);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        long read = this.f33755t.read();
        Segment<K, V>[] segmentArr = this.f33742g;
        long j = -1;
        int i = 0;
        while (i < 3) {
            int length = segmentArr.length;
            long j2 = 0;
            for (?? r12 = z; r12 < length; r12++) {
                Segment<K, V> segment = segmentArr[r12];
                int i2 = segment.count;
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = segment.table;
                for (?? r15 = z; r15 < atomicReferenceArray.length(); r15++) {
                    InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(r15);
                    while (interfaceC5747a != null) {
                        Segment<K, V>[] segmentArr2 = segmentArr;
                        V liveValue = segment.getLiveValue(interfaceC5747a, read);
                        long j3 = read;
                        if (liveValue != null && this.f33745j.equivalent(obj, liveValue)) {
                            return true;
                        }
                        interfaceC5747a = interfaceC5747a.getNext();
                        segmentArr = segmentArr2;
                        read = j3;
                    }
                }
                j2 += segment.modCount;
                read = read;
                z = false;
            }
            long j4 = read;
            Segment<K, V>[] segmentArr3 = segmentArr;
            if (j2 == j) {
                return false;
            }
            i++;
            j = j2;
            segmentArr = segmentArr3;
            read = j4;
            z = false;
        }
        return z;
    }

    /* renamed from: d0 */
    public boolean m25948d0() {
        return m25956o();
    }

    /* renamed from: e */
    public void m25949e() {
        for (Segment<K, V> segment : this.f33742g) {
            segment.cleanUp();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @GwtIncompatible
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f33761z;
        if (set != null) {
            return set;
        }
        C5719h c5719h = new C5719h();
        this.f33761z = c5719h;
        return c5719h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int m25964w = m25964w(obj);
        return m25942V(m25964w).get(obj, m25964w);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @VisibleForTesting
    /* renamed from: h */
    public InterfaceC5747a<K, V> m25950h(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
        return m25942V(interfaceC5747a.getHash()).copyEntry(interfaceC5747a, interfaceC5747a2);
    }

    /* renamed from: i */
    public Segment<K, V> m25951i(int i, long j, AbstractCache.StatsCounter statsCounter) {
        return new Segment<>(this, i, j, statsCounter);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.f33742g;
        long j = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            j += segmentArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            j -= segmentArr[i2].modCount;
        }
        return j == 0;
    }

    /* renamed from: j */
    public boolean m25952j() {
        return this.f33749n != CacheBuilder.OneWeigher.INSTANCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f33759x;
        if (set != null) {
            return set;
        }
        C5722k c5722k = new C5722k();
        this.f33759x = c5722k;
        return c5722k;
    }

    /* renamed from: l */
    public boolean m25953l() {
        return this.f33748m >= 0;
    }

    /* renamed from: m */
    public boolean m25954m() {
        return m25956o() || m25955n();
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V merge(K k, final V v, final BiFunction<? super V, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        Preconditions.checkNotNull(biFunction);
        return compute(k, new BiFunction() { // from class: com.sunia.HTREnginev2.k0j
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m25914C;
                m25914C = LocalCache.m25914C(v, biFunction, obj, obj2);
                return m25914C;
            }
        });
    }

    /* renamed from: n */
    public boolean m25955n() {
        return this.f33750o > 0;
    }

    /* renamed from: o */
    public boolean m25956o() {
        return this.f33751p > 0;
    }

    /* renamed from: p */
    public V m25957p(K k, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int m25964w = m25964w(Preconditions.checkNotNull(k));
        return m25942V(m25964w).get(k, m25964w, cacheLoader);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int m25964w = m25964w(k);
        return m25942V(m25964w).put(k, m25964w, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int m25964w = m25964w(k);
        return m25942V(m25964w).put(k, m25964w, v, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public ImmutableMap<K, V> m25958q(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        LinkedHashSet newLinkedHashSet = Sets.newLinkedHashSet();
        int i = 0;
        int i2 = 0;
        for (K k : iterable) {
            Object obj = get(k);
            if (!newLinkedHashMap.containsKey(k)) {
                newLinkedHashMap.put(k, obj);
                if (obj == null) {
                    i2++;
                    newLinkedHashSet.add(k);
                } else {
                    i++;
                }
            }
        }
        try {
            if (!newLinkedHashSet.isEmpty()) {
                try {
                    Map m25928D = m25928D(Collections.unmodifiableSet(newLinkedHashSet), this.f33758w);
                    for (Object obj2 : newLinkedHashSet) {
                        Object obj3 = m25928D.get(obj2);
                        if (obj3 == null) {
                            String valueOf = String.valueOf(obj2);
                            StringBuilder sb = new StringBuilder(valueOf.length() + 37);
                            sb.append("loadAll failed to return a value for ");
                            sb.append(valueOf);
                            throw new CacheLoader.InvalidCacheLoadException(sb.toString());
                        }
                        newLinkedHashMap.put(obj2, obj3);
                    }
                } catch (CacheLoader.UnsupportedLoadingOperationException unused) {
                    for (Object obj4 : newLinkedHashSet) {
                        i2--;
                        newLinkedHashMap.put(obj4, m25957p(obj4, this.f33758w));
                    }
                }
            }
            return ImmutableMap.copyOf((Map) newLinkedHashMap);
        } finally {
            this.f33757v.recordHits(i);
            this.f33757v.recordMisses(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public ImmutableMap<K, V> m25959r(Iterable<?> iterable) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int i = 0;
        int i2 = 0;
        for (Object obj : iterable) {
            V v = get(obj);
            if (v == null) {
                i2++;
            } else {
                builder.put(obj, v);
                i++;
            }
        }
        this.f33757v.recordHits(i);
        this.f33757v.recordMisses(i2);
        return builder.buildKeepingLast();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int m25964w = m25964w(obj);
        return m25942V(m25964w).remove(obj, m25964w);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v2);
        if (v == null) {
            return false;
        }
        int m25964w = m25964w(k);
        return m25942V(m25964w).replace(k, m25964w, v, v2);
    }

    /* renamed from: s */
    public InterfaceC5747a<K, V> m25960s(Object obj) {
        if (obj == null) {
            return null;
        }
        int m25964w = m25964w(obj);
        return m25942V(m25964w).getEntry(obj, m25964w);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return Ints.saturatedCast(m25929E());
    }

    /* renamed from: t */
    public V m25961t(Object obj) {
        int m25964w = m25964w(Preconditions.checkNotNull(obj));
        V v = m25942V(m25964w).get(obj, m25964w);
        if (v == null) {
            this.f33757v.recordMisses(1);
        } else {
            this.f33757v.recordHits(1);
        }
        return v;
    }

    /* renamed from: u */
    public V m25962u(InterfaceC5747a<K, V> interfaceC5747a, long j) {
        V v;
        if (interfaceC5747a.getKey() == null || (v = interfaceC5747a.getValueReference().get()) == null || m25966y(interfaceC5747a, j)) {
            return null;
        }
        return v;
    }

    /* renamed from: v */
    public V m25963v(K k) throws ExecutionException {
        return m25957p(k, this.f33758w);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f33760y;
        if (collection != null) {
            return collection;
        }
        C5732u c5732u = new C5732u();
        this.f33760y = c5732u;
        return c5732u;
    }

    /* renamed from: w */
    public int m25964w(Object obj) {
        return m25918T(this.f33744i.hash(obj));
    }

    /* renamed from: x */
    public void m25965x(Iterable<?> iterable) {
        Iterator<?> it2 = iterable.iterator();
        while (it2.hasNext()) {
            remove(it2.next());
        }
    }

    /* renamed from: y */
    public boolean m25966y(InterfaceC5747a<K, V> interfaceC5747a, long j) {
        Preconditions.checkNotNull(interfaceC5747a);
        if (!m25955n() || j - interfaceC5747a.getAccessTime() < this.f33750o) {
            return m25956o() && j - interfaceC5747a.getWriteTime() >= this.f33751p;
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: z */
    public boolean m25967z(InterfaceC5747a<K, V> interfaceC5747a, long j) {
        return m25942V(interfaceC5747a.getHash()).getLiveValue(interfaceC5747a, j) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int m25964w = m25964w(obj);
        return m25942V(m25964w).remove(obj, m25964w, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int m25964w = m25964w(k);
        return m25942V(m25964w).replace(k, m25964w, v);
    }

    /* loaded from: classes6.dex */
    public static class Segment<K, V> extends ReentrantLock {

        @GuardedBy("this")
        final Queue<InterfaceC5747a<K, V>> accessQueue;
        volatile int count;
        final ReferenceQueue<K> keyReferenceQueue;

        @Weak
        final LocalCache<K, V> map;
        final long maxSegmentWeight;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        final Queue<InterfaceC5747a<K, V>> recencyQueue;
        final AbstractCache.StatsCounter statsCounter;
        volatile AtomicReferenceArray<InterfaceC5747a<K, V>> table;
        int threshold;

        @GuardedBy("this")
        long totalWeight;
        final ReferenceQueue<V> valueReferenceQueue;

        @GuardedBy("this")
        final Queue<InterfaceC5747a<K, V>> writeQueue;

        /* renamed from: com.google.common.cache.LocalCache$Segment$a */
        /* loaded from: classes6.dex */
        public class RunnableC5703a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Object f33763e;

            /* renamed from: f */
            public final /* synthetic */ int f33764f;

            /* renamed from: g */
            public final /* synthetic */ C5723l f33765g;

            /* renamed from: h */
            public final /* synthetic */ ListenableFuture f33766h;

            public RunnableC5703a(Object obj, int i, C5723l c5723l, ListenableFuture listenableFuture) {
                this.f33763e = obj;
                this.f33764f = i;
                this.f33765g = c5723l;
                this.f33766h = listenableFuture;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Segment.this.getAndRecordStats(this.f33763e, this.f33764f, this.f33765g, this.f33766h);
                } catch (Throwable th) {
                    LocalCache.f33737q0.log(Level.WARNING, "Exception thrown during refresh", th);
                    this.f33765g.m25993j(th);
                }
            }
        }

        public Segment(LocalCache<K, V> localCache, int i, long j, AbstractCache.StatsCounter statsCounter) {
            this.map = localCache;
            this.maxSegmentWeight = j;
            this.statsCounter = (AbstractCache.StatsCounter) Preconditions.checkNotNull(statsCounter);
            initTable(newEntryArray(i));
            this.keyReferenceQueue = localCache.m25945a0() ? new ReferenceQueue<>() : null;
            this.valueReferenceQueue = localCache.m25946b0() ? new ReferenceQueue<>() : null;
            this.recencyQueue = localCache.m25944Z() ? new ConcurrentLinkedQueue<>() : LocalCache.m25927k();
            this.writeQueue = localCache.m25948d0() ? new C5714d0<>() : LocalCache.m25927k();
            this.accessQueue = localCache.m25944Z() ? new C5715e<>() : LocalCache.m25927k();
        }

        public void cleanUp() {
            runLockedCleanup(this.map.f33755t.read());
            runUnlockedCleanup();
        }

        public void clear() {
            RemovalCause removalCause;
            if (this.count != 0) {
                lock();
                try {
                    preWriteCleanup(this.map.f33755t.read());
                    AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(i); interfaceC5747a != null; interfaceC5747a = interfaceC5747a.getNext()) {
                            if (interfaceC5747a.getValueReference().isActive()) {
                                K key = interfaceC5747a.getKey();
                                V v = interfaceC5747a.getValueReference().get();
                                if (key != null && v != null) {
                                    removalCause = RemovalCause.EXPLICIT;
                                    enqueueNotification(key, interfaceC5747a.getHash(), v, interfaceC5747a.getValueReference().getWeight(), removalCause);
                                }
                                removalCause = RemovalCause.COLLECTED;
                                enqueueNotification(key, interfaceC5747a.getHash(), v, interfaceC5747a.getValueReference().getWeight(), removalCause);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                    postWriteCleanup();
                }
            }
        }

        public void clearKeyReferenceQueue() {
            do {
            } while (this.keyReferenceQueue.poll() != null);
        }

        public void clearReferenceQueues() {
            if (this.map.m25945a0()) {
                clearKeyReferenceQueue();
            }
            if (this.map.m25946b0()) {
                clearValueReferenceQueue();
            }
        }

        public void clearValueReferenceQueue() {
            do {
            } while (this.valueReferenceQueue.poll() != null);
        }

        public V compute(K k, int i, BiFunction<? super K, ? super V, ? extends V> biFunction) {
            int i2;
            InterfaceC5731t<K, V> interfaceC5731t;
            int i3;
            BiFunction<? super K, ? super V, ? extends V> biFunction2;
            int i4;
            lock();
            try {
                long read = this.map.f33755t.read();
                preWriteCleanup(read);
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                while (true) {
                    if (interfaceC5747a2 == null) {
                        i2 = 0;
                        interfaceC5731t = null;
                        i3 = 1;
                        break;
                    }
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        InterfaceC5731t<K, V> valueReference = interfaceC5747a2.getValueReference();
                        if (this.map.m25966y(interfaceC5747a2, read)) {
                            i2 = 0;
                            enqueueNotification(key, i, valueReference.get(), valueReference.getWeight(), RemovalCause.EXPIRED);
                        } else {
                            i2 = 0;
                        }
                        this.writeQueue.remove(interfaceC5747a2);
                        this.accessQueue.remove(interfaceC5747a2);
                        i3 = i2;
                        interfaceC5731t = valueReference;
                    } else {
                        interfaceC5747a2 = interfaceC5747a2.getNext();
                    }
                }
                C5717f c5717f = new C5717f(interfaceC5731t);
                if (interfaceC5747a2 == null) {
                    interfaceC5747a2 = newEntry(k, i, interfaceC5747a);
                    interfaceC5747a2.setValueReference(c5717f);
                    atomicReferenceArray.set(length, interfaceC5747a2);
                    biFunction2 = biFunction;
                    i4 = 1;
                } else {
                    interfaceC5747a2.setValueReference(c5717f);
                    biFunction2 = biFunction;
                    i4 = i3;
                }
                V m25987d = c5717f.m25987d(k, biFunction2);
                if (m25987d == null) {
                    if (i4 == 0 && !interfaceC5731t.isLoading()) {
                        removeEntry(interfaceC5747a2, i, RemovalCause.EXPLICIT);
                        return null;
                    }
                    removeLoadingValue(k, i, c5717f);
                    return null;
                }
                if (interfaceC5731t == null || m25987d != interfaceC5731t.get()) {
                    try {
                        return getAndRecordStats(k, i, c5717f, Futures.immediateFuture(m25987d));
                    } catch (ExecutionException unused) {
                        throw new AssertionError("impossible; Futures.immediateFuture can't throw");
                    }
                }
                c5717f.m25992i(m25987d);
                interfaceC5747a2.setValueReference(interfaceC5731t);
                recordWrite(interfaceC5747a2, i2, read);
                return m25987d;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                if (this.count == 0) {
                    return false;
                }
                InterfaceC5747a<K, V> liveEntry = getLiveEntry(obj, i, this.map.f33755t.read());
                if (liveEntry == null) {
                    return false;
                }
                return liveEntry.getValueReference().get() != null;
            } finally {
                postReadCleanup();
            }
        }

        @VisibleForTesting
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    long read = this.map.f33755t.read();
                    AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(i); interfaceC5747a != null; interfaceC5747a = interfaceC5747a.getNext()) {
                            V liveValue = getLiveValue(interfaceC5747a, read);
                            if (liveValue != null && this.map.f33745j.equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        @GuardedBy("this")
        public InterfaceC5747a<K, V> copyEntry(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
            if (interfaceC5747a.getKey() == null) {
                return null;
            }
            InterfaceC5731t<K, V> valueReference = interfaceC5747a.getValueReference();
            V v = valueReference.get();
            if (v == null && valueReference.isActive()) {
                return null;
            }
            InterfaceC5747a<K, V> copyEntry = this.map.f33756u.copyEntry(this, interfaceC5747a, interfaceC5747a2);
            copyEntry.setValueReference(valueReference.mo25970c(this.valueReferenceQueue, v, copyEntry));
            return copyEntry;
        }

        @GuardedBy("this")
        public void drainKeyReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends K> poll = this.keyReferenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.m25934M((InterfaceC5747a) poll);
                i++;
            } while (i != 16);
        }

        @GuardedBy("this")
        public void drainRecencyQueue() {
            while (true) {
                InterfaceC5747a<K, V> poll = this.recencyQueue.poll();
                if (poll == null) {
                    return;
                }
                if (this.accessQueue.contains(poll)) {
                    this.accessQueue.add(poll);
                }
            }
        }

        @GuardedBy("this")
        public void drainReferenceQueues() {
            if (this.map.m25945a0()) {
                drainKeyReferenceQueue();
            }
            if (this.map.m25946b0()) {
                drainValueReferenceQueue();
            }
        }

        @GuardedBy("this")
        public void drainValueReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends V> poll = this.valueReferenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.m25935N((InterfaceC5731t) poll);
                i++;
            } while (i != 16);
        }

        @GuardedBy("this")
        public void enqueueNotification(K k, int i, V v, int i2, RemovalCause removalCause) {
            this.totalWeight -= i2;
            if (removalCause.wasEvicted()) {
                this.statsCounter.recordEviction();
            }
            if (this.map.f33753r != LocalCache.f33739u0) {
                this.map.f33753r.offer(RemovalNotification.create(k, v, removalCause));
            }
        }

        @GuardedBy("this")
        public void evictEntries(InterfaceC5747a<K, V> interfaceC5747a) {
            if (this.map.m25953l()) {
                drainRecencyQueue();
                if (interfaceC5747a.getValueReference().getWeight() > this.maxSegmentWeight && !removeEntry(interfaceC5747a, interfaceC5747a.getHash(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
                while (this.totalWeight > this.maxSegmentWeight) {
                    InterfaceC5747a<K, V> nextEvictable = getNextEvictable();
                    if (!removeEntry(nextEvictable, nextEvictable.getHash(), RemovalCause.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        @GuardedBy("this")
        public void expand() {
            AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            AtomicReferenceArray<InterfaceC5747a<K, V>> newEntryArray = newEntryArray(length << 1);
            this.threshold = (newEntryArray.length() * 3) / 4;
            int length2 = newEntryArray.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(i2);
                if (interfaceC5747a != null) {
                    InterfaceC5747a<K, V> next = interfaceC5747a.getNext();
                    int hash = interfaceC5747a.getHash() & length2;
                    if (next == null) {
                        newEntryArray.set(hash, interfaceC5747a);
                    } else {
                        InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                        while (next != null) {
                            int hash2 = next.getHash() & length2;
                            if (hash2 != hash) {
                                interfaceC5747a2 = next;
                                hash = hash2;
                            }
                            next = next.getNext();
                        }
                        newEntryArray.set(hash, interfaceC5747a2);
                        while (interfaceC5747a != interfaceC5747a2) {
                            int hash3 = interfaceC5747a.getHash() & length2;
                            InterfaceC5747a<K, V> copyEntry = copyEntry(interfaceC5747a, newEntryArray.get(hash3));
                            if (copyEntry != null) {
                                newEntryArray.set(hash3, copyEntry);
                            } else {
                                removeCollectedEntry(interfaceC5747a);
                                i--;
                            }
                            interfaceC5747a = interfaceC5747a.getNext();
                        }
                    }
                }
            }
            this.table = newEntryArray;
            this.count = i;
        }

        @GuardedBy("this")
        public void expireEntries(long j) {
            InterfaceC5747a<K, V> peek;
            InterfaceC5747a<K, V> peek2;
            drainRecencyQueue();
            do {
                peek = this.writeQueue.peek();
                if (peek == null || !this.map.m25966y(peek, j)) {
                    do {
                        peek2 = this.accessQueue.peek();
                        if (peek2 == null || !this.map.m25966y(peek2, j)) {
                            return;
                        }
                    } while (removeEntry(peek2, peek2.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(peek, peek.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        public V get(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            InterfaceC5747a<K, V> entry;
            Preconditions.checkNotNull(k);
            Preconditions.checkNotNull(cacheLoader);
            try {
                try {
                    if (this.count != 0 && (entry = getEntry(k, i)) != null) {
                        long read = this.map.f33755t.read();
                        V liveValue = getLiveValue(entry, read);
                        if (liveValue != null) {
                            recordRead(entry, read);
                            this.statsCounter.recordHits(1);
                            return scheduleRefresh(entry, k, i, liveValue, read, cacheLoader);
                        }
                        InterfaceC5731t<K, V> valueReference = entry.getValueReference();
                        if (valueReference.isLoading()) {
                            return waitForLoadingValue(entry, k, valueReference);
                        }
                    }
                    return lockedGetOrLoad(k, i, cacheLoader);
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (!(cause instanceof Error)) {
                        if (cause instanceof RuntimeException) {
                            throw new UncheckedExecutionException(cause);
                        }
                        throw e;
                    }
                    throw new ExecutionError((Error) cause);
                }
            } finally {
                postReadCleanup();
            }
        }

        public V getAndRecordStats(K k, int i, C5723l<K, V> c5723l, ListenableFuture<V> listenableFuture) throws ExecutionException {
            V v;
            try {
                v = (V) Uninterruptibles.getUninterruptibly(listenableFuture);
                try {
                    if (v != null) {
                        this.statsCounter.recordLoadSuccess(c5723l.m25988e());
                        storeLoadedValue(k, i, c5723l, v);
                        return v;
                    }
                    String valueOf = String.valueOf(k);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 35);
                    sb.append("CacheLoader returned null for key ");
                    sb.append(valueOf);
                    sb.append(".");
                    throw new CacheLoader.InvalidCacheLoadException(sb.toString());
                } catch (Throwable th) {
                    th = th;
                    if (v == null) {
                        this.statsCounter.recordLoadException(c5723l.m25988e());
                        removeLoadingValue(k, i, c5723l);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                v = null;
            }
        }

        public InterfaceC5747a<K, V> getEntry(Object obj, int i) {
            for (InterfaceC5747a<K, V> first = getFirst(i); first != null; first = first.getNext()) {
                if (first.getHash() == i) {
                    K key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.f33744i.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        public InterfaceC5747a<K, V> getFirst(int i) {
            return this.table.get(i & (r1.length() - 1));
        }

        public InterfaceC5747a<K, V> getLiveEntry(Object obj, int i, long j) {
            InterfaceC5747a<K, V> entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.m25966y(entry, j)) {
                return entry;
            }
            tryExpireEntries(j);
            return null;
        }

        public V getLiveValue(InterfaceC5747a<K, V> interfaceC5747a, long j) {
            if (interfaceC5747a.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = interfaceC5747a.getValueReference().get();
            if (v == null) {
                tryDrainReferenceQueues();
                return null;
            }
            if (!this.map.m25966y(interfaceC5747a, j)) {
                return v;
            }
            tryExpireEntries(j);
            return null;
        }

        @GuardedBy("this")
        public InterfaceC5747a<K, V> getNextEvictable() {
            for (InterfaceC5747a<K, V> interfaceC5747a : this.accessQueue) {
                if (interfaceC5747a.getValueReference().getWeight() > 0) {
                    return interfaceC5747a;
                }
            }
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            if (!this.map.m25952j()) {
                int i = this.threshold;
                if (i == this.maxSegmentWeight) {
                    this.threshold = i + 1;
                }
            }
            this.table = atomicReferenceArray;
        }

        public C5723l<K, V> insertLoadingValueReference(K k, int i, boolean z) {
            lock();
            try {
                long read = this.map.f33755t.read();
                preWriteCleanup(read);
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5747a<K, V> interfaceC5747a = (InterfaceC5747a) atomicReferenceArray.get(length);
                for (InterfaceC5747a interfaceC5747a2 = interfaceC5747a; interfaceC5747a2 != null; interfaceC5747a2 = interfaceC5747a2.getNext()) {
                    Object key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        InterfaceC5731t<K, V> valueReference = interfaceC5747a2.getValueReference();
                        if (!valueReference.isLoading() && (!z || read - interfaceC5747a2.getWriteTime() >= this.map.f33752q)) {
                            this.modCount++;
                            C5723l<K, V> c5723l = new C5723l<>(valueReference);
                            interfaceC5747a2.setValueReference(c5723l);
                            return c5723l;
                        }
                        unlock();
                        postWriteCleanup();
                        return null;
                    }
                }
                this.modCount++;
                C5723l<K, V> c5723l2 = new C5723l<>();
                InterfaceC5747a<K, V> newEntry = newEntry(k, i, interfaceC5747a);
                newEntry.setValueReference(c5723l2);
                atomicReferenceArray.set(length, newEntry);
                return c5723l2;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public ListenableFuture<V> loadAsync(K k, int i, C5723l<K, V> c5723l, CacheLoader<? super K, V> cacheLoader) {
            ListenableFuture<V> m25991h = c5723l.m25991h(k, cacheLoader);
            m25991h.addListener(new RunnableC5703a(k, i, c5723l, m25991h), MoreExecutors.directExecutor());
            return m25991h;
        }

        public V loadSync(K k, int i, C5723l<K, V> c5723l, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return getAndRecordStats(k, i, c5723l, c5723l.m25991h(k, cacheLoader));
        }

        public V lockedGetOrLoad(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            C5723l<K, V> c5723l;
            boolean z;
            InterfaceC5731t<K, V> interfaceC5731t;
            V loadSync;
            lock();
            try {
                long read = this.map.f33755t.read();
                preWriteCleanup(read);
                int i2 = this.count - 1;
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                while (true) {
                    c5723l = null;
                    if (interfaceC5747a2 == null) {
                        z = true;
                        interfaceC5731t = null;
                        break;
                    }
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        InterfaceC5731t<K, V> valueReference = interfaceC5747a2.getValueReference();
                        if (valueReference.isLoading()) {
                            z = false;
                        } else {
                            V v = valueReference.get();
                            if (v == null) {
                                enqueueNotification(key, i, v, valueReference.getWeight(), RemovalCause.COLLECTED);
                            } else {
                                if (!this.map.m25966y(interfaceC5747a2, read)) {
                                    recordLockedRead(interfaceC5747a2, read);
                                    this.statsCounter.recordHits(1);
                                    return v;
                                }
                                enqueueNotification(key, i, v, valueReference.getWeight(), RemovalCause.EXPIRED);
                            }
                            this.writeQueue.remove(interfaceC5747a2);
                            this.accessQueue.remove(interfaceC5747a2);
                            this.count = i2;
                            z = true;
                        }
                        interfaceC5731t = valueReference;
                    } else {
                        interfaceC5747a2 = interfaceC5747a2.getNext();
                    }
                }
                if (z) {
                    c5723l = new C5723l<>();
                    if (interfaceC5747a2 == null) {
                        interfaceC5747a2 = newEntry(k, i, interfaceC5747a);
                        interfaceC5747a2.setValueReference(c5723l);
                        atomicReferenceArray.set(length, interfaceC5747a2);
                    } else {
                        interfaceC5747a2.setValueReference(c5723l);
                    }
                }
                if (!z) {
                    return waitForLoadingValue(interfaceC5747a2, k, interfaceC5731t);
                }
                try {
                    synchronized (interfaceC5747a2) {
                        loadSync = loadSync(k, i, c5723l, cacheLoader);
                    }
                    return loadSync;
                } finally {
                    this.statsCounter.recordMisses(1);
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        public InterfaceC5747a<K, V> newEntry(K k, int i, InterfaceC5747a<K, V> interfaceC5747a) {
            return this.map.f33756u.newEntry(this, Preconditions.checkNotNull(k), i, interfaceC5747a);
        }

        public AtomicReferenceArray<InterfaceC5747a<K, V>> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        public void postWriteCleanup() {
            runUnlockedCleanup();
        }

        @GuardedBy("this")
        public void preWriteCleanup(long j) {
            runLockedCleanup(j);
        }

        public V put(K k, int i, V v, boolean z) {
            int i2;
            lock();
            try {
                long read = this.map.f33755t.read();
                preWriteCleanup(read);
                if (this.count + 1 > this.threshold) {
                    expand();
                }
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                while (true) {
                    if (interfaceC5747a2 == null) {
                        this.modCount++;
                        InterfaceC5747a<K, V> newEntry = newEntry(k, i, interfaceC5747a);
                        setValue(newEntry, k, v, read);
                        atomicReferenceArray.set(length, newEntry);
                        this.count++;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        InterfaceC5731t<K, V> valueReference = interfaceC5747a2.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 != null) {
                            if (z) {
                                recordLockedRead(interfaceC5747a2, read);
                            } else {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.getWeight(), RemovalCause.REPLACED);
                                setValue(interfaceC5747a2, k, v, read);
                                evictEntries(interfaceC5747a2);
                            }
                            return v2;
                        }
                        this.modCount++;
                        if (valueReference.isActive()) {
                            enqueueNotification(k, i, v2, valueReference.getWeight(), RemovalCause.COLLECTED);
                            setValue(interfaceC5747a2, k, v, read);
                            i2 = this.count;
                        } else {
                            setValue(interfaceC5747a2, k, v, read);
                            i2 = this.count + 1;
                        }
                        this.count = i2;
                        evictEntries(interfaceC5747a2);
                    } else {
                        interfaceC5747a2 = interfaceC5747a2.getNext();
                    }
                }
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public boolean reclaimKey(InterfaceC5747a<K, V> interfaceC5747a, int i) {
            lock();
            try {
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5747a<K, V> interfaceC5747a2 = atomicReferenceArray.get(length);
                for (InterfaceC5747a<K, V> interfaceC5747a3 = interfaceC5747a2; interfaceC5747a3 != null; interfaceC5747a3 = interfaceC5747a3.getNext()) {
                    if (interfaceC5747a3 == interfaceC5747a) {
                        this.modCount++;
                        InterfaceC5747a<K, V> removeValueFromChain = removeValueFromChain(interfaceC5747a2, interfaceC5747a3, interfaceC5747a3.getKey(), i, interfaceC5747a3.getValueReference().get(), interfaceC5747a3.getValueReference(), RemovalCause.COLLECTED);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, removeValueFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public boolean reclaimValue(K k, int i, InterfaceC5731t<K, V> interfaceC5731t) {
            lock();
            try {
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                for (InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a; interfaceC5747a2 != null; interfaceC5747a2 = interfaceC5747a2.getNext()) {
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        if (interfaceC5747a2.getValueReference() != interfaceC5731t) {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                postWriteCleanup();
                            }
                            return false;
                        }
                        this.modCount++;
                        InterfaceC5747a<K, V> removeValueFromChain = removeValueFromChain(interfaceC5747a, interfaceC5747a2, key, i, interfaceC5731t.get(), interfaceC5731t, RemovalCause.COLLECTED);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, removeValueFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
            }
        }

        @GuardedBy("this")
        public void recordLockedRead(InterfaceC5747a<K, V> interfaceC5747a, long j) {
            if (this.map.m25936O()) {
                interfaceC5747a.setAccessTime(j);
            }
            this.accessQueue.add(interfaceC5747a);
        }

        public void recordRead(InterfaceC5747a<K, V> interfaceC5747a, long j) {
            if (this.map.m25936O()) {
                interfaceC5747a.setAccessTime(j);
            }
            this.recencyQueue.add(interfaceC5747a);
        }

        @GuardedBy("this")
        public void recordWrite(InterfaceC5747a<K, V> interfaceC5747a, int i, long j) {
            drainRecencyQueue();
            this.totalWeight += i;
            if (this.map.m25936O()) {
                interfaceC5747a.setAccessTime(j);
            }
            if (this.map.m25938Q()) {
                interfaceC5747a.setWriteTime(j);
            }
            this.accessQueue.add(interfaceC5747a);
            this.writeQueue.add(interfaceC5747a);
        }

        public V refresh(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            C5723l<K, V> insertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (insertLoadingValueReference == null) {
                return null;
            }
            ListenableFuture<V> loadAsync = loadAsync(k, i, insertLoadingValueReference, cacheLoader);
            if (loadAsync.isDone()) {
                try {
                    return (V) Uninterruptibles.getUninterruptibly(loadAsync);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        
            r9 = r5.getValueReference();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        
            if (r12 == null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            r2 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        
            r10 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
        
            r11.modCount++;
            r13 = removeValueFromChain(r4, r5, r6, r13, r12, r9, r10);
            r2 = r11.count - 1;
            r0.set(r1, r13);
            r11.count = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x006b, code lost:
        
            return r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
        
            if (r9.isActive() == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
        
            r2 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public V remove(java.lang.Object r12, int r13) {
            /*
                r11 = this;
                r11.lock()
                com.google.common.cache.LocalCache<K, V> r0 = r11.map     // Catch: java.lang.Throwable -> L78
                com.google.common.base.Ticker r0 = r0.f33755t     // Catch: java.lang.Throwable -> L78
                long r0 = r0.read()     // Catch: java.lang.Throwable -> L78
                r11.preWriteCleanup(r0)     // Catch: java.lang.Throwable -> L78
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.a<K, V>> r0 = r11.table     // Catch: java.lang.Throwable -> L78
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L78
                int r1 = r1 + (-1)
                r1 = r1 & r13
                java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Throwable -> L78
                r4 = r2
                com.google.common.cache.a r4 = (com.google.common.cache.InterfaceC5747a) r4     // Catch: java.lang.Throwable -> L78
                r5 = r4
            L1f:
                r2 = 0
                if (r5 == 0) goto L6c
                java.lang.Object r6 = r5.getKey()     // Catch: java.lang.Throwable -> L78
                int r3 = r5.getHash()     // Catch: java.lang.Throwable -> L78
                if (r3 != r13) goto L73
                if (r6 == 0) goto L73
                com.google.common.cache.LocalCache<K, V> r3 = r11.map     // Catch: java.lang.Throwable -> L78
                com.google.common.base.Equivalence<java.lang.Object> r3 = r3.f33744i     // Catch: java.lang.Throwable -> L78
                boolean r3 = r3.equivalent(r12, r6)     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L73
                com.google.common.cache.LocalCache$t r9 = r5.getValueReference()     // Catch: java.lang.Throwable -> L78
                java.lang.Object r12 = r9.get()     // Catch: java.lang.Throwable -> L78
                if (r12 == 0) goto L46
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L78
            L44:
                r10 = r2
                goto L4f
            L46:
                boolean r3 = r9.isActive()     // Catch: java.lang.Throwable -> L78
                if (r3 == 0) goto L6c
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L78
                goto L44
            L4f:
                int r2 = r11.modCount     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + 1
                r11.modCount = r2     // Catch: java.lang.Throwable -> L78
                r3 = r11
                r7 = r13
                r8 = r12
                com.google.common.cache.a r13 = r3.removeValueFromChain(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L78
                int r2 = r11.count     // Catch: java.lang.Throwable -> L78
                int r2 = r2 + (-1)
                r0.set(r1, r13)     // Catch: java.lang.Throwable -> L78
                r11.count = r2     // Catch: java.lang.Throwable -> L78
                r11.unlock()
                r11.postWriteCleanup()
                return r12
            L6c:
                r11.unlock()
                r11.postWriteCleanup()
                return r2
            L73:
                com.google.common.cache.a r5 = r5.getNext()     // Catch: java.lang.Throwable -> L78
                goto L1f
            L78:
                r12 = move-exception
                r11.unlock()
                r11.postWriteCleanup()
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int):java.lang.Object");
        }

        @GuardedBy("this")
        public void removeCollectedEntry(InterfaceC5747a<K, V> interfaceC5747a) {
            enqueueNotification(interfaceC5747a.getKey(), interfaceC5747a.getHash(), interfaceC5747a.getValueReference().get(), interfaceC5747a.getValueReference().getWeight(), RemovalCause.COLLECTED);
            this.writeQueue.remove(interfaceC5747a);
            this.accessQueue.remove(interfaceC5747a);
        }

        @VisibleForTesting
        @GuardedBy("this")
        public boolean removeEntry(InterfaceC5747a<K, V> interfaceC5747a, int i, RemovalCause removalCause) {
            AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
            int length = (atomicReferenceArray.length() - 1) & i;
            InterfaceC5747a<K, V> interfaceC5747a2 = atomicReferenceArray.get(length);
            for (InterfaceC5747a<K, V> interfaceC5747a3 = interfaceC5747a2; interfaceC5747a3 != null; interfaceC5747a3 = interfaceC5747a3.getNext()) {
                if (interfaceC5747a3 == interfaceC5747a) {
                    this.modCount++;
                    InterfaceC5747a<K, V> removeValueFromChain = removeValueFromChain(interfaceC5747a2, interfaceC5747a3, interfaceC5747a3.getKey(), i, interfaceC5747a3.getValueReference().get(), interfaceC5747a3.getValueReference(), removalCause);
                    int i2 = this.count - 1;
                    atomicReferenceArray.set(length, removeValueFromChain);
                    this.count = i2;
                    return true;
                }
            }
            return false;
        }

        @GuardedBy("this")
        public InterfaceC5747a<K, V> removeEntryFromChain(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2) {
            int i = this.count;
            InterfaceC5747a<K, V> next = interfaceC5747a2.getNext();
            while (interfaceC5747a != interfaceC5747a2) {
                InterfaceC5747a<K, V> copyEntry = copyEntry(interfaceC5747a, next);
                if (copyEntry != null) {
                    next = copyEntry;
                } else {
                    removeCollectedEntry(interfaceC5747a);
                    i--;
                }
                interfaceC5747a = interfaceC5747a.getNext();
            }
            this.count = i;
            return next;
        }

        public boolean removeLoadingValue(K k, int i, C5723l<K, V> c5723l) {
            lock();
            try {
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                while (true) {
                    if (interfaceC5747a2 == null) {
                        break;
                    }
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() != i || key == null || !this.map.f33744i.equivalent(k, key)) {
                        interfaceC5747a2 = interfaceC5747a2.getNext();
                    } else if (interfaceC5747a2.getValueReference() == c5723l) {
                        if (c5723l.isActive()) {
                            interfaceC5747a2.setValueReference(c5723l.m25990g());
                        } else {
                            atomicReferenceArray.set(length, removeEntryFromChain(interfaceC5747a, interfaceC5747a2));
                        }
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        @GuardedBy("this")
        public InterfaceC5747a<K, V> removeValueFromChain(InterfaceC5747a<K, V> interfaceC5747a, InterfaceC5747a<K, V> interfaceC5747a2, K k, int i, V v, InterfaceC5731t<K, V> interfaceC5731t, RemovalCause removalCause) {
            enqueueNotification(k, i, v, interfaceC5731t.getWeight(), removalCause);
            this.writeQueue.remove(interfaceC5747a2);
            this.accessQueue.remove(interfaceC5747a2);
            if (!interfaceC5731t.isLoading()) {
                return removeEntryFromChain(interfaceC5747a, interfaceC5747a2);
            }
            interfaceC5731t.mo25968a(null);
            return interfaceC5747a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean replace(K r18, int r19, V r20, V r21) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.LocalCache<K, V> r1 = r9.map     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Ticker r1 = r1.f33755t     // Catch: java.lang.Throwable -> Lb5
                long r7 = r1.read()     // Catch: java.lang.Throwable -> Lb5
                r9.preWriteCleanup(r7)     // Catch: java.lang.Throwable -> Lb5
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.a<K, V>> r10 = r9.table     // Catch: java.lang.Throwable -> Lb5
                int r1 = r10.length()     // Catch: java.lang.Throwable -> Lb5
                r11 = 1
                int r1 = r1 - r11
                r12 = r0 & r1
                java.lang.Object r1 = r10.get(r12)     // Catch: java.lang.Throwable -> Lb5
                r2 = r1
                com.google.common.cache.a r2 = (com.google.common.cache.InterfaceC5747a) r2     // Catch: java.lang.Throwable -> Lb5
                r13 = r2
            L24:
                r14 = 0
                if (r13 == 0) goto L69
                java.lang.Object r4 = r13.getKey()     // Catch: java.lang.Throwable -> Lb5
                int r1 = r13.getHash()     // Catch: java.lang.Throwable -> Lb5
                if (r1 != r0) goto Lab
                if (r4 == 0) goto Lab
                com.google.common.cache.LocalCache<K, V> r1 = r9.map     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f33744i     // Catch: java.lang.Throwable -> Lb5
                r15 = r18
                boolean r1 = r1.equivalent(r15, r4)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto Lad
                com.google.common.cache.LocalCache$t r16 = r13.getValueReference()     // Catch: java.lang.Throwable -> Lb5
                java.lang.Object r6 = r16.get()     // Catch: java.lang.Throwable -> Lb5
                if (r6 != 0) goto L70
                boolean r1 = r16.isActive()     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto L69
                int r1 = r9.modCount     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.modCount = r1     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r3 = r13
                r5 = r19
                r7 = r16
                com.google.common.cache.a r0 = r1.removeValueFromChain(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb5
                int r1 = r9.count     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 - r11
                r10.set(r12, r0)     // Catch: java.lang.Throwable -> Lb5
                r9.count = r1     // Catch: java.lang.Throwable -> Lb5
            L69:
                r17.unlock()
                r17.postWriteCleanup()
                return r14
            L70:
                com.google.common.cache.LocalCache<K, V> r1 = r9.map     // Catch: java.lang.Throwable -> Lb5
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f33745j     // Catch: java.lang.Throwable -> Lb5
                r3 = r20
                boolean r1 = r1.equivalent(r3, r6)     // Catch: java.lang.Throwable -> Lb5
                if (r1 == 0) goto La7
                int r1 = r9.modCount     // Catch: java.lang.Throwable -> Lb5
                int r1 = r1 + r11
                r9.modCount = r1     // Catch: java.lang.Throwable -> Lb5
                int r5 = r16.getWeight()     // Catch: java.lang.Throwable -> Lb5
                com.google.common.cache.RemovalCause r10 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r6
                r6 = r10
                r1.enqueueNotification(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lb5
                r1 = r17
                r2 = r13
                r3 = r18
                r4 = r21
                r5 = r7
                r1.setValue(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lb5
                r9.evictEntries(r13)     // Catch: java.lang.Throwable -> Lb5
                r17.unlock()
                r17.postWriteCleanup()
                return r11
            La7:
                r9.recordLockedRead(r13, r7)     // Catch: java.lang.Throwable -> Lb5
                goto L69
            Lab:
                r15 = r18
            Lad:
                r3 = r20
                com.google.common.cache.a r13 = r13.getNext()     // Catch: java.lang.Throwable -> Lb5
                goto L24
            Lb5:
                r0 = move-exception
                r17.unlock()
                r17.postWriteCleanup()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.replace(java.lang.Object, int, java.lang.Object, java.lang.Object):boolean");
        }

        public void runLockedCleanup(long j) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(j);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public void runUnlockedCleanup() {
            if (isHeldByCurrentThread()) {
                return;
            }
            this.map.m25933L();
        }

        public V scheduleRefresh(InterfaceC5747a<K, V> interfaceC5747a, K k, int i, V v, long j, CacheLoader<? super K, V> cacheLoader) {
            V refresh;
            return (!this.map.m25940S() || j - interfaceC5747a.getWriteTime() <= this.map.f33752q || interfaceC5747a.getValueReference().isLoading() || (refresh = refresh(k, i, cacheLoader, true)) == null) ? v : refresh;
        }

        @GuardedBy("this")
        public void setValue(InterfaceC5747a<K, V> interfaceC5747a, K k, V v, long j) {
            InterfaceC5731t<K, V> valueReference = interfaceC5747a.getValueReference();
            int weigh = this.map.f33749n.weigh(k, v);
            Preconditions.checkState(weigh >= 0, "Weights must be non-negative");
            interfaceC5747a.setValueReference(this.map.f33747l.referenceValue(this, interfaceC5747a, v, weigh));
            recordWrite(interfaceC5747a, weigh, j);
            valueReference.mo25968a(v);
        }

        public boolean storeLoadedValue(K k, int i, C5723l<K, V> c5723l, V v) {
            lock();
            try {
                long read = this.map.f33755t.read();
                preWriteCleanup(read);
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                int i3 = i2;
                AtomicReferenceArray<InterfaceC5747a<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InterfaceC5747a<K, V> interfaceC5747a = atomicReferenceArray.get(length);
                InterfaceC5747a<K, V> interfaceC5747a2 = interfaceC5747a;
                while (true) {
                    if (interfaceC5747a2 == null) {
                        this.modCount++;
                        InterfaceC5747a<K, V> newEntry = newEntry(k, i, interfaceC5747a);
                        setValue(newEntry, k, v, read);
                        atomicReferenceArray.set(length, newEntry);
                        this.count = i3;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = interfaceC5747a2.getKey();
                    if (interfaceC5747a2.getHash() == i && key != null && this.map.f33744i.equivalent(k, key)) {
                        InterfaceC5731t<K, V> valueReference = interfaceC5747a2.getValueReference();
                        V v2 = valueReference.get();
                        if (c5723l != valueReference && (v2 != null || valueReference == LocalCache.f33738t0)) {
                            enqueueNotification(k, i, v, 0, RemovalCause.REPLACED);
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                        this.modCount++;
                        if (c5723l.isActive()) {
                            enqueueNotification(k, i, v2, c5723l.getWeight(), v2 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                            i3--;
                        }
                        setValue(interfaceC5747a2, k, v, read);
                        this.count = i3;
                        evictEntries(interfaceC5747a2);
                    } else {
                        interfaceC5747a2 = interfaceC5747a2.getNext();
                    }
                }
                return true;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        public void tryExpireEntries(long j) {
            if (tryLock()) {
                try {
                    expireEntries(j);
                } finally {
                    unlock();
                }
            }
        }

        public V waitForLoadingValue(InterfaceC5747a<K, V> interfaceC5747a, K k, InterfaceC5731t<K, V> interfaceC5731t) throws ExecutionException {
            if (!interfaceC5731t.isLoading()) {
                throw new AssertionError();
            }
            Preconditions.checkState(!Thread.holdsLock(interfaceC5747a), "Recursive load of: %s", k);
            try {
                V mo25969b = interfaceC5731t.mo25969b();
                if (mo25969b != null) {
                    recordRead(interfaceC5747a, this.map.f33755t.read());
                    return mo25969b;
                }
                String valueOf = String.valueOf(k);
                StringBuilder sb = new StringBuilder(valueOf.length() + 35);
                sb.append("CacheLoader returned null for key ");
                sb.append(valueOf);
                sb.append(".");
                throw new CacheLoader.InvalidCacheLoadException(sb.toString());
            } finally {
                this.statsCounter.recordMisses(1);
            }
        }

        public V get(Object obj, int i) {
            try {
                if (this.count != 0) {
                    long read = this.map.f33755t.read();
                    InterfaceC5747a<K, V> liveEntry = getLiveEntry(obj, i, read);
                    if (liveEntry == null) {
                        return null;
                    }
                    V v = liveEntry.getValueReference().get();
                    if (v != null) {
                        recordRead(liveEntry, read);
                        return scheduleRefresh(liveEntry, liveEntry.getKey(), i, v, read, this.map.f33758w);
                    }
                    tryDrainReferenceQueues();
                }
                return null;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        
            r10 = r6.getValueReference();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        
            if (r12.map.f33745j.equivalent(r15, r9) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
        
            r13 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        
            r12.modCount++;
            r14 = removeValueFromChain(r5, r6, r7, r14, r9, r10, r13);
            r15 = r12.count - 1;
            r0.set(r1, r14);
            r12.count = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
        
            if (r13 != com.google.common.cache.RemovalCause.EXPLICIT) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
        
            if (r9 != null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        
            if (r10.isActive() == false) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0055, code lost:
        
            r13 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean remove(java.lang.Object r13, int r14, java.lang.Object r15) {
            /*
                r12 = this;
                r12.lock()
                com.google.common.cache.LocalCache<K, V> r0 = r12.map     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Ticker r0 = r0.f33755t     // Catch: java.lang.Throwable -> L84
                long r0 = r0.read()     // Catch: java.lang.Throwable -> L84
                r12.preWriteCleanup(r0)     // Catch: java.lang.Throwable -> L84
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.a<K, V>> r0 = r12.table     // Catch: java.lang.Throwable -> L84
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L84
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r14
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L84
                r5 = r3
                com.google.common.cache.a r5 = (com.google.common.cache.InterfaceC5747a) r5     // Catch: java.lang.Throwable -> L84
                r6 = r5
            L1f:
                r3 = 0
                if (r6 == 0) goto L78
                java.lang.Object r7 = r6.getKey()     // Catch: java.lang.Throwable -> L84
                int r4 = r6.getHash()     // Catch: java.lang.Throwable -> L84
                if (r4 != r14) goto L7f
                if (r7 == 0) goto L7f
                com.google.common.cache.LocalCache<K, V> r4 = r12.map     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r4 = r4.f33744i     // Catch: java.lang.Throwable -> L84
                boolean r4 = r4.equivalent(r13, r7)     // Catch: java.lang.Throwable -> L84
                if (r4 == 0) goto L7f
                com.google.common.cache.LocalCache$t r10 = r6.getValueReference()     // Catch: java.lang.Throwable -> L84
                java.lang.Object r9 = r10.get()     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.LocalCache<K, V> r13 = r12.map     // Catch: java.lang.Throwable -> L84
                com.google.common.base.Equivalence<java.lang.Object> r13 = r13.f33745j     // Catch: java.lang.Throwable -> L84
                boolean r13 = r13.equivalent(r15, r9)     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L4d
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                goto L57
            L4d:
                if (r9 != 0) goto L78
                boolean r13 = r10.isActive()     // Catch: java.lang.Throwable -> L84
                if (r13 == 0) goto L78
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L84
            L57:
                int r15 = r12.modCount     // Catch: java.lang.Throwable -> L84
                int r15 = r15 + r2
                r12.modCount = r15     // Catch: java.lang.Throwable -> L84
                r4 = r12
                r8 = r14
                r11 = r13
                com.google.common.cache.a r14 = r4.removeValueFromChain(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L84
                int r15 = r12.count     // Catch: java.lang.Throwable -> L84
                int r15 = r15 - r2
                r0.set(r1, r14)     // Catch: java.lang.Throwable -> L84
                r12.count = r15     // Catch: java.lang.Throwable -> L84
                com.google.common.cache.RemovalCause r14 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: java.lang.Throwable -> L84
                if (r13 != r14) goto L70
                goto L71
            L70:
                r2 = r3
            L71:
                r12.unlock()
                r12.postWriteCleanup()
                return r2
            L78:
                r12.unlock()
                r12.postWriteCleanup()
                return r3
            L7f:
                com.google.common.cache.a r6 = r6.getNext()     // Catch: java.lang.Throwable -> L84
                goto L1f
            L84:
                r13 = move-exception
                r12.unlock()
                r12.postWriteCleanup()
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
        
            return null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public V replace(K r18, int r19, V r20) {
            /*
                r17 = this;
                r9 = r17
                r0 = r19
                r17.lock()
                com.google.common.cache.LocalCache<K, V> r1 = r9.map     // Catch: java.lang.Throwable -> La7
                com.google.common.base.Ticker r1 = r1.f33755t     // Catch: java.lang.Throwable -> La7
                long r7 = r1.read()     // Catch: java.lang.Throwable -> La7
                r9.preWriteCleanup(r7)     // Catch: java.lang.Throwable -> La7
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.a<K, V>> r10 = r9.table     // Catch: java.lang.Throwable -> La7
                int r1 = r10.length()     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r11 = r0 & r1
                java.lang.Object r1 = r10.get(r11)     // Catch: java.lang.Throwable -> La7
                r2 = r1
                com.google.common.cache.a r2 = (com.google.common.cache.InterfaceC5747a) r2     // Catch: java.lang.Throwable -> La7
                r12 = r2
            L24:
                r13 = 0
                if (r12 == 0) goto L6c
                java.lang.Object r4 = r12.getKey()     // Catch: java.lang.Throwable -> La7
                int r1 = r12.getHash()     // Catch: java.lang.Throwable -> La7
                if (r1 != r0) goto L9f
                if (r4 == 0) goto L9f
                com.google.common.cache.LocalCache<K, V> r1 = r9.map     // Catch: java.lang.Throwable -> La7
                com.google.common.base.Equivalence<java.lang.Object> r1 = r1.f33744i     // Catch: java.lang.Throwable -> La7
                r14 = r18
                boolean r1 = r1.equivalent(r14, r4)     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto La1
                com.google.common.cache.LocalCache$t r15 = r12.getValueReference()     // Catch: java.lang.Throwable -> La7
                java.lang.Object r16 = r15.get()     // Catch: java.lang.Throwable -> La7
                if (r16 != 0) goto L73
                boolean r1 = r15.isActive()     // Catch: java.lang.Throwable -> La7
                if (r1 == 0) goto L6c
                int r1 = r9.modCount     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.modCount = r1     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r8 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r3 = r12
                r5 = r19
                r6 = r16
                r7 = r15
                com.google.common.cache.a r0 = r1.removeValueFromChain(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> La7
                int r1 = r9.count     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + (-1)
                r10.set(r11, r0)     // Catch: java.lang.Throwable -> La7
                r9.count = r1     // Catch: java.lang.Throwable -> La7
            L6c:
                r17.unlock()
                r17.postWriteCleanup()
                return r13
            L73:
                int r1 = r9.modCount     // Catch: java.lang.Throwable -> La7
                int r1 = r1 + 1
                r9.modCount = r1     // Catch: java.lang.Throwable -> La7
                int r5 = r15.getWeight()     // Catch: java.lang.Throwable -> La7
                com.google.common.cache.RemovalCause r6 = com.google.common.cache.RemovalCause.REPLACED     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r18
                r3 = r19
                r4 = r16
                r1.enqueueNotification(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> La7
                r1 = r17
                r2 = r12
                r3 = r18
                r4 = r20
                r5 = r7
                r1.setValue(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La7
                r9.evictEntries(r12)     // Catch: java.lang.Throwable -> La7
                r17.unlock()
                r17.postWriteCleanup()
                return r16
            L9f:
                r14 = r18
            La1:
                com.google.common.cache.a r12 = r12.getNext()     // Catch: java.lang.Throwable -> La7
                goto L24
            La7:
                r0 = move-exception
                r17.unlock()
                r17.postWriteCleanup()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.replace(java.lang.Object, int, java.lang.Object):java.lang.Object");
        }
    }
}
