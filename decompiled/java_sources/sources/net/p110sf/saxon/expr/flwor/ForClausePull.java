package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.FocusTrackingIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class ForClausePull extends TuplePull {
    protected TuplePull base;
    protected FocusIterator currentIteration;
    protected ForClause forClause;

    public ForClausePull(TuplePull tuplePull, ForClause forClause) {
        this.base = tuplePull;
        this.forClause = forClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.base.close();
        FocusIterator focusIterator = this.currentIteration;
        if (focusIterator != null) {
            focusIterator.close();
        }
    }

    public SequenceIterator getIterator(XPathContext xPathContext) throws XPathException {
        return this.forClause.getSequence().iterate(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        while (true) {
            if (this.currentIteration == null) {
                if (!this.base.nextTuple(xPathContext)) {
                    return false;
                }
                this.currentIteration = new FocusTrackingIterator(getIterator(xPathContext));
            }
            Item next = this.currentIteration.next();
            if (next != null) {
                xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), variableValue(next));
                if (this.forClause.getPositionVariable() == null) {
                    return true;
                }
                xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), new Int64Value(this.currentIteration.position()));
                return true;
            }
            this.currentIteration = null;
        }
    }

    public GroundedValue variableValue(Item item) {
        return item;
    }
}
