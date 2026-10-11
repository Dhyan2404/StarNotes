package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class ResolveQName extends SystemFunction {
    public static QNameValue resolveQName(String str, NodeInfo nodeInfo) throws XPathException {
        return new QNameValue(StructuredQName.fromLexicalQName(str, true, false, nodeInfo.getAllNamespaces()), BuiltInAtomicType.QNAME);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        return atomicValue == null ? EmptySequence.getInstance() : resolveQName(atomicValue.getStringValue(), (NodeInfo) sequenceArr[1].head());
    }
}
