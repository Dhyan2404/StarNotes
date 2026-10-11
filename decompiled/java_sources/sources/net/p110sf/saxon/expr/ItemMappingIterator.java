package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.ItemFilter;
import net.p110sf.saxon.expr.ItemMapper;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;

/* loaded from: classes11.dex */
public class ItemMappingIterator implements SequenceIterator, LookaheadIterator, LastPositionFinder {

    /* renamed from: e */
    public final SequenceIterator f99280e;

    /* renamed from: f */
    public final ItemMappingFunction f99281f;

    /* renamed from: g */
    public boolean f99282g;

    public ItemMappingIterator(SequenceIterator sequenceIterator, ItemMappingFunction itemMappingFunction) {
        this.f99282g = false;
        this.f99280e = sequenceIterator;
        this.f99281f = itemMappingFunction;
    }

    public static ItemMappingIterator filter(SequenceIterator sequenceIterator, ItemFilter.Lambda lambda) {
        return new ItemMappingIterator(sequenceIterator, ItemFilter.m62593of(lambda));
    }

    public static ItemMappingIterator map(SequenceIterator sequenceIterator, ItemMapper.Lambda lambda) {
        return new ItemMappingIterator(sequenceIterator, ItemMapper.m62594of(lambda));
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99280e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99280e.discharge();
    }

    public SequenceIterator getBaseIterator() {
        return this.f99280e;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        return SequenceTool.getLength(this.f99280e);
    }

    public ItemMappingFunction getMappingFunction() {
        return this.f99281f;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return ((LookaheadIterator) this.f99280e).hasNext();
    }

    public boolean isOneToOne() {
        return this.f99282g;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item mapItem;
        do {
            try {
                Item next = this.f99280e.next();
                if (next == null) {
                    return null;
                }
                mapItem = this.f99281f.mapItem(next);
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        } while (mapItem == null);
        return mapItem;
    }

    public void setOneToOne(boolean z) {
        this.f99282g = z;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return this.f99282g && SequenceTool.supportsGetLength(this.f99280e);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        if (this.f99282g) {
            SequenceIterator sequenceIterator = this.f99280e;
            if ((sequenceIterator instanceof LookaheadIterator) && ((LookaheadIterator) sequenceIterator).supportsHasNext()) {
                return true;
            }
        }
        return false;
    }

    public ItemMappingIterator(SequenceIterator sequenceIterator, ItemMappingFunction itemMappingFunction, boolean z) {
        this.f99280e = sequenceIterator;
        this.f99281f = itemMappingFunction;
        this.f99282g = z;
    }
}
