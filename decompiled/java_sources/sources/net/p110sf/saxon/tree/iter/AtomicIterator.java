package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface AtomicIterator extends SequenceIterator {
    @Override // net.p110sf.saxon.om.SequenceIterator
    AtomicValue next();
}
