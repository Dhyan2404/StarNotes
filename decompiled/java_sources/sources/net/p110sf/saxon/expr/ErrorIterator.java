package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ErrorIterator implements SequenceIterator {

    /* renamed from: e */
    public final XPathException f99241e;

    public ErrorIterator(XPathException xPathException) {
        this.f99241e = xPathException;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        throw new UncheckedXPathException(this.f99241e);
    }
}
