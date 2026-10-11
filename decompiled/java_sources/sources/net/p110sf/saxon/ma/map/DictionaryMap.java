package net.p110sf.saxon.ma.map;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class DictionaryMap extends MapItem {

    /* renamed from: f */
    public final Map<String, GroundedValue> f100672f;

    /* renamed from: net.sf.saxon.ma.map.DictionaryMap$a */
    /* loaded from: classes11.dex */
    public class C18404a implements AtomicIterator {

        /* renamed from: e */
        public Iterator<String> f100673e;

        public C18404a(Map<String, GroundedValue> map) {
            this.f100673e = map.keySet().iterator();
        }

        @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
        public AtomicValue next() {
            if (this.f100673e.hasNext()) {
                return new StringValue(this.f100673e.next());
            }
            return null;
        }
    }

    public DictionaryMap() {
        this.f100672f = new HashMap();
    }

    /* renamed from: a */
    public final HashTrieMap m63341a() {
        HashTrieMap hashTrieMap = new HashTrieMap();
        for (Map.Entry<String, GroundedValue> entry : this.f100672f.entrySet()) {
            hashTrieMap.initialPut(new StringValue(entry.getKey()), entry.getValue());
        }
        return hashTrieMap;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem addEntry(AtomicValue atomicValue, GroundedValue groundedValue) {
        return m63341a().addEntry(atomicValue, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean conforms(AtomicType atomicType, SequenceType sequenceType, TypeHierarchy typeHierarchy) {
        if (isEmpty()) {
            return true;
        }
        if (atomicType != BuiltInAtomicType.STRING && atomicType != BuiltInAtomicType.ANY_ATOMIC) {
            return false;
        }
        if (sequenceType.equals(SequenceType.ANY_SEQUENCE)) {
            return true;
        }
        Iterator<GroundedValue> it2 = this.f100672f.values().iterator();
        while (it2.hasNext()) {
            if (!sequenceType.matches(it2.next(), typeHierarchy)) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public GroundedValue get(AtomicValue atomicValue) {
        if (atomicValue instanceof StringValue) {
            return this.f100672f.get(atomicValue.getStringValue());
        }
        return null;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public ItemType getItemType(TypeHierarchy typeHierarchy) {
        keys();
        Iterator<Map.Entry<String, GroundedValue>> it2 = this.f100672f.entrySet().iterator();
        ItemType itemType = null;
        int i = 0;
        while (it2.hasNext()) {
            GroundedValue value = it2.next().getValue();
            if (itemType == null) {
                itemType = SequenceTool.getItemType(value, typeHierarchy);
                i = SequenceTool.getCardinality(value);
            } else {
                itemType = Type.getCommonSuperType(itemType, SequenceTool.getItemType(value, typeHierarchy), typeHierarchy);
                i = Cardinality.union(i, SequenceTool.getCardinality(value));
            }
        }
        return itemType == null ? MapType.EMPTY_MAP_TYPE : new MapType(BuiltInAtomicType.STRING, SequenceType.makeSequenceType(itemType, i));
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public UType getKeyUType() {
        return this.f100672f.isEmpty() ? UType.VOID : UType.STRING;
    }

    public void initialAppend(String str, GroundedValue groundedValue) {
        GroundedValue groundedValue2 = this.f100672f.get(str);
        if (groundedValue2 == null) {
            initialPut(str, groundedValue);
        } else {
            this.f100672f.put(str, groundedValue2.concatenate(groundedValue));
        }
    }

    public void initialPut(String str, GroundedValue groundedValue) {
        this.f100672f.put(str, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean isEmpty() {
        return this.f100672f.isEmpty();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public Iterable<KeyValuePair> keyValuePairs() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, GroundedValue> entry : this.f100672f.entrySet()) {
            arrayList.add(new KeyValuePair(new StringValue(entry.getKey()), entry.getValue()));
        }
        return arrayList;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public AtomicIterator keys() {
        return new C18404a(this.f100672f);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem remove(AtomicValue atomicValue) {
        return m63341a().remove(atomicValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public int size() {
        return this.f100672f.size();
    }

    public DictionaryMap(int i) {
        this.f100672f = new HashMap(i);
    }
}
