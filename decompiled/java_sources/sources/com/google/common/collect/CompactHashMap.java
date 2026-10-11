package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.CompactHashMap;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.q5e;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;
    private static final Object NOT_FOUND = new Object();

    @VisibleForTesting
    @CheckForNull
    transient int[] entries;

    @CheckForNull
    private transient Set<Map.Entry<K, V>> entrySetView;

    @CheckForNull
    private transient Set<K> keySetView;

    @VisibleForTesting
    @CheckForNull
    transient Object[] keys;
    private transient int metadata;
    private transient int size;

    @CheckForNull
    private transient Object table;

    @VisibleForTesting
    @CheckForNull
    transient Object[] values;

    @CheckForNull
    private transient Collection<V> valuesView;

    /* renamed from: com.google.common.collect.CompactHashMap$a */
    /* loaded from: classes6.dex */
    public class C5787a extends CompactHashMap<K, V>.AbstractC5791e<K> {
        public C5787a() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC5791e
        @xvk
        /* renamed from: b */
        public K mo26099b(int i) {
            return (K) CompactHashMap.this.key(i);
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$b */
    /* loaded from: classes6.dex */
    public class C5788b extends CompactHashMap<K, V>.AbstractC5791e<Map.Entry<K, V>> {
        public C5788b() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC5791e
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo26099b(int i) {
            return new C5793g(i);
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$c */
    /* loaded from: classes6.dex */
    public class C5789c extends CompactHashMap<K, V>.AbstractC5791e<V> {
        public C5789c() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.AbstractC5791e
        @xvk
        /* renamed from: b */
        public V mo26099b(int i) {
            return (V) CompactHashMap.this.value(i);
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$d */
    /* loaded from: classes6.dex */
    public class C5790d extends Maps.AbstractC5963q<K, V> {
        public C5790d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ Map.Entry m26102c(int i) {
            return new C5793g(i);
        }

        @Override // com.google.common.collect.Maps.AbstractC5963q
        /* renamed from: a */
        public Map<K, V> mo26018a() {
            return CompactHashMap.this;
        }

        @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int indexOf = CompactHashMap.this.indexOf(entry.getKey());
            return indexOf != -1 && Objects.equal(CompactHashMap.this.value(indexOf), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override // com.google.common.collect.Maps.AbstractC5963q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays()) {
                return false;
            }
            int hashTableMask = CompactHashMap.this.hashTableMask();
            int m56621f = q5e.m56621f(entry.getKey(), entry.getValue(), hashTableMask, CompactHashMap.this.requireTable(), CompactHashMap.this.requireEntries(), CompactHashMap.this.requireKeys(), CompactHashMap.this.requireValues());
            if (m56621f == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(m56621f, hashTableMask);
            CompactHashMap.access$310(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<Map.Entry<K, V>> spliterator() {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.entrySet().spliterator() : vzd.m57901f(CompactHashMap.this.size, 17, new IntFunction() { // from class: com.sunia.HTREnginev2.p5e
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    Map.Entry m26102c;
                    m26102c = CompactHashMap.C5790d.this.m26102c(i);
                    return m26102c;
                }
            });
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$g */
    /* loaded from: classes6.dex */
    public final class C5793g extends AbstractC14741z3<K, V> {

        /* renamed from: e */
        @xvk
        public final K f33951e;

        /* renamed from: f */
        public int f33952f;

        public C5793g(int i) {
            this.f33951e = (K) CompactHashMap.this.key(i);
            this.f33952f = i;
        }

        /* renamed from: a */
        public final void m26105a() {
            int i = this.f33952f;
            if (i == -1 || i >= CompactHashMap.this.size() || !Objects.equal(this.f33951e, CompactHashMap.this.key(this.f33952f))) {
                this.f33952f = CompactHashMap.this.indexOf(this.f33951e);
            }
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public K getKey() {
            return this.f33951e;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V getValue() {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return (V) p5k.m56213a(delegateOrNull.get(this.f33951e));
            }
            m26105a();
            int i = this.f33952f;
            return i == -1 ? (V) p5k.m56214b() : (V) CompactHashMap.this.value(i);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
        @xvk
        public V setValue(@xvk V v) {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return (V) p5k.m56213a(delegateOrNull.put(this.f33951e, v));
            }
            m26105a();
            int i = this.f33952f;
            if (i == -1) {
                CompactHashMap.this.put(this.f33951e, v);
                return (V) p5k.m56214b();
            }
            V v2 = (V) CompactHashMap.this.value(i);
            CompactHashMap.this.setValue(this.f33952f, v);
            return v2;
        }
    }

    public CompactHashMap() {
        init(3);
    }

    public static /* synthetic */ int access$310(CompactHashMap compactHashMap) {
        int i = compactHashMap.size;
        compactHashMap.size = i - 1;
        return i;
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactHashMap<>(i);
    }

    private int entry(int i) {
        return requireEntries()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int indexOf(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int m56257d = pfh.m56257d(obj);
        int hashTableMask = hashTableMask();
        int m56623h = q5e.m56623h(requireTable(), m56257d & hashTableMask);
        if (m56623h == 0) {
            return -1;
        }
        int m56617b = q5e.m56617b(m56257d, hashTableMask);
        do {
            int i = m56623h - 1;
            int entry = entry(i);
            if (q5e.m56617b(entry, hashTableMask) == m56617b && Objects.equal(obj, key(i))) {
                return i;
            }
            m56623h = q5e.m56618c(entry, hashTableMask);
        } while (m56623h != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K key(int i) {
        return (K) requireKeys()[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        init(readInt);
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeHelper(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return NOT_FOUND;
        }
        int hashTableMask = hashTableMask();
        int m56621f = q5e.m56621f(obj, null, hashTableMask, requireTable(), requireEntries(), requireKeys(), null);
        if (m56621f == -1) {
            return NOT_FOUND;
        }
        V value = value(m56621f);
        moveLastEntry(m56621f, hashTableMask);
        this.size--;
        incrementModCount();
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] requireEntries() {
        int[] iArr = this.entries;
        java.util.Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireKeys() {
        Object[] objArr = this.keys;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object requireTable() {
        Object obj = this.table;
        java.util.Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireValues() {
        Object[] objArr = this.values;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    private void resizeMeMaybe(int i) {
        int min;
        int length = requireEntries().length;
        if (i <= length || (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(min);
    }

    @CanIgnoreReturnValue
    private int resizeTable(int i, int i2, int i3, int i4) {
        Object m56616a = q5e.m56616a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            q5e.m56624i(m56616a, i3 & i5, i4 + 1);
        }
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        for (int i6 = 0; i6 <= i; i6++) {
            int m56623h = q5e.m56623h(requireTable, i6);
            while (m56623h != 0) {
                int i7 = m56623h - 1;
                int i8 = requireEntries[i7];
                int m56617b = q5e.m56617b(i8, i) | i6;
                int i9 = m56617b & i5;
                int m56623h2 = q5e.m56623h(m56616a, i9);
                q5e.m56624i(m56616a, i9, m56623h);
                requireEntries[i7] = q5e.m56619d(m56617b, m56623h2, i5);
                m56623h = q5e.m56618c(i8, i);
            }
        }
        this.table = m56616a;
        setHashTableMask(i5);
        return i5;
    }

    private void setEntry(int i, int i2) {
        requireEntries()[i] = i2;
    }

    private void setHashTableMask(int i) {
        this.metadata = q5e.m56619d(this.metadata, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    private void setKey(int i, K k) {
        requireKeys()[i] = k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i, V v) {
        requireValues()[i] = v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V value(int i) {
        return (V) requireValues()[i];
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> entrySetIterator = entrySetIterator();
        while (entrySetIterator.hasNext()) {
            Map.Entry<K, V> next = entrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public void accessEntry(int i) {
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    @CanIgnoreReturnValue
    public int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i = this.metadata;
        int m56625j = q5e.m56625j(i);
        this.table = q5e.m56616a(m56625j);
        setHashTableMask(m56625j - 1);
        this.entries = new int[i];
        this.keys = new Object[i];
        this.values = new Object[i];
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, 1073741823);
            delegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireKeys(), 0, this.size, (Object) null);
        Arrays.fill(requireValues(), 0, this.size, (Object) null);
        q5e.m56622g(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@CheckForNull Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.containsKey(obj) : indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@CheckForNull Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.containsValue(obj);
        }
        for (int i = 0; i < this.size; i++) {
            if (Objects.equal(obj, value(i))) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            createHashFloodingResistantDelegate.put(key(firstEntryIndex), value(firstEntryIndex));
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
        this.table = createHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return createHashFloodingResistantDelegate;
    }

    public Set<Map.Entry<K, V>> createEntrySet() {
        return new C5790d();
    }

    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    public Set<K> createKeySet() {
        return new C5792f();
    }

    public Collection<V> createValues() {
        return new C5794h();
    }

    @VisibleForTesting
    @CheckForNull
    public Map<K, V> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySetView;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> createEntrySet = createEntrySet();
        this.entrySetView = createEntrySet;
        return createEntrySet;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.entrySet().iterator() : new C5788b();
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            delegateOrNull.forEach(biConsumer);
            return;
        }
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            biConsumer.accept(key(firstEntryIndex), value(firstEntryIndex));
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.get(obj);
        }
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        accessEntry(indexOf);
        return value(indexOf);
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.size) {
            return i2;
        }
        return -1;
    }

    public void incrementModCount() {
        this.metadata += 32;
    }

    public void init(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i, 1, 1073741823);
    }

    public void insertEntry(int i, @xvk K k, @xvk V v, int i2, int i3) {
        setEntry(i, q5e.m56619d(i2, 0, i3));
        setKey(i, k);
        setValue(i, v);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySetView;
        if (set != null) {
            return set;
        }
        Set<K> createKeySet = createKeySet();
        this.keySetView = createKeySet;
        return createKeySet;
    }

    public Iterator<K> keySetIterator() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.keySet().iterator() : new C5787a();
    }

    public void moveLastEntry(int i, int i2) {
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        Object[] requireKeys = requireKeys();
        Object[] requireValues = requireValues();
        int size = size() - 1;
        if (i >= size) {
            requireKeys[i] = null;
            requireValues[i] = null;
            requireEntries[i] = 0;
            return;
        }
        Object obj = requireKeys[size];
        requireKeys[i] = obj;
        requireValues[i] = requireValues[size];
        requireKeys[size] = null;
        requireValues[size] = null;
        requireEntries[i] = requireEntries[size];
        requireEntries[size] = 0;
        int m56257d = pfh.m56257d(obj) & i2;
        int m56623h = q5e.m56623h(requireTable, m56257d);
        int i3 = size + 1;
        if (m56623h == i3) {
            q5e.m56624i(requireTable, m56257d, i + 1);
            return;
        }
        while (true) {
            int i4 = m56623h - 1;
            int i5 = requireEntries[i4];
            int m56618c = q5e.m56618c(i5, i2);
            if (m56618c == i3) {
                requireEntries[i4] = q5e.m56619d(i5, i + 1, i2);
                return;
            }
            m56623h = m56618c;
        }
    }

    @VisibleForTesting
    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public V put(@xvk K k, @xvk V v) {
        int resizeTable;
        int i;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.put(k, v);
        }
        int[] requireEntries = requireEntries();
        Object[] requireKeys = requireKeys();
        Object[] requireValues = requireValues();
        int i2 = this.size;
        int i3 = i2 + 1;
        int m56257d = pfh.m56257d(k);
        int hashTableMask = hashTableMask();
        int i4 = m56257d & hashTableMask;
        int m56623h = q5e.m56623h(requireTable(), i4);
        if (m56623h != 0) {
            int m56617b = q5e.m56617b(m56257d, hashTableMask);
            int i5 = 0;
            while (true) {
                int i6 = m56623h - 1;
                int i7 = requireEntries[i6];
                if (q5e.m56617b(i7, hashTableMask) == m56617b && Objects.equal(k, requireKeys[i6])) {
                    V v2 = (V) requireValues[i6];
                    requireValues[i6] = v;
                    accessEntry(i6);
                    return v2;
                }
                int m56618c = q5e.m56618c(i7, hashTableMask);
                i5++;
                if (m56618c != 0) {
                    m56623h = m56618c;
                } else {
                    if (i5 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k, v);
                    }
                    if (i3 > hashTableMask) {
                        resizeTable = resizeTable(hashTableMask, q5e.m56620e(hashTableMask), m56257d, i2);
                    } else {
                        requireEntries[i6] = q5e.m56619d(i7, i3, hashTableMask);
                    }
                }
            }
        } else if (i3 > hashTableMask) {
            resizeTable = resizeTable(hashTableMask, q5e.m56620e(hashTableMask), m56257d, i2);
            i = resizeTable;
        } else {
            q5e.m56624i(requireTable(), i4, i3);
            i = hashTableMask;
        }
        resizeMeMaybe(i3);
        insertEntry(i2, k, v, m56257d, i);
        this.size = i3;
        incrementModCount();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.remove(obj);
        }
        V v = (V) removeHelper(obj);
        if (v == NOT_FOUND) {
            return null;
        }
        return v;
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        Preconditions.checkNotNull(biFunction);
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            delegateOrNull.replaceAll(biFunction);
            return;
        }
        for (int i = 0; i < this.size; i++) {
            setValue(i, biFunction.apply(key(i), value(i)));
        }
    }

    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(requireEntries(), i);
        this.keys = Arrays.copyOf(requireKeys(), i);
        this.values = Arrays.copyOf(requireValues(), i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.size() : this.size;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            Map<K, V> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            createHashFloodingResistantDelegate.putAll(delegateOrNull);
            this.table = createHashFloodingResistantDelegate;
            return;
        }
        int i = this.size;
        if (i < requireEntries().length) {
            resizeEntries(i);
        }
        int m56625j = q5e.m56625j(i);
        int hashTableMask = hashTableMask();
        if (m56625j < hashTableMask) {
            resizeTable(hashTableMask, m56625j, 0, 0);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        Collection<V> createValues = createValues();
        this.valuesView = createValues;
        return createValues;
    }

    public Iterator<V> valuesIterator() {
        Map<K, V> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.values().iterator() : new C5789c();
    }

    public CompactHashMap(int i) {
        init(i);
    }

    /* renamed from: com.google.common.collect.CompactHashMap$e */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5791e<T> implements Iterator<T> {

        /* renamed from: e */
        public int f33946e;

        /* renamed from: f */
        public int f33947f;

        /* renamed from: g */
        public int f33948g;

        public AbstractC5791e() {
            this.f33946e = CompactHashMap.this.metadata;
            this.f33947f = CompactHashMap.this.firstEntryIndex();
            this.f33948g = -1;
        }

        /* renamed from: a */
        public final void m26103a() {
            if (CompactHashMap.this.metadata != this.f33946e) {
                throw new ConcurrentModificationException();
            }
        }

        @xvk
        /* renamed from: b */
        public abstract T mo26099b(int i);

        /* renamed from: c */
        public void m26104c() {
            this.f33946e += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33947f >= 0;
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            m26103a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.f33947f;
            this.f33948g = i;
            T mo26099b = mo26099b(i);
            this.f33947f = CompactHashMap.this.getSuccessor(this.f33947f);
            return mo26099b;
        }

        @Override // java.util.Iterator
        public void remove() {
            m26103a();
            szd.m57282e(this.f33948g >= 0);
            m26104c();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.key(this.f33948g));
            this.f33947f = CompactHashMap.this.adjustAfterRemove(this.f33947f, this.f33948g);
            this.f33948g = -1;
        }

        public /* synthetic */ AbstractC5791e(CompactHashMap compactHashMap, C5787a c5787a) {
            this();
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$f */
    /* loaded from: classes6.dex */
    public class C5792f extends Maps.C5971y<K, V> {
        public C5792f() {
            super(CompactHashMap.this);
        }

        @Override // com.google.common.collect.Maps.C5971y, java.lang.Iterable
        public void forEach(Consumer<? super K> consumer) {
            Preconditions.checkNotNull(consumer);
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                delegateOrNull.keySet().forEach(consumer);
                return;
            }
            int firstEntryIndex = CompactHashMap.this.firstEntryIndex();
            while (firstEntryIndex >= 0) {
                consumer.accept((Object) CompactHashMap.this.key(firstEntryIndex));
                firstEntryIndex = CompactHashMap.this.getSuccessor(firstEntryIndex);
            }
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override // com.google.common.collect.Maps.C5971y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.keySet().remove(obj) : CompactHashMap.this.removeHelper(obj) != CompactHashMap.NOT_FOUND;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<K> spliterator() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return Spliterators.spliterator(new Object[0], 17);
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.keySet().spliterator() : Spliterators.spliterator(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size, 17);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return new Object[0];
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.keySet().toArray();
            }
            return ObjectArrays.m26661d(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            if (CompactHashMap.this.needsAllocArrays()) {
                if (tArr.length > 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return (T[]) delegateOrNull.keySet().toArray(tArr);
            }
            return (T[]) ObjectArrays.m26666i(CompactHashMap.this.requireKeys(), 0, CompactHashMap.this.size, tArr);
        }
    }

    /* renamed from: com.google.common.collect.CompactHashMap$h */
    /* loaded from: classes6.dex */
    public class C5794h extends Maps.C5957l0<K, V> {
        public C5794h() {
            super(CompactHashMap.this);
        }

        @Override // com.google.common.collect.Maps.C5957l0, java.lang.Iterable
        public void forEach(Consumer<? super V> consumer) {
            Preconditions.checkNotNull(consumer);
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                delegateOrNull.values().forEach(consumer);
                return;
            }
            int firstEntryIndex = CompactHashMap.this.firstEntryIndex();
            while (firstEntryIndex >= 0) {
                consumer.accept((Object) CompactHashMap.this.value(firstEntryIndex));
                firstEntryIndex = CompactHashMap.this.getSuccessor(firstEntryIndex);
            }
        }

        @Override // com.google.common.collect.Maps.C5957l0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return CompactHashMap.this.valuesIterator();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return Spliterators.spliterator(new Object[0], 16);
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            return delegateOrNull != null ? delegateOrNull.values().spliterator() : Spliterators.spliterator(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size, 16);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            if (CompactHashMap.this.needsAllocArrays()) {
                return new Object[0];
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return delegateOrNull.values().toArray();
            }
            return ObjectArrays.m26661d(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            if (CompactHashMap.this.needsAllocArrays()) {
                if (tArr.length > 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            Map<K, V> delegateOrNull = CompactHashMap.this.delegateOrNull();
            if (delegateOrNull != null) {
                return (T[]) delegateOrNull.values().toArray(tArr);
            }
            return (T[]) ObjectArrays.m26666i(CompactHashMap.this.requireValues(), 0, CompactHashMap.this.size, tArr);
        }
    }
}
