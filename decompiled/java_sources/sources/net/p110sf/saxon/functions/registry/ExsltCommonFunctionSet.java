package net.p110sf.saxon.functions.registry;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ExsltCommonFunctionSet extends BuiltInFunctionSet {

    /* renamed from: c */
    public static final ExsltCommonFunctionSet f100417c = new ExsltCommonFunctionSet();

    /* loaded from: classes11.dex */
    public static class NodeSetFn extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return sequenceArr[0];
        }
    }

    /* loaded from: classes11.dex */
    public static class ObjectTypeFn extends SystemFunction {
        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            TypeHierarchy typeHierarchy = xPathContext.getConfiguration().getTypeHierarchy();
            ItemType itemType = SequenceTool.getItemType(sequenceArr[0].head(), typeHierarchy);
            return typeHierarchy.isSubType(itemType, AnyNodeTest.getInstance()) ? StringValue.bmp("node-set") : typeHierarchy.isSubType(itemType, BuiltInAtomicType.STRING) ? StringValue.bmp("string") : NumericType.isNumericType(itemType) ? StringValue.bmp("number") : typeHierarchy.isSubType(itemType, BuiltInAtomicType.BOOLEAN) ? StringValue.bmp("boolean") : new StringValue(itemType.toString());
        }
    }

    public ExsltCommonFunctionSet() {
        init();
    }

    public static ExsltCommonFunctionSet getInstance() {
        return f100417c;
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getConventionalPrefix() {
        return "exsltCommon";
    }

    @Override // net.p110sf.saxon.functions.registry.BuiltInFunctionSet
    public String getNamespace() {
        return "http://exslt.org/common";
    }

    public final void init() {
        register("node-set", 1, NodeSetFn.class, AnyItemType.getInstance(), 24576, 0).arg(0, AnyItemType.getInstance(), 24576, BuiltInFunctionSet.EMPTY);
        register("object-type", 1, ObjectTypeFn.class, BuiltInAtomicType.STRING, 16384, 0).arg(0, AnyItemType.getInstance(), 16384, null);
    }
}
