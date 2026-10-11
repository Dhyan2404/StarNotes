package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class HeadFn extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(sequenceArr[0].head());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        return FirstItemExpression.makeFirstItemExpression(expressionArr[0]);
    }
}
