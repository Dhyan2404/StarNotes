package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class CodepointCollator implements StringCollator, SubstringMatcher {

    /* renamed from: a */
    public static final CodepointCollator f100015a = new CodepointCollator();

    public static CodepointCollator getInstance() {
        return f100015a;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return unicodeString.compareTo(unicodeString2);
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return unicodeString.equals(unicodeString2);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean contains(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return unicodeString.indexOf(unicodeString2, 0L) >= 0;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        if (unicodeString2.length() > unicodeString.length()) {
            return false;
        }
        return unicodeString.hasSubstring(unicodeString2, unicodeString.length() - unicodeString2.length());
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return NamespaceConstant.CODEPOINT_COLLATION_URI;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean startsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return unicodeString.hasSubstring(unicodeString2, 0L);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringAfter(UnicodeString unicodeString, UnicodeString unicodeString2) {
        long indexOf = unicodeString.indexOf(unicodeString2, 0L);
        return indexOf < 0 ? EmptyUnicodeString.getInstance() : unicodeString.substring(indexOf + unicodeString2.length());
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringBefore(UnicodeString unicodeString, UnicodeString unicodeString2) {
        long indexOf = unicodeString.indexOf(unicodeString2, 0L);
        return indexOf < 0 ? EmptyUnicodeString.getInstance() : unicodeString.prefix(indexOf);
    }
}
