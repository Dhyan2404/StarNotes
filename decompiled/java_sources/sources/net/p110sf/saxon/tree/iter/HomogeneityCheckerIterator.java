package net.p110sf.saxon.tree.iter;

import java.util.ArrayList;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ListIterator;

/* loaded from: classes11.dex */
public class HomogeneityCheckerIterator implements SequenceIterator {

    /* renamed from: e */
    public SequenceIterator f102443e;

    /* renamed from: f */
    public Location f102444f;

    /* renamed from: g */
    public int f102445g = 0;

    public HomogeneityCheckerIterator(SequenceIterator sequenceIterator, Location location) {
        this.f102443e = sequenceIterator;
        this.f102444f = location;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102443e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102443e.discharge();
    }

    /* renamed from: f */
    public final UncheckedXPathException m64507f() {
        XPathException xPathException = new XPathException("Cannot mix nodes and atomic values in the result of a path expression");
        xPathException.setErrorCode("XPTY0018");
        xPathException.setLocator(this.f102444f);
        return new UncheckedXPathException(xPathException);
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item next = this.f102443e.next();
        if (next == null) {
            return null;
        }
        int i = this.f102445g;
        if (i == 0) {
            if (next instanceof NodeInfo) {
                ArrayList arrayList = new ArrayList(50);
                arrayList.add(next);
                while (true) {
                    Item next2 = this.f102443e.next();
                    if (next2 == null) {
                        DocumentOrderIterator documentOrderIterator = new DocumentOrderIterator(new ListIterator.C18538Of(arrayList), GlobalOrderComparer.getInstance());
                        this.f102443e = documentOrderIterator;
                        this.f102445g = 1;
                        return documentOrderIterator.next();
                    }
                    if (!(next2 instanceof NodeInfo)) {
                        throw m64507f();
                    }
                    arrayList.add(next2);
                }
            } else {
                this.f102445g = -1;
            }
        } else if (i == -1 && (next instanceof NodeInfo)) {
            throw m64507f();
        }
        return next;
    }
}
