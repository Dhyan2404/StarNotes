package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class Data_1 extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Sequence sequence = sequenceArr[0];
        return sequence instanceof Item ? ((Item) sequence).atomize() : SequenceTool.toLazySequence(Atomizer.getAtomizingIterator(sequence.iterate(), false));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        return Atomizer.makeAtomizer(expressionArr[0], null);
    }
}
