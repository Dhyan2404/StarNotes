package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class AbstractBlockIterator implements SequenceIterator {
    protected XPathContext context;
    protected SequenceIterator currentIter;
    protected int currentOperand;

    /* renamed from: e */
    public boolean f99591e;
    protected int size;

    public AbstractBlockIterator() {
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        SequenceIterator sequenceIterator = this.currentIter;
        if (sequenceIterator != null) {
            sequenceIterator.close();
        }
        this.currentOperand = -1;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99591e = true;
    }

    public abstract SequenceIterator getNthChildIterator(int i) throws XPathException;

    public void init(int i, XPathContext xPathContext) {
        this.size = i;
        this.context = xPathContext;
        this.currentOperand = 0;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        if (this.currentOperand < 0) {
            return null;
        }
        do {
            if (this.currentIter == null) {
                try {
                    int i = this.currentOperand;
                    this.currentOperand = i + 1;
                    SequenceIterator nthChildIterator = getNthChildIterator(i);
                    this.currentIter = nthChildIterator;
                    if (this.f99591e) {
                        nthChildIterator.discharge();
                    }
                } catch (XPathException e) {
                    throw new UncheckedXPathException(e);
                }
            }
            Item next = this.currentIter.next();
            if (next != null) {
                return next;
            }
            this.currentIter = null;
        } while (this.currentOperand < this.size);
        this.currentOperand = -1;
        return null;
    }

    public AbstractBlockIterator(int i, XPathContext xPathContext) {
        this.size = i;
        this.context = xPathContext;
        this.currentOperand = 0;
    }
}
