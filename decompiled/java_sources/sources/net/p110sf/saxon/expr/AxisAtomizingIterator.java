package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AtomizedValueIterator;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public final class AxisAtomizingIterator implements SequenceIterator {

    /* renamed from: e */
    public final AtomizedValueIterator f99177e;

    /* renamed from: f */
    public AtomicSequence f99178f = null;

    /* renamed from: g */
    public int f99179g = 0;

    public AxisAtomizingIterator(AtomizedValueIterator atomizedValueIterator) {
        this.f99177e = atomizedValueIterator;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f99177e.close();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public void discharge() {
        this.f99177e.discharge();
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public AtomicValue next() {
        while (true) {
            AtomicSequence atomicSequence = this.f99178f;
            if (atomicSequence != null) {
                if (this.f99179g < atomicSequence.getLength()) {
                    AtomicSequence atomicSequence2 = this.f99178f;
                    int i = this.f99179g;
                    this.f99179g = i + 1;
                    return atomicSequence2.itemAt(i);
                }
                this.f99178f = null;
            } else {
                try {
                    AtomicSequence nextAtomizedValue = this.f99177e.nextAtomizedValue();
                    if (nextAtomizedValue == null) {
                        this.f99178f = null;
                        return null;
                    }
                    if (nextAtomizedValue instanceof AtomicValue) {
                        this.f99178f = null;
                        return (AtomicValue) nextAtomizedValue;
                    }
                    this.f99178f = nextAtomizedValue;
                    this.f99179g = 0;
                } catch (XPathException e) {
                    throw new UncheckedXPathException(e);
                }
            }
        }
    }
}
