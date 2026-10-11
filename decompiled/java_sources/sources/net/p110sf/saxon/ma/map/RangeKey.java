package net.p110sf.saxon.ma.map;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.functions.Count;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class RangeKey extends MapItem {

    /* renamed from: f */
    public final UnicodeString f100701f;

    /* renamed from: g */
    public final UnicodeString f100702g;

    /* renamed from: h */
    public final TreeMap<AtomicMatchKey, Object> f100703h;

    public RangeKey(UnicodeString unicodeString, UnicodeString unicodeString2, TreeMap<AtomicMatchKey, Object> treeMap) {
        this.f100701f = unicodeString;
        this.f100702g = unicodeString2;
        this.f100703h = treeMap;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem addEntry(AtomicValue atomicValue, GroundedValue groundedValue) {
        return HashTrieMap.copy(this).addEntry(atomicValue, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean conforms(AtomicType atomicType, SequenceType sequenceType, TypeHierarchy typeHierarchy) {
        AtomicValue next;
        AtomicIterator keys = keys();
        do {
            next = keys.next();
            if (next == null) {
                return true;
            }
        } while (sequenceType.matches(get(next), typeHierarchy));
        return false;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem, net.p110sf.saxon.om.Function
    public boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) {
        if (!(function instanceof RangeKey)) {
            return false;
        }
        RangeKey rangeKey = (RangeKey) function;
        return this.f100701f.equals(rangeKey.f100701f) && this.f100702g.equals(rangeKey.f100702g) && this.f100703h.equals(rangeKey.f100703h);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("range-key-map");
        expressionPresenter.emitAttribute("size", size() + "");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public GroundedValue get(AtomicValue atomicValue) {
        UnicodeString unicodeString;
        Object obj;
        UnicodeString unicodeStringValue = atomicValue.getUnicodeStringValue();
        UnicodeString unicodeString2 = this.f100701f;
        if ((unicodeString2 != null && unicodeString2.compareTo(unicodeStringValue) > 0) || (((unicodeString = this.f100702g) != null && unicodeString.compareTo(unicodeStringValue) < 0) || (obj = this.f100703h.get(unicodeStringValue)) == null)) {
            return null;
        }
        if (obj instanceof NodeInfo) {
            return (NodeInfo) obj;
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            return null;
        }
        return new SequenceExtent.C18571Of(list);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem, net.p110sf.saxon.om.Function
    public String getDescription() {
        return "range key";
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public UType getKeyUType() {
        return UType.STRING;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public boolean isEmpty() {
        return keys().next() == null;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem, net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return false;
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public Iterable<KeyValuePair> keyValuePairs() {
        ArrayList arrayList = new ArrayList();
        AtomicIterator keys = keys();
        while (true) {
            AtomicValue next = keys.next();
            if (next == null) {
                return arrayList;
            }
            arrayList.add(new KeyValuePair(next, get(next)));
        }
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public AtomicIterator keys() {
        return new C18407a(this.f100701f, this.f100702g, this.f100703h);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapItem remove(AtomicValue atomicValue) {
        return HashTrieMap.copy(this).remove(atomicValue);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public int size() {
        try {
            return Count.count(keys());
        } catch (XPathException unused) {
            return 0;
        }
    }

    public String toString() {
        return MapItem.mapToString(this);
    }

    /* renamed from: net.sf.saxon.ma.map.RangeKey$a */
    /* loaded from: classes11.dex */
    public static class C18407a implements AtomicIterator {

        /* renamed from: e */
        public int f100704e = 0;

        /* renamed from: f */
        public StringValue f100705f = null;

        /* renamed from: g */
        public final StringValue f100706g;

        /* renamed from: h */
        public final UnicodeString f100707h;

        /* renamed from: i */
        public final UnicodeString f100708i;

        /* renamed from: j */
        public final TreeMap<AtomicMatchKey, Object> f100709j;

        public C18407a(UnicodeString unicodeString, UnicodeString unicodeString2, TreeMap<AtomicMatchKey, Object> treeMap) {
            this.f100706g = new StringValue((UnicodeString) (unicodeString2 == null ? treeMap.lastKey() : treeMap.floorKey(unicodeString2)));
            this.f100707h = unicodeString;
            this.f100708i = unicodeString2;
            this.f100709j = treeMap;
        }

        @Override // net.p110sf.saxon.tree.iter.AtomicIterator, net.p110sf.saxon.om.SequenceIterator
        public StringValue next() {
            UnicodeString unicodeString;
            int i = this.f100704e;
            if (i <= 0) {
                if (i < 0) {
                    return null;
                }
                UnicodeString unicodeString2 = this.f100707h;
                if (unicodeString2 == null) {
                    this.f100705f = new StringValue((UnicodeString) this.f100709j.firstKey());
                } else {
                    UnicodeString unicodeString3 = (UnicodeString) this.f100709j.ceilingKey(unicodeString2);
                    if (unicodeString3 != null && ((unicodeString = this.f100708i) == null || unicodeString3.compareTo(unicodeString) <= 0)) {
                        this.f100705f = new StringValue(unicodeString3);
                    } else {
                        this.f100705f = null;
                    }
                }
            } else if (this.f100705f.equals(this.f100706g)) {
                this.f100705f = null;
            } else {
                this.f100705f = new StringValue((UnicodeString) this.f100709j.higherKey(this.f100705f.getUnicodeStringValue()));
            }
            StringValue stringValue = this.f100705f;
            if (stringValue == null) {
                this.f100704e = -1;
                return null;
            }
            this.f100704e++;
            return stringValue;
        }
    }

    @Override // net.p110sf.saxon.ma.map.MapItem, net.p110sf.saxon.om.Function
    public MapType getFunctionItemType() {
        return new MapType(BuiltInAtomicType.STRING, SequenceType.NODE_SEQUENCE);
    }

    @Override // net.p110sf.saxon.ma.map.MapItem
    public MapType getItemType(TypeHierarchy typeHierarchy) {
        return new MapType(BuiltInAtomicType.STRING, SequenceType.NODE_SEQUENCE);
    }
}
