package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class ForClauseOuterPush extends TuplePush {
    protected TuplePush destination;
    protected ForClause forClause;

    public ForClauseOuterPush(Outputter outputter, TuplePush tuplePush, ForClause forClause) {
        super(outputter);
        this.destination = tuplePush;
        this.forClause = forClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.destination.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = this.forClause.getSequence().iterate(xPathContext);
        Item next = iterate.next();
        if (next == null) {
            xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), EmptySequence.getInstance());
            if (this.forClause.getPositionVariable() != null) {
                xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), Int64Value.ZERO);
            }
            this.destination.processTuple(xPathContext);
            return;
        }
        int i = 0;
        do {
            xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), next);
            if (this.forClause.getPositionVariable() != null) {
                i++;
                xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), new Int64Value(i));
            }
            this.destination.processTuple(xPathContext);
            next = iterate.next();
        } while (next != null);
    }
}
