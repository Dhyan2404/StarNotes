package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface GroupIterator extends SequenceIterator {
    AtomicSequence getCurrentGroupingKey();

    SequenceIterator iterateCurrentGroup() throws XPathException;
}
