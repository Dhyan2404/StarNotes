package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.C6130y;
import com.google.common.collect.Multiset;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class ConcurrentHashMultiset<E> extends AbstractC6112g<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> countMap;

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$b */
    /* loaded from: classes6.dex */
    public class C5802b extends AbstractIterator<Multiset.Entry<E>> {

        /* renamed from: g */
        public final Iterator<Map.Entry<E, AtomicInteger>> f33964g;

        public C5802b() {
            this.f33964g = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> computeNext() {
            while (this.f33964g.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f33964g.next();
                int i = next.getValue().get();
                if (i != 0) {
                    return Multisets.immutableEntry(next.getKey(), i);
                }
            }
            return endOfData();
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$c */
    /* loaded from: classes6.dex */
    public class C5803c extends ForwardingIterator<Multiset.Entry<E>> {

        /* renamed from: e */
        @CheckForNull
        public Multiset.Entry<E> f33966e;

        /* renamed from: f */
        public final /* synthetic */ Iterator f33967f;

        public C5803c(Iterator it2) {
            this.f33967f = it2;
        }

        @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            Multiset.Entry<E> entry = (Multiset.Entry) super.next();
            this.f33966e = entry;
            return entry;
        }

        @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f33966e != null, "no calls to next() since the last call to remove()");
            ConcurrentHashMultiset.this.setCount(this.f33966e.getElement(), 0);
            this.f33966e = null;
        }

        @Override // com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
        public Iterator<Multiset.Entry<E>> delegate() {
            return this.f33967f;
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$d */
    /* loaded from: classes6.dex */
    public class C5804d extends AbstractC6112g<E>.b {
        public C5804d() {
            super();
        }

        @Override // com.google.common.collect.AbstractC6112g.b, com.google.common.collect.Multisets.AbstractC6003i
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public ConcurrentHashMultiset<E> mo26120a() {
            return ConcurrentHashMultiset.this;
        }

        /* renamed from: c */
        public final List<Multiset.Entry<E>> m26122c() {
            ArrayList newArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(newArrayListWithExpectedSize, iterator());
            return newArrayListWithExpectedSize;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return m26122c().toArray();
        }

        public /* synthetic */ C5804d(ConcurrentHashMultiset concurrentHashMultiset, C5801a c5801a) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m26122c().toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$e */
    /* loaded from: classes6.dex */
    public static class C5805e {

        /* renamed from: a */
        public static final C6130y.b<ConcurrentHashMultiset> f33970a = C6130y.m27006a(ConcurrentHashMultiset.class, "countMap");
    }

    @VisibleForTesting
    public ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        Preconditions.checkArgument(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.countMap = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        C5805e.f33970a.m27018b(this, (ConcurrentMap) objectInputStream.readObject());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> snapshot() {
        ArrayList newArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
        for (Multiset.Entry entry : entrySet()) {
            Object element = entry.getElement();
            for (int count = entry.getCount(); count > 0; count--) {
                newArrayListWithExpectedSize.add(element);
            }
        }
        return newArrayListWithExpectedSize;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.countMap);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(E e, int i) {
        AtomicInteger atomicInteger;
        int i2;
        AtomicInteger atomicInteger2;
        Preconditions.checkNotNull(e);
        if (i == 0) {
            return count(e);
        }
        szd.m57281d(i, "occurrences");
        do {
            atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, e);
            if (atomicInteger == null && (atomicInteger = this.countMap.putIfAbsent(e, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicInteger.get();
                if (i2 == 0) {
                    atomicInteger2 = new AtomicInteger(i);
                    if (this.countMap.putIfAbsent(e, atomicInteger2) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        StringBuilder sb = new StringBuilder(65);
                        sb.append("Overflow adding ");
                        sb.append(i);
                        sb.append(" occurrences to a count of ");
                        sb.append(i2);
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
            } while (!atomicInteger.compareAndSet(i2, IntMath.checkedAdd(i2, i)));
            return i2;
        } while (!this.countMap.replace(e, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.countMap.clear();
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Set<E> createElementSet() {
        return new C5801a(this, this.countMap.keySet());
    }

    @Override // com.google.common.collect.AbstractC6112g
    @Deprecated
    public Set<Multiset.Entry<E>> createEntrySet() {
        return new C5804d(this, null);
    }

    @Override // com.google.common.collect.AbstractC6112g
    public int distinctElements() {
        return this.countMap.size();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new C5803c(new C5802b());
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.countMap.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.m26638h(this);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@CheckForNull Object obj, int i) {
        int i2;
        int max;
        if (i == 0) {
            return count(obj);
        }
        szd.m57281d(i, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            max = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, max));
        if (max == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return i2;
    }

    @CanIgnoreReturnValue
    public boolean removeExactly(@CheckForNull Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        szd.m57281d(i, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(E e, int i) {
        AtomicInteger atomicInteger;
        int i2;
        AtomicInteger atomicInteger2;
        Preconditions.checkNotNull(e);
        szd.m57279b(i, "count");
        do {
            atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, e);
            if (atomicInteger == null && (i == 0 || (atomicInteger = this.countMap.putIfAbsent(e, new AtomicInteger(i))) == null)) {
                return 0;
            }
            do {
                i2 = atomicInteger.get();
                if (i2 == 0) {
                    if (i != 0) {
                        atomicInteger2 = new AtomicInteger(i);
                        if (this.countMap.putIfAbsent(e, atomicInteger2) == null) {
                            break;
                        }
                    } else {
                        return 0;
                    }
                }
            } while (!atomicInteger.compareAndSet(i2, i));
            if (i == 0) {
                this.countMap.remove(e, atomicInteger);
            }
            return i2;
        } while (!this.countMap.replace(e, atomicInteger, atomicInteger2));
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        long j = 0;
        while (this.countMap.values().iterator().hasNext()) {
            j += r4.next().get();
        }
        return Ints.saturatedCast(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return snapshot().toArray();
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$a */
    /* loaded from: classes6.dex */
    public class C5801a extends ForwardingSet<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f33963e;

        public C5801a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.f33963e = set;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return obj != null && Collections2.m26077e(this.f33963e, obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            return obj != null && Collections2.m26078f(this.f33963e, obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<E> delegate() {
            return this.f33963e;
        }
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> create = create();
        Iterables.addAll(create, iterable);
        return create;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) snapshot().toArray(tArr);
    }

    @Beta
    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public boolean setCount(E e, int i, int i2) {
        Preconditions.checkNotNull(e);
        szd.m57279b(i, "oldCount");
        szd.m57279b(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.m26468G(this.countMap, e);
        if (atomicInteger == null) {
            if (i != 0) {
                return false;
            }
            return i2 == 0 || this.countMap.putIfAbsent(e, new AtomicInteger(i2)) == null;
        }
        int i3 = atomicInteger.get();
        if (i3 == i) {
            if (i3 == 0) {
                if (i2 == 0) {
                    this.countMap.remove(e, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                return this.countMap.putIfAbsent(e, atomicInteger2) == null || this.countMap.replace(e, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i3, i2)) {
                if (i2 == 0) {
                    this.countMap.remove(e, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
