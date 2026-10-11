package net.p110sf.saxon.ma.map;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.ma.trie.ImmutableHashTrieMap;
import net.p110sf.saxon.ma.trie.ImmutableMap;
import net.p110sf.saxon.ma.trie.TrieKVP;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class HashTrieMap extends MapItem {

    /* renamed from: f */
    public ImmutableMap<AtomicMatchKey, KeyValuePair> f100675f;

    /* renamed from: g */
    public UType f100676g;

    /* renamed from: h */
    public UType f100677h;

    /* renamed from: i */
    public AtomicType f100678i;

    /* renamed from: j */
    public ItemType f100679j;

    /* renamed from: k */
    public int f100680k;

    /* renamed from: l */
    public int f100681l;

    /* renamed from: net.sf.saxon.ma.map.HashTrieMap$a */
    /* loaded from: classes11.dex */
    public class C18405a implements AtomicIterator {

        /* renamed from: e */
        public final Iterator<TrieKVP<AtomicMatchKey, KeyValuePair>> f100682e;

        public C18405a() {
            this.f100682e = HashTrieMap.this.f100675f.iterator();
        }

        @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
        public AtomicValue next() {
            if (this.f100682e.hasNext()) {
                return this.f100682e.next().value.key;
            }
            return null;
        }
    }

    /* renamed from: net.sf.saxon.ma.map.HashTrieMap$b */
    /* loaded from: classes11.dex */
    public class C18406b implements Iterable<KeyValuePair> {

        /* renamed from: net.sf.saxon.ma.map.HashTrieMap$b$a */
        /* loaded from: classes11.dex */
        public class a implements Iterator<KeyValuePair> {

            /* renamed from: e */
            public final Iterator<TrieKVP<AtomicMatchKey, KeyValuePair>> f100685e;

            public a() {
                this.f100685e = HashTrieMap.this.f100675f.iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public KeyValuePair next() {
                return this.f100685e.next().value;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f100685e.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f100685e.remove();
            }
        }

        public C18406b() {
        }

        @Override // java.lang.Iterable
        public Iterator<KeyValuePair> iterator() {
            return new a();
        }
    }

    public HashTrieMap() {
        UType uType = UType.VOID;
        this.f100676g = uType;
        this.f100677h = uType;
        this.f100678i = ErrorType.getInstance();
        this.f100679j = ErrorType.getInstance();
        this.f100680k = 0;
        this.f100681l = -1;
        this.f100675f = ImmutableHashTrieMap.empty();
        this.f100681l = 0;
    }

    public static HashTrieMap copy(MapItem mapItem) {
        if (mapItem instanceof HashTrieMap) {
            return (HashTrieMap) mapItem;
        }
        HashTrieMap hashTrieMap = new HashTrieMap();
        for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
            hashTrieMap = hashTrieMap.addEntry(keyValuePair.key, keyValuePair.value);
        }
        return hashTrieMap;
    }

    public static HashTrieMap singleton(AtomicValue atomicValue, GroundedValue groundedValue) {
        return new HashTrieMap().addEntry(atomicValue, groundedValue);
    }

    /* renamed from: b */
    public final AtomicMatchKey m63343b(AtomicValue atomicValue) {
        return atomicValue.asMapKey();
    }

    /* renamed from: c */
    public final void m63344c(AtomicValue atomicValue, Sequence sequence, boolean z) {
        if (z) {
            this.f100676g = atomicValue.getUType();
            this.f100677h = SequenceTool.getUType(sequence);
            this.f100678i = atomicValue.getItemType();
            this.f100679j = MapItem.getItemTypeOfSequence(sequence);
            this.f100680k = SequenceTool.getCardinality(sequence);
            return;
        }
        this.f100676g = this.f100676g.union(atomicValue.getUType());
        this.f100677h = this.f100677h.union(SequenceTool.getUType(sequence));
        this.f100680k = Cardinality.union(this.f100680k, SequenceTool.getCardinality(sequence));
        if (atomicValue.getItemType() != this.f100678i) {
            this.f100678i = null;
        }
        if (MapItem.isKnownToConform(sequence, this.f100679j)) {
            return;
        }
        this.f100679j = null;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean conforms(AtomicType atomicType, SequenceType sequenceType, TypeHierarchy typeHierarchy) {
        boolean z;
        AtomicValue next;
        Affinity relationship;
        Affinity relationship2;
        if (isEmpty()) {
            return true;
        }
        if (this.f100678i == atomicType && this.f100679j == sequenceType.getPrimaryType() && Cardinality.subsumes(sequenceType.getCardinality(), this.f100680k)) {
            return true;
        }
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        if (atomicType == builtInAtomicType || (relationship2 = typeHierarchy.relationship(atomicType, this.f100676g.toItemType())) == Affinity.SAME_TYPE || relationship2 == Affinity.SUBSUMES) {
            z = false;
        } else {
            if (relationship2 == Affinity.DISJOINT) {
                return false;
            }
            z = true;
        }
        ItemType primaryType = sequenceType.getPrimaryType();
        if (primaryType != builtInAtomicType && (relationship = typeHierarchy.relationship(primaryType, this.f100677h.toItemType())) != Affinity.SAME_TYPE && relationship != Affinity.SUBSUMES) {
            if (relationship == Affinity.DISJOINT) {
                return false;
            }
            z = true;
        }
        if (!Cardinality.subsumes(sequenceType.getCardinality(), this.f100680k)) {
            z = true;
        }
        if (z) {
            AtomicIterator keys = keys();
            do {
                next = keys.next();
                if (next != null) {
                    if (!atomicType.matches(next, typeHierarchy)) {
                        return false;
                    }
                }
            } while (sequenceType.matches(get(next), typeHierarchy));
            return false;
        }
        return true;
    }

    public void diagnosticDump() {
        System.err.println("Map details:");
        for (TrieKVP<AtomicMatchKey, KeyValuePair> trieKVP : this.f100675f) {
            AtomicMatchKey atomicMatchKey = trieKVP.key;
            KeyValuePair keyValuePair = trieKVP.value;
            AtomicValue atomicValue = keyValuePair.key;
            GroundedValue groundedValue = keyValuePair.value;
            System.err.println(atomicMatchKey.getClass() + " " + atomicMatchKey + " #:" + atomicMatchKey.hashCode() + " = (" + atomicValue.getClass() + " " + atomicValue + " : " + groundedValue + MotionUtils.f31762d);
        }
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public GroundedValue get(AtomicValue atomicValue) {
        KeyValuePair keyValuePair = this.f100675f.get(m63343b(atomicValue));
        if (keyValuePair == null) {
            return null;
        }
        return keyValuePair.value;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public UType getKeyUType() {
        return this.f100676g;
    }

    public KeyValuePair getKeyValuePair(AtomicValue atomicValue) {
        return this.f100675f.get(m63343b(atomicValue));
    }

    public boolean initialPut(AtomicValue atomicValue, GroundedValue groundedValue) {
        boolean isEmpty = isEmpty();
        AtomicMatchKey m63343b = m63343b(atomicValue);
        boolean z = this.f100675f.get(m63343b) != null;
        this.f100675f = this.f100675f.put(m63343b, new KeyValuePair(atomicValue, groundedValue));
        m63344c(atomicValue, groundedValue, isEmpty);
        this.f100681l = -1;
        return z;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean isEmpty() {
        return this.f100681l == 0 || !this.f100675f.iterator().hasNext();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public Iterable<KeyValuePair> keyValuePairs() {
        return new C18406b();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public AtomicIterator keys() {
        return new C18405a();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public int size() {
        int i = this.f100681l;
        if (i >= 0) {
            return i;
        }
        int i2 = 0;
        for (KeyValuePair keyValuePair : keyValuePairs()) {
            i2++;
        }
        this.f100681l = i2;
        return i2;
    }

    public String toString() {
        return MapItem.mapToString(this);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public HashTrieMap addEntry(AtomicValue atomicValue, GroundedValue groundedValue) {
        AtomicMatchKey m63343b = m63343b(atomicValue);
        boolean z = this.f100675f.get(m63343b) == null;
        boolean isEmpty = isEmpty();
        HashTrieMap hashTrieMap = new HashTrieMap(this.f100675f.put(m63343b, new KeyValuePair(atomicValue, groundedValue)));
        hashTrieMap.f100680k = this.f100680k;
        hashTrieMap.f100676g = this.f100676g;
        hashTrieMap.f100677h = this.f100677h;
        hashTrieMap.f100678i = this.f100678i;
        hashTrieMap.f100679j = this.f100679j;
        hashTrieMap.m63344c(atomicValue, groundedValue, isEmpty);
        int i = this.f100681l;
        if (i >= 0) {
            if (z) {
                i++;
            }
            hashTrieMap.f100681l = i;
        }
        return hashTrieMap;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapType getItemType(TypeHierarchy typeHierarchy) {
        AtomicIterator keys = keys();
        AtomicType atomicType = null;
        ItemType itemType = null;
        int i = 0;
        while (true) {
            AtomicValue next = keys.next();
            if (next == null) {
                break;
            }
            GroundedValue groundedValue = get(next);
            if (atomicType == null) {
                atomicType = next.getItemType();
                itemType = SequenceTool.getItemType(groundedValue, typeHierarchy);
                i = SequenceTool.getCardinality(groundedValue);
            } else {
                atomicType = (AtomicType) Type.getCommonSuperType(atomicType, next.getItemType(), typeHierarchy);
                itemType = Type.getCommonSuperType(itemType, SequenceTool.getItemType(groundedValue, typeHierarchy), typeHierarchy);
                i = Cardinality.union(i, SequenceTool.getCardinality(groundedValue));
            }
        }
        if (atomicType == null) {
            UType uType = UType.VOID;
            this.f100676g = uType;
            this.f100677h = uType;
            this.f100680k = 0;
            return MapType.ANY_MAP_TYPE;
        }
        this.f100676g = atomicType.getUType();
        this.f100677h = itemType.getUType();
        this.f100680k = i;
        return new MapType(atomicType, SequenceType.makeSequenceType(itemType, i));
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public HashTrieMap remove(AtomicValue atomicValue) {
        if (this.f100675f.get(m63343b(atomicValue)) == null) {
            return this;
        }
        HashTrieMap hashTrieMap = new HashTrieMap(this.f100675f.remove(m63343b(atomicValue)));
        hashTrieMap.f100676g = this.f100676g;
        hashTrieMap.f100677h = this.f100677h;
        hashTrieMap.f100680k = this.f100680k;
        hashTrieMap.f100681l = this.f100681l - 1;
        return hashTrieMap;
    }

    public HashTrieMap(ImmutableMap<AtomicMatchKey, KeyValuePair> immutableMap) {
        UType uType = UType.VOID;
        this.f100676g = uType;
        this.f100677h = uType;
        this.f100678i = ErrorType.getInstance();
        this.f100679j = ErrorType.getInstance();
        this.f100680k = 0;
        this.f100675f = immutableMap;
        this.f100681l = -1;
    }
}
