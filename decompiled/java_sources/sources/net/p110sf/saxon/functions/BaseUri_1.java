package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class BaseUri_1 extends SystemFunction implements Callable {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String baseURI;
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        if (nodeInfo != null && (baseURI = nodeInfo.getBaseURI()) != null) {
            return new AnyURIValue(baseURI);
        }
        return EmptySequence.getInstance();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "BaseURICompiler";
    }
}
