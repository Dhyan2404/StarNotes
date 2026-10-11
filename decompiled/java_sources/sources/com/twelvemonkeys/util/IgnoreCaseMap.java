package com.twelvemonkeys.util;

import com.twelvemonkeys.util.AbstractDecoratedMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public class IgnoreCaseMap<V> extends AbstractDecoratedMap<String, V> implements Serializable, Cloneable {
    public IgnoreCaseMap() {
    }

    public static Object toUpper(Object obj) {
        return obj instanceof String ? ((String) obj).toUpperCase() : obj;
    }

    private V unwrap(Map.Entry<String, V> entry) {
        if (entry != null) {
            return entry.getValue();
        }
        return null;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.entries.containsKey(toUpper(obj));
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        return unwrap((Map.Entry) this.entries.get(toUpper(obj)));
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<Map.Entry<String, V>> newEntryIterator() {
        return this.entries.entrySet().iterator();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<String> newKeyIterator() {
        return this.entries.keySet().iterator();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<V> newValueIterator() {
        return this.entries.values().iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((String) obj, (String) obj2);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        return unwrap((Map.Entry) this.entries.remove(toUpper(obj)));
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public IgnoreCaseMap(Map<String, ? extends V> map) {
        super(map);
    }

    public V put(String str, V v) {
        String str2 = (String) toUpper(str);
        return unwrap((Map.Entry) this.entries.put(str2, new AbstractDecoratedMap.BasicEntry(str2, v)));
    }

    public IgnoreCaseMap(Map map, Map<String, ? extends V> map2) {
        super(map, map2);
    }
}
