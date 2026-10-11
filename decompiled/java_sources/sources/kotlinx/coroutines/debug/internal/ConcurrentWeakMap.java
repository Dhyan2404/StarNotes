package kotlinx.coroutines.debug.internal;

import androidx.lifecycle.SavedStateHandle;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.c9j;
import com.sunia.HTREnginev2.r1n;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003\u0013\u000f\u0010B\u0011\u0012\b\b\u0002\u0010\u0017\u001a\u00020(¢\u0006\u0004\b)\u0010*J\u001a\u0010\u0006\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\t\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\u0007J\b\u0010\r\u001a\u00020\fH\u0016J\u0006\u0010\u000e\u001a\u00020\fJ\b\u0010\u000f\u001a\u00020\fH\u0002J#\u0010\u0010\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u00002\b\u0010\b\u001a\u0004\u0018\u00018\u0001H\u0002¢\u0006\u0004\b\u0010\u0010\nJ\u0014\u0010\u0013\u001a\u00020\f2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0002R\u001c\u0010\u0017\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR&\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 0\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u001eR\u000b\u0010$\u001a\u00020#8\u0002X\u0082\u0004R!\u0010'\u001a\u0018\u0012\u0014\u0012\u00120&R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000%8\u0002X\u0082\u0004¨\u0006+"}, m61528d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "K", "V", "Lkotlin/collections/AbstractMutableMap;", "key", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", SyncConstant.SYNC_ACTION_REMOVE, "", Constants.CLEAR_ATTRIBUTES, "runWeakRefQueueCleaningLoopUntilInterrupted", "b", "c", "Lkotlinx/coroutines/debug/internal/HashedWeakRef;", "w", "a", "Ljava/lang/ref/ReferenceQueue;", "e", "Ljava/lang/ref/ReferenceQueue;", "weakRefQueue", "", "getSize", "()I", "size", "", "getKeys", "()Ljava/util/Set;", SavedStateHandle.f7923g, "", "getEntries", "entries", "Lkotlinx/atomicfu/AtomicInt;", "_size", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", SchedulerManager.CORE, "", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"})
/* loaded from: classes11.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: f */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98293f = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size");

    /* renamed from: g */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98294g = AtomicReferenceFieldUpdater.newUpdater(ConcurrentWeakMap.class, Object.class, SchedulerManager.CORE);

    @Volatile
    private volatile int _size;

    @Volatile
    @Nullable
    private volatile Object core;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final ReferenceQueue<K> weakRefQueue;

    /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a */
    /* loaded from: classes11.dex */
    public final class C18168a {

        /* renamed from: g */
        @NotNull
        public static final AtomicIntegerFieldUpdater f98296g = AtomicIntegerFieldUpdater.newUpdater(C18168a.class, "load");

        /* renamed from: a */
        public final int f98297a;

        /* renamed from: b */
        public final int f98298b;

        /* renamed from: c */
        public final int f98299c;

        /* renamed from: d */
        @NotNull
        public final AtomicReferenceArray f98300d;

        /* renamed from: e */
        @NotNull
        public final AtomicReferenceArray f98301e;

        @Volatile
        private volatile int load;

        @SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1#2:285\n*E\n"})
        /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a$a */
        /* loaded from: classes11.dex */
        public final class a<E> implements Iterator<E>, KMutableIterator {

            /* renamed from: e */
            @NotNull
            public final Function2<K, V, E> f98303e;

            /* renamed from: f */
            public int f98304f = -1;

            /* renamed from: g */
            public K f98305g;

            /* renamed from: h */
            public V f98306h;

            /* JADX WARN: Multi-variable type inference failed */
            public a(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
                this.f98303e = function2;
                m61913a();
            }

            /* renamed from: a */
            public final void m61913a() {
                K k;
                while (true) {
                    int i = this.f98304f + 1;
                    this.f98304f = i;
                    if (i >= C18168a.this.f98297a) {
                        return;
                    }
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) C18168a.this.f98300d.get(this.f98304f);
                    if (hashedWeakRef != null && (k = (K) hashedWeakRef.get()) != null) {
                        this.f98305g = k;
                        Object obj = (V) C18168a.this.f98301e.get(this.f98304f);
                        if (obj instanceof c9j) {
                            obj = (V) ((c9j) obj).f66631a;
                        }
                        if (obj != null) {
                            this.f98306h = (V) obj;
                            return;
                        }
                    }
                }
            }

            @Override // java.util.Iterator
            @NotNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Void remove() {
                ConcurrentWeakMapKt.m61916b();
                throw new KotlinNothingValueException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f98304f < C18168a.this.f98297a;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f98304f >= C18168a.this.f98297a) {
                    throw new NoSuchElementException();
                }
                Function2<K, V, E> function2 = this.f98303e;
                K k = this.f98305g;
                if (k == false) {
                    Intrinsics.throwUninitializedPropertyAccessException("key");
                    k = (K) Unit.INSTANCE;
                }
                V v = this.f98306h;
                if (v == false) {
                    Intrinsics.throwUninitializedPropertyAccessException("value");
                    v = (V) Unit.INSTANCE;
                }
                E e = (E) function2.invoke(k, v);
                m61913a();
                return e;
            }
        }

        public C18168a(int i) {
            this.f98297a = i;
            this.f98298b = Integer.numberOfLeadingZeros(i) + 1;
            this.f98299c = (i * 2) / 3;
            this.f98300d = new AtomicReferenceArray(i);
            this.f98301e = new AtomicReferenceArray(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: i */
        public static /* synthetic */ Object m61904i(C18168a c18168a, Object obj, Object obj2, HashedWeakRef hashedWeakRef, int i, Object obj3) {
            if ((i & 4) != 0) {
                hashedWeakRef = null;
            }
            return c18168a.m61909h(obj, obj2, hashedWeakRef);
        }

        /* renamed from: d */
        public final void m61905d(@NotNull HashedWeakRef<?> hashedWeakRef) {
            int m61907f = m61907f(hashedWeakRef.hash);
            while (true) {
                HashedWeakRef<?> hashedWeakRef2 = (HashedWeakRef) this.f98300d.get(m61907f);
                if (hashedWeakRef2 == null) {
                    return;
                }
                if (hashedWeakRef2 == hashedWeakRef) {
                    m61911k(m61907f);
                    return;
                } else {
                    if (m61907f == 0) {
                        m61907f = this.f98297a;
                    }
                    m61907f--;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        /* renamed from: e */
        public final V m61906e(@NotNull K k) {
            int m61907f = m61907f(k.hashCode());
            while (true) {
                HashedWeakRef hashedWeakRef = (HashedWeakRef) this.f98300d.get(m61907f);
                if (hashedWeakRef == null) {
                    return null;
                }
                T t = hashedWeakRef.get();
                if (Intrinsics.areEqual(k, t)) {
                    V v = (V) this.f98301e.get(m61907f);
                    return v instanceof c9j ? (V) ((c9j) v).f66631a : v;
                }
                if (t == 0) {
                    m61911k(m61907f);
                }
                if (m61907f == 0) {
                    m61907f = this.f98297a;
                }
                m61907f--;
            }
        }

        /* renamed from: f */
        public final int m61907f(int i) {
            return (i * (-1640531527)) >>> this.f98298b;
        }

        @NotNull
        /* renamed from: g */
        public final <E> Iterator<E> m61908g(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            return new a(function2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        
            r6 = r5.f98301e.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        
            if ((r6 instanceof com.sunia.HTREnginev2.c9j) == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        
            if (com.sunia.HTREnginev2.r1n.m56886a(r5.f98301e, r0, r6, r7) == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
        
            r5 = kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt.f98314c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        
            return r5;
         */
        @org.jetbrains.annotations.Nullable
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m61909h(@org.jetbrains.annotations.NotNull K r6, @org.jetbrains.annotations.Nullable V r7, @org.jetbrains.annotations.Nullable kotlinx.coroutines.debug.internal.HashedWeakRef<K> r8) {
            /*
                r5 = this;
                int r0 = r6.hashCode()
                int r0 = r5.m61907f(r0)
                r1 = 0
            L9:
                java.util.concurrent.atomic.AtomicReferenceArray r2 = r5.f98300d
                java.lang.Object r2 = r2.get(r0)
                kotlinx.coroutines.debug.internal.HashedWeakRef r2 = (kotlinx.coroutines.debug.internal.HashedWeakRef) r2
                if (r2 != 0) goto L47
                r2 = 0
                if (r7 != 0) goto L17
                return r2
            L17:
                if (r1 != 0) goto L31
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r3 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.C18168a.f98296g
            L1b:
                int r1 = r3.get(r5)
                int r4 = r5.f98299c
                if (r1 < r4) goto L28
                kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt.access$getREHASH$p()
                return r5
            L28:
                int r4 = r1 + 1
                boolean r1 = r3.compareAndSet(r5, r1, r4)
                if (r1 == 0) goto L1b
                r1 = 1
            L31:
                if (r8 != 0) goto L3e
                kotlinx.coroutines.debug.internal.HashedWeakRef r8 = new kotlinx.coroutines.debug.internal.HashedWeakRef
                kotlinx.coroutines.debug.internal.ConcurrentWeakMap<K, V> r3 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.this
                java.lang.ref.ReferenceQueue r3 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.access$getWeakRefQueue$p(r3)
                r8.<init>(r6, r3)
            L3e:
                java.util.concurrent.atomic.AtomicReferenceArray r3 = r5.f98300d
                boolean r2 = com.sunia.HTREnginev2.r1n.m56886a(r3, r0, r2, r8)
                if (r2 != 0) goto L58
                goto L9
            L47:
                java.lang.Object r2 = r2.get()
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
                if (r3 == 0) goto L70
                if (r1 == 0) goto L58
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r6 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.C18168a.f98296g
                r6.decrementAndGet(r5)
            L58:
                java.util.concurrent.atomic.AtomicReferenceArray r6 = r5.f98301e
                java.lang.Object r6 = r6.get(r0)
                boolean r8 = r6 instanceof com.sunia.HTREnginev2.c9j
                if (r8 == 0) goto L67
                kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt.access$getREHASH$p()
                return r5
            L67:
                java.util.concurrent.atomic.AtomicReferenceArray r8 = r5.f98301e
                boolean r8 = com.sunia.HTREnginev2.r1n.m56886a(r8, r0, r6, r7)
                if (r8 == 0) goto L58
                return r6
            L70:
                if (r2 != 0) goto L75
                r5.m61911k(r0)
            L75:
                if (r0 != 0) goto L79
                int r0 = r5.f98297a
            L79:
                int r0 = r0 + (-1)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.ConcurrentWeakMap.C18168a.m61909h(java.lang.Object, java.lang.Object, kotlinx.coroutines.debug.internal.HashedWeakRef):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        /* renamed from: j */
        public final ConcurrentWeakMap<K, V>.C18168a m61910j() {
            int coerceAtLeast;
            Object obj;
            Symbol symbol;
            c9j m61915a;
            while (true) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(ConcurrentWeakMap.this.size(), 4);
                ConcurrentWeakMap<K, V>.C18168a c18168a = (ConcurrentWeakMap<K, V>.C18168a) new C18168a(Integer.highestOneBit(coerceAtLeast) * 4);
                int i = this.f98297a;
                for (int i2 = 0; i2 < i; i2++) {
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) this.f98300d.get(i2);
                    Object obj2 = hashedWeakRef != null ? hashedWeakRef.get() : null;
                    if (hashedWeakRef != null && obj2 == null) {
                        m61911k(i2);
                    }
                    while (true) {
                        obj = this.f98301e.get(i2);
                        if (obj instanceof c9j) {
                            obj = ((c9j) obj).f66631a;
                            break;
                        }
                        AtomicReferenceArray atomicReferenceArray = this.f98301e;
                        m61915a = ConcurrentWeakMapKt.m61915a(obj);
                        if (r1n.m56886a(atomicReferenceArray, i2, obj, m61915a)) {
                            break;
                        }
                    }
                    if (obj2 != null && obj != null) {
                        Object m61909h = c18168a.m61909h(obj2, obj, hashedWeakRef);
                        symbol = ConcurrentWeakMapKt.f98314c;
                        if (m61909h != symbol) {
                        }
                    }
                }
                return c18168a;
            }
        }

        /* renamed from: k */
        public final void m61911k(int i) {
            Object obj;
            do {
                obj = this.f98301e.get(i);
                if (obj == null || (obj instanceof c9j)) {
                    return;
                }
            } while (!r1n.m56886a(this.f98301e, i, obj, null));
            ConcurrentWeakMap.this.m61899b();
        }

        /* renamed from: l */
        public final void m61912l(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Integer> function1, Object obj) {
            int i;
            do {
                i = atomicIntegerFieldUpdater.get(obj);
            } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i, function1.invoke(Integer.valueOf(i)).intValue()));
        }
    }

    /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$b */
    /* loaded from: classes11.dex */
    public static final class C18169b<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: e */
        public final K f98308e;

        /* renamed from: f */
        public final V f98309f;

        public C18169b(K k, V v) {
            this.f98308e = k;
            this.f98309f = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f98308e;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f98309f;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            ConcurrentWeakMapKt.m61916b();
            throw new KotlinNothingValueException();
        }
    }

    /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$c */
    /* loaded from: classes11.dex */
    public final class C18170c<E> extends AbstractMutableSet<E> {

        /* renamed from: e */
        @NotNull
        public final Function2<K, V, E> f98310e;

        /* JADX WARN: Multi-variable type inference failed */
        public C18170c(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            this.f98310e = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e) {
            ConcurrentWeakMapKt.m61916b();
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int getSize() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @NotNull
        public Iterator<E> iterator() {
            return ((C18168a) ConcurrentWeakMap.f98294g.get(ConcurrentWeakMap.this)).m61908g(this.f98310e);
        }
    }

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    /* renamed from: a */
    public final void m61898a(HashedWeakRef<?> w) {
        ((C18168a) f98294g.get(this)).m61905d(w);
    }

    /* renamed from: b */
    public final void m61899b() {
        f98293f.decrementAndGet(this);
    }

    /* renamed from: c */
    public final synchronized V m61900c(K key, V value) {
        V v;
        Symbol symbol;
        C18168a c18168a = (C18168a) f98294g.get(this);
        while (true) {
            v = (V) C18168a.m61904i(c18168a, key, value, null, 4, null);
            symbol = ConcurrentWeakMapKt.f98314c;
            if (v == symbol) {
                c18168a = c18168a.m61910j();
                f98294g.set(this, c18168a);
            }
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Iterator<K> it2 = keySet().iterator();
        while (it2.hasNext()) {
            remove(it2.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object key) {
        if (key == null) {
            return null;
        }
        return (V) ((C18168a) f98294g.get(this)).m61906e(key);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new C18170c(new Function2<K, V, Map.Entry<K, V>>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$entries$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((ConcurrentWeakMap$entries$1<K, V>) obj, obj2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Map.Entry<K, V> invoke(@NotNull K k, @NotNull V v) {
                return new ConcurrentWeakMap.C18169b(k, v);
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<K> getKeys() {
        return new C18170c(new Function2<K, V, K>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$keys$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final K invoke(@NotNull K k, @NotNull V v) {
                return k;
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return f98293f.get(this);
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K key, @NotNull V value) {
        Symbol symbol;
        V v = (V) C18168a.m61904i((C18168a) f98294g.get(this), key, value, null, 4, null);
        symbol = ConcurrentWeakMapKt.f98314c;
        if (v == symbol) {
            v = m61900c(key, value);
        }
        if (v == null) {
            f98293f.incrementAndGet(this);
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@Nullable Object key) {
        Symbol symbol;
        if (key == 0) {
            return null;
        }
        V v = (V) C18168a.m61904i((C18168a) f98294g.get(this), key, null, null, 4, null);
        symbol = ConcurrentWeakMapKt.f98314c;
        if (v == symbol) {
            v = m61900c(key, null);
        }
        if (v != null) {
            f98293f.decrementAndGet(this);
        }
        return v;
    }

    public final void runWeakRefQueueCleaningLoopUntilInterrupted() {
        if (!(this.weakRefQueue != null)) {
            throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
        }
        while (true) {
            try {
                Reference<? extends K> remove = this.weakRefQueue.remove();
                Intrinsics.checkNotNull(remove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                m61898a((HashedWeakRef) remove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public ConcurrentWeakMap(boolean z) {
        this.core = new C18168a(16);
        this.weakRefQueue = z ? new ReferenceQueue<>() : null;
    }
}
