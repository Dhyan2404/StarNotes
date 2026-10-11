package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class FoldRightFn extends SystemFunction {
    /* renamed from: a */
    public final Sequence m63231a(Function function, Sequence sequence, SequenceIterator sequenceIterator, XPathContext xPathContext) throws XPathException {
        SequenceIterator reverseIterator = Reverse.getReverseIterator(sequenceIterator);
        Sequence[] sequenceArr = new Sequence[2];
        while (true) {
            Item next = reverseIterator.next();
            if (next == null) {
                return sequence;
            }
            sequenceArr[0] = next;
            sequenceArr[1] = sequence.materialize();
            try {
                sequence = SystemFunction.dynamicCall(function, xPathContext, sequenceArr);
            } catch (XPathException e) {
                e.maybeSetContext(xPathContext);
                throw e;
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return m63231a((Function) sequenceArr[2].head(), sequenceArr[1].materialize(), sequenceArr[0].iterate(), xPathContext);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        ItemType itemType = expressionArr[2].getItemType();
        return itemType instanceof AnyFunctionType ? ((AnyFunctionType) itemType).getResultType().getPrimaryType() : AnyItemType.getInstance();
    }
}
