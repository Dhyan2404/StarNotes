package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;

/* loaded from: classes11.dex */
public class CurrentOutputUri extends SystemFunction implements Callable {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(evaluateItem(xPathContext));
    }

    public AnyURIValue evaluateItem(XPathContext xPathContext) throws XPathException {
        String currentOutputUri = xPathContext.getCurrentOutputUri();
        if (currentOutputUri == null) {
            return null;
        }
        return new AnyURIValue(currentOutputUri);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return super.getSpecialProperties(expressionArr) | 33554432;
    }
}
