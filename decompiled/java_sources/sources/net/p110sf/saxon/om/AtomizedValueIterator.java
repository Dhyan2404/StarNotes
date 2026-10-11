package net.p110sf.saxon.om;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface AtomizedValueIterator extends SequenceIterator {
    AtomicSequence nextAtomizedValue() throws XPathException;
}
