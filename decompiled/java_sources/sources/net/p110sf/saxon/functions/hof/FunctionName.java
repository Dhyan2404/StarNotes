package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class FunctionName extends SystemFunction {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100384h = false;

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StructuredQName functionName = ((Function) sequenceArr[0].head()).getFunctionName();
        if (functionName != null && !functionName.hasURI(NamespaceConstant.ANONYMOUS)) {
            return new QNameValue(functionName, BuiltInAtomicType.QNAME);
        }
        return EmptySequence.getInstance();
    }
}
