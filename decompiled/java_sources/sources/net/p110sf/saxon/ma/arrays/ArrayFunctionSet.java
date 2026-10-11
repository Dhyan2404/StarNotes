package net.p110sf.saxon.ma.arrays;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Fold;
import net.p110sf.saxon.functions.FoldingFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.UnparcelFn;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.Parcel;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.zeno.ZenoSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ArrayFunctionSet extends BuiltInFunctionSet {
    public static ArrayFunctionSet THE_INSTANCE = new ArrayFunctionSet();

    /* loaded from: classes11.dex */
    public static class ArrayAppend extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100595h = false;

        public static ArrayItem append(ArrayItem arrayItem, Sequence sequence) throws XPathException {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(sequence.materialize());
            return arrayItem.concat(new SimpleArrayItem(arrayList));
        }

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return append((ArrayItem) sequenceArr[0].head(), sequenceArr[1]);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayFilter extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100596h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            Function function = (Function) sequenceArr[1].head();
            ArrayList arrayList = new ArrayList(1);
            for (int i = 0; i < arrayItem.arrayLength(); i++) {
                if (((BooleanValue) SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{arrayItem.get(i)}).head()).getBooleanValue()) {
                    arrayList.add(arrayItem.get(i));
                }
            }
            return new SimpleArrayItem(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayFlatten extends SystemFunction {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m63293c(List list, Item item) throws XPathException {
            if (!(item instanceof ArrayItem)) {
                list.add(item);
                return;
            }
            Iterator<GroundedValue> it2 = ((ArrayItem) item).members().iterator();
            while (it2.hasNext()) {
                m63294b(it2.next(), list);
            }
        }

        /* renamed from: b */
        public final void m63294b(Sequence sequence, final List<Item> list) throws XPathException {
            SequenceTool.supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.bf
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    ArrayFunctionSet.ArrayFlatten.this.m63293c(list, item);
                }
            });
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayList arrayList = new ArrayList();
            m63294b(sequenceArr[0], arrayList);
            return SequenceExtent.makeSequenceExtent(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayFoldLeft extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100597h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            int arrayLength = arrayItem.arrayLength();
            Sequence sequence = sequenceArr[1];
            Function function = (Function) sequenceArr[2].head();
            for (int i = 0; i < arrayLength; i++) {
                sequence = SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{sequence, arrayItem.get(i)});
            }
            return sequence;
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayFoldRight extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100598h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            Sequence sequence = sequenceArr[1];
            Function function = (Function) sequenceArr[2].head();
            for (int arrayLength = arrayItem.arrayLength() - 1; arrayLength >= 0; arrayLength--) {
                sequence = SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{arrayItem.get(arrayLength), sequence});
            }
            return sequence;
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayForEach extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100599h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            Function function = (Function) sequenceArr[1].head();
            ArrayList arrayList = new ArrayList(1);
            for (int i = 0; i < arrayItem.arrayLength(); i++) {
                arrayList.add(SystemFunction.dynamicCall(function, xPathContext, new GroundedValue[]{arrayItem.get(i)}).materialize());
            }
            return new SimpleArrayItem(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayForEachPair extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100600h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            ArrayItem arrayItem2 = (ArrayItem) sequenceArr[1].head();
            Function function = (Function) sequenceArr[2].head();
            ArrayList arrayList = new ArrayList(1);
            for (int i = 0; i < arrayItem.arrayLength() && i < arrayItem2.arrayLength(); i++) {
                arrayList.add(SystemFunction.dynamicCall(function, xPathContext, new Sequence[]{arrayItem.get(i), arrayItem2.get(i)}).materialize());
            }
            return new SimpleArrayItem(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayFromSequence extends FoldingFunction {

        /* renamed from: net.sf.saxon.ma.arrays.ArrayFunctionSet$ArrayFromSequence$a */
        /* loaded from: classes11.dex */
        public class C18397a implements Fold {

            /* renamed from: a */
            public List<GroundedValue> f100601a = new ArrayList();

            public C18397a() {
            }

            @Override // net.p110sf.saxon.functions.Fold
            public boolean isFinished() {
                return false;
            }

            @Override // net.p110sf.saxon.functions.Fold
            public void processItem(Item item) {
                this.f100601a.add(item);
            }

            @Override // net.p110sf.saxon.functions.Fold
            public Sequence result() {
                return new SimpleArrayItem(this.f100601a);
            }
        }

        @Override // net.p110sf.saxon.functions.FoldingFunction
        public Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) {
            return new C18397a();
        }

        @Override // net.p110sf.saxon.functions.FoldingFunction, net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return SimpleArrayItem.makeSimpleArrayItem(sequenceArr[0].iterate());
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayGet extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            return arrayItem.get(ArrayFunctionSet.checkSubscript((IntegerValue) sequenceArr[1].head(), arrayItem.arrayLength()) - 1);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayHead extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100603h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            if (arrayItem.arrayLength() != 0) {
                return arrayItem.get(0);
            }
            throw new XPathException("Argument to array:head is an empty array", "FOAY0001");
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayInsertBefore extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100604h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            int checkSubscript = ArrayFunctionSet.checkSubscript((IntegerValue) sequenceArr[1].head(), arrayItem.arrayLength() + 1) - 1;
            if (checkSubscript >= 0 && checkSubscript <= arrayItem.arrayLength()) {
                return arrayItem.insert(checkSubscript, sequenceArr[2].materialize());
            }
            throw new XPathException("Specified position is not in range", "FOAY0001");
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayJoin extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            SequenceIterator iterate = sequenceArr[0].iterate();
            ArrayItem arrayItem = SimpleArrayItem.EMPTY_ARRAY;
            while (true) {
                ArrayItem arrayItem2 = (ArrayItem) iterate.next();
                if (arrayItem2 == null) {
                    return arrayItem;
                }
                arrayItem = arrayItem.concat(arrayItem2);
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayMembers extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public GroundedValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            ArrayList arrayList = new ArrayList(arrayItem.arrayLength());
            Iterator<GroundedValue> it2 = arrayItem.members().iterator();
            while (it2.hasNext()) {
                arrayList.add(new Parcel(it2.next()));
            }
            return SequenceExtent.makeSequenceExtent(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayOf extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayList arrayList = new ArrayList();
            SequenceIterator iterate = sequenceArr[0].iterate();
            while (true) {
                Item next = iterate.next();
                if (next != null) {
                    arrayList.add(UnparcelFn.unparcel(next, xPathContext));
                } else {
                    return new SimpleArrayItem(arrayList);
                }
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayPut extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            return arrayItem.put(ArrayFunctionSet.checkSubscript((IntegerValue) sequenceArr[1].head(), arrayItem.arrayLength()) - 1, sequenceArr[2].materialize());
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayRemove extends SystemFunction {
        /* renamed from: b */
        public static /* synthetic */ void m63296b(ArrayItem arrayItem, IntSet intSet, Item item) throws XPathException {
            intSet.add(ArrayFunctionSet.checkSubscript((IntegerValue) item, arrayItem.arrayLength()) - 1);
        }

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            final ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            GroundedValue materialize = sequenceArr[1].materialize();
            if (materialize instanceof IntegerValue) {
                return arrayItem.remove(ArrayFunctionSet.checkSubscript((IntegerValue) materialize, arrayItem.arrayLength()) - 1);
            }
            final IntHashSet intHashSet = new IntHashSet();
            SequenceTool.supply(materialize.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.cf
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    ArrayFunctionSet.ArrayRemove.m63296b(ArrayItem.this, intHashSet, item);
                }
            });
            return arrayItem.removeSeveral(intHashSet);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayReverse extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100605h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            ArrayList arrayList = new ArrayList(1);
            for (int i = 0; i < arrayItem.arrayLength(); i++) {
                arrayList.add(arrayItem.get((arrayItem.arrayLength() - i) - 1));
            }
            return new SimpleArrayItem(arrayList);
        }
    }

    /* loaded from: classes11.dex */
    public static class ArraySize extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100606h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public IntegerValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return new Int64Value(((ArrayItem) sequenceArr[0].head()).arrayLength());
        }
    }

    /* loaded from: classes11.dex */
    public static class ArraySubarray extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100607h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            int i = 0;
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            int checkSubscript = ArrayFunctionSet.checkSubscript((IntegerValue) sequenceArr[1].head(), arrayItem.arrayLength() + 1);
            if (sequenceArr.length == 3) {
                IntegerValue integerValue = (IntegerValue) sequenceArr[2].head();
                int signum = integerValue.signum();
                if (signum < 0) {
                    throw new XPathException("Specified length of subarray is less than zero", "FOAY0002");
                }
                if (signum != 0) {
                    i = ArrayFunctionSet.checkSubscript(integerValue, arrayItem.arrayLength());
                }
            } else {
                i = (arrayItem.arrayLength() - checkSubscript) + 1;
            }
            if (checkSubscript >= 1) {
                if (checkSubscript <= arrayItem.arrayLength() + 1) {
                    int i2 = i + checkSubscript;
                    if (i2 <= arrayItem.arrayLength() + 1) {
                        return arrayItem.subArray(checkSubscript - 1, i2 - 1);
                    }
                    throw new XPathException("Specified length of subarray is too great for start position given", "FOAY0001");
                }
                throw new XPathException("Start position is out of bounds", "FOAY0001");
            }
            throw new XPathException("Start position is less than one", "FOAY0001");
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayTail extends SystemFunction {

        /* renamed from: h */
        public static final /* synthetic */ boolean f100608h = false;

        @Override // net.p110sf.saxon.expr.Callable
        public ArrayItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            ArrayItem arrayItem = (ArrayItem) sequenceArr[0].head();
            if (arrayItem.arrayLength() >= 1) {
                return arrayItem.remove(0);
            }
            throw new XPathException("Argument to array:tail is an empty array", "FOAY0001");
        }
    }

    /* loaded from: classes11.dex */
    public static class ArrayToSequence extends SystemFunction {
        public static Sequence toSequence(ArrayItem arrayItem) throws XPathException {
            ZenoSequence zenoSequence = new ZenoSequence();
            Iterator<GroundedValue> it2 = arrayItem.members().iterator();
            while (it2.hasNext()) {
                zenoSequence = zenoSequence.appendSequence(it2.next());
            }
            return zenoSequence;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return toSequence((ArrayItem) sequenceArr[0].head());
        }
    }

    public ArrayFunctionSet() {
        init();
    }

    public static int checkSubscript(IntegerValue integerValue, int i) throws XPathException {
        int asSubscript = integerValue.asSubscript();
        if (asSubscript <= 0) {
            throw new XPathException("Array subscript " + integerValue.getUnicodeStringValue() + " is out of range", "FOAY0001");
        }
        if (asSubscript <= i) {
            return asSubscript;
        }
        throw new XPathException("Array subscript " + integerValue.getUnicodeStringValue() + " exceeds limit (" + i + MotionUtils.f31762d, "FOAY0001");
    }

    public static ArrayFunctionSet getInstance() {
        return THE_INSTANCE;
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getConventionalPrefix() {
        return "array";
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getNamespace() {
        return NamespaceConstant.ARRAY_FUNCTIONS;
    }

    public final void init() {
        ArrayItemType arrayItemType = ArrayItemType.ANY_ARRAY_TYPE;
        register(RequestParameters.SUBRESOURCE_APPEND, 2, ArrayAppend.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, AnyItemType.getInstance(), 134275072, null);
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        register("filter", 2, ArrayFilter.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.SINGLE_BOOLEAN), 16793600, null);
        register("flatten", 1, ArrayFlatten.class, AnyItemType.getInstance(), 57344, 0).arg(0, AnyItemType.getInstance(), 33611776, null);
        SpecificFunctionType specificFunctionType = new SpecificFunctionType(new SequenceType[]{sequenceType, sequenceType}, sequenceType);
        register("fold-left", 3, ArrayFoldLeft.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null).arg(1, AnyItemType.getInstance(), 134275072, null).arg(2, specificFunctionType, 16793600, null);
        register("fold-right", 3, ArrayFoldRight.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null).arg(1, AnyItemType.getInstance(), 134275072, null).arg(2, specificFunctionType, 16793600, null);
        register(Constants.ELEMNAME_FOREACH_STRING, 2, ArrayForEach.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null).arg(1, new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType), 16793600, null);
        register("for-each-pair", 3, ArrayForEachPair.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null).arg(1, arrayItemType, 16793600, null).arg(2, specificFunctionType, 16793600, null);
        BuiltInFunctionSet.Entry arg = register("get", 2, ArrayGet.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.INTEGER;
        arg.arg(1, builtInAtomicType, 33570816, null);
        register(gon.f71289o, 1, ArrayHead.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null);
        register("insert-before", 3, ArrayInsertBefore.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType, 33611776, null).arg(2, AnyItemType.getInstance(), 134275072, null);
        register(HWRGestureWithContext.GESTURE_JOIN, 1, ArrayJoin.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16834560, null);
        register("put", 3, ArrayPut.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType, 16834560, null).arg(2, AnyItemType.getInstance(), 134275072, null);
        register(SyncConstant.SYNC_ACTION_REMOVE, 2, ArrayRemove.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType, 33611776, null);
        register("reverse", 1, ArrayReverse.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null);
        register("size", 1, ArraySize.class, builtInAtomicType, 16384, 0).arg(0, arrayItemType, 16793600, null);
        SpecificFunctionType specificFunctionType2 = new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.ATOMIC_SEQUENCE);
        register(Constants.ELEMNAME_SORT_STRING, 1, ArraySort.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null);
        BuiltInFunctionSet.Entry arg2 = register(Constants.ELEMNAME_SORT_STRING, 2, ArraySort.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null);
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        arg2.arg(1, builtInAtomicType2, 33579008, null);
        register(Constants.ELEMNAME_SORT_STRING, 3, ArraySort.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType2, 33579008, null).arg(2, specificFunctionType2, 16793600, null);
        register("subarray", 2, ArraySubarray.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType, 33570816, null);
        register("subarray", 3, ArraySubarray.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null).arg(1, builtInAtomicType, 33570816, null).arg(2, builtInAtomicType, 33570816, null);
        register("tail", 1, ArrayTail.class, arrayItemType, 16384, 0).arg(0, arrayItemType, 16793600, null);
        register("_to-sequence", 1, ArrayToSequence.class, AnyItemType.getInstance(), 57344, 0).arg(0, arrayItemType, 16793600, null);
        register("_from-sequence", 1, ArrayFromSequence.class, arrayItemType, 16384, 0).arg(0, AnyItemType.getInstance(), 16834560, null);
        register("of", 1, ArrayOf.class, arrayItemType, 16384, 262144).arg(0, Parcel.TYPE, 57344, null);
        register("members", 1, ArrayMembers.class, Parcel.TYPE, 57344, 262144).arg(0, arrayItemType, 16384, null);
    }
}
