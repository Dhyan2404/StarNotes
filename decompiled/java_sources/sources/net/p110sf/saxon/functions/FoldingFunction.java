package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class FoldingFunction extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int length = sequenceArr.length - 1;
        Sequence[] sequenceArr2 = new Sequence[length];
        System.arraycopy(sequenceArr, 1, sequenceArr2, 0, length);
        Fold fold = getFold(xPathContext, sequenceArr2);
        SequenceIterator iterate = sequenceArr[0].iterate();
        do {
            Item next = iterate.next();
            if (next == null) {
                break;
            }
            fold.processItem(next);
        } while (!fold.isFinished());
        return fold.result();
    }

    public abstract Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) throws XPathException;

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Fold";
    }
}
