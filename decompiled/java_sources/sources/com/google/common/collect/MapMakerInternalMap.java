package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.InterfaceC5914i;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.szd;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtIncompatible
/* loaded from: classes6.dex */
public class MapMakerInternalMap<K, V, E extends InterfaceC5914i<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final long CLEANUP_EXECUTOR_DELAY_SECS = 60;
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final InterfaceC5929x<Object, Object, C5910e> UNSET_WEAK_VALUE_REFERENCE = new C5906a();
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;
    final transient InterfaceC5915j<K, V, E, S> entryHelper;
    transient Set<Map.Entry<K, V>> entrySet;
    final Equivalence<Object> keyEquivalence;
    transient Set<K> keySet;
    final transient int segmentMask;
    final transient int segmentShift;
    final transient Segment<K, V, E, S>[] segments;
    transient Collection<V> values;

    /* loaded from: classes6.dex */
    public static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        public SerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).makeMap();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    /* loaded from: classes6.dex */
    public enum Strength {
        STRONG { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        public abstract Equivalence<Object> defaultEquivalence();

        /* synthetic */ Strength(C5906a c5906a) {
            this();
        }
    }

    /* loaded from: classes6.dex */
    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C5919n<K>, StrongKeyDummyValueSegment<K>> {
        public StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C5919n<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5919n<K> castForTesting(InterfaceC5914i<K, MapMaker.Dummy, ?> interfaceC5914i) {
            return (C5919n) interfaceC5914i;
        }
    }

    /* loaded from: classes6.dex */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, C5920o<K, V>, StrongKeyStrongValueSegment<K, V>> {
        public StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, C5920o<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5920o<K, V> castForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return (C5920o) interfaceC5914i;
        }
    }

    /* loaded from: classes6.dex */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, C5921p<K, V>, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        public StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, C5921p<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public InterfaceC5929x<K, V, C5921p<K, V>> getWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return castForTesting((InterfaceC5914i) interfaceC5914i).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public InterfaceC5929x<K, V, C5921p<K, V>> newWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, V v) {
            return new C5930y(this.queueForValues, v, castForTesting((InterfaceC5914i) interfaceC5914i));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, InterfaceC5929x<K, V, ? extends InterfaceC5914i<K, V, ?>> interfaceC5929x) {
            C5921p<K, V> castForTesting = castForTesting((InterfaceC5914i) interfaceC5914i);
            InterfaceC5929x interfaceC5929x2 = castForTesting.f34207h;
            castForTesting.f34207h = interfaceC5929x;
            interfaceC5929x2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5921p<K, V> castForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return (C5921p) interfaceC5914i;
        }
    }

    /* loaded from: classes6.dex */
    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, C5925t<K>, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys;

        public WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, C5925t<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5925t<K> castForTesting(InterfaceC5914i<K, MapMaker.Dummy, ?> interfaceC5914i) {
            return (C5925t) interfaceC5914i;
        }
    }

    /* loaded from: classes6.dex */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, C5926u<K, V>, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        public WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, C5926u<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5926u<K, V> castForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return (C5926u) interfaceC5914i;
        }
    }

    /* loaded from: classes6.dex */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, C5927v<K, V>, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        public WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, C5927v<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public InterfaceC5929x<K, V, C5927v<K, V>> getWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return castForTesting((InterfaceC5914i) interfaceC5914i).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public InterfaceC5929x<K, V, C5927v<K, V>> newWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, V v) {
            return new C5930y(this.queueForValues, v, castForTesting((InterfaceC5914i) interfaceC5914i));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, InterfaceC5929x<K, V, ? extends InterfaceC5914i<K, V, ?>> interfaceC5929x) {
            C5927v<K, V> castForTesting = castForTesting((InterfaceC5914i) interfaceC5914i);
            InterfaceC5929x interfaceC5929x2 = castForTesting.f34213g;
            castForTesting.f34213g = interfaceC5929x;
            interfaceC5929x2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public C5927v<K, V> castForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return (C5927v) interfaceC5914i;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$a */
    /* loaded from: classes6.dex */
    public class C5906a implements InterfaceC5929x<Object, Object, C5910e> {
        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public InterfaceC5929x<Object, Object, C5910e> mo26397a(ReferenceQueue<Object> referenceQueue, C5910e c5910e) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C5910e getEntry() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        public void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        public Object get() {
            return null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5907b<K, V, E extends InterfaceC5914i<K, V, E>> implements InterfaceC5914i<K, V, E> {

        /* renamed from: e */
        public final K f34188e;

        /* renamed from: f */
        public final int f34189f;

        /* renamed from: g */
        public final E f34190g;

        public AbstractC5907b(K k, int i, E e) {
            this.f34188e = k;
            this.f34189f = i;
            this.f34190g = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public int getHash() {
            return this.f34189f;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public K getKey() {
            return this.f34188e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public E getNext() {
            return this.f34190g;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$c */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5908c<K, V, E extends InterfaceC5914i<K, V, E>> extends WeakReference<K> implements InterfaceC5914i<K, V, E> {

        /* renamed from: e */
        public final int f34191e;

        /* renamed from: f */
        public final E f34192f;

        public AbstractC5908c(ReferenceQueue<K> referenceQueue, K k, int i, E e) {
            super(k, referenceQueue);
            this.f34191e = i;
            this.f34192f = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public int getHash() {
            return this.f34191e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public K getKey() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public E getNext() {
            return this.f34192f;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$d */
    /* loaded from: classes6.dex */
    public static final class RunnableC5909d implements Runnable {

        /* renamed from: e */
        public final WeakReference<MapMakerInternalMap<?, ?, ?, ?>> f34193e;

        public RunnableC5909d(MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap) {
            this.f34193e = new WeakReference<>(mapMakerInternalMap);
        }

        @Override // java.lang.Runnable
        public void run() {
            MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap = this.f34193e.get();
            if (mapMakerInternalMap == null) {
                throw new CancellationException();
            }
            for (Segment<?, ?, ?, ?> segment : mapMakerInternalMap.segments) {
                segment.runCleanup();
            }
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$e */
    /* loaded from: classes6.dex */
    public static final class C5910e implements InterfaceC5914i<Object, Object, C5910e> {
        public C5910e() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C5910e getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$f */
    /* loaded from: classes6.dex */
    public final class C5911f extends MapMakerInternalMap<K, V, E, S>.AbstractC5913h<Map.Entry<K, V>> {
        public C5911f(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC5913h, java.util.Iterator
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m26404c();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$g */
    /* loaded from: classes6.dex */
    public final class C5912g extends AbstractC5918m<Map.Entry<K, V>> {
        public C5912g() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C5911f(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$h */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5913h<T> implements Iterator<T> {

        /* renamed from: e */
        public int f34195e;

        /* renamed from: f */
        public int f34196f = -1;

        /* renamed from: g */
        public Segment<K, V, E, S> f34197g;

        /* renamed from: h */
        public AtomicReferenceArray<E> f34198h;

        /* renamed from: i */
        public E f34199i;

        /* renamed from: j */
        public MapMakerInternalMap<K, V, E, S>.C5931z f34200j;

        /* renamed from: k */
        public MapMakerInternalMap<K, V, E, S>.C5931z f34201k;

        public AbstractC5913h() {
            this.f34195e = MapMakerInternalMap.this.segments.length - 1;
            m26402a();
        }

        /* renamed from: a */
        public final void m26402a() {
            this.f34200j = null;
            if (m26405d() || m26406e()) {
                return;
            }
            while (true) {
                int i = this.f34195e;
                if (i < 0) {
                    return;
                }
                Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
                this.f34195e = i - 1;
                Segment<K, V, E, S> segment = segmentArr[i];
                this.f34197g = segment;
                if (segment.count != 0) {
                    this.f34198h = this.f34197g.table;
                    this.f34196f = r0.length() - 1;
                    if (m26406e()) {
                        return;
                    }
                }
            }
        }

        /* renamed from: b */
        public boolean m26403b(E e) {
            try {
                Object key = e.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(e);
                if (liveValue == null) {
                    this.f34197g.postReadCleanup();
                    return false;
                }
                this.f34200j = new C5931z(key, liveValue);
                this.f34197g.postReadCleanup();
                return true;
            } catch (Throwable th) {
                this.f34197g.postReadCleanup();
                throw th;
            }
        }

        /* renamed from: c */
        public MapMakerInternalMap<K, V, E, S>.C5931z m26404c() {
            MapMakerInternalMap<K, V, E, S>.C5931z c5931z = this.f34200j;
            if (c5931z == null) {
                throw new NoSuchElementException();
            }
            this.f34201k = c5931z;
            m26402a();
            return this.f34201k;
        }

        /* renamed from: d */
        public boolean m26405d() {
            E e = this.f34199i;
            if (e == null) {
                return false;
            }
            while (true) {
                this.f34199i = (E) e.getNext();
                E e2 = this.f34199i;
                if (e2 == null) {
                    return false;
                }
                if (m26403b(e2)) {
                    return true;
                }
                e = this.f34199i;
            }
        }

        /* renamed from: e */
        public boolean m26406e() {
            while (true) {
                int i = this.f34196f;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f34198h;
                this.f34196f = i - 1;
                E e = atomicReferenceArray.get(i);
                this.f34199i = e;
                if (e != null && (m26403b(e) || m26405d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34200j != null;
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(this.f34201k != null);
            MapMakerInternalMap.this.remove(this.f34201k.getKey());
            this.f34201k = null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$i */
    /* loaded from: classes6.dex */
    public interface InterfaceC5914i<K, V, E extends InterfaceC5914i<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$j */
    /* loaded from: classes6.dex */
    public interface InterfaceC5915j<K, V, E extends InterfaceC5914i<K, V, E>, S extends Segment<K, V, E, S>> {
        /* renamed from: a */
        Strength mo26407a();

        /* renamed from: b */
        E mo26408b(S s, E e, E e2);

        /* renamed from: c */
        Strength mo26409c();

        /* renamed from: d */
        S mo26410d(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);

        /* renamed from: e */
        void mo26411e(S s, E e, V v);

        /* renamed from: f */
        E mo26412f(S s, K k, int i, E e);
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$k */
    /* loaded from: classes6.dex */
    public final class C5916k extends MapMakerInternalMap<K, V, E, S>.AbstractC5913h<K> {
        public C5916k(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC5913h, java.util.Iterator
        public K next() {
            return m26404c().getKey();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$l */
    /* loaded from: classes6.dex */
    public final class C5917l extends AbstractC5918m<K> {
        public C5917l() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C5916k(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$m */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5918m<E> extends AbstractSet<E> {
        public AbstractC5918m() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        public /* synthetic */ AbstractC5918m(C5906a c5906a) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$n */
    /* loaded from: classes6.dex */
    public static final class C5919n<K> extends AbstractC5907b<K, MapMaker.Dummy, C5919n<K>> implements InterfaceC5922q<K, MapMaker.Dummy, C5919n<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$n$a */
        /* loaded from: classes6.dex */
        public static final class a<K> implements InterfaceC5915j<K, MapMaker.Dummy, C5919n<K>, StrongKeyDummyValueSegment<K>> {

            /* renamed from: a */
            public static final a<?> f34204a = new a<>();

            /* renamed from: h */
            public static <K> a<K> m26416h() {
                return (a<K>) f34204a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5919n<K> mo26408b(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C5919n<K> c5919n, C5919n<K> c5919n2) {
                return c5919n.m26413b(c5919n2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5919n<K> mo26412f(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, K k, int i, C5919n<K> c5919n) {
                return new C5919n<>(k, i, c5919n);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyDummyValueSegment<K> mo26410d(MapMakerInternalMap<K, MapMaker.Dummy, C5919n<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, C5919n<K> c5919n, MapMaker.Dummy dummy) {
            }
        }

        public C5919n(K k, int i, C5919n<K> c5919n) {
            super(k, i, c5919n);
        }

        /* renamed from: b */
        public C5919n<K> m26413b(C5919n<K> c5919n) {
            return new C5919n<>(this.f34188e, this.f34189f, c5919n);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        /* renamed from: d */
        public void m26415d(MapMaker.Dummy dummy) {
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$o */
    /* loaded from: classes6.dex */
    public static final class C5920o<K, V> extends AbstractC5907b<K, V, C5920o<K, V>> implements InterfaceC5922q<K, V, C5920o<K, V>> {

        /* renamed from: h */
        public volatile V f34205h;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$o$a */
        /* loaded from: classes6.dex */
        public static final class a<K, V> implements InterfaceC5915j<K, V, C5920o<K, V>, StrongKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            public static final a<?, ?> f34206a = new a<>();

            /* renamed from: h */
            public static <K, V> a<K, V> m26423h() {
                return (a<K, V>) f34206a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5920o<K, V> mo26408b(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C5920o<K, V> c5920o, C5920o<K, V> c5920o2) {
                return c5920o.m26421b(c5920o2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5920o<K, V> mo26412f(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, K k, int i, C5920o<K, V> c5920o) {
                return new C5920o<>(k, i, c5920o);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyStrongValueSegment<K, V> mo26410d(MapMakerInternalMap<K, V, C5920o<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, C5920o<K, V> c5920o, V v) {
                c5920o.m26422c(v);
            }
        }

        public C5920o(K k, int i, C5920o<K, V> c5920o) {
            super(k, i, c5920o);
            this.f34205h = null;
        }

        /* renamed from: b */
        public C5920o<K, V> m26421b(C5920o<K, V> c5920o) {
            C5920o<K, V> c5920o2 = new C5920o<>(this.f34188e, this.f34189f, c5920o);
            c5920o2.f34205h = this.f34205h;
            return c5920o2;
        }

        /* renamed from: c */
        public void m26422c(V v) {
            this.f34205h = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public V getValue() {
            return this.f34205h;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$p */
    /* loaded from: classes6.dex */
    public static final class C5921p<K, V> extends AbstractC5907b<K, V, C5921p<K, V>> implements InterfaceC5928w<K, V, C5921p<K, V>> {

        /* renamed from: h */
        public volatile InterfaceC5929x<K, V, C5921p<K, V>> f34207h;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$p$a */
        /* loaded from: classes6.dex */
        public static final class a<K, V> implements InterfaceC5915j<K, V, C5921p<K, V>, StrongKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            public static final a<?, ?> f34208a = new a<>();

            /* renamed from: h */
            public static <K, V> a<K, V> m26433h() {
                return (a<K, V>) f34208a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5921p<K, V> mo26408b(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C5921p<K, V> c5921p, C5921p<K, V> c5921p2) {
                if (Segment.isCollected(c5921p)) {
                    return null;
                }
                return c5921p.m26431d(((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues, c5921p2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5921p<K, V> mo26412f(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, K k, int i, C5921p<K, V> c5921p) {
                return new C5921p<>(k, i, c5921p);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public StrongKeyWeakValueSegment<K, V> mo26410d(MapMakerInternalMap<K, V, C5921p<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, C5921p<K, V> c5921p, V v) {
                c5921p.m26432e(v, ((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues);
            }
        }

        public C5921p(K k, int i, C5921p<K, V> c5921p) {
            super(k, i, c5921p);
            this.f34207h = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5928w
        /* renamed from: a */
        public void mo26430a() {
            this.f34207h.clear();
        }

        /* renamed from: d */
        public C5921p<K, V> m26431d(ReferenceQueue<V> referenceQueue, C5921p<K, V> c5921p) {
            C5921p<K, V> c5921p2 = new C5921p<>(this.f34188e, this.f34189f, c5921p);
            c5921p2.f34207h = this.f34207h.mo26397a(referenceQueue, c5921p2);
            return c5921p2;
        }

        /* renamed from: e */
        public void m26432e(V v, ReferenceQueue<V> referenceQueue) {
            InterfaceC5929x<K, V, C5921p<K, V>> interfaceC5929x = this.f34207h;
            this.f34207h = new C5930y(referenceQueue, v, this);
            interfaceC5929x.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public V getValue() {
            return this.f34207h.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5928w
        public InterfaceC5929x<K, V, C5921p<K, V>> getValueReference() {
            return this.f34207h;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$q */
    /* loaded from: classes6.dex */
    public interface InterfaceC5922q<K, V, E extends InterfaceC5914i<K, V, E>> extends InterfaceC5914i<K, V, E> {
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$r */
    /* loaded from: classes6.dex */
    public final class C5923r extends MapMakerInternalMap<K, V, E, S>.AbstractC5913h<V> {
        public C5923r(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.AbstractC5913h, java.util.Iterator
        public V next() {
            return m26404c().getValue();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$s */
    /* loaded from: classes6.dex */
    public final class C5924s extends AbstractCollection<V> {
        public C5924s() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C5923r(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$t */
    /* loaded from: classes6.dex */
    public static final class C5925t<K> extends AbstractC5908c<K, MapMaker.Dummy, C5925t<K>> implements InterfaceC5922q<K, MapMaker.Dummy, C5925t<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$t$a */
        /* loaded from: classes6.dex */
        public static final class a<K> implements InterfaceC5915j<K, MapMaker.Dummy, C5925t<K>, WeakKeyDummyValueSegment<K>> {

            /* renamed from: a */
            public static final a<?> f34210a = new a<>();

            /* renamed from: h */
            public static <K> a<K> m26441h() {
                return (a<K>) f34210a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5925t<K> mo26408b(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C5925t<K> c5925t, C5925t<K> c5925t2) {
                if (c5925t.getKey() == null) {
                    return null;
                }
                return c5925t.m26438b(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, c5925t2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5925t<K> mo26412f(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, K k, int i, C5925t<K> c5925t) {
                return new C5925t<>(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, k, i, c5925t);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyDummyValueSegment<K> mo26410d(MapMakerInternalMap<K, MapMaker.Dummy, C5925t<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, C5925t<K> c5925t, MapMaker.Dummy dummy) {
            }
        }

        public C5925t(ReferenceQueue<K> referenceQueue, K k, int i, C5925t<K> c5925t) {
            super(referenceQueue, k, i, c5925t);
        }

        /* renamed from: b */
        public C5925t<K> m26438b(ReferenceQueue<K> referenceQueue, C5925t<K> c5925t) {
            return new C5925t<>(referenceQueue, getKey(), this.f34191e, c5925t);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        /* renamed from: d */
        public void m26440d(MapMaker.Dummy dummy) {
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$u */
    /* loaded from: classes6.dex */
    public static final class C5926u<K, V> extends AbstractC5908c<K, V, C5926u<K, V>> implements InterfaceC5922q<K, V, C5926u<K, V>> {

        /* renamed from: g */
        public volatile V f34211g;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$u$a */
        /* loaded from: classes6.dex */
        public static final class a<K, V> implements InterfaceC5915j<K, V, C5926u<K, V>, WeakKeyStrongValueSegment<K, V>> {

            /* renamed from: a */
            public static final a<?, ?> f34212a = new a<>();

            /* renamed from: h */
            public static <K, V> a<K, V> m26448h() {
                return (a<K, V>) f34212a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5926u<K, V> mo26408b(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C5926u<K, V> c5926u, C5926u<K, V> c5926u2) {
                if (c5926u.getKey() == null) {
                    return null;
                }
                return c5926u.m26446b(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, c5926u2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5926u<K, V> mo26412f(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, K k, int i, C5926u<K, V> c5926u) {
                return new C5926u<>(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, k, i, c5926u);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyStrongValueSegment<K, V> mo26410d(MapMakerInternalMap<K, V, C5926u<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, C5926u<K, V> c5926u, V v) {
                c5926u.m26447c(v);
            }
        }

        public C5926u(ReferenceQueue<K> referenceQueue, K k, int i, C5926u<K, V> c5926u) {
            super(referenceQueue, k, i, c5926u);
            this.f34211g = null;
        }

        /* renamed from: b */
        public C5926u<K, V> m26446b(ReferenceQueue<K> referenceQueue, C5926u<K, V> c5926u) {
            C5926u<K, V> c5926u2 = new C5926u<>(referenceQueue, getKey(), this.f34191e, c5926u);
            c5926u2.m26447c(this.f34211g);
            return c5926u2;
        }

        /* renamed from: c */
        public void m26447c(V v) {
            this.f34211g = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public V getValue() {
            return this.f34211g;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$v */
    /* loaded from: classes6.dex */
    public static final class C5927v<K, V> extends AbstractC5908c<K, V, C5927v<K, V>> implements InterfaceC5928w<K, V, C5927v<K, V>> {

        /* renamed from: g */
        public volatile InterfaceC5929x<K, V, C5927v<K, V>> f34213g;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$v$a */
        /* loaded from: classes6.dex */
        public static final class a<K, V> implements InterfaceC5915j<K, V, C5927v<K, V>, WeakKeyWeakValueSegment<K, V>> {

            /* renamed from: a */
            public static final a<?, ?> f34214a = new a<>();

            /* renamed from: h */
            public static <K, V> a<K, V> m26457h() {
                return (a<K, V>) f34214a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: a */
            public Strength mo26407a() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: c */
            public Strength mo26409c() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: g, reason: merged with bridge method [inline-methods] */
            public C5927v<K, V> mo26408b(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C5927v<K, V> c5927v, C5927v<K, V> c5927v2) {
                if (c5927v.getKey() == null || Segment.isCollected(c5927v)) {
                    return null;
                }
                return c5927v.m26455d(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues, c5927v2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public C5927v<K, V> mo26412f(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, K k, int i, C5927v<K, V> c5927v) {
                return new C5927v<>(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, k, i, c5927v);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public WeakKeyWeakValueSegment<K, V> mo26410d(MapMakerInternalMap<K, V, C5927v<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5915j
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public void mo26411e(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, C5927v<K, V> c5927v, V v) {
                c5927v.m26456e(v, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues);
            }
        }

        public C5927v(ReferenceQueue<K> referenceQueue, K k, int i, C5927v<K, V> c5927v) {
            super(referenceQueue, k, i, c5927v);
            this.f34213g = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5928w
        /* renamed from: a */
        public void mo26430a() {
            this.f34213g.clear();
        }

        /* renamed from: d */
        public C5927v<K, V> m26455d(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, C5927v<K, V> c5927v) {
            C5927v<K, V> c5927v2 = new C5927v<>(referenceQueue, getKey(), this.f34191e, c5927v);
            c5927v2.f34213g = this.f34213g.mo26397a(referenceQueue2, c5927v2);
            return c5927v2;
        }

        /* renamed from: e */
        public void m26456e(V v, ReferenceQueue<V> referenceQueue) {
            InterfaceC5929x<K, V, C5927v<K, V>> interfaceC5929x = this.f34213g;
            this.f34213g = new C5930y(referenceQueue, v, this);
            interfaceC5929x.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5914i
        public V getValue() {
            return this.f34213g.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5928w
        public InterfaceC5929x<K, V, C5927v<K, V>> getValueReference() {
            return this.f34213g;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$w */
    /* loaded from: classes6.dex */
    public interface InterfaceC5928w<K, V, E extends InterfaceC5914i<K, V, E>> extends InterfaceC5914i<K, V, E> {
        /* renamed from: a */
        void mo26430a();

        InterfaceC5929x<K, V, E> getValueReference();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$x */
    /* loaded from: classes6.dex */
    public interface InterfaceC5929x<K, V, E extends InterfaceC5914i<K, V, E>> {
        /* renamed from: a */
        InterfaceC5929x<K, V, E> mo26397a(ReferenceQueue<V> referenceQueue, E e);

        void clear();

        V get();

        E getEntry();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$y */
    /* loaded from: classes6.dex */
    public static final class C5930y<K, V, E extends InterfaceC5914i<K, V, E>> extends WeakReference<V> implements InterfaceC5929x<K, V, E> {

        /* renamed from: e */
        @Weak
        public final E f34215e;

        public C5930y(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f34215e = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        /* renamed from: a */
        public InterfaceC5929x<K, V, E> mo26397a(ReferenceQueue<V> referenceQueue, E e) {
            return new C5930y(referenceQueue, get(), e);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InterfaceC5929x
        public E getEntry() {
            return this.f34215e;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$z */
    /* loaded from: classes6.dex */
    public final class C5931z extends AbstractC14741z3<K, V> {

        /* renamed from: e */
        public final K f34216e;

        /* renamed from: f */
        public V f34217f;

        public C5931z(K k, V v) {
            this.f34216e = k;
            this.f34217f = v;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f34216e.equals(entry.getKey()) && this.f34217f.equals(entry.getValue());
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public K getKey() {
            return this.f34216e;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public V getValue() {
            return this.f34217f;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public int hashCode() {
            return this.f34217f.hashCode() ^ this.f34216e.hashCode();
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.f34216e, v);
            this.f34217f = v;
            return v2;
        }
    }

    private MapMakerInternalMap(MapMaker mapMaker, InterfaceC5915j<K, V, E, S> interfaceC5915j) {
        this.concurrencyLevel = Math.min(mapMaker.m26389a(), 65536);
        this.keyEquivalence = mapMaker.m26391c();
        this.entryHelper = interfaceC5915j;
        int min = Math.min(mapMaker.m26390b(), 1073741824);
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        int i4 = 1;
        while (i4 < this.concurrencyLevel) {
            i3++;
            i4 <<= 1;
        }
        this.segmentShift = 32 - i3;
        this.segmentMask = i4 - 1;
        this.segments = newSegmentArray(i4);
        int i5 = min / i4;
        while (i2 < (i4 * i5 < min ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                return;
            }
            segmentArr[i] = createSegment(i2, -1);
            i++;
        }
    }

    public static <K, V> MapMakerInternalMap<K, V, ? extends InterfaceC5914i<K, V, ?>, ?> create(MapMaker mapMaker) {
        Strength m26392d = mapMaker.m26392d();
        Strength strength = Strength.STRONG;
        if (m26392d == strength && mapMaker.m26393e() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C5920o.a.m26423h());
        }
        if (mapMaker.m26392d() == strength && mapMaker.m26393e() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, C5921p.a.m26433h());
        }
        Strength m26392d2 = mapMaker.m26392d();
        Strength strength2 = Strength.WEAK;
        if (m26392d2 == strength2 && mapMaker.m26393e() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C5926u.a.m26448h());
        }
        if (mapMaker.m26392d() == strength2 && mapMaker.m26393e() == strength2) {
            return new MapMakerInternalMap<>(mapMaker, C5927v.a.m26457h());
        }
        throw new AssertionError();
    }

    public static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends InterfaceC5914i<K, MapMaker.Dummy, ?>, ?> createWithDummyValues(MapMaker mapMaker) {
        Strength m26392d = mapMaker.m26392d();
        Strength strength = Strength.STRONG;
        if (m26392d == strength && mapMaker.m26393e() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C5919n.a.m26416h());
        }
        Strength m26392d2 = mapMaker.m26392d();
        Strength strength2 = Strength.WEAK;
        if (m26392d2 == strength2 && mapMaker.m26393e() == strength) {
            return new MapMakerInternalMap<>(mapMaker, C5925t.a.m26441h());
        }
        if (mapMaker.m26393e() == strength2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    public static int rehash(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> toArrayList(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    public static <K, V, E extends InterfaceC5914i<K, V, E>> InterfaceC5929x<K, V, E> unsetWeakValueReference() {
        return (InterfaceC5929x<K, V, E>) UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V, E, S> segment : this.segments) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.common.collect.MapMakerInternalMap$Segment] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[]] */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        Segment<K, V, E, S>[] segmentArr = this.segments;
        long j = -1;
        int i = 0;
        while (i < 3) {
            int length = segmentArr.length;
            long j2 = 0;
            for (?? r10 = z; r10 < length; r10++) {
                ?? r11 = segmentArr[r10];
                int i2 = r11.count;
                AtomicReferenceArray<E> atomicReferenceArray = r11.table;
                for (?? r13 = z; r13 < atomicReferenceArray.length(); r13++) {
                    for (E e = atomicReferenceArray.get(r13); e != null; e = e.getNext()) {
                        Object liveValue = r11.getLiveValue(e);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j2 += r11.modCount;
                z = false;
            }
            if (j2 == j) {
                return false;
            }
            i++;
            j = j2;
            z = false;
        }
        return z;
    }

    @VisibleForTesting
    public E copyEntry(E e, E e2) {
        return segmentFor(e.getHash()).copyEntry(e, e2);
    }

    public Segment<K, V, E, S> createSegment(int i, int i2) {
        return this.entryHelper.mo26410d(this, i, i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        C5912g c5912g = new C5912g();
        this.entrySet = c5912g;
        return c5912g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    public E getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    public V getLiveValue(E e) {
        if (e.getKey() == null) {
            return null;
        }
        return (V) e.getValue();
    }

    public int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
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

    @VisibleForTesting
    public boolean isLiveForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
        return segmentFor(interfaceC5914i.getHash()).getLiveValueForTesting(interfaceC5914i) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        C5917l c5917l = new C5917l();
        this.keySet = c5917l;
        return c5917l;
    }

    @VisibleForTesting
    public Strength keyStrength() {
        return this.entryHelper.mo26407a();
    }

    public final Segment<K, V, E, S>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    public void reclaimKey(E e) {
        int hash = e.getHash();
        segmentFor(hash).reclaimKey(e, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reclaimValue(InterfaceC5929x<K, V, E> interfaceC5929x) {
        E entry = interfaceC5929x.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue(entry.getKey(), hash, interfaceC5929x);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k, V v, V v2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    public Segment<K, V, E, S> segmentFor(int i) {
        return this.segments[this.segmentMask & (i >>> this.segmentShift)];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j = 0;
        for (int i = 0; i < this.segments.length; i++) {
            j += r5[i].count;
        }
        return Ints.saturatedCast(j);
    }

    @VisibleForTesting
    public Equivalence<Object> valueEquivalence() {
        return this.entryHelper.mo26409c().defaultEquivalence();
    }

    @VisibleForTesting
    public Strength valueStrength() {
        return this.entryHelper.mo26409c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        C5924s c5924s = new C5924s();
        this.values = c5924s;
        return c5924s;
    }

    public Object writeReplace() {
        return new SerializationProxy(this.entryHelper.mo26407a(), this.entryHelper.mo26409c(), this.keyEquivalence, this.entryHelper.mo26409c().defaultEquivalence(), this.concurrencyLevel, this);
    }

    /* loaded from: classes6.dex */
    public static abstract class AbstractSerializationProxy<K, V> extends ForwardingConcurrentMap<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;

        public AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i;
            this.delegate = concurrentMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void readEntries(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.delegate.put(readObject, objectInputStream.readObject());
            }
        }

        public MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().initialCapacity(objectInputStream.readInt()).m26395g(this.keyStrength).m26396h(this.valueStrength).m26394f(this.keyEquivalence).concurrencyLevel(this.concurrencyLevel);
        }

        public void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    /* loaded from: classes6.dex */
    public static abstract class Segment<K, V, E extends InterfaceC5914i<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;

        @Weak
        final MapMakerInternalMap<K, V, E, S> map;
        final int maxSegmentSize;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        volatile AtomicReferenceArray<E> table;
        int threshold;

        public Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.map = mapMakerInternalMap;
            this.maxSegmentSize = i2;
            initTable(newEntryArray(i));
        }

        public static <K, V, E extends InterfaceC5914i<K, V, E>> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        public abstract E castForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i);

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        public <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public boolean clearValueForTesting(K k, int i, InterfaceC5929x<K, V, ? extends InterfaceC5914i<K, V, ?>> interfaceC5929x) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((InterfaceC5928w) interfaceC5914i2).getValueReference() != interfaceC5929x) {
                            return false;
                        }
                        atomicReferenceArray.set(length, removeFromChain(interfaceC5914i, interfaceC5914i2));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry != null) {
                    if (liveEntry.getValue() != null) {
                        z = true;
                    }
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @VisibleForTesting
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E e = atomicReferenceArray.get(i); e != null; e = e.getNext()) {
                            Object liveValue = getLiveValue(e);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
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

        public E copyEntry(E e, E e2) {
            return this.map.entryHelper.mo26408b(self(), e, e2);
        }

        public E copyForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, InterfaceC5914i<K, V, ?> interfaceC5914i2) {
            return this.map.entryHelper.mo26408b(self(), castForTesting(interfaceC5914i), castForTesting(interfaceC5914i2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        public void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimKey((InterfaceC5914i) poll);
                i++;
            } while (i != 16);
        }

        @GuardedBy("this")
        public void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimValue((InterfaceC5929x) poll);
                i++;
            } while (i != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        public void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            SpscArrayQueue spscArrayQueue = (AtomicReferenceArray<E>) newEntryArray(length << 1);
            this.threshold = (spscArrayQueue.length() * 3) / 4;
            int length2 = spscArrayQueue.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                E e = atomicReferenceArray.get(i2);
                if (e != null) {
                    InterfaceC5914i next = e.getNext();
                    int hash = e.getHash() & length2;
                    if (next == null) {
                        spscArrayQueue.set(hash, e);
                    } else {
                        InterfaceC5914i interfaceC5914i = e;
                        while (next != null) {
                            int hash2 = next.getHash() & length2;
                            if (hash2 != hash) {
                                interfaceC5914i = next;
                                hash = hash2;
                            }
                            next = next.getNext();
                        }
                        spscArrayQueue.set(hash, interfaceC5914i);
                        while (e != interfaceC5914i) {
                            int hash3 = e.getHash() & length2;
                            InterfaceC5914i copyEntry = copyEntry(e, (InterfaceC5914i) spscArrayQueue.get(hash3));
                            if (copyEntry != null) {
                                spscArrayQueue.set(hash3, copyEntry);
                            } else {
                                i--;
                            }
                            e = e.getNext();
                        }
                    }
                }
            }
            this.table = spscArrayQueue;
            this.count = i;
        }

        public V get(Object obj, int i) {
            try {
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    postReadCleanup();
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                return v;
            } finally {
                postReadCleanup();
            }
        }

        public E getEntry(Object obj, int i) {
            if (this.count == 0) {
                return null;
            }
            for (E first = getFirst(i); first != null; first = (E) first.getNext()) {
                if (first.getHash() == i) {
                    Object key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        public E getFirst(int i) {
            return this.table.get(i & (r1.length() - 1));
        }

        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public E getLiveEntry(Object obj, int i) {
            return getEntry(obj, i);
        }

        public V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        public V getLiveValueForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return getLiveValue(castForTesting(interfaceC5914i));
        }

        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public InterfaceC5929x<K, V, E> getWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.threshold = length;
            if (length == this.maxSegmentSize) {
                this.threshold = length + 1;
            }
            this.table = atomicReferenceArray;
        }

        public void maybeClearReferenceQueues() {
        }

        @GuardedBy("this")
        public void maybeDrainReferenceQueues() {
        }

        public AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public E newEntryForTesting(K k, int i, InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return this.map.entryHelper.mo26412f(self(), k, i, castForTesting(interfaceC5914i));
        }

        public InterfaceC5929x<K, V, E> newWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, V v) {
            throw new AssertionError();
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        @GuardedBy("this")
        public void preWriteCleanup() {
            runLockedCleanup();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) interfaceC5914i2.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(interfaceC5914i2, v);
                            this.count = this.count;
                            return null;
                        }
                        if (z) {
                            return v2;
                        }
                        this.modCount++;
                        setValue(interfaceC5914i2, v);
                        return v2;
                    }
                }
                this.modCount++;
                InterfaceC5914i mo26412f = this.map.entryHelper.mo26412f(self(), k, i, interfaceC5914i);
                setValue(mo26412f, v);
                atomicReferenceArray.set(length, mo26412f);
                this.count = i2;
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public boolean reclaimKey(E e, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    if (interfaceC5914i2 == e) {
                        this.modCount++;
                        InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                unlock();
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public boolean reclaimValue(K k, int i, InterfaceC5929x<K, V, E> interfaceC5929x) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((InterfaceC5928w) interfaceC5914i2).getValueReference() != interfaceC5929x) {
                            return false;
                        }
                        this.modCount++;
                        InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) interfaceC5914i2.getValue();
                        if (v == null && !isCollected(interfaceC5914i2)) {
                            return null;
                        }
                        this.modCount++;
                        InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i2;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        public boolean removeEntryForTesting(E e) {
            int hash = e.getHash();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = hash & (atomicReferenceArray.length() - 1);
            InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
            for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                if (interfaceC5914i2 == e) {
                    this.modCount++;
                    InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                    int i = this.count - 1;
                    atomicReferenceArray.set(length, removeFromChain);
                    this.count = i;
                    return true;
                }
            }
            return false;
        }

        @GuardedBy("this")
        public E removeFromChain(E e, E e2) {
            int i = this.count;
            E e3 = (E) e2.getNext();
            while (e != e2) {
                E copyEntry = copyEntry(e, e3);
                if (copyEntry != null) {
                    e3 = copyEntry;
                } else {
                    i--;
                }
                e = (E) e.getNext();
            }
            this.count = i;
            return e3;
        }

        public E removeFromChainForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, InterfaceC5914i<K, V, ?> interfaceC5914i2) {
            return removeFromChain(castForTesting(interfaceC5914i), castForTesting(interfaceC5914i2));
        }

        @CanIgnoreReturnValue
        public boolean removeTableEntryForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i) {
            return removeEntryForTesting(castForTesting(interfaceC5914i));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = interfaceC5914i2.getValue();
                        if (value == null) {
                            if (isCollected(interfaceC5914i2)) {
                                this.modCount++;
                                InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                                int i2 = this.count - 1;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i2;
                            }
                            return false;
                        }
                        if (!this.map.valueEquivalence().equivalent(v, value)) {
                            return false;
                        }
                        this.modCount++;
                        setValue(interfaceC5914i2, v2);
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public void runCleanup() {
            runLockedCleanup();
        }

        public void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S self();

        public void setTableEntryForTesting(int i, InterfaceC5914i<K, V, ?> interfaceC5914i) {
            this.table.set(i, castForTesting(interfaceC5914i));
        }

        public void setValue(E e, V v) {
            this.map.entryHelper.mo26411e(self(), e, v);
        }

        public void setValueForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, V v) {
            this.map.entryHelper.mo26411e(self(), castForTesting(interfaceC5914i), v);
        }

        public void setWeakValueReferenceForTesting(InterfaceC5914i<K, V, ?> interfaceC5914i, InterfaceC5929x<K, V, ? extends InterfaceC5914i<K, V, ?>> interfaceC5929x) {
            throw new AssertionError();
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        
            if (r8.map.valueEquivalence().equivalent(r11, r4.getValue()) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        
            r8.modCount++;
            r9 = removeFromChain(r3, r4);
            r10 = r8.count - 1;
            r0.set(r1, r9);
            r8.count = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        
            if (isCollected(r4) == false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean remove(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.preWriteCleanup()     // Catch: java.lang.Throwable -> L69
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>> r0 = r8.table     // Catch: java.lang.Throwable -> L69
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L69
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap$i r3 = (com.google.common.collect.MapMakerInternalMap.InterfaceC5914i) r3     // Catch: java.lang.Throwable -> L69
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L65
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L69
                int r7 = r4.getHash()     // Catch: java.lang.Throwable -> L69
                if (r7 != r10) goto L60
                if (r6 == 0) goto L60
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r7 = r8.map     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.keyEquivalence     // Catch: java.lang.Throwable -> L69
                boolean r6 = r7.equivalent(r9, r6)     // Catch: java.lang.Throwable -> L69
                if (r6 == 0) goto L60
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r10 = r8.map     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence r10 = r10.valueEquivalence()     // Catch: java.lang.Throwable -> L69
                boolean r9 = r10.equivalent(r11, r9)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L41
                r5 = r2
                goto L47
            L41:
                boolean r9 = isCollected(r4)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L5c
            L47:
                int r9 = r8.modCount     // Catch: java.lang.Throwable -> L69
                int r9 = r9 + r2
                r8.modCount = r9     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap$i r9 = r8.removeFromChain(r3, r4)     // Catch: java.lang.Throwable -> L69
                int r10 = r8.count     // Catch: java.lang.Throwable -> L69
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L69
                r8.count = r10     // Catch: java.lang.Throwable -> L69
                r8.unlock()
                return r5
            L5c:
                r8.unlock()
                return r5
            L60:
                com.google.common.collect.MapMakerInternalMap$i r4 = r4.getNext()     // Catch: java.lang.Throwable -> L69
                goto L16
            L65:
                r8.unlock()
                return r5
            L69:
                r9 = move-exception
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InterfaceC5914i interfaceC5914i = (InterfaceC5914i) atomicReferenceArray.get(length);
                for (InterfaceC5914i interfaceC5914i2 = interfaceC5914i; interfaceC5914i2 != null; interfaceC5914i2 = interfaceC5914i2.getNext()) {
                    Object key = interfaceC5914i2.getKey();
                    if (interfaceC5914i2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) interfaceC5914i2.getValue();
                        if (v2 == null) {
                            if (isCollected(interfaceC5914i2)) {
                                this.modCount++;
                                InterfaceC5914i removeFromChain = removeFromChain(interfaceC5914i, interfaceC5914i2);
                                int i2 = this.count - 1;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i2;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(interfaceC5914i2, v);
                        return v2;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }
    }
}
