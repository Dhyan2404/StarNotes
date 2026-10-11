package net.p110sf.saxon.functions.registry;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.net.URISyntaxException;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.CharactersFn;
import net.p110sf.saxon.functions.CodepointsToString;
import net.p110sf.saxon.functions.Concat;
import net.p110sf.saxon.functions.ParcelFn;
import net.p110sf.saxon.functions.Parts;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.UnparcelFn;
import net.p110sf.saxon.functions.registry.BuiltInFunctionSet;
import net.p110sf.saxon.ma.Parcel;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XPath40FunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final XPath40FunctionSet f100429c = new XPath40FunctionSet();

    /* loaded from: classes11.dex */
    public static class HighestOrLowest extends SefFunction {
        @Override // net.p110sf.saxon.functions.registry.SefFunction, net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            String str;
            StringValue stringValue;
            Sequence sequence = sequenceArr[0];
            if (sequenceArr.length < 2 || (stringValue = (StringValue) sequenceArr[1].head()) == null) {
                str = null;
            } else {
                try {
                    str = ResolveURI.makeAbsolute(stringValue.getStringValue(), getStaticBaseUriString()).toString();
                } catch (URISyntaxException e) {
                    throw new XPathException(e);
                }
            }
            if (str == null) {
                str = getRetainedStaticContext().getDefaultCollationName();
            }
            return callFunction(xPathContext, new SymbolicName.C18533F(new StructuredQName("", SefFunction.f100422h, "mhk_highest"), 4), new Sequence[]{sequence.materialize(), new StringValue(str), sequenceArr.length >= 3 ? (Function) sequenceArr[2].head() : SystemFunction.makeFunction("data", getRetainedStaticContext(), 1), BooleanValue.get(getDetails().name.getLocalPart().equals("highest"))});
        }
    }

    public XPath40FunctionSet() {
        init();
    }

    public static XPath40FunctionSet getInstance() {
        return f100429c;
    }

    public final void init() {
        importFunctionSet(XPath31FunctionSet.getInstance());
        SequenceType sequenceType = SequenceType.SINGLE_ITEM;
        ItemType specificFunctionType = new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.SINGLE_BOOLEAN);
        ItemType specificFunctionType2 = new SpecificFunctionType(new SequenceType[]{sequenceType}, SequenceType.ATOMIC_SEQUENCE);
        ItemType itemType = BuiltInAtomicType.BOOLEAN;
        register("all", 2, SefFunction.class, itemType, 16384, 513).arg(0, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(1, specificFunctionType, 16384, null);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
        register("characters", 1, CharactersFn.class, builtInAtomicType, 57344, 0).arg(0, builtInAtomicType, 16384, null);
        BuiltInFunctionSet.Entry register = register("codepoints-to-string", 1, CodepointsToString.class, builtInAtomicType, 16384, 262144);
        ItemType itemType2 = BuiltInAtomicType.INTEGER;
        register.arg(0, itemType2, 57344, null);
        BuiltInFunctionSet.Entry register2 = register(Keywords.FUNC_CONCAT_STRING, 1, Concat.class, builtInAtomicType, 16384, 262144);
        ItemType itemType3 = BuiltInAtomicType.ANY_ATOMIC;
        register2.arg(0, itemType3, 57344, null);
        register("highest", 1, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null);
        register("highest", 2, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType, 24576, null);
        register("highest", 3, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType, 24576, null).arg(2, specificFunctionType2, 16384, null);
        register("identity", 1, SefFunction.class, AnyItemType.getInstance(), 57344, 513).arg(0, AnyItemType.getInstance(), 57344, null);
        register("index-where", 2, SefFunction.class, itemType2, 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 16384, null);
        ItemType itemType4 = MapType.ANY_MAP_TYPE;
        register("in-scope-namespaces", 1, SefFunction.class, itemType4, 16384, 512).arg(0, NodeKindTest.ELEMENT, 57344, null);
        register("is-NaN", 1, SefFunction.class, itemType, 16384, 512).arg(0, itemType3, 16384, null);
        register("items-before", 2, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 16384, null);
        register("items-until", 2, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 16384, null);
        register("items-from", 2, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 16384, null);
        register("items-after", 2, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 16384, null);
        register("lowest", 1, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null);
        register("lowest", 2, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType, 24576, null);
        register("lowest", 3, HighestOrLowest.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, builtInAtomicType, 24576, null).arg(2, specificFunctionType2, 16384, null);
        register("parcel", 1, ParcelFn.class, Parcel.TYPE, 16384, 0).arg(0, AnyItemType.getInstance(), 57344, null);
        register("parts", 1, Parts.class, new MapType(builtInAtomicType, SequenceType.ANY_SEQUENCE), 16384, 0).arg(0, itemType3, 16384, null);
        register(SessionDescription.f26441q, 2, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 24576, null);
        register(SessionDescription.f26441q, 3, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 24576, null).arg(2, specificFunctionType, 24576, null);
        register(SessionDescription.f26441q, 4, SefFunction.class, AnyItemType.getInstance(), 57344, 512).arg(0, AnyItemType.getInstance(), 57344, null).arg(1, specificFunctionType, 24576, null).arg(2, specificFunctionType, 24576, null).arg(3, itemType4, 16384, null);
        register("slice", 2, SefFunction.class, AnyItemType.getInstance(), 57344, 513).arg(0, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(1, itemType4, 16384, null);
        register("some", 2, SefFunction.class, itemType, 16384, 513).arg(0, AnyItemType.getInstance(), 57344, BuiltInFunctionSet.EMPTY).arg(1, specificFunctionType, 16384, null);
        register("unparcel", 1, UnparcelFn.class, AnyItemType.getInstance(), 57344, 0).arg(0, Parcel.TYPE, 16384, null);
    }
}
