package net.p110sf.saxon.functions.registry;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.ApplyFn;
import net.p110sf.saxon.functions.Doc_2;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapCreate;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.MapUntypedContains;
import net.p110sf.saxon.ma.map.RecordTest;
import net.p110sf.saxon.ma.map.SingleEntryMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyElementImpl;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class VendorFunctionSetHE extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final VendorFunctionSetHE f100424c = new VendorFunctionSetHE();

    /* renamed from: d */
    public static StringValue f100425d = new StringValue(new Twine8(StringConstants.bytes("value")));

    /* loaded from: classes11.dex */
    public static class ArrayAsSequenceOfMaps extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            ArrayList arrayList = new ArrayList();
            Iterator<GroundedValue> it2 = arrayItem.members().iterator();
            while (it2.hasNext()) {
                arrayList.add(new SingleEntryMap(VendorFunctionSetHE.f100425d, it2.next()));
            }
            return new SequenceExtent.C18571Of(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class DynamicErrorInfoFn extends SystemFunction {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0064, code lost:
        
            if (r5.equals("description") == false) goto L8;
         */
        @Override // net.p110sf.saxon.expr.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.p110sf.saxon.om.Sequence call(net.p110sf.saxon.expr.XPathContext r4, net.p110sf.saxon.om.Sequence[] r5) throws net.p110sf.saxon.trans.XPathException {
            /*
                Method dump skipped, instructions count: 322
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sf.saxon.functions.registry.VendorFunctionSetHE.DynamicErrorInfoFn.call(net.sf.saxon.expr.XPathContext, net.sf.saxon.om.Sequence[]):net.sf.saxon.om.Sequence");
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public int getSpecialProperties(Expression[] expressionArr) {
            return 0;
        }
    }

    /* loaded from: classes11.dex */
    public static class HasLocalNamespaces extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
            NodeInfo parent = nodeInfo.getParent();
            return BooleanValue.get(parent == null || parent.getNodeKind() == 9 || nodeInfo.getAllNamespaces() != parent.getAllNamespaces());
        }
    }

    /* loaded from: classes11.dex */
    public static class HasUniformNamespaces extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
            if (nodeInfo instanceof TinyElementImpl) {
                return BooleanValue.get(((TinyElementImpl) nodeInfo).hasUniformNamespaces());
            }
            return BooleanValue.FALSE;
        }
    }

    /* loaded from: classes11.dex */
    public static class IsWholeNumberFn extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            boolean z = false;
            NumericValue numericValue = (NumericValue) sequenceArr[0].head();
            if (numericValue != null && numericValue.isWholeNumber()) {
                z = true;
            }
            return BooleanValue.get(z);
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
            if (expressionArr[0].getItemType().getPrimitiveItemType() == BuiltInAtomicType.INTEGER) {
                return Literal.makeLiteral(BooleanValue.TRUE);
            }
            return null;
        }
    }

    /* loaded from: classes11.dex */
    public static class MapAsSequenceOfMaps extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            MapItem mapItem = (MapItem) sequenceArr[0].head();
            ArrayList arrayList = new ArrayList();
            for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
                DictionaryMap dictionaryMap = new DictionaryMap(2);
                dictionaryMap.initialPut("key", keyValuePair.key);
                dictionaryMap.initialPut("value", keyValuePair.value);
                arrayList.add(dictionaryMap);
            }
            return new SequenceExtent.C18571Of(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class YesNoBoolean extends SystemFunction {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
        
            if (r2.equals("0") == false) goto L4;
         */
        @Override // net.p110sf.saxon.expr.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.p110sf.saxon.value.BooleanValue call(net.p110sf.saxon.expr.XPathContext r2, net.p110sf.saxon.om.Sequence[] r3) throws net.p110sf.saxon.trans.XPathException {
            /*
                r1 = this;
                r1 = 0
                r2 = r3[r1]
                net.sf.saxon.om.Item r2 = r2.head()
                java.lang.String r2 = r2.getStringValue()
                java.lang.String r2 = net.p110sf.saxon.value.Whitespace.trim(r2)
                r2.hashCode()
                int r3 = r2.hashCode()
                r0 = -1
                switch(r3) {
                    case 48: goto L53;
                    case 49: goto L48;
                    case 3521: goto L3d;
                    case 119527: goto L32;
                    case 3569038: goto L27;
                    case 97196323: goto L1c;
                    default: goto L1a;
                }
            L1a:
                r1 = r0
                goto L5c
            L1c:
                java.lang.String r1 = "false"
                boolean r1 = r2.equals(r1)
                if (r1 != 0) goto L25
                goto L1a
            L25:
                r1 = 5
                goto L5c
            L27:
                java.lang.String r1 = "true"
                boolean r1 = r2.equals(r1)
                if (r1 != 0) goto L30
                goto L1a
            L30:
                r1 = 4
                goto L5c
            L32:
                java.lang.String r1 = "yes"
                boolean r1 = r2.equals(r1)
                if (r1 != 0) goto L3b
                goto L1a
            L3b:
                r1 = 3
                goto L5c
            L3d:
                java.lang.String r1 = "no"
                boolean r1 = r2.equals(r1)
                if (r1 != 0) goto L46
                goto L1a
            L46:
                r1 = 2
                goto L5c
            L48:
                java.lang.String r1 = "1"
                boolean r1 = r2.equals(r1)
                if (r1 != 0) goto L51
                goto L1a
            L51:
                r1 = 1
                goto L5c
            L53:
                java.lang.String r3 = "0"
                boolean r2 = r2.equals(r3)
                if (r2 != 0) goto L5c
                goto L1a
            L5c:
                switch(r1) {
                    case 0: goto L6c;
                    case 1: goto L69;
                    case 2: goto L6c;
                    case 3: goto L69;
                    case 4: goto L69;
                    case 5: goto L6c;
                    default: goto L5f;
                }
            L5f:
                net.sf.saxon.trans.XPathException r1 = new net.sf.saxon.trans.XPathException
                java.lang.String r2 = "Supplied value for boolean argument must be 0|false|no or 1|true|yes"
                java.lang.String r3 = "FORG0001"
                r1.<init>(r2, r3)
                throw r1
            L69:
                net.sf.saxon.value.BooleanValue r1 = net.p110sf.saxon.value.BooleanValue.TRUE
                return r1
            L6c:
                net.sf.saxon.value.BooleanValue r1 = net.p110sf.saxon.value.BooleanValue.FALSE
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sf.saxon.functions.registry.VendorFunctionSetHE.YesNoBoolean.call(net.sf.saxon.expr.XPathContext, net.sf.saxon.om.Sequence[]):net.sf.saxon.value.BooleanValue");
        }
    }

    public VendorFunctionSetHE() {
        init();
    }

    public static VendorFunctionSetHE getInstance() {
        return f100424c;
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getConventionalPrefix() {
        return "saxon";
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getNamespace() {
        return NamespaceConstant.SAXON;
    }

    public final void init() {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.BOOLEAN;
        register("is-whole-number", 1, IsWholeNumberFn.class, builtInAtomicType, 16384, 0).arg(0, NumericType.getInstance(), 24576, BuiltInFunctionSet.EMPTY);
        BuiltInFunctionSet.Entry register = register("dynamic-error-info", 1, DynamicErrorInfoFn.class, AnyItemType.getInstance(), 57344, 31236);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        register.arg(0, builtInAtomicType2, 16384, null);
        register("apply", 2, ApplyFn.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyFunctionType.getInstance(), 16384, null).arg(1, ArrayItemType.ANY_ARRAY_TYPE, 16384, null);
        MapType mapType = MapType.ANY_MAP_TYPE;
        register("create-map", 1, MapCreate.class, mapType, 16384, 0).arg(0, mapType, 57344, null);
        register("doc", 2, Doc_2.class, NodeKindTest.DOCUMENT, 16384, 512).arg(0, builtInAtomicType2, 16384, null).arg(1, mapType, 16384, BuiltInFunctionSet.EMPTY).setOptionDetails(Doc_2.makeOptionsParameter());
        BuiltInFunctionSet.Entry register2 = register("has-local-namespaces", 1, HasLocalNamespaces.class, builtInAtomicType, 16384, 0);
        NodeKindTest nodeKindTest = NodeKindTest.ELEMENT;
        register2.arg(0, nodeKindTest, 16384, null);
        register("has-uniform-namespaces", 1, HasUniformNamespaces.class, builtInAtomicType, 16384, 0).arg(0, nodeKindTest, 16384, null);
        register("map-untyped-contains", 2, MapUntypedContains.class, builtInAtomicType, 16384, 0).arg(0, mapType, 57344, null).arg(1, BuiltInAtomicType.ANY_ATOMIC, 16384, null);
        register("map-as-sequence-of-maps", 1, MapAsSequenceOfMaps.class, new RecordTest(Arrays.asList("key", "value"), Arrays.asList(SequenceType.SINGLE_ATOMIC, SequenceType.ANY_SEQUENCE), Collections.emptyList(), false), 57344, 0).arg(0, mapType, 16384, null);
        register("yes-no-boolean", 1, YesNoBoolean.class, builtInAtomicType, 16384, 0).arg(0, builtInAtomicType2, 16384, null);
    }
}
