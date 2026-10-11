package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.TailIterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TailFn extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(TailIterator.make(sequenceArr[0].iterate(), 2));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public TailExpression makeFunctionCall(Expression[] expressionArr) {
        return new TailExpression(expressionArr[0], 2);
    }
}
