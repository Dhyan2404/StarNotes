package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import javax.annotation.CheckForNull;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    private static final int ENDPOINT = -2;
    private final boolean accessOrder;
    private transient int firstEntry;
    private transient int lastEntry;

    @VisibleForTesting
    @CheckForNull
    transient long[] links;

    /* renamed from: com.google.common.collect.CompactLinkedHashMap$a */
    /* loaded from: classes6.dex */
    public class C5796a extends CompactHashMap<K, V>.C5790d {
        public C5796a(CompactLinkedHashMap compactLinkedHashMap) {
            super();
        }

        @Override // com.google.common.collect.CompactHashMap.C5790d, java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<Map.Entry<K, V>> spliterator() {
            return Spliterators.spliterator(this, 17);
        }
    }

    /* renamed from: com.google.common.collect.CompactLinkedHashMap$b */
    /* loaded from: classes6.dex */
    public class C5797b extends CompactHashMap<K, V>.C5792f {
        public C5797b(CompactLinkedHashMap compactLinkedHashMap) {
            super();
        }

        @Override // com.google.common.collect.CompactHashMap.C5792f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<K> spliterator() {
            return Spliterators.spliterator(this, 17);
        }

        @Override // com.google.common.collect.CompactHashMap.C5792f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return ObjectArrays.m26664g(this);
        }

        @Override // com.google.common.collect.CompactHashMap.C5792f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ObjectArrays.m26665h(this, tArr);
        }
    }

    /* renamed from: com.google.common.collect.CompactLinkedHashMap$c */
    /* loaded from: classes6.dex */
    public class C5798c extends CompactHashMap<K, V>.C5794h {
        public C5798c(CompactLinkedHashMap compactLinkedHashMap) {
            super();
        }

        @Override // com.google.common.collect.CompactHashMap.C5794h, java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            return Spliterators.spliterator(this, 16);
        }

        @Override // com.google.common.collect.CompactHashMap.C5794h, java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return ObjectArrays.m26664g(this);
        }

        @Override // com.google.common.collect.CompactHashMap.C5794h, java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ObjectArrays.m26665h(this, tArr);
        }
    }

    public CompactLinkedHashMap() {
        this(3);
    }

    public static <K, V> CompactLinkedHashMap<K, V> create() {
        return new CompactLinkedHashMap<>();
    }

    public static <K, V> CompactLinkedHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactLinkedHashMap<>(i);
    }

    private int getPredecessor(int i) {
        return ((int) (link(i) >>> 32)) - 1;
    }

    private long link(int i) {
        return requireLinks()[i];
    }

    private long[] requireLinks() {
        long[] jArr = this.links;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    private void setLink(int i, long j) {
        requireLinks()[i] = j;
    }

    private void setPredecessor(int i, int i2) {
        setLink(i, (link(i) & 4294967295L) | ((i2 + 1) << 32));
    }

    private void setSucceeds(int i, int i2) {
        if (i == -2) {
            this.firstEntry = i2;
        } else {
            setSuccessor(i, i2);
        }
        if (i2 == -2) {
            this.lastEntry = i;
        } else {
            setPredecessor(i2, i);
        }
    }

    private void setSuccessor(int i, int i2) {
        setLink(i, (link(i) & (-4294967296L)) | ((i2 + 1) & 4294967295L));
    }

    @Override // com.google.common.collect.CompactHashMap
    public void accessEntry(int i) {
        if (this.accessOrder) {
            setSucceeds(getPredecessor(i), getSuccessor(i));
            setSucceeds(this.lastEntry, i);
            setSucceeds(i, -2);
            incrementModCount();
        }
    }

    @Override // com.google.common.collect.CompactHashMap
    public int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.CompactHashMap
    public int allocArrays() {
        int allocArrays = super.allocArrays();
        this.links = new long[allocArrays];
        return allocArrays;
    }

    @Override // com.google.common.collect.CompactHashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.firstEntry = -2;
        this.lastEntry = -2;
        long[] jArr = this.links;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashMap
    @CanIgnoreReturnValue
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> convertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.links = null;
        return convertToHashFloodingResistantImplementation;
    }

    @Override // com.google.common.collect.CompactHashMap
    public Set<Map.Entry<K, V>> createEntrySet() {
        return new C5796a(this);
    }

    @Override // com.google.common.collect.CompactHashMap
    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f, this.accessOrder);
    }

    @Override // com.google.common.collect.CompactHashMap
    public Set<K> createKeySet() {
        return new C5797b(this);
    }

    @Override // com.google.common.collect.CompactHashMap
    public Collection<V> createValues() {
        return new C5798c(this);
    }

    @Override // com.google.common.collect.CompactHashMap
    public int firstEntryIndex() {
        return this.firstEntry;
    }

    @Override // com.google.common.collect.CompactHashMap
    public int getSuccessor(int i) {
        return ((int) link(i)) - 1;
    }

    @Override // com.google.common.collect.CompactHashMap
    public void init(int i) {
        super.init(i);
        this.firstEntry = -2;
        this.lastEntry = -2;
    }

    @Override // com.google.common.collect.CompactHashMap
    public void insertEntry(int i, @xvk K k, @xvk V v, int i2, int i3) {
        super.insertEntry(i, k, v, i2, i3);
        setSucceeds(this.lastEntry, i);
        setSucceeds(i, -2);
    }

    @Override // com.google.common.collect.CompactHashMap
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        setSucceeds(getPredecessor(i), getSuccessor(i));
        if (i < size) {
            setSucceeds(getPredecessor(size), i);
            setSucceeds(i, getSuccessor(size));
        }
        setLink(size, 0L);
    }

    @Override // com.google.common.collect.CompactHashMap
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.links = Arrays.copyOf(requireLinks(), i);
    }

    public CompactLinkedHashMap(int i) {
        this(i, false);
    }

    public CompactLinkedHashMap(int i, boolean z) {
        super(i);
        this.accessOrder = z;
    }
}
