package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;

/* loaded from: classes11.dex */
public class PrependSequenceIterator implements SequenceIterator {

    /* renamed from: e */
    public Item f102454e;

    /* renamed from: f */
    public SequenceIterator f102455f;

    public PrependSequenceIterator(Item item, SequenceIterator sequenceIterator) {
        this.f102454e = item;
        this.f102455f = sequenceIterator;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102455f.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102455f.discharge();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item item = this.f102454e;
        if (item == null) {
            return this.f102455f.next();
        }
        this.f102454e = null;
        return item;
    }
}
