package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMapEntry;
import com.google.common.collect.ImmutableMapEntrySet;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import java.io.Serializable;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes6.dex */
public final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(ImmutableMap.EMPTY_ENTRY_ARRAY, null, 0);

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;

    @VisibleForTesting
    static final int MAX_HASH_BUCKET_LENGTH = 8;

    @VisibleForTesting
    static final double MAX_LOAD_FACTOR = 1.2d;
    private static final long serialVersionUID = 0;

    @VisibleForTesting
    final transient Map.Entry<K, V>[] entries;
    private final transient int mask;

    @CheckForNull
    private final transient ImmutableMapEntry<K, V>[] table;

    /* loaded from: classes6.dex */
    public static class BucketOverflowException extends Exception {
    }

    @GwtCompatible(emulated = true)
    /* loaded from: classes6.dex */
    public static final class KeySet<K> extends IndexedImmutableSet<K> {
        private final RegularImmutableMap<K, ?> map;

        @GwtIncompatible
        /* loaded from: classes6.dex */
        public static class SerializedForm<K> implements Serializable {
            private static final long serialVersionUID = 0;
            final ImmutableMap<K, ?> map;

            public SerializedForm(ImmutableMap<K, ?> immutableMap) {
                this.map = immutableMap;
            }

            public Object readResolve() {
                return this.map.keySet();
            }
        }

        public KeySet(RegularImmutableMap<K, ?> regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public K get(int i) {
            return this.map.entries[i].getKey();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }
    }

    @GwtCompatible(emulated = true)
    /* loaded from: classes6.dex */
    public static final class Values<K, V> extends ImmutableList<V> {
        final RegularImmutableMap<K, V> map;

        @GwtIncompatible
        /* loaded from: classes6.dex */
        public static class SerializedForm<V> implements Serializable {
            private static final long serialVersionUID = 0;
            final ImmutableMap<?, V> map;

            public SerializedForm(ImmutableMap<?, V> immutableMap) {
                this.map = immutableMap;
            }

            public Object readResolve() {
                return this.map.values();
            }
        }

        public Values(RegularImmutableMap<K, V> regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // java.util.List
        public V get(int i) {
            return this.map.entries[i].getValue();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.map.size();
        }
    }

    private RegularImmutableMap(Map.Entry<K, V>[] entryArr, @CheckForNull ImmutableMapEntry<K, V>[] immutableMapEntryArr, int i) {
        this.entries = entryArr;
        this.table = immutableMapEntryArr;
        this.mask = i;
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMapEntry<K, V> checkNoConflictInKeyBucket(Object obj, Object obj2, @CheckForNull ImmutableMapEntry<K, V> immutableMapEntry, boolean z) throws BucketOverflowException {
        int i = 0;
        while (immutableMapEntry != null) {
            if (immutableMapEntry.getKey().equals(obj)) {
                if (!z) {
                    return immutableMapEntry;
                }
                String valueOf = String.valueOf(obj);
                String valueOf2 = String.valueOf(obj2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
                sb.append(valueOf);
                sb.append("=");
                sb.append(valueOf2);
                ImmutableMap.checkNoConflict(false, "key", immutableMapEntry, sb.toString());
            }
            i++;
            if (i > 8) {
                throw new BucketOverflowException();
            }
            immutableMapEntry = immutableMapEntry.getNextInKeyBucket();
        }
        return null;
    }

    public static <K, V> ImmutableMap<K, V> fromEntries(Map.Entry<K, V>... entryArr) {
        return fromEntryArray(entryArr.length, entryArr, true);
    }

    public static <K, V> ImmutableMap<K, V> fromEntryArray(int i, Map.Entry<K, V>[] entryArr, boolean z) {
        Preconditions.checkPositionIndex(i, entryArr.length);
        if (i == 0) {
            return (ImmutableMap<K, V>) EMPTY;
        }
        try {
            return fromEntryArrayCheckingBucketOverflow(i, entryArr, z);
        } catch (BucketOverflowException unused) {
            return JdkBackedImmutableMap.create(i, entryArr, z);
        }
    }

    private static <K, V> ImmutableMap<K, V> fromEntryArrayCheckingBucketOverflow(int i, Map.Entry<K, V>[] entryArr, boolean z) throws BucketOverflowException {
        Map.Entry<K, V>[] createEntryArray = i == entryArr.length ? entryArr : ImmutableMapEntry.createEntryArray(i);
        int m56254a = pfh.m56254a(i, MAX_LOAD_FACTOR);
        ImmutableMapEntry[] createEntryArray2 = ImmutableMapEntry.createEntryArray(m56254a);
        int i2 = m56254a - 1;
        IdentityHashMap identityHashMap = null;
        int i3 = 0;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            Map.Entry<K, V> entry = entryArr[i4];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            K key = entry2.getKey();
            V value = entry2.getValue();
            szd.m57278a(key, value);
            int m56256c = pfh.m56256c(key.hashCode()) & i2;
            ImmutableMapEntry immutableMapEntry = createEntryArray2[m56256c];
            ImmutableMapEntry checkNoConflictInKeyBucket = checkNoConflictInKeyBucket(key, value, immutableMapEntry, z);
            if (checkNoConflictInKeyBucket == null) {
                checkNoConflictInKeyBucket = immutableMapEntry == null ? makeImmutable(entry2, key, value) : new ImmutableMapEntry.NonTerminalImmutableMapEntry(key, value, immutableMapEntry);
                createEntryArray2[m56256c] = checkNoConflictInKeyBucket;
            } else {
                if (identityHashMap == null) {
                    identityHashMap = new IdentityHashMap();
                }
                identityHashMap.put(checkNoConflictInKeyBucket, Boolean.TRUE);
                i3++;
                if (createEntryArray == entryArr) {
                    createEntryArray = (Map.Entry[]) createEntryArray.clone();
                }
            }
            createEntryArray[i4] = checkNoConflictInKeyBucket;
        }
        if (identityHashMap != null) {
            createEntryArray = removeDuplicates(createEntryArray, i, i - i3, identityHashMap);
            if (pfh.m56254a(createEntryArray.length, MAX_LOAD_FACTOR) != m56254a) {
                return fromEntryArrayCheckingBucketOverflow(createEntryArray.length, createEntryArray, true);
            }
        }
        return new RegularImmutableMap(createEntryArray, createEntryArray2, i2);
    }

    public static <K, V> ImmutableMapEntry<K, V> makeImmutable(Map.Entry<K, V> entry, K k, V v) {
        return (entry instanceof ImmutableMapEntry) && ((ImmutableMapEntry) entry).isReusable() ? (ImmutableMapEntry) entry : new ImmutableMapEntry<>(k, v);
    }

    public static <K, V> Map.Entry<K, V>[] removeDuplicates(Map.Entry<K, V>[] entryArr, int i, int i2, IdentityHashMap<Map.Entry<K, V>, Boolean> identityHashMap) {
        ImmutableMapEntry[] createEntryArray = ImmutableMapEntry.createEntryArray(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            Map.Entry<K, V> entry = entryArr[i4];
            Boolean bool = identityHashMap.get(entry);
            if (bool != null) {
                if (bool.booleanValue()) {
                    identityHashMap.put(entry, Boolean.FALSE);
                }
            }
            createEntryArray[i3] = entry;
            i3++;
        }
        return createEntryArray;
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new KeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableCollection<V> createValues() {
        return new Values(this);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        for (Map.Entry<K, V> entry : this.entries) {
            biConsumer.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return (V) get(obj, this.table, this.mask);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.length;
    }

    @CheckForNull
    public static <V> V get(@CheckForNull Object obj, @CheckForNull ImmutableMapEntry<?, V>[] immutableMapEntryArr, int i) {
        if (obj != null && immutableMapEntryArr != null) {
            for (ImmutableMapEntry<?, V> immutableMapEntry = immutableMapEntryArr[i & pfh.m56256c(obj.hashCode())]; immutableMapEntry != null; immutableMapEntry = immutableMapEntry.getNextInKeyBucket()) {
                if (obj.equals(immutableMapEntry.getKey())) {
                    return immutableMapEntry.getValue();
                }
            }
        }
        return null;
    }

    public static <K, V> ImmutableMapEntry<K, V> makeImmutable(Map.Entry<K, V> entry) {
        return makeImmutable(entry, entry.getKey(), entry.getValue());
    }
}
