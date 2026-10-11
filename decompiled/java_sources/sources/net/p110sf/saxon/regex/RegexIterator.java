package net.p110sf.saxon.regex;

import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public interface RegexIterator extends SequenceIterator {
    int getNumberOfGroups();

    UnicodeString getRegexGroup(int i);

    boolean isMatching();

    @Override // net.p110sf.saxon.om.SequenceIterator
    StringValue next();

    void processMatchingSubstring(RegexMatchHandler regexMatchHandler) throws XPathException;
}
