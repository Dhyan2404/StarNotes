package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class Nilled_1 extends SystemFunction implements Callable {
    /* renamed from: a */
    public static BooleanValue m63034a(NodeInfo nodeInfo) {
        if (nodeInfo == null || nodeInfo.getNodeKind() != 1) {
            return null;
        }
        return BooleanValue.get(nodeInfo.isNilled());
    }

    public static boolean isNilled(NodeInfo nodeInfo) {
        BooleanValue m63034a = m63034a(nodeInfo);
        return m63034a != null && m63034a.getBooleanValue();
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        return (nodeInfo == null || nodeInfo.getNodeKind() != 1) ? EmptySequence.getInstance() : BooleanValue.get(isNilled(nodeInfo));
    }
}
