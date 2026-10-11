package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMapEntrySet;
import com.sunia.HTREnginev2.snf;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class JdkBackedImmutableMap<K, V> extends ImmutableMap<K, V> {
    private final transient Map<K, V> delegateMap;
    private final transient ImmutableList<Map.Entry<K, V>> entries;

    public JdkBackedImmutableMap(Map<K, V> map, ImmutableList<Map.Entry<K, V>> immutableList) {
        this.delegateMap = map;
        this.entries = immutableList;
    }

    public static <K, V> ImmutableMap<K, V> create(int i, Map.Entry<K, V>[] entryArr, boolean z) {
        HashMap newHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(i);
        HashMap hashMap = null;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Map.Entry<K, V> entry = entryArr[i3];
            Objects.requireNonNull(entry);
            ImmutableMapEntry makeImmutable = RegularImmutableMap.makeImmutable(entry);
            entryArr[i3] = makeImmutable;
            K key = makeImmutable.getKey();
            V value = entryArr[i3].getValue();
            Object put = newHashMapWithExpectedSize.put(key, value);
            if (put != null) {
                if (z) {
                    Map.Entry<K, V> entry2 = entryArr[i3];
                    String valueOf = String.valueOf(entry2.getKey());
                    String valueOf2 = String.valueOf(put);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
                    sb.append(valueOf);
                    sb.append("=");
                    sb.append(valueOf2);
                    throw ImmutableMap.conflictException("key", entry2, sb.toString());
                }
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(key, value);
                i2++;
            }
        }
        if (hashMap != null) {
            Map.Entry<K, V>[] entryArr2 = new Map.Entry[i - i2];
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Map.Entry<K, V> entry3 = entryArr[i5];
                Objects.requireNonNull(entry3);
                Map.Entry<K, V> entry4 = entry3;
                K key2 = entry4.getKey();
                if (hashMap.containsKey(key2)) {
                    Object obj = hashMap.get(key2);
                    if (obj != null) {
                        ImmutableMapEntry immutableMapEntry = new ImmutableMapEntry(key2, obj);
                        hashMap.put(key2, null);
                        entry4 = immutableMapEntry;
                    }
                }
                entryArr2[i4] = entry4;
                i4++;
            }
            entryArr = entryArr2;
        }
        return new JdkBackedImmutableMap(newHashMapWithExpectedSize, ImmutableList.asImmutableList(entryArr, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEach$0(BiConsumer biConsumer, Map.Entry entry) {
        biConsumer.accept(entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> createKeySet() {
        return new ImmutableMapKeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public ImmutableCollection<V> createValues() {
        return new ImmutableMapValues(this);
    }

    @Override // java.util.Map
    public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        this.entries.forEach(new Consumer() { // from class: com.google.common.collect.t
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                JdkBackedImmutableMap.lambda$forEach$0(biConsumer, (Map.Entry) obj);
            }
        });
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return this.delegateMap.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.entries.size();
    }
}
