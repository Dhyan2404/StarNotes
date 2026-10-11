package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class AtomizingIterator implements SequenceIterator {

    /* renamed from: e */
    public final SequenceIterator f102432e;

    /* renamed from: f */
    public AtomicSequence f102433f = null;

    /* renamed from: g */
    public int f102434g = 1;

    /* renamed from: h */
    public int f102435h = 1;

    /* renamed from: i */
    public RoleDiagnostic f102436i;

    public AtomizingIterator(SequenceIterator sequenceIterator) {
        this.f102432e = sequenceIterator;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f102432e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f102432e.discharge();
    }

    public void setRoleDiagnostic(RoleDiagnostic roleDiagnostic) {
        this.f102436i = roleDiagnostic;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public AtomicValue next() {
        while (true) {
            AtomicSequence atomicSequence = this.f102433f;
            if (atomicSequence != null) {
                int i = this.f102434g;
                if (i < this.f102435h) {
                    this.f102434g = i + 1;
                    return atomicSequence.itemAt(i);
                }
                this.f102433f = null;
            }
            Item next = this.f102432e.next();
            if (next != null) {
                try {
                    AtomicSequence atomize = next.atomize();
                    if (atomize instanceof AtomicValue) {
                        return (AtomicValue) atomize;
                    }
                    this.f102433f = atomize;
                    this.f102434g = 0;
                    this.f102435h = atomize.getLength();
                } catch (XPathException e) {
                    if (this.f102436i == null) {
                        throw new UncheckedXPathException(e);
                    }
                    throw new UncheckedXPathException(new XPathException(e.getMessage() + ". Failed while atomizing the " + this.f102436i.getMessage(), e.getErrorCodeLocalPart(), e.getLocator()));
                }
            } else {
                this.f102433f = null;
                return null;
            }
        }
    }
}
