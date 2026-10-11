package net.p110sf.saxon.lib;

import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public interface SubstringMatcher extends StringCollator {
    boolean contains(UnicodeString unicodeString, UnicodeString unicodeString2);

    boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2);

    boolean startsWith(UnicodeString unicodeString, UnicodeString unicodeString2);

    UnicodeString substringAfter(UnicodeString unicodeString, UnicodeString unicodeString2);

    UnicodeString substringBefore(UnicodeString unicodeString, UnicodeString unicodeString2);
}
