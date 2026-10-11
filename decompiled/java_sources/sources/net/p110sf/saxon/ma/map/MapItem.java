package net.p110sf.saxon.ma.map;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.functions.DeepEqual;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class MapItem implements Function {

    /* renamed from: e */
    public static final /* synthetic */ boolean f100697e = false;

    public static ItemType getItemTypeOfSequence(Sequence sequence) {
        try {
            Item head = sequence.head();
            if (head == null) {
                return AnyItemType.getInstance();
            }
            ItemType itemType = head instanceof AtomicValue ? ((AtomicValue) head).getItemType() : head instanceof NodeInfo ? NodeKindTest.makeNodeKindTest(((NodeInfo) head).getNodeKind()) : AnyFunctionType.getInstance();
            return isKnownToConform(sequence, itemType) ? itemType : AnyItemType.getInstance();
        } catch (XPathException unused) {
            return AnyItemType.getInstance();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x002a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isKnownToConform(net.p110sf.saxon.om.Sequence r4, net.p110sf.saxon.type.ItemType r5) {
        /*
            net.sf.saxon.type.AnyItemType r0 = net.p110sf.saxon.type.AnyItemType.getInstance()
            r1 = 1
            if (r5 != r0) goto L8
            return r1
        L8:
            r0 = 0
            net.sf.saxon.om.SequenceIterator r4 = r4.iterate()     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
        Ld:
            net.sf.saxon.om.Item r2 = r4.next()     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r2 == 0) goto L3f
            boolean r3 = r2 instanceof net.p110sf.saxon.value.AtomicValue     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r3 == 0) goto L2b
            boolean r3 = r5 instanceof net.p110sf.saxon.type.AtomicType     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r3 == 0) goto L2a
            net.sf.saxon.value.AtomicValue r2 = (net.p110sf.saxon.value.AtomicValue) r2     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            net.sf.saxon.type.AtomicType r2 = r2.getItemType()     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            r3 = r5
            net.sf.saxon.type.AtomicType r3 = (net.p110sf.saxon.type.AtomicType) r3     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            boolean r2 = net.p110sf.saxon.type.Type.isSubType(r2, r3)     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r2 != 0) goto Ld
        L2a:
            return r0
        L2b:
            boolean r3 = r2 instanceof net.p110sf.saxon.om.NodeInfo     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r3 == 0) goto L3e
            boolean r3 = r5 instanceof net.p110sf.saxon.pattern.NodeTest     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r3 == 0) goto L3e
            r3 = r5
            net.sf.saxon.pattern.NodeTest r3 = (net.p110sf.saxon.pattern.NodeTest) r3     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            net.sf.saxon.om.NodeInfo r2 = (net.p110sf.saxon.om.NodeInfo) r2     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            boolean r2 = r3.test(r2)     // Catch: net.p110sf.saxon.trans.UncheckedXPathException -> L40
            if (r2 != 0) goto Ld
        L3e:
            return r0
        L3f:
            return r1
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.ma.map.MapItem.isKnownToConform(net.sf.saxon.om.Sequence, net.sf.saxon.type.ItemType):boolean");
    }

    public static String mapToString(MapItem mapItem) {
        StringBuilder sb = new StringBuilder(256);
        sb.append("map{");
        for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
            if (sb.length() > 4) {
                sb.append(",");
            }
            sb.append(keyValuePair.key.toString());
            sb.append(":");
            sb.append(keyValuePair.value.toString());
        }
        sb.append("}");
        return sb.toString();
    }

    public abstract MapItem addEntry(AtomicValue atomicValue, GroundedValue groundedValue);

    @Override // net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        throw new XPathException("Cannot atomize a map (" + toShortString() + MotionUtils.f31762d, "FOTY0013");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        GroundedValue groundedValue = get((AtomicValue) sequenceArr[0].head());
        return groundedValue == null ? EmptySequence.getInstance() : groundedValue;
    }

    public abstract boolean conforms(AtomicType atomicType, SequenceType sequenceType, TypeHierarchy typeHierarchy);

    @Override // net.p110sf.saxon.om.Function
    public boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) throws XPathException {
        GroundedValue groundedValue;
        GroundedValue groundedValue2;
        if (function instanceof MapItem) {
            MapItem mapItem = (MapItem) function;
            if (mapItem.size() == size()) {
                AtomicIterator keys = keys();
                do {
                    AtomicValue next = keys.next();
                    if (next == null) {
                        return true;
                    }
                    groundedValue = get(next);
                    groundedValue2 = mapItem.get(next);
                    if (groundedValue2 == null) {
                        return false;
                    }
                } while (DeepEqual.deepEqual(groundedValue2.iterate(), groundedValue.iterate(), atomicComparer, xPathContext, i));
                return false;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        throw new XPathException("A map item has no effective boolean value");
    }

    @Override // net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(Constant.MAP_TAG);
        expressionPresenter.emitAttribute("size", "" + size());
        for (KeyValuePair keyValuePair : keyValuePairs()) {
            Literal.exportAtomicValue(keyValuePair.key, expressionPresenter);
            Literal.exportValue(keyValuePair.value, expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    public abstract GroundedValue get(AtomicValue atomicValue);

    @Override // net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return AnnotationList.EMPTY;
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return Constant.MAP_TAG;
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return MapType.ANY_MAP_TYPE;
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return null;
    }

    @Override // net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item
    public Genre getGenre() {
        return Genre.MAP;
    }

    public abstract ItemType getItemType(TypeHierarchy typeHierarchy);

    public abstract UType getKeyUType();

    @Override // net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        return new OperandRole[]{OperandRole.SINGLE_ATOMIC};
    }

    public SequenceIterator getTypedValue() throws XPathException {
        throw new XPathException("A map has no typed value");
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        throw new UnsupportedOperationException("A map has no string value");
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isArray() {
        return false;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isMap() {
        return true;
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return true;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public MapItem itemAt(int i) {
        if (i == 0) {
            return this;
        }
        return null;
    }

    public abstract Iterable<KeyValuePair> keyValuePairs();

    public abstract AtomicIterator keys();

    @Override // net.p110sf.saxon.om.Function
    public XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
        return xPathContext;
    }

    public abstract MapItem remove(AtomicValue atomicValue);

    public abstract int size();

    @Override // net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        StringBuilder sb = new StringBuilder();
        sb.append("map{");
        int size = size();
        if (size == 0) {
            sb.append("}");
        } else if (size <= 5) {
            int i = 0;
            for (KeyValuePair keyValuePair : keyValuePairs()) {
                int i2 = i + 1;
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(Err.depict(keyValuePair.key));
                sb.append(":");
                sb.append(Err.depictSequence(keyValuePair.value));
                i = i2;
            }
            sb.append("}");
        } else {
            sb.append("(:size ");
            sb.append(size);
            sb.append(":)}");
        }
        return sb.toString();
    }
}
