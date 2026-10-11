package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class ForClauseOuterPull extends ForClausePull {
    public ForClauseOuterPull(TuplePull tuplePull, ForClause forClause) {
        super(tuplePull, forClause);
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClausePull, net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.base.close();
        FocusIterator focusIterator = this.currentIteration;
        if (focusIterator != null) {
            focusIterator.close();
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClausePull, net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        Item next;
        while (true) {
            FocusIterator focusIterator = this.currentIteration;
            if (focusIterator != null) {
                next = focusIterator.next();
            } else {
                if (!this.base.nextTuple(xPathContext)) {
                    return false;
                }
                FocusTrackingIterator focusTrackingIterator = new FocusTrackingIterator(this.forClause.getSequence().iterate(xPathContext));
                this.currentIteration = focusTrackingIterator;
                next = focusTrackingIterator.next();
                if (next == null) {
                    xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), EmptySequence.getInstance());
                    if (this.forClause.getPositionVariable() != null) {
                        xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), Int64Value.ZERO);
                    }
                    this.currentIteration = null;
                    return true;
                }
            }
            if (next != null) {
                xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), next);
                if (this.forClause.getPositionVariable() != null) {
                    xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), new Int64Value(this.currentIteration.position()));
                }
                return true;
            }
            this.currentIteration = null;
        }
    }
}
