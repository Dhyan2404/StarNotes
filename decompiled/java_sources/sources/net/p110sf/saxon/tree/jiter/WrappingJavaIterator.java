package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.LookaheadIteratorImpl;

/* loaded from: classes11.dex */
public class WrappingJavaIterator<T extends Item> implements Iterator<T> {

    /* renamed from: e */
    public final LookaheadIterator f102488e;

    public WrappingJavaIterator(SequenceIterator sequenceIterator) {
        try {
            this.f102488e = LookaheadIteratorImpl.makeLookaheadIterator(sequenceIterator);
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f102488e.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public T next() {
        return (T) this.f102488e.next();
    }
}
