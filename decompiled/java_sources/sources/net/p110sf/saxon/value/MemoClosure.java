package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MemoSequence;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.GroundedIterator;

/* loaded from: classes11.dex */
public class MemoClosure extends Closure implements ContextOriginator {

    /* renamed from: e */
    public Sequence f102902e;

    public MemoClosure() {
    }

    /* renamed from: a */
    public final void m64676a() throws XPathException {
        if (this.f102902e == null) {
            SequenceIterator iterate = this.expression.iterate(this.savedXPathContext);
            this.inputIterator = iterate;
            iterate.discharge();
            SequenceIterator sequenceIterator = this.inputIterator;
            if ((sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded()) {
                this.f102902e = ((GroundedIterator) this.inputIterator).materialize();
            } else {
                this.f102902e = SequenceTool.toMemoSequence(this.inputIterator);
            }
        }
    }

    public synchronized Item itemAt(int i) throws XPathException {
        m64676a();
        Sequence sequence = this.f102902e;
        if (sequence instanceof GroundedValue) {
            return ((GroundedValue) sequence).itemAt(i);
        }
        if (!(sequence instanceof MemoSequence)) {
            throw new IllegalStateException();
        }
        return ((MemoSequence) sequence).itemAt(i);
    }

    @Override // net.p110sf.saxon.value.Closure, net.p110sf.saxon.om.Sequence
    public synchronized SequenceIterator iterate() {
        try {
            m64676a();
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
        return this.f102902e.iterate();
    }

    @Override // net.p110sf.saxon.value.Closure, net.p110sf.saxon.om.Sequence
    public Sequence makeRepeatable() {
        return this;
    }

    @Override // net.p110sf.saxon.value.Closure
    public GroundedValue reduce() throws XPathException {
        try {
            Sequence sequence = this.f102902e;
            return sequence instanceof GroundedValue ? (GroundedValue) sequence : SequenceTool.toGroundedValue(iterate());
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    public MemoClosure(Expression expression, XPathContext xPathContext) throws XPathException {
        setExpression(expression);
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setOrigin(this);
        setSavedXPathContext(newContext);
        saveContext(expression, xPathContext);
    }
}
