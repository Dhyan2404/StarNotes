package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class TailIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f99385e;

    /* renamed from: f */
    public final int f99386f;

    public TailIterator(SequenceIterator sequenceIterator, int i) {
        this.f99385e = sequenceIterator;
        this.f99386f = i;
    }

    public static SequenceIterator make(SequenceIterator sequenceIterator, int i) throws XPathException {
        if (i <= 1) {
            return sequenceIterator;
        }
        if (sequenceIterator instanceof ArrayIterator) {
            return ((ArrayIterator) sequenceIterator).makeSliceIterator(i, Integer.MAX_VALUE);
        }
        if ((sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded()) {
            GroundedValue groundedValue = SequenceTool.toGroundedValue(sequenceIterator);
            return i > groundedValue.getLength() ? EmptyIterator.emptyIterator() : new ValueTailIterator(groundedValue, i - 1);
        }
        for (int i2 = 0; i2 < i - 1; i2++) {
            if (sequenceIterator.next() == null) {
                return EmptyIterator.emptyIterator();
            }
        }
        return new TailIterator(sequenceIterator, i);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99385e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99385e.discharge();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return Math.max((SequenceTool.getLength(this.f99385e) - this.f99386f) + 1, 0);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return ((LookaheadIterator) this.f99385e).hasNext();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        return this.f99385e.next();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return SequenceTool.supportsGetLength(this.f99385e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        SequenceIterator sequenceIterator = this.f99385e;
        return (sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext();
    }
}
