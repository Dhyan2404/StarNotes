package net.p110sf.saxon.s9api;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmMap;
import net.p110sf.saxon.tree.jiter.MappingJavaIterator;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XdmMap extends XdmFunctionItem {

    /* renamed from: net.sf.saxon.s9api.XdmMap$a */
    /* loaded from: classes11.dex */
    public class C18480a extends AbstractSet<XdmAtomicValue> {
        public C18480a() {
        }

        /* renamed from: b */
        public static /* synthetic */ XdmAtomicValue m63683b(KeyValuePair keyValuePair) {
            return (XdmAtomicValue) XdmValue.wrap((AtomicSequence) keyValuePair.key);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return XdmMap.this.getUnderlyingValue().get(((XdmAtomicValue) obj).getUnderlyingValue()) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<XdmAtomicValue> iterator() {
            return new MappingJavaIterator(XdmMap.this.getUnderlyingValue().keyValuePairs().iterator(), new Function() { // from class: com.sunia.HTREnginev2.bvo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    XdmAtomicValue m63683b;
                    m63683b = XdmMap.C18480a.m63683b((KeyValuePair) obj);
                    return m63683b;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return XdmMap.this.getUnderlyingValue().size();
        }
    }

    /* renamed from: net.sf.saxon.s9api.XdmMap$b */
    /* loaded from: classes11.dex */
    public class C18481b extends AbstractMap<XdmAtomicValue, XdmValue> {

        /* renamed from: e */
        public final /* synthetic */ XdmMap f101409e;

        public C18481b(XdmMap xdmMap) {
            this.f101409e = xdmMap;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public XdmValue get(Object obj) {
            if (obj instanceof XdmAtomicValue) {
                return this.f101409e.get((XdmAtomicValue) obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public XdmValue put(XdmAtomicValue xdmAtomicValue, XdmValue xdmValue) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public XdmValue remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return (obj instanceof XdmAtomicValue) && this.f101409e.containsKey((XdmAtomicValue) obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<XdmAtomicValue, XdmValue>> entrySet() {
            return this.f101409e.entrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f101409e.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<XdmAtomicValue> keySet() {
            return this.f101409e.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends XdmAtomicValue, ? extends XdmValue> map) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f101409e.mapSize();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<XdmValue> values() {
            return this.f101409e.values();
        }
    }

    /* renamed from: net.sf.saxon.s9api.XdmMap$c */
    /* loaded from: classes11.dex */
    public static class C18482c implements Map.Entry<XdmAtomicValue, XdmValue> {

        /* renamed from: e */
        public KeyValuePair f101411e;

        public C18482c(KeyValuePair keyValuePair) {
            this.f101411e = keyValuePair;
        }

        @Override // java.util.Map.Entry
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public XdmAtomicValue getKey() {
            return (XdmAtomicValue) XdmValue.wrap((AtomicSequence) this.f101411e.key);
        }

        @Override // java.util.Map.Entry
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public XdmValue getValue() {
            return XdmValue.wrap(this.f101411e.value);
        }

        @Override // java.util.Map.Entry
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public XdmValue setValue(XdmValue xdmValue) {
            throw new UnsupportedOperationException();
        }
    }

    public XdmMap() {
        this(new HashTrieMap());
    }

    /* renamed from: c */
    public static HashTrieMap m63681c(Map<? extends XdmAtomicValue, ? extends XdmValue> map) {
        HashTrieMap hashTrieMap = new HashTrieMap();
        for (Map.Entry<? extends XdmAtomicValue, ? extends XdmValue> entry : map.entrySet()) {
            hashTrieMap.initialPut(entry.getKey().getUnderlyingValue(), entry.getValue().getUnderlyingValue());
        }
        return hashTrieMap;
    }

    public static <K, V> XdmMap makeMap(Map<K, V> map) throws IllegalArgumentException {
        HashTrieMap hashTrieMap = new HashTrieMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            hashTrieMap.initialPut(XdmAtomicValue.makeAtomicValue(key).getUnderlyingValue(), XdmValue.makeValue(value).getUnderlyingValue());
        }
        return new XdmMap(hashTrieMap);
    }

    public Map<XdmAtomicValue, XdmValue> asImmutableMap() {
        return new C18481b(this);
    }

    @Override // net.p110sf.saxon.s9api.XdmItem
    public Map<XdmAtomicValue, XdmValue> asMap() {
        return new HashMap(asImmutableMap());
    }

    public void clear() {
        throw new UnsupportedOperationException("XdmMap is immutable");
    }

    public boolean containsKey(XdmAtomicValue xdmAtomicValue) {
        return getUnderlyingValue().get(xdmAtomicValue.getUnderlyingValue()) != null;
    }

    public Set<Map.Entry<XdmAtomicValue, XdmValue>> entrySet() {
        HashSet hashSet = new HashSet();
        Iterator<KeyValuePair> it2 = getUnderlyingValue().keyValuePairs().iterator();
        while (it2.hasNext()) {
            hashSet.add(new C18482c(it2.next()));
        }
        return hashSet;
    }

    public XdmValue get(XdmAtomicValue xdmAtomicValue) {
        xdmAtomicValue.getClass();
        GroundedValue groundedValue = getUnderlyingValue().get(xdmAtomicValue.getUnderlyingValue());
        if (groundedValue == null) {
            return null;
        }
        return XdmValue.wrap(groundedValue);
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public boolean isEmpty() {
        return getUnderlyingValue().isEmpty();
    }

    public Set<XdmAtomicValue> keySet() {
        return new C18480a();
    }

    public int mapSize() {
        return getUnderlyingValue().size();
    }

    public XdmMap put(XdmAtomicValue xdmAtomicValue, XdmValue xdmValue) {
        return new XdmMap(getUnderlyingValue().addEntry(xdmAtomicValue.getUnderlyingValue(), xdmValue.getUnderlyingValue()));
    }

    public XdmMap remove(XdmAtomicValue xdmAtomicValue) {
        return new XdmMap(getUnderlyingValue().remove(xdmAtomicValue.getUnderlyingValue()));
    }

    public Collection<XdmValue> values() {
        ArrayList arrayList = new ArrayList();
        Iterator<KeyValuePair> it2 = getUnderlyingValue().keyValuePairs().iterator();
        while (it2.hasNext()) {
            arrayList.add(XdmValue.wrap(it2.next().value));
        }
        return arrayList;
    }

    public XdmMap(MapItem mapItem) {
        super(mapItem);
    }

    public XdmMap(Map<? extends XdmAtomicValue, ? extends XdmValue> map) {
        this(m63681c(map));
    }

    @Override // net.p110sf.saxon.s9api.XdmItem, net.p110sf.saxon.s9api.XdmValue
    public MapItem getUnderlyingValue() {
        return (MapItem) super.getUnderlyingValue();
    }

    public XdmValue get(String str) {
        str.getClass();
        GroundedValue groundedValue = getUnderlyingValue().get(new StringValue(str));
        if (groundedValue == null) {
            return null;
        }
        return XdmValue.wrap(groundedValue);
    }

    public XdmValue get(long j) {
        GroundedValue groundedValue = getUnderlyingValue().get(new Int64Value(j));
        if (groundedValue == null) {
            return null;
        }
        return XdmValue.wrap(groundedValue);
    }

    public XdmValue get(double d) {
        GroundedValue groundedValue = getUnderlyingValue().get(new DoubleValue(d));
        if (groundedValue == null) {
            return null;
        }
        return XdmValue.wrap(groundedValue);
    }
}
