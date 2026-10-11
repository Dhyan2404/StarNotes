package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class SubsequenceIterator implements SequenceIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f99376e;

    /* renamed from: f */
    public int f99377f = 0;

    /* renamed from: g */
    public final int f99378g;

    /* renamed from: h */
    public final int f99379h;

    /* renamed from: i */
    public Item f99380i;

    public SubsequenceIterator(SequenceIterator sequenceIterator, int i, int i2) throws XPathException {
        this.f99380i = null;
        this.f99376e = sequenceIterator;
        this.f99378g = i;
        i = i < 1 ? 1 : i;
        this.f99379h = i2;
        if (i2 < i) {
            this.f99380i = null;
            return;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            if (i3 > i) {
                return;
            }
            Item next = sequenceIterator.next();
            this.f99380i = next;
            this.f99377f++;
            if (next == null) {
                return;
            } else {
                i3 = i4;
            }
        }
    }

    public static SequenceIterator make(SequenceIterator sequenceIterator, int i, int i2) throws XPathException {
        return sequenceIterator instanceof ArrayIterator ? ((ArrayIterator) sequenceIterator).makeSliceIterator(i, i2) : i2 == Integer.MAX_VALUE ? TailIterator.make(sequenceIterator, i) : ((sequenceIterator instanceof GroundedIterator) && ((GroundedIterator) sequenceIterator).isActuallyGrounded() && i > 4) ? SequenceTool.toGroundedValue(sequenceIterator).subsequence(i - 1, (i2 - i) + 1).iterate() : new SubsequenceIterator(sequenceIterator, i, i2);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99376e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99376e.discharge();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return Math.max((Math.min(SequenceTool.getLength(this.f99376e), this.f99379h) - this.f99378g) + 1, 0);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f99380i != null;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item item = this.f99380i;
        if (item == null) {
            return null;
        }
        if (this.f99377f < this.f99379h) {
            this.f99380i = this.f99376e.next();
            this.f99377f++;
        } else {
            this.f99380i = null;
            this.f99376e.close();
        }
        return item;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return SequenceTool.supportsGetLength(this.f99376e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
