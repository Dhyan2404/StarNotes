package net.p110sf.saxon.tree.iter;

import java.io.Closeable;
import net.p110sf.saxon.expr.AdjacentTextNodeMerger;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;

/* loaded from: classes11.dex */
public class AdjacentTextNodeMergingIterator implements LookaheadIterator, Closeable {

    /* renamed from: e */
    public final SequenceIterator f102430e;

    /* renamed from: f */
    public Item f102431f;

    public AdjacentTextNodeMergingIterator(SequenceIterator sequenceIterator) throws XPathException {
        try {
            this.f102430e = sequenceIterator;
            this.f102431f = sequenceIterator.next();
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102430e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102430e.discharge();
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f102431f != null;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item item = this.f102431f;
        if (item == null) {
            return null;
        }
        this.f102431f = this.f102430e.next();
        if (!AdjacentTextNodeMerger.isTextNode(item)) {
            return item;
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        unicodeBuilder.accept(item.getUnicodeStringValue());
        while (AdjacentTextNodeMerger.isTextNode(this.f102431f)) {
            unicodeBuilder.accept(this.f102431f.getUnicodeStringValue());
            this.f102431f = this.f102430e.next();
        }
        if (unicodeBuilder.isEmpty()) {
            return next();
        }
        Orphan orphan = new Orphan(((NodeInfo) item).getConfiguration());
        orphan.setNodeKind((short) 3);
        orphan.setStringValue(unicodeBuilder.toUnicodeString());
        return orphan;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }
}
