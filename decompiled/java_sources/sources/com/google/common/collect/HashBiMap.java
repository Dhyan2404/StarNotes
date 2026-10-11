package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class HashBiMap<K, V> extends Maps.AbstractC5970x<K, V> implements BiMap<K, V>, Serializable {
    private static final double LOAD_FACTOR = 1.0d;

    @GwtIncompatible
    private static final long serialVersionUID = 0;

    @Weak
    @CheckForNull
    private transient BiEntry<K, V> firstInKeyInsertionOrder;
    private transient BiEntry<K, V>[] hashTableKToV;
    private transient BiEntry<K, V>[] hashTableVToK;

    @RetainedWith
    @CheckForNull
    @LazyInit
    private transient BiMap<V, K> inverse;

    @Weak
    @CheckForNull
    private transient BiEntry<K, V> lastInKeyInsertionOrder;
    private transient int mask;
    private transient int modCount;
    private transient int size;

    /* loaded from: classes6.dex */
    public static final class BiEntry<K, V> extends ImmutableEntry<K, V> {
        final int keyHash;

        @CheckForNull
        BiEntry<K, V> nextInKToVBucket;

        @Weak
        @CheckForNull
        BiEntry<K, V> nextInKeyInsertionOrder;

        @Weak
        @CheckForNull
        BiEntry<K, V> nextInVToKBucket;

        @Weak
        @CheckForNull
        BiEntry<K, V> prevInKeyInsertionOrder;
        final int valueHash;

        public BiEntry(@xvk K k, int i, @xvk V v, int i2) {
            super(k, v);
            this.keyHash = i;
            this.valueHash = i2;
        }
    }

    /* loaded from: classes6.dex */
    public final class Inverse extends Maps.AbstractC5970x<V, K> implements BiMap<V, K>, Serializable {

        /* renamed from: com.google.common.collect.HashBiMap$Inverse$a */
        /* loaded from: classes6.dex */
        public class C5819a extends HashBiMap<K, V>.AbstractC5822b<Map.Entry<V, K>> {

            /* renamed from: com.google.common.collect.HashBiMap$Inverse$a$a */
            /* loaded from: classes6.dex */
            public class a extends AbstractC14741z3<V, K> {

                /* renamed from: e */
                public BiEntry<K, V> f33995e;

                public a(BiEntry<K, V> biEntry) {
                    this.f33995e = biEntry;
                }

                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                @xvk
                public V getKey() {
                    return this.f33995e.value;
                }

                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                @xvk
                public K getValue() {
                    return this.f33995e.key;
                }

                @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
                @xvk
                public K setValue(@xvk K k) {
                    K k2 = this.f33995e.key;
                    int m56257d = pfh.m56257d(k);
                    if (m56257d == this.f33995e.keyHash && Objects.equal(k, k2)) {
                        return k;
                    }
                    Preconditions.checkArgument(HashBiMap.this.seekByKey(k, m56257d) == null, "value already present: %s", k);
                    HashBiMap.this.delete(this.f33995e);
                    BiEntry<K, V> biEntry = this.f33995e;
                    BiEntry<K, V> biEntry2 = new BiEntry<>(k, m56257d, biEntry.value, biEntry.valueHash);
                    this.f33995e = biEntry2;
                    HashBiMap.this.insert(biEntry2, null);
                    C5819a c5819a = C5819a.this;
                    c5819a.f34003g = HashBiMap.this.modCount;
                    return k2;
                }
            }

            public C5819a() {
                super();
            }

            @Override // com.google.common.collect.HashBiMap.AbstractC5822b
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<V, K> mo26139a(BiEntry<K, V> biEntry) {
                return new a(biEntry);
            }
        }

        /* renamed from: com.google.common.collect.HashBiMap$Inverse$b */
        /* loaded from: classes6.dex */
        public final class C5820b extends Maps.C5971y<V, K> {

            /* renamed from: com.google.common.collect.HashBiMap$Inverse$b$a */
            /* loaded from: classes6.dex */
            public class a extends HashBiMap<K, V>.AbstractC5822b<V> {
                public a(C5820b c5820b) {
                    super();
                }

                @Override // com.google.common.collect.HashBiMap.AbstractC5822b
                @xvk
                /* renamed from: a */
                public V mo26139a(BiEntry<K, V> biEntry) {
                    return biEntry.value;
                }
            }

            public C5820b() {
                super(Inverse.this);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new a(this);
            }

            @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@CheckForNull Object obj) {
                BiEntry seekByValue = HashBiMap.this.seekByValue(obj, pfh.m56257d(obj));
                if (seekByValue == null) {
                    return false;
                }
                HashBiMap.this.delete(seekByValue);
                return true;
            }
        }

        private Inverse() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public void clear() {
            forward().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return forward().containsValue(obj);
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<V, K>> entryIterator() {
            return new C5819a();
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super V, ? super K> biConsumer) {
            Preconditions.checkNotNull(biConsumer);
            HashBiMap.this.forEach(new BiConsumer() { // from class: com.google.common.collect.n
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    biConsumer.accept(obj2, obj);
                }
            });
        }

        @Override // com.google.common.collect.BiMap
        @CheckForNull
        public K forcePut(@xvk V v, @xvk K k) {
            return (K) HashBiMap.this.putInverse(v, k, true);
        }

        public BiMap<K, V> forward() {
            return HashBiMap.this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public K get(@CheckForNull Object obj) {
            return (K) Maps.m26504x(HashBiMap.this.seekByValue(obj, pfh.m56257d(obj)));
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return forward();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return new C5820b();
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        @CanIgnoreReturnValue
        @CheckForNull
        public K put(@xvk V v, @xvk K k) {
            return (K) HashBiMap.this.putInverse(v, k, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @CheckForNull
        public K remove(@CheckForNull Object obj) {
            BiEntry seekByValue = HashBiMap.this.seekByValue(obj, pfh.m56257d(obj));
            if (seekByValue == null) {
                return null;
            }
            HashBiMap.this.delete(seekByValue);
            seekByValue.prevInKeyInsertionOrder = null;
            seekByValue.nextInKeyInsertionOrder = null;
            return seekByValue.key;
        }

        @Override // java.util.Map
        public void replaceAll(BiFunction<? super V, ? super K, ? extends K> biFunction) {
            Preconditions.checkNotNull(biFunction);
            clear();
            for (BiEntry<K, V> biEntry = HashBiMap.this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
                V v = biEntry.value;
                put(v, biFunction.apply(v, biEntry.key));
            }
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return HashBiMap.this.size;
        }

        public Object writeReplace() {
            return new InverseSerializedForm(HashBiMap.this);
        }

        public /* synthetic */ Inverse(HashBiMap hashBiMap, C5821a c5821a) {
            this();
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        public Set<K> values() {
            return forward().keySet();
        }
    }

    /* loaded from: classes6.dex */
    public static final class InverseSerializedForm<K, V> implements Serializable {
        private final HashBiMap<K, V> bimap;

        public InverseSerializedForm(HashBiMap<K, V> hashBiMap) {
            this.bimap = hashBiMap;
        }

        public Object readResolve() {
            return this.bimap.inverse();
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$a */
    /* loaded from: classes6.dex */
    public class C5821a extends HashBiMap<K, V>.AbstractC5822b<Map.Entry<K, V>> {

        /* renamed from: com.google.common.collect.HashBiMap$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC14741z3<K, V> {

            /* renamed from: e */
            public BiEntry<K, V> f33999e;

            public a(BiEntry<K, V> biEntry) {
                this.f33999e = biEntry;
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            @xvk
            public K getKey() {
                return this.f33999e.key;
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            @xvk
            public V getValue() {
                return this.f33999e.value;
            }

            @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
            @xvk
            public V setValue(@xvk V v) {
                V v2 = this.f33999e.value;
                int m56257d = pfh.m56257d(v);
                if (m56257d == this.f33999e.valueHash && Objects.equal(v, v2)) {
                    return v;
                }
                Preconditions.checkArgument(HashBiMap.this.seekByValue(v, m56257d) == null, "value already present: %s", v);
                HashBiMap.this.delete(this.f33999e);
                BiEntry<K, V> biEntry = this.f33999e;
                BiEntry<K, V> biEntry2 = new BiEntry<>(biEntry.key, biEntry.keyHash, v, m56257d);
                HashBiMap.this.insert(biEntry2, this.f33999e);
                BiEntry<K, V> biEntry3 = this.f33999e;
                biEntry3.prevInKeyInsertionOrder = null;
                biEntry3.nextInKeyInsertionOrder = null;
                C5821a c5821a = C5821a.this;
                c5821a.f34003g = HashBiMap.this.modCount;
                C5821a c5821a2 = C5821a.this;
                if (c5821a2.f34002f == this.f33999e) {
                    c5821a2.f34002f = biEntry2;
                }
                this.f33999e = biEntry2;
                return v2;
            }
        }

        public C5821a() {
            super();
        }

        @Override // com.google.common.collect.HashBiMap.AbstractC5822b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo26139a(BiEntry<K, V> biEntry) {
            return new a(biEntry);
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$b */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5822b<T> implements Iterator<T> {

        /* renamed from: e */
        @CheckForNull
        public BiEntry<K, V> f34001e;

        /* renamed from: f */
        @CheckForNull
        public BiEntry<K, V> f34002f = null;

        /* renamed from: g */
        public int f34003g;

        /* renamed from: h */
        public int f34004h;

        public AbstractC5822b() {
            this.f34001e = HashBiMap.this.firstInKeyInsertionOrder;
            this.f34003g = HashBiMap.this.modCount;
            this.f34004h = HashBiMap.this.size();
        }

        /* renamed from: a */
        public abstract T mo26139a(BiEntry<K, V> biEntry);

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (HashBiMap.this.modCount == this.f34003g) {
                return this.f34001e != null && this.f34004h > 0;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            BiEntry<K, V> biEntry = this.f34001e;
            java.util.Objects.requireNonNull(biEntry);
            this.f34001e = biEntry.nextInKeyInsertionOrder;
            this.f34002f = biEntry;
            this.f34004h--;
            return mo26139a(biEntry);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (HashBiMap.this.modCount != this.f34003g) {
                throw new ConcurrentModificationException();
            }
            BiEntry<K, V> biEntry = this.f34002f;
            if (biEntry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            HashBiMap.this.delete(biEntry);
            this.f34003g = HashBiMap.this.modCount;
            this.f34002f = null;
        }
    }

    /* renamed from: com.google.common.collect.HashBiMap$c */
    /* loaded from: classes6.dex */
    public final class C5823c extends Maps.C5971y<K, V> {

        /* renamed from: com.google.common.collect.HashBiMap$c$a */
        /* loaded from: classes6.dex */
        public class a extends HashBiMap<K, V>.AbstractC5822b<K> {
            public a(C5823c c5823c) {
                super();
            }

            @Override // com.google.common.collect.HashBiMap.AbstractC5822b
            @xvk
            /* renamed from: a */
            public K mo26139a(BiEntry<K, V> biEntry) {
                return biEntry.key;
            }
        }

        public C5823c() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            BiEntry seekByKey = HashBiMap.this.seekByKey(obj, pfh.m56257d(obj));
            if (seekByKey == null) {
                return false;
            }
            HashBiMap.this.delete(seekByKey);
            seekByKey.prevInKeyInsertionOrder = null;
            seekByKey.nextInKeyInsertionOrder = null;
            return true;
        }
    }

    private HashBiMap(int i) {
        init(i);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private BiEntry<K, V>[] createTable(int i) {
        return new BiEntry[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(BiEntry<K, V> biEntry) {
        BiEntry<K, V> biEntry2;
        int i = biEntry.keyHash & this.mask;
        BiEntry<K, V> biEntry3 = null;
        BiEntry<K, V> biEntry4 = null;
        for (BiEntry<K, V> biEntry5 = this.hashTableKToV[i]; biEntry5 != biEntry; biEntry5 = biEntry5.nextInKToVBucket) {
            biEntry4 = biEntry5;
        }
        if (biEntry4 == null) {
            this.hashTableKToV[i] = biEntry.nextInKToVBucket;
        } else {
            biEntry4.nextInKToVBucket = biEntry.nextInKToVBucket;
        }
        int i2 = biEntry.valueHash & this.mask;
        BiEntry<K, V> biEntry6 = this.hashTableVToK[i2];
        while (true) {
            biEntry2 = biEntry3;
            biEntry3 = biEntry6;
            if (biEntry3 == biEntry) {
                break;
            } else {
                biEntry6 = biEntry3.nextInVToKBucket;
            }
        }
        if (biEntry2 == null) {
            this.hashTableVToK[i2] = biEntry.nextInVToKBucket;
        } else {
            biEntry2.nextInVToKBucket = biEntry.nextInVToKBucket;
        }
        BiEntry<K, V> biEntry7 = biEntry.prevInKeyInsertionOrder;
        if (biEntry7 == null) {
            this.firstInKeyInsertionOrder = biEntry.nextInKeyInsertionOrder;
        } else {
            biEntry7.nextInKeyInsertionOrder = biEntry.nextInKeyInsertionOrder;
        }
        BiEntry<K, V> biEntry8 = biEntry.nextInKeyInsertionOrder;
        if (biEntry8 == null) {
            this.lastInKeyInsertionOrder = biEntry7;
        } else {
            biEntry8.prevInKeyInsertionOrder = biEntry7;
        }
        this.size--;
        this.modCount++;
    }

    private void init(int i) {
        szd.m57279b(i, "expectedSize");
        int m56254a = pfh.m56254a(i, 1.0d);
        this.hashTableKToV = createTable(m56254a);
        this.hashTableVToK = createTable(m56254a);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.size = 0;
        this.mask = m56254a - 1;
        this.modCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insert(BiEntry<K, V> biEntry, @CheckForNull BiEntry<K, V> biEntry2) {
        int i = biEntry.keyHash;
        int i2 = this.mask;
        int i3 = i & i2;
        BiEntry<K, V>[] biEntryArr = this.hashTableKToV;
        biEntry.nextInKToVBucket = biEntryArr[i3];
        biEntryArr[i3] = biEntry;
        int i4 = biEntry.valueHash & i2;
        BiEntry<K, V>[] biEntryArr2 = this.hashTableVToK;
        biEntry.nextInVToKBucket = biEntryArr2[i4];
        biEntryArr2[i4] = biEntry;
        if (biEntry2 == null) {
            BiEntry<K, V> biEntry3 = this.lastInKeyInsertionOrder;
            biEntry.prevInKeyInsertionOrder = biEntry3;
            biEntry.nextInKeyInsertionOrder = null;
            if (biEntry3 == null) {
                this.firstInKeyInsertionOrder = biEntry;
            } else {
                biEntry3.nextInKeyInsertionOrder = biEntry;
            }
            this.lastInKeyInsertionOrder = biEntry;
        } else {
            BiEntry<K, V> biEntry4 = biEntry2.prevInKeyInsertionOrder;
            biEntry.prevInKeyInsertionOrder = biEntry4;
            if (biEntry4 == null) {
                this.firstInKeyInsertionOrder = biEntry;
            } else {
                biEntry4.nextInKeyInsertionOrder = biEntry;
            }
            BiEntry<K, V> biEntry5 = biEntry2.nextInKeyInsertionOrder;
            biEntry.nextInKeyInsertionOrder = biEntry5;
            if (biEntry5 == null) {
                this.lastInKeyInsertionOrder = biEntry;
            } else {
                biEntry5.prevInKeyInsertionOrder = biEntry;
            }
        }
        this.size++;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public K putInverse(@xvk V v, @xvk K k, boolean z) {
        int m56257d = pfh.m56257d(v);
        int m56257d2 = pfh.m56257d(k);
        BiEntry<K, V> seekByValue = seekByValue(v, m56257d);
        BiEntry<K, V> seekByKey = seekByKey(k, m56257d2);
        if (seekByValue != null && m56257d2 == seekByValue.keyHash && Objects.equal(k, seekByValue.key)) {
            return k;
        }
        if (seekByKey != null && !z) {
            String valueOf = String.valueOf(k);
            StringBuilder sb = new StringBuilder(valueOf.length() + 21);
            sb.append("key already present: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }
        if (seekByValue != null) {
            delete(seekByValue);
        }
        if (seekByKey != null) {
            delete(seekByKey);
        }
        insert(new BiEntry<>(k, m56257d2, v, m56257d), seekByKey);
        if (seekByKey != null) {
            seekByKey.prevInKeyInsertionOrder = null;
            seekByKey.nextInKeyInsertionOrder = null;
        }
        if (seekByValue != null) {
            seekByValue.prevInKeyInsertionOrder = null;
            seekByValue.nextInKeyInsertionOrder = null;
        }
        rehashIfNecessary();
        return (K) Maps.m26504x(seekByValue);
    }

    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int m27013h = C6130y.m27013h(objectInputStream);
        init(16);
        C6130y.m27008c(this, objectInputStream, m27013h);
    }

    private void rehashIfNecessary() {
        BiEntry<K, V>[] biEntryArr = this.hashTableKToV;
        if (pfh.m56255b(this.size, biEntryArr.length, 1.0d)) {
            int length = biEntryArr.length * 2;
            this.hashTableKToV = createTable(length);
            this.hashTableVToK = createTable(length);
            this.mask = length - 1;
            this.size = 0;
            for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
                insert(biEntry, biEntry);
            }
            this.modCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public BiEntry<K, V> seekByKey(@CheckForNull Object obj, int i) {
        for (BiEntry<K, V> biEntry = this.hashTableKToV[this.mask & i]; biEntry != null; biEntry = biEntry.nextInKToVBucket) {
            if (i == biEntry.keyHash && Objects.equal(obj, biEntry.key)) {
                return biEntry;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public BiEntry<K, V> seekByValue(@CheckForNull Object obj, int i) {
        for (BiEntry<K, V> biEntry = this.hashTableVToK[this.mask & i]; biEntry != null; biEntry = biEntry.nextInVToKBucket) {
            if (i == biEntry.valueHash && Objects.equal(obj, biEntry.value)) {
                return biEntry;
            }
        }
        return null;
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        C6130y.m27014i(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.size = 0;
        Arrays.fill(this.hashTableKToV, (Object) null);
        Arrays.fill(this.hashTableVToK, (Object) null);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@CheckForNull Object obj) {
        return seekByKey(obj, pfh.m56257d(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@CheckForNull Object obj) {
        return seekByValue(obj, pfh.m56257d(obj)) != null;
    }

    @Override // com.google.common.collect.Maps.AbstractC5970x
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new C5821a();
    }

    @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
            biConsumer.accept(biEntry.key, biEntry.value);
        }
    }

    @Override // com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    @CheckForNull
    public V forcePut(@xvk K k, @xvk V v) {
        return put(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return (V) Maps.m26479R(seekByKey(obj, pfh.m56257d(obj)));
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        BiMap<V, K> biMap = this.inverse;
        if (biMap != null) {
            return biMap;
        }
        Inverse inverse = new Inverse(this, null);
        this.inverse = inverse;
        return inverse;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return new C5823c();
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    @CheckForNull
    public V put(@xvk K k, @xvk V v) {
        return put(k, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        BiEntry<K, V> seekByKey = seekByKey(obj, pfh.m56257d(obj));
        if (seekByKey == null) {
            return null;
        }
        delete(seekByKey);
        seekByKey.prevInKeyInsertionOrder = null;
        seekByKey.nextInKeyInsertionOrder = null;
        return seekByKey.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(biFunction);
        clear();
        for (BiEntry<K, V> biEntry = this.firstInKeyInsertionOrder; biEntry != null; biEntry = biEntry.nextInKeyInsertionOrder) {
            K k = biEntry.key;
            put(k, biFunction.apply(k, biEntry.value));
        }
    }

    @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    @CheckForNull
    private V put(@xvk K k, @xvk V v, boolean z) {
        int m56257d = pfh.m56257d(k);
        int m56257d2 = pfh.m56257d(v);
        BiEntry<K, V> seekByKey = seekByKey(k, m56257d);
        if (seekByKey != null && m56257d2 == seekByKey.valueHash && Objects.equal(v, seekByKey.value)) {
            return v;
        }
        BiEntry<K, V> seekByValue = seekByValue(v, m56257d2);
        if (seekByValue != null) {
            if (z) {
                delete(seekByValue);
            } else {
                String valueOf = String.valueOf(v);
                StringBuilder sb = new StringBuilder(valueOf.length() + 23);
                sb.append("value already present: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        BiEntry<K, V> biEntry = new BiEntry<>(k, m56257d, v, m56257d2);
        if (seekByKey != null) {
            delete(seekByKey);
            insert(biEntry, seekByKey);
            seekByKey.prevInKeyInsertionOrder = null;
            seekByKey.nextInKeyInsertionOrder = null;
            return seekByKey.value;
        }
        insert(biEntry, null);
        rehashIfNecessary();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    public Set<V> values() {
        return inverse().keySet();
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> create = create(map.size());
        create.putAll(map);
        return create;
    }
}
