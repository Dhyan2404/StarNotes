package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.TwoItemIterator;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public final class CardinalityCheckingIterator implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f99199e;

    /* renamed from: f */
    public final Location f99200f;

    /* renamed from: g */
    public Item f99201g;

    /* renamed from: h */
    public Item f99202h;

    /* renamed from: i */
    public int f99203i = 0;

    public CardinalityCheckingIterator(SequenceIterator sequenceIterator, int i, RoleDiagnostic roleDiagnostic, Location location) throws XPathException {
        this.f99201g = null;
        this.f99202h = null;
        this.f99199e = sequenceIterator;
        this.f99200f = location;
        try {
            Item next = sequenceIterator.next();
            this.f99201g = next;
            if (next == null) {
                if (Cardinality.allowsZero(i)) {
                    return;
                }
                m62556f("An empty sequence is not allowed as the " + roleDiagnostic.getMessage(), roleDiagnostic.getErrorCode());
                return;
            }
            if (i == 8192) {
                m62556f("The only value allowed for the " + roleDiagnostic.getMessage() + " is an empty sequence", roleDiagnostic.getErrorCode());
            }
            Item next2 = sequenceIterator.next();
            this.f99202h = next2;
            if (next2 == null || Cardinality.allowsMany(i)) {
                return;
            }
            m62556f("A sequence of more than one item is not allowed as the " + roleDiagnostic.getMessage() + CardinalityChecker.depictSequenceStart(new TwoItemIterator(this.f99201g, this.f99202h), 2), roleDiagnostic.getErrorCode());
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99199e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99199e.discharge();
    }

    /* renamed from: f */
    public final void m62556f(String str, String str2) throws XPathException {
        XPathException xPathException = new XPathException(str, str2, this.f99200f);
        xPathException.setIsTypeError(!str2.startsWith("FORG"));
        throw xPathException;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        int i = this.f99203i;
        if (i >= 2) {
            Item next = this.f99199e.next();
            if (next == null) {
                this.f99203i = -1;
            } else {
                this.f99203i++;
            }
            return next;
        }
        if (i == 0) {
            Item item = this.f99201g;
            this.f99203i = item != null ? 1 : -1;
            return item;
        }
        if (i != 1) {
            return null;
        }
        Item item2 = this.f99202h;
        this.f99203i = item2 != null ? 2 : -1;
        return item2;
    }
}
