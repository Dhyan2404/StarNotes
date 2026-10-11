package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class HTML5CaseBlindCollator implements StringCollator, SubstringMatcher {

    /* renamed from: a */
    public static final HTML5CaseBlindCollator f100067a = new HTML5CaseBlindCollator();

    public static HTML5CaseBlindCollator getInstance() {
        return f100067a;
    }

    /* renamed from: a */
    public final int m62904a(UnicodeString unicodeString, UnicodeString unicodeString2) {
        long length = unicodeString.length();
        long length2 = unicodeString2.length();
        long j = 0;
        long j2 = 0;
        while (j != length) {
            if (j2 == length2) {
                return 1;
            }
            long j3 = j + 1;
            int codePointAt = unicodeString.codePointAt(j);
            long j4 = j2 + 1;
            int codePointAt2 = unicodeString2.codePointAt(j2);
            if (codePointAt >= 97 && codePointAt <= 122) {
                codePointAt -= 32;
            }
            if (codePointAt2 >= 97 && codePointAt2 <= 122) {
                codePointAt2 -= 32;
            }
            int i = codePointAt - codePointAt2;
            if (i != 0) {
                return i;
            }
            j2 = j4;
            j = j3;
        }
        return j2 == length2 ? 0 : -1;
    }

    /* renamed from: b */
    public final UnicodeString m62905b(UnicodeString unicodeString) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (97 > next || next > 122) {
                unicodeBuilder.append(next);
            } else {
                unicodeBuilder.append((char) ((next + 65) - 97));
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return m62904a(unicodeString, unicodeString2);
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return m62904a(unicodeString, unicodeString2) == 0;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean contains(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return m62905b(unicodeString).indexOf(m62905b(unicodeString2), 0L) >= 0;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return m62905b(unicodeString).hasSubstring(m62905b(unicodeString2), unicodeString.length() - unicodeString2.length());
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return m62905b(unicodeString);
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return NamespaceConstant.HTML5_CASE_BLIND_COLLATION_URI;
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean startsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return m62905b(unicodeString).hasSubstring(m62905b(unicodeString2), 0L);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringAfter(UnicodeString unicodeString, UnicodeString unicodeString2) {
        long indexOf = m62905b(unicodeString).indexOf(m62905b(unicodeString2), 0L);
        return indexOf < 0 ? EmptyUnicodeString.getInstance() : unicodeString.substring(indexOf + unicodeString2.length(), unicodeString.length());
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringBefore(UnicodeString unicodeString, UnicodeString unicodeString2) {
        long indexOf = m62905b(unicodeString).indexOf(m62905b(unicodeString2), 0L);
        return indexOf < 0 ? EmptyUnicodeString.getInstance() : unicodeString.prefix(indexOf);
    }
}
