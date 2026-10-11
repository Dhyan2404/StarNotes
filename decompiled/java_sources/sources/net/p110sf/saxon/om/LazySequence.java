package net.p110sf.saxon.om;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class LazySequence implements Sequence {

    /* renamed from: e */
    public SequenceIterator f100811e;

    /* renamed from: f */
    public boolean f100812f = false;

    public LazySequence(SequenceIterator sequenceIterator) {
        this.f100811e = sequenceIterator;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public Item head() throws XPathException {
        return iterate().next();
    }

    @Override // net.p110sf.saxon.om.Sequence
    public synchronized SequenceIterator iterate() {
        if (this.f100812f) {
            throw new IllegalStateException("A LazySequence can only be read once");
        }
        this.f100812f = true;
        return this.f100811e;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public Sequence makeRepeatable() throws XPathException {
        return materialize();
    }
}
