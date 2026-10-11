package net.p110sf.saxon.lib;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface InvalidityHandler {
    Sequence endReporting() throws XPathException;

    void reportInvalidity(Invalidity invalidity) throws XPathException;

    void startReporting(String str) throws XPathException;
}
