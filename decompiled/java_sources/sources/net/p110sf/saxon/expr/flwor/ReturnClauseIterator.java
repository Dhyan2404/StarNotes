package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ReturnClauseIterator implements SequenceIterator {

    /* renamed from: e */
    public final TuplePull f99549e;

    /* renamed from: f */
    public final Expression f99550f;

    /* renamed from: g */
    public final XPathContext f99551g;

    /* renamed from: h */
    public SequenceIterator f99552h = null;

    public ReturnClauseIterator(TuplePull tuplePull, FLWORExpression fLWORExpression, XPathContext xPathContext) {
        this.f99549e = tuplePull;
        this.f99550f = fLWORExpression.getReturnClause();
        this.f99551g = xPathContext;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        SequenceIterator sequenceIterator = this.f99552h;
        if (sequenceIterator != null) {
            sequenceIterator.close();
        }
        this.f99549e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        SequenceIterator sequenceIterator = this.f99552h;
        if (sequenceIterator != null) {
            sequenceIterator.discharge();
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        Item next;
        while (true) {
            try {
                SequenceIterator sequenceIterator = this.f99552h;
                if (sequenceIterator != null) {
                    next = sequenceIterator.next();
                    if (next != null) {
                        break;
                    }
                    this.f99552h = null;
                }
                if (!this.f99549e.nextTuple(this.f99551g)) {
                    this.f99552h = null;
                    return null;
                }
                SequenceIterator iterate = this.f99550f.iterate(this.f99551g);
                this.f99552h = iterate;
                next = iterate.next();
                if (next != null) {
                    break;
                }
                this.f99552h = null;
            } catch (XPathException e) {
                throw new UncheckedXPathException(e);
            }
        }
        return next;
    }
}
