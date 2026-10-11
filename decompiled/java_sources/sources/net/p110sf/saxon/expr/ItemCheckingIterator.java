package net.p110sf.saxon.expr;

import java.util.function.Consumer;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class ItemCheckingIterator implements SequenceIterator, LookaheadIterator, LastPositionFinder {

    /* renamed from: e */
    public final SequenceIterator f99276e;

    /* renamed from: f */
    public final Consumer<Item> f99277f;

    public ItemCheckingIterator(SequenceIterator sequenceIterator, Consumer<Item> consumer) {
        this.f99276e = sequenceIterator;
        this.f99277f = consumer;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99276e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99276e.discharge();
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return SequenceTool.getLength(this.f99276e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return ((LookaheadIterator) this.f99276e).hasNext();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item next = this.f99276e.next();
        if (next == null) {
            return null;
        }
        this.f99277f.accept(next);
        return next;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return SequenceTool.supportsGetLength(this.f99276e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        SequenceIterator sequenceIterator = this.f99276e;
        return (sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext();
    }
}
