package net.p110sf.saxon.ma.map;

import java.util.ArrayList;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.SingleAtomicIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SingleEntryMap extends MapItem {
    public AtomicValue key;
    public GroundedValue value;

    public SingleEntryMap(AtomicValue atomicValue, GroundedValue groundedValue) {
        this.key = atomicValue;
        this.value = groundedValue;
    }

    /* renamed from: a */
    public final HashTrieMap m63354a() {
        HashTrieMap hashTrieMap = new HashTrieMap();
        hashTrieMap.initialPut(this.key, this.value);
        return hashTrieMap;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem addEntry(AtomicValue atomicValue, GroundedValue groundedValue) {
        return m63354a().addEntry(atomicValue, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean conforms(AtomicType atomicType, SequenceType sequenceType, TypeHierarchy typeHierarchy) {
        return atomicType.matches(this.key, typeHierarchy) && sequenceType.matches(this.value, typeHierarchy);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public GroundedValue get(AtomicValue atomicValue) {
        if (this.key.asMapKey().equals(atomicValue.asMapKey())) {
            return this.value;
        }
        return null;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public ItemType getItemType(TypeHierarchy typeHierarchy) {
        return new MapType(this.key.getItemType(), SequenceType.makeSequenceType(SequenceTool.getItemType(this.value, typeHierarchy), SequenceTool.getCardinality(this.value)));
    }

    public AtomicValue getKey() {
        return this.key;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public UType getKeyUType() {
        return this.key.getUType();
    }

    public GroundedValue getValue() {
        return this.value;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean isEmpty() {
        return false;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public Iterable<KeyValuePair> keyValuePairs() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new KeyValuePair(this.key, this.value));
        return arrayList;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public AtomicIterator keys() {
        return SingleAtomicIterator.makeIterator(this.key);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem remove(AtomicValue atomicValue) {
        return get(atomicValue) == null ? this : new HashTrieMap();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public int size() {
        return 1;
    }
}
