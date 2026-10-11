package net.p110sf.saxon.functions;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface Fold {
    boolean isFinished();

    void processItem(Item item) throws XPathException;

    Sequence result() throws XPathException;
}
