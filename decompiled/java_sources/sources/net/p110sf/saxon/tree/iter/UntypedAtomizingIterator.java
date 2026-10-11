package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class UntypedAtomizingIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f102471e;

    public UntypedAtomizingIterator(SequenceIterator sequenceIterator) {
        this.f102471e = sequenceIterator;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102471e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102471e.discharge();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return SequenceTool.getLength(this.f102471e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return ((LookaheadIterator) this.f102471e).hasNext();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return SequenceTool.supportsGetLength(this.f102471e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        SequenceIterator sequenceIterator = this.f102471e;
        return (sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public AtomicValue next() {
        try {
            Item next = this.f102471e.next();
            if (next == null) {
                return null;
            }
            return (AtomicValue) next.atomize();
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }
}
