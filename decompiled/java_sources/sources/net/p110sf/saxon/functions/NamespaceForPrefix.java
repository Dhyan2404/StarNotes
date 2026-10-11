package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class NamespaceForPrefix extends SystemFunction implements Callable {
    /* renamed from: a */
    public static AnyURIValue m63033a(StringValue stringValue, NodeInfo nodeInfo) {
        String uRIForPrefix = nodeInfo.getAllNamespaces().getURIForPrefix(stringValue == null ? "" : stringValue.getStringValue(), true);
        if (uRIForPrefix == null || uRIForPrefix.isEmpty()) {
            return null;
        }
        return new AnyURIValue(uRIForPrefix);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(m63033a((StringValue) sequenceArr[0].head(), (NodeInfo) sequenceArr[1].head()));
    }
}
