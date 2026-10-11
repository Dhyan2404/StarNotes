package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class HasChildren_1 extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        if (nodeInfo == null) {
            return BooleanValue.FALSE;
        }
        return BooleanValue.get(nodeInfo.hasChildNodes());
    }
}
