package net.p110sf.saxon.om;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface Sequence {
    Item head() throws XPathException;

    SequenceIterator iterate();

    default Sequence makeRepeatable() throws XPathException {
        return this;
    }

    default GroundedValue materialize() {
        return SequenceTool.toGroundedValue(iterate());
    }
}
