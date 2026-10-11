package net.p110sf.saxon.regex;

import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface RegexMatchHandler {
    void characters(UnicodeString unicodeString) throws XPathException;

    void onGroupEnd(int i) throws XPathException;

    void onGroupStart(int i) throws XPathException;
}
