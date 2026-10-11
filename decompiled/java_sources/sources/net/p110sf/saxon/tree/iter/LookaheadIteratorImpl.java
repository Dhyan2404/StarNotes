package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class LookaheadIteratorImpl implements LookaheadIterator {

    /* renamed from: e */
    public final SequenceIterator f102447e;

    /* renamed from: f */
    public Item f102448f;

    public LookaheadIteratorImpl(SequenceIterator sequenceIterator) throws XPathException {
        this.f102447e = sequenceIterator;
        this.f102448f = sequenceIterator.next();
    }

    public static LookaheadIterator makeLookaheadIterator(SequenceIterator sequenceIterator) throws XPathException {
        if (sequenceIterator instanceof LookaheadIterator) {
            LookaheadIterator lookaheadIterator = (LookaheadIterator) sequenceIterator;
            if (lookaheadIterator.supportsHasNext()) {
                return lookaheadIterator;
            }
        }
        return new LookaheadIteratorImpl(sequenceIterator);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102447e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102447e.discharge();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f102448f != null;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item item = this.f102448f;
        if (item != null) {
            this.f102448f = this.f102447e.next();
        }
        return item;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
