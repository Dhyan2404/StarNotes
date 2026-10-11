package net.p110sf.saxon.ma.map;

import androidx.lifecycle.SavedStateHandle;
import com.google.android.material.motion.MotionUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.ktx.BuildConfig;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.SystemFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.functions.InsertBefore;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.zeno.ZenoSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class MapFunctionSet extends BuiltInFunctionSet {
    public static MapFunctionSet THE_INSTANCE = new MapFunctionSet();

    /* loaded from: classes11.dex */
    public static class MapContains extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return BooleanValue.get(((MapItem) sequenceArr[0].head()).get((AtomicValue) sequenceArr[1].head()) != null);
        }
    }

    /* loaded from: classes11.dex */
    public static class MapEntries extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            MapItem mapItem = (MapItem) sequenceArr[0].head();
            ZenoSequence zenoSequence = new ZenoSequence();
            for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
                DictionaryMap dictionaryMap = new DictionaryMap(2);
                dictionaryMap.initialPut("key", keyValuePair.key);
                dictionaryMap.initialPut("value", keyValuePair.value);
                zenoSequence = zenoSequence.appendSequence(dictionaryMap);
            }
            return zenoSequence;
        }
    }

    /* loaded from: classes11.dex */
    public static class MapEntry extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100687h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return new SingleEntryMap((AtomicValue) sequenceArr[0].head(), SequenceTool.toGroundedValue(sequenceArr[1].iterate()));
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public ItemType getResultItemType(Expression[] expressionArr) {
            PlainType atomizedItemType = expressionArr[0].getItemType().getAtomizedItemType();
            return new MapType(atomizedItemType instanceof AtomicType ? (AtomicType) atomizedItemType : atomizedItemType.getPrimitiveItemType(), SequenceType.makeSequenceType(expressionArr[1].getItemType(), expressionArr[1].getCardinality()));
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getStreamerName() {
            return "MapEntry";
        }
    }

    /* loaded from: classes11.dex */
    public static class MapFind extends SystemFunction {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m63347b(AtomicValue atomicValue, List list, Item item) throws XPathException {
            if (item instanceof ArrayItem) {
                Iterator<GroundedValue> it2 = ((ArrayItem) item).members().iterator();
                while (it2.hasNext()) {
                    m63348c(it2.next(), atomicValue, list);
                }
            } else if (item instanceof MapItem) {
                MapItem mapItem = (MapItem) item;
                GroundedValue groundedValue = mapItem.get(atomicValue);
                if (groundedValue != null) {
                    list.add(groundedValue);
                }
                Iterator<KeyValuePair> it3 = mapItem.keyValuePairs().iterator();
                while (it3.hasNext()) {
                    m63348c(it3.next().value, atomicValue, list);
                }
            }
        }

        /* renamed from: c */
        public final void m63348c(Sequence sequence, final AtomicValue atomicValue, final List<GroundedValue> list) throws XPathException {
            SequenceTool.supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.o8j
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    MapFunctionSet.MapFind.this.m63347b(atomicValue, list, item);
                }
            });
        }

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayList arrayList = new ArrayList();
            m63348c(sequenceArr[0], (AtomicValue) sequenceArr[1].head(), arrayList);
            return new SimpleArrayItem(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class MapForEach extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            MapItem mapItem = (MapItem) sequenceArr[0].head();
            Function function = (Function) sequenceArr[1].head();
            ZenoSequence zenoSequence = new ZenoSequence();
            for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
                GroundedValue materialize = SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{keyValuePair.key, keyValuePair.value}).materialize();
                if (materialize.getLength() > 0) {
                    zenoSequence = zenoSequence.appendSequence(materialize);
                }
            }
            return zenoSequence;
        }
    }

    /* loaded from: classes11.dex */
    public static class MapGet extends SystemFunction {

        /* renamed from: i */
        public static final /* synthetic */ boolean f100688i = false;

        /* renamed from: h */
        public String f100689h = null;

        /* renamed from: a */
        public final void m63349a(String str) {
            if ("DONE".equals(this.f100689h)) {
                return;
            }
            this.f100689h = str;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            GroundedValue groundedValue = ((MapItem) sequenceArr[0].head()).get((AtomicValue) sequenceArr[1].head());
            return groundedValue == null ? EmptySequence.getInstance() : groundedValue;
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public int getCardinality(Expression[] expressionArr) {
            ItemType itemType = expressionArr[0].getItemType();
            if (itemType instanceof RecordTest) {
                Expression expression = expressionArr[1];
                if (expression instanceof StringLiteral) {
                    String stringify = ((StringLiteral) expression).stringify();
                    SequenceType fieldType = ((RecordTest) itemType).getFieldType(stringify);
                    if (fieldType != null) {
                        return fieldType.getCardinality();
                    }
                    m63349a("Field " + stringify + " is not defined in tuple type");
                    return 32768;
                }
            }
            return itemType instanceof MapType ? Cardinality.union(((MapType) itemType).getValueType().getCardinality(), 8192) : super.getCardinality(expressionArr);
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public ItemType getResultItemType(Expression[] expressionArr) {
            ItemType itemType = expressionArr[0].getItemType();
            if (itemType instanceof RecordTest) {
                Expression expression = expressionArr[1];
                if (expression instanceof StringLiteral) {
                    String stringify = ((StringLiteral) expression).stringify();
                    SequenceType fieldType = ((RecordTest) itemType).getFieldType(stringify);
                    if (fieldType != null) {
                        return fieldType.getPrimaryType();
                    }
                    m63349a("Field " + stringify + " is not defined in tuple type");
                    return AnyItemType.getInstance();
                }
            }
            return itemType instanceof MapType ? ((MapType) itemType).getValueType().getPrimaryType() : super.getResultItemType(expressionArr);
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
            String str = this.f100689h;
            if (str == null || str.equals("DONE")) {
                return null;
            }
            expressionVisitor.issueWarning(this.f100689h, expressionArr[0].getLocation());
            this.f100689h = "DONE";
            return null;
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public void supplyTypeInformation(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression[] expressionArr) throws XPathException {
            ItemType itemType = expressionArr[0].getItemType();
            if (itemType instanceof TupleType) {
                Expression expression = expressionArr[1];
                if (expression instanceof StringLiteral) {
                    String stringify = ((StringLiteral) expression).stringify();
                    if (((TupleType) itemType).getFieldType(stringify) == null) {
                        XPathException xPathException = new XPathException("Field " + stringify + " is not defined for tuple type " + itemType, SaxonErrorCode.SXTT0001);
                        xPathException.setIsTypeError(true);
                        throw xPathException;
                    }
                }
                if (expressionVisitor.getConfiguration().getTypeHierarchy().relationship(expressionArr[1].getItemType(), BuiltInAtomicType.STRING) != Affinity.DISJOINT) {
                    return;
                }
                XPathException xPathException2 = new XPathException("Key for tuple type must be a string (actual type is " + expressionArr[1].getItemType(), "XPTY0004");
                xPathException2.setIsTypeError(true);
                throw xPathException2;
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class MapIndex extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            HashTrieMap hashTrieMap = new HashTrieMap();
            Function function = (Function) sequenceArr[1];
            SequenceIterator iterate = sequenceArr[0].iterate();
            Sequence[] sequenceArr2 = new Sequence[1];
            while (true) {
                Item next = iterate.next();
                if (next == null) {
                    return hashTrieMap;
                }
                sequenceArr2[0] = next;
                hashTrieMap.initialPut((AtomicValue) SystemFunction.dynamicCall(function, xPathContext, sequenceArr2), next);
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class MapKeys extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100690h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return SequenceTool.toLazySequence(((MapItem) sequenceArr[0].head()).keys());
        }
    }

    /* loaded from: classes11.dex */
    public static class MapMerge extends SystemFunction {
        public static final String errorCodeKey = "Q{http://saxon.sf.net/}duplicates-error-code";
        public static final String finalKey = "Q{http://saxon.sf.net/}final";
        public static final String keyTypeKey = "Q{http://saxon.sf.net/}key-type";

        /* renamed from: m */
        public static final /* synthetic */ boolean f100691m = false;
        public static final String onDuplicatesKey = "Q{http://saxon.sf.net/}on-duplicates";

        /* renamed from: h */
        public String f100692h = "use-first";

        /* renamed from: i */
        public String f100693i = JsonParser.f100644d;

        /* renamed from: j */
        public Function f100694j = null;

        /* renamed from: k */
        public boolean f100695k = false;

        /* renamed from: l */
        public boolean f100696l = false;

        /* renamed from: a */
        public final String m63350a(String str) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1629738262:
                    if (str.equals("use-first")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1626174665:
                    if (str.equals(BuildConfig.VERSION_NAME)) {
                        c = 1;
                        break;
                    }
                    break;
                case -329495780:
                    if (str.equals("use-last")) {
                        c = 2;
                        break;
                    }
                    break;
                case -149186394:
                    if (str.equals("use-any")) {
                        c = 3;
                        break;
                    }
                    break;
                case 950074687:
                    if (str.equals("combine")) {
                        c = 4;
                        break;
                    }
                    break;
                case 995001428:
                    if (str.equals("combine-reverse")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 3:
                    return "use-last";
                case 2:
                    return "use-first";
                case 4:
                    return "combine-reverse";
                case 5:
                    return "combine";
                default:
                    return str;
            }
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public void exportAdditionalArguments(SystemFunctionCall systemFunctionCall, ExpressionPresenter expressionPresenter) throws XPathException {
            if (systemFunctionCall.getArity() == 1) {
                HashTrieMap hashTrieMap = new HashTrieMap();
                hashTrieMap.initialPut(StringValue.bmp("duplicates"), new StringValue(this.f100692h));
                hashTrieMap.initialPut(StringValue.bmp("duplicates-error-code"), new StringValue(this.f100693i));
                Literal.exportValue(hashTrieMap, expressionPresenter);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
        
            if ("combine".equals(r3.getStringValue()) == false) goto L19;
         */
        @Override // net.p110sf.saxon.functions.SystemFunction
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.p110sf.saxon.type.ItemType getResultItemType(net.p110sf.saxon.expr.Expression[] r4) {
            /*
                r3 = this;
                r0 = 0
                r1 = r4[r0]
                net.sf.saxon.type.ItemType r1 = r1.getItemType()
                net.sf.saxon.type.ErrorType r2 = net.p110sf.saxon.type.ErrorType.getInstance()
                if (r1 != r2) goto L10
                net.sf.saxon.ma.map.MapType r3 = net.p110sf.saxon.ma.map.MapType.EMPTY_MAP_TYPE
                return r3
            L10:
                boolean r2 = r1 instanceof net.p110sf.saxon.ma.map.MapType
                if (r2 == 0) goto L63
                int r3 = r4.length
                r2 = 1
                if (r3 != r2) goto L19
                goto L45
            L19:
                r3 = r4[r2]
                boolean r4 = r3 instanceof net.p110sf.saxon.expr.Literal
                if (r4 == 0) goto L44
                net.sf.saxon.expr.Literal r3 = (net.p110sf.saxon.expr.Literal) r3
                net.sf.saxon.om.GroundedValue r3 = r3.getGroundedValue()
                net.sf.saxon.om.Item r3 = r3.head()
                net.sf.saxon.ma.map.MapItem r3 = (net.p110sf.saxon.ma.map.MapItem) r3
                java.lang.String r4 = "duplicates"
                net.sf.saxon.value.StringValue r4 = net.p110sf.saxon.value.StringValue.bmp(r4)
                net.sf.saxon.om.GroundedValue r3 = r3.get(r4)
                if (r3 == 0) goto L44
                java.lang.String r4 = "combine"
                java.lang.String r3 = r3.getStringValue()     // Catch: net.p110sf.saxon.trans.XPathException -> L44
                boolean r3 = r4.equals(r3)     // Catch: net.p110sf.saxon.trans.XPathException -> L44
                if (r3 != 0) goto L44
                goto L45
            L44:
                r0 = r2
            L45:
                if (r0 == 0) goto L62
                net.sf.saxon.ma.map.MapType r3 = new net.sf.saxon.ma.map.MapType
                net.sf.saxon.ma.map.MapType r1 = (net.p110sf.saxon.ma.map.MapType) r1
                net.sf.saxon.type.AtomicType r4 = r1.getKeyType()
                net.sf.saxon.value.SequenceType r0 = r1.getValueType()
                net.sf.saxon.type.ItemType r0 = r0.getPrimaryType()
                r1 = 57344(0xe000, float:8.0356E-41)
                net.sf.saxon.value.SequenceType r0 = net.p110sf.saxon.value.SequenceType.makeSequenceType(r0, r1)
                r3.<init>(r4, r0)
                return r3
            L62:
                return r1
            L63:
                net.sf.saxon.type.ItemType r3 = super.getResultItemType(r4)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sf.saxon.ma.map.MapFunctionSet.MapMerge.getResultItemType(net.sf.saxon.expr.Expression[]):net.sf.saxon.type.ItemType");
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public String getStreamerName() {
            return "NewMap";
        }

        @Override // net.p110sf.saxon.functions.SystemFunction
        public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
            if (expressionArr.length == 2) {
                Expression expression = expressionArr[1];
                if (expression instanceof Literal) {
                    Map<String, Sequence> processSuppliedOptions = getDetails().optionDetails.processSuppliedOptions((MapItem) ((Literal) expression).getGroundedValue().head(), expressionVisitor.getStaticContext().makeEarlyEvaluationContext());
                    String stringValue = ((StringValue) processSuppliedOptions.get("duplicates")).getStringValue();
                    String stringValue2 = ((StringValue) processSuppliedOptions.get(errorCodeKey)).getStringValue();
                    Function function = (Function) processSuppliedOptions.get(onDuplicatesKey);
                    if (function != null) {
                        stringValue = "use-callback";
                    }
                    boolean booleanValue = ((BooleanValue) processSuppliedOptions.get(finalKey)).getBooleanValue();
                    String stringValue3 = ((StringValue) processSuppliedOptions.get(keyTypeKey)).getStringValue();
                    MapMerge mapMerge = (MapMerge) MapFunctionSet.getInstance().makeFunction("merge", 1);
                    mapMerge.f100692h = stringValue;
                    mapMerge.f100693i = stringValue2;
                    mapMerge.f100694j = function;
                    mapMerge.f100695k = stringValue3.equals("string");
                    mapMerge.f100696l = booleanValue;
                    return mapMerge.makeFunctionCall(expressionArr[0]);
                }
            }
            return super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:102:0x02a4. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:14:0x00bf. Please report as an issue. */
        @Override // net.p110sf.saxon.expr.Callable
        public MapItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            String str;
            Iterator<KeyValuePair> it2;
            String str2;
            char c;
            Sequence[] sequenceArr2;
            char c2;
            String str3;
            Iterator<KeyValuePair> it3;
            char c3;
            MapMerge mapMerge = this;
            String str4 = mapMerge.f100692h;
            String str5 = mapMerge.f100693i;
            boolean z = mapMerge.f100695k;
            boolean z2 = mapMerge.f100696l;
            Function function = mapMerge.f100694j;
            if (sequenceArr.length > 1) {
                Map<String, Sequence> processSuppliedOptions = getDetails().optionDetails.processSuppliedOptions((MapItem) sequenceArr[1].head(), xPathContext);
                String stringValue = ((StringValue) processSuppliedOptions.get("duplicates")).getStringValue();
                String stringValue2 = ((StringValue) processSuppliedOptions.get(errorCodeKey)).getStringValue();
                z2 = ((BooleanValue) processSuppliedOptions.get(finalKey)).getBooleanValue();
                boolean equals = "string".equals(((StringValue) processSuppliedOptions.get(keyTypeKey)).getStringValue());
                Function function2 = (Function) processSuppliedOptions.get(onDuplicatesKey);
                if (function2 != null) {
                    str5 = stringValue2;
                    z = equals;
                    function = function2;
                    str4 = "use-callback";
                } else {
                    function = function2;
                    str4 = stringValue;
                    str5 = stringValue2;
                    z = equals;
                }
            }
            if (z2 && z) {
                SequenceIterator iterate = sequenceArr[0].iterate();
                DictionaryMap dictionaryMap = new DictionaryMap();
                str4.hashCode();
                switch (str4.hashCode()) {
                    case -1626174665:
                        if (str4.equals(BuildConfig.VERSION_NAME)) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -329495780:
                        if (str4.equals("use-last")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -149186394:
                        if (str4.equals("use-any")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                    case 1:
                    case 2:
                        while (true) {
                            MapItem mapItem = (MapItem) iterate.next();
                            if (mapItem == null) {
                                return dictionaryMap;
                            }
                            for (KeyValuePair keyValuePair : mapItem.keyValuePairs()) {
                                AtomicValue atomicValue = keyValuePair.key;
                                if (atomicValue instanceof StringValue) {
                                    dictionaryMap.initialPut(atomicValue.getStringValue(), keyValuePair.value);
                                } else {
                                    throw new XPathException("The keys in this map must all be strings (found " + keyValuePair.key.getItemType() + MotionUtils.f31762d);
                                }
                            }
                        }
                    default:
                        while (true) {
                            MapItem mapItem2 = (MapItem) iterate.next();
                            if (mapItem2 == null) {
                                return dictionaryMap;
                            }
                            Iterator<KeyValuePair> it4 = mapItem2.keyValuePairs().iterator();
                            while (it4.hasNext()) {
                                KeyValuePair next = it4.next();
                                AtomicValue atomicValue2 = next.key;
                                if (atomicValue2 instanceof StringValue) {
                                    GroundedValue groundedValue = dictionaryMap.get(atomicValue2);
                                    if (groundedValue != null) {
                                        switch (str4.hashCode()) {
                                            case -1629738262:
                                                if (str4.equals("use-first")) {
                                                    c3 = 0;
                                                    break;
                                                }
                                                break;
                                            case -844487221:
                                                if (str4.equals("use-callback")) {
                                                    c3 = 1;
                                                    break;
                                                }
                                                break;
                                            case 950074687:
                                                if (str4.equals("combine")) {
                                                    c3 = 2;
                                                    break;
                                                }
                                                break;
                                        }
                                        c3 = 65535;
                                        switch (c3) {
                                            case 0:
                                                str3 = str5;
                                                it3 = it4;
                                                break;
                                            case 1:
                                                str3 = str5;
                                                it3 = it4;
                                                dictionaryMap.initialPut(next.key.getStringValue(), function.call(xPathContext, new Sequence[]{groundedValue, next.value}).materialize());
                                                break;
                                            case 2:
                                                it3 = it4;
                                                str3 = str5;
                                                dictionaryMap.initialPut(next.key.getStringValue(), SequenceTool.toGroundedValue(new InsertBefore.InsertIterator(next.value.iterate(), groundedValue.iterate(), 1)));
                                                break;
                                            default:
                                                throw new XPathException("Duplicate key in constructed map: " + Err.wrap(next.key.getStringValue()), str5);
                                        }
                                    } else {
                                        str3 = str5;
                                        it3 = it4;
                                        dictionaryMap.initialPut(next.key.getStringValue(), next.value);
                                    }
                                    it4 = it3;
                                    str5 = str3;
                                } else {
                                    throw new XPathException("The keys in this map must all be strings (found " + next.key.getItemType() + MotionUtils.f31762d);
                                }
                            }
                        }
                }
            } else {
                String str6 = str5;
                SequenceIterator iterate2 = sequenceArr[0].iterate();
                MapItem mapItem3 = (MapItem) iterate2.next();
                if (mapItem3 == null) {
                    return new HashTrieMap();
                }
                while (true) {
                    MapItem mapItem4 = (MapItem) iterate2.next();
                    if (mapItem4 == null) {
                        return mapItem3;
                    }
                    boolean z3 = mapItem4.size() > mapItem3.size();
                    MapItem mapItem5 = z3 ? mapItem4 : mapItem3;
                    if (!z3) {
                        mapItem3 = mapItem4;
                    }
                    String m63350a = z3 ? mapMerge.m63350a(str4) : str4;
                    Iterator<KeyValuePair> it5 = mapItem3.keyValuePairs().iterator();
                    while (it5.hasNext()) {
                        KeyValuePair next2 = it5.next();
                        SequenceIterator sequenceIterator = iterate2;
                        GroundedValue groundedValue2 = mapItem5.get(next2.key);
                        if (groundedValue2 != null) {
                            m63350a.hashCode();
                            str = str4;
                            switch (m63350a.hashCode()) {
                                case -1629738262:
                                    if (m63350a.equals("use-first")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case -1626174665:
                                    if (m63350a.equals(BuildConfig.VERSION_NAME)) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case -844487221:
                                    if (m63350a.equals("use-callback")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                                case -329495780:
                                    if (m63350a.equals("use-last")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                                case -149186394:
                                    if (m63350a.equals("use-any")) {
                                        c = 4;
                                        break;
                                    }
                                    break;
                                case 950074687:
                                    if (m63350a.equals("combine")) {
                                        c = 5;
                                        break;
                                    }
                                    break;
                                case 995001428:
                                    if (m63350a.equals("combine-reverse")) {
                                        c = 6;
                                        break;
                                    }
                                    break;
                            }
                            c = 65535;
                            switch (c) {
                                case 0:
                                case 1:
                                case 4:
                                    it2 = it5;
                                    str2 = m63350a;
                                    break;
                                case 2:
                                    it2 = it5;
                                    str2 = m63350a;
                                    if (z3) {
                                        sequenceArr2 = function.getArity() == 2 ? new Sequence[]{next2.value, groundedValue2} : new Sequence[]{next2.value, groundedValue2, next2.key};
                                    } else {
                                        sequenceArr2 = function.getArity() == 2 ? new Sequence[]{groundedValue2, next2.value} : new Sequence[]{groundedValue2, next2.value, next2.key};
                                    }
                                    mapItem5 = mapItem5.addEntry(next2.key, function.call(xPathContext, sequenceArr2).materialize());
                                    break;
                                case 3:
                                    it2 = it5;
                                    str2 = m63350a;
                                    mapItem5 = mapItem5.addEntry(next2.key, next2.value);
                                    break;
                                case 5:
                                    it2 = it5;
                                    str2 = m63350a;
                                    mapItem5 = mapItem5.addEntry(next2.key, SequenceTool.toGroundedValue(new InsertBefore.InsertIterator(next2.value.iterate(), groundedValue2.iterate(), 1)));
                                    break;
                                case 6:
                                    it2 = it5;
                                    str2 = m63350a;
                                    mapItem5 = mapItem5.addEntry(next2.key, SequenceTool.toGroundedValue(new InsertBefore.InsertIterator(groundedValue2.iterate(), next2.value.iterate(), 1)));
                                    break;
                                default:
                                    throw new XPathException("Duplicate key in constructed map: " + Err.wrap(next2.key.getStringValue()), str6);
                            }
                        } else {
                            str = str4;
                            it2 = it5;
                            str2 = m63350a;
                            mapItem5 = mapItem5.addEntry(next2.key, next2.value);
                        }
                        iterate2 = sequenceIterator;
                        str4 = str;
                        it5 = it2;
                        m63350a = str2;
                    }
                    mapMerge = this;
                    mapItem3 = mapItem5;
                }
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class MapPut extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public MapItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            MapItem mapItem = (MapItem) sequenceArr[0].head();
            if (!(mapItem instanceof HashTrieMap)) {
                mapItem = HashTrieMap.copy(mapItem);
            }
            return mapItem.addEntry((AtomicValue) sequenceArr[1].head(), sequenceArr[2].materialize());
        }
    }

    /* loaded from: classes11.dex */
    public static class MapRemove extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public MapItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            MapItem mapItem = (MapItem) sequenceArr[0].head();
            SequenceIterator iterate = sequenceArr[1].iterate();
            while (true) {
                AtomicValue atomicValue = (AtomicValue) iterate.next();
                if (atomicValue == null) {
                    return mapItem;
                }
                mapItem = mapItem.remove(atomicValue);
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class MapSize extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public IntegerValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return new Int64Value(((MapItem) sequenceArr[0].head()).size());
        }
    }

    public MapFunctionSet() {
        init();
    }

    public static MapFunctionSet getInstance() {
        return THE_INSTANCE;
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getConventionalPrefix() {
        return Constant.MAP_TAG;
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getNamespace() {
        return NamespaceConstant.MAP_FUNCTIONS;
    }

    public final void init() {
        MapType mapType = MapType.ANY_MAP_TYPE;
        register("merge", 1, MapMerge.class, mapType, 16384, 0).arg(0, mapType, 16834560, null);
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        SequenceType makeSequenceType = SequenceType.makeSequenceType(new SpecificFunctionType(new SequenceType[]{sequenceType, sequenceType}, sequenceType), 16384);
        OptionsParameter optionsParameter = new OptionsParameter();
        SequenceType sequenceType2 = SequenceType.SINGLE_STRING;
        optionsParameter.addAllowedOption("duplicates", sequenceType2, StringValue.bmp("use-first"));
        optionsParameter.setAllowedValues("duplicates", JsonParser.f100646f, "use-first", "use-last", "combine", "reject", BuildConfig.VERSION_NAME, "use-any", "use-callback");
        optionsParameter.addAllowedOption(MapMerge.errorCodeKey, sequenceType2, StringValue.bmp(JsonParser.f100644d));
        optionsParameter.addAllowedOption(MapMerge.keyTypeKey, sequenceType2, StringValue.bmp("anyAtomicType"));
        optionsParameter.addAllowedOption(MapMerge.finalKey, SequenceType.SINGLE_BOOLEAN, BooleanValue.FALSE);
        optionsParameter.addAllowedOption(MapMerge.onDuplicatesKey, makeSequenceType, null);
        register("merge", 2, MapMerge.class, mapType, 16384, 0).arg(0, mapType, 57344, null).arg(1, mapType, 16384, null).setOptionDetails(optionsParameter);
        BuiltInFunctionSet.Entry register = register("entry", 2, MapEntry.class, mapType, 16384, 0);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        register.arg(0, builtInAtomicType, 33570816, null).arg(1, AnyItemType.getInstance(), 134275072, null);
        register("find", 2, MapFind.class, AnyFunctionType.getInstance(), 16384, 0).arg(0, AnyItemType.getInstance(), 16834560, null).arg(1, builtInAtomicType, 33570816, null);
        register("get", 2, MapGet.class, AnyItemType.getInstance(), 57344, 0).arg(0, mapType, 16793600, null).arg(1, builtInAtomicType, 33570816, null);
        SequenceType[] sequenceTypeArr = {SequenceType.SINGLE_ITEM};
        SequenceType sequenceType3 = SequenceType.SINGLE_ATOMIC;
        register(FirebaseAnalytics.Param.INDEX, 2, MapIndex.class, mapType, 16384, 0).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, new SpecificFunctionType(sequenceTypeArr, sequenceType3), 16384, null);
        register("put", 3, MapPut.class, mapType, 16384, 0).arg(0, mapType, 16793600, null).arg(1, builtInAtomicType, 33570816, null).arg(2, AnyItemType.getInstance(), 134275072, null);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.BOOLEAN;
        register(Keywords.FUNC_CONTAINS_STRING, 2, MapContains.class, builtInAtomicType2, 16384, 0).arg(0, mapType, 16793600, null).arg(1, builtInAtomicType, 33570816, null);
        register(SyncConstant.SYNC_ACTION_REMOVE, 2, MapRemove.class, mapType, 16384, 0).arg(0, mapType, 16793600, null).arg(1, builtInAtomicType, 33611776, null);
        register(SavedStateHandle.f7923g, 1, MapKeys.class, builtInAtomicType, 57344, 0).arg(0, mapType, 16793600, null);
        register("size", 1, MapSize.class, BuiltInAtomicType.INTEGER, 16384, 0).arg(0, mapType, 16793600, null);
        register(Constants.ELEMNAME_FOREACH_STRING, 2, MapForEach.class, AnyItemType.getInstance(), 57344, 0).arg(0, mapType, 16793600, null).arg(1, new SpecificFunctionType(new SequenceType[]{sequenceType3, sequenceType}, sequenceType), 16793600, null);
        register("entries", 1, MapEntries.class, mapType, 57344, 0).arg(0, mapType, 16793600, null);
        register("untyped-contains", 2, MapUntypedContains.class, builtInAtomicType2, 16384, 0).arg(0, mapType, 16793600, null).arg(1, builtInAtomicType, 33570816, null);
    }
}
