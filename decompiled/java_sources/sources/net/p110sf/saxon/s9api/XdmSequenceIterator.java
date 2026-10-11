package net.p110sf.saxon.s9api;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmSequenceIterator;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.LookaheadIteratorImpl;
import net.p110sf.saxon.tree.iter.SingletonIterator;

/* loaded from: classes11.dex */
public class XdmSequenceIterator<T extends XdmItem> implements Iterator<T> {

    /* renamed from: e */
    public final LookaheadIterator f101413e;

    /* renamed from: f */
    public boolean f101414f = false;

    public XdmSequenceIterator(SequenceIterator sequenceIterator) {
        try {
            this.f101413e = LookaheadIteratorImpl.makeLookaheadIterator(sequenceIterator);
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e.getXPathException());
        } catch (XPathException e2) {
            throw new SaxonApiUncheckedException(e2);
        }
    }

    public static XdmSequenceIterator<XdmAtomicValue> ofAtomicValues(SequenceIterator sequenceIterator) {
        return new XdmSequenceIterator<>(sequenceIterator);
    }

    public static XdmSequenceIterator<XdmNode> ofNode(XdmNode xdmNode) {
        return new XdmSequenceIterator<>(SingletonIterator.makeIterator(xdmNode.getUnderlyingNode()));
    }

    public static XdmSequenceIterator<XdmNode> ofNodes(AxisIterator axisIterator) {
        return new XdmSequenceIterator<>(axisIterator);
    }

    public void close() {
        this.f101414f = true;
        this.f101413e.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f101414f && this.f101413e.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public XdmStream<T> stream() {
        return new XdmStream<>((Stream) StreamSupport.stream(Spliterators.spliteratorUnknownSize(this, 16), false).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.cvo
            @Override // java.lang.Runnable
            public final void run() {
                XdmSequenceIterator.this.close();
            }
        }));
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            Item next = this.f101413e.next();
            if (next != null) {
                return (T) XdmItem.wrapItem(next);
            }
            throw new NoSuchElementException();
        } catch (UncheckedXPathException e) {
            throw new SaxonApiUncheckedException(e.getXPathException());
        }
    }
}
