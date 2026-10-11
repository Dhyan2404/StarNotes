package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public interface StringCollator {
    int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2);

    boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2);

    AtomicMatchKey getCollationKey(UnicodeString unicodeString);

    String getCollationURI();
}
