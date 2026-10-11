package net.p110sf.saxon.om;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface FocusIterator extends SequenceIterator {
    Item current();

    int getLength() throws XPathException;

    int position();
}
