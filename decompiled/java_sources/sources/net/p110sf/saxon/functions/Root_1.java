package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class Root_1 extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) sequenceArr[0].head();
        return nodeInfo == null ? EmptySequence.getInstance() : nodeInfo.getRoot();
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "RootFunctionCompiler";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return (getArity() == 0 || (expressionArr[0].getSpecialProperties() & 65536) != 0) ? 25362432 : 25296896;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Root";
    }
}
