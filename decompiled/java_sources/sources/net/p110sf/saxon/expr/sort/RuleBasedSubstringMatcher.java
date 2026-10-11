package net.p110sf.saxon.expr.sort;

import java.text.CollationElementIterator;
import java.text.RuleBasedCollator;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class RuleBasedSubstringMatcher extends SimpleCollation implements SubstringMatcher {
    public RuleBasedSubstringMatcher(String str, RuleBasedCollator ruleBasedCollator) {
        super(str, ruleBasedCollator);
    }

    public static void main(String[] strArr) throws Exception {
        RuleBasedCollator ruleBasedCollator = new RuleBasedCollator(" ='-'='*'< a < b < c < d < e < f < g < h < i < j < k < l < m < n < o < p < q < r < s < t < u < v < w < x < y < z");
        for (int i = 0; i < strArr.length; i++) {
            System.err.println(strArr[i]);
            StringBuilder sb = new StringBuilder(256);
            CollationElementIterator collationElementIterator = ruleBasedCollator.getCollationElementIterator(strArr[i]);
            while (true) {
                int next = collationElementIterator.next();
                if (next == -1) {
                    break;
                }
                sb.append(next + " ");
            }
            System.err.println(sb.toString());
        }
    }

    /* renamed from: a */
    public final boolean m62929a(CollationElementIterator collationElementIterator, CollationElementIterator collationElementIterator2, int[] iArr, boolean z) {
        int next;
        int next2;
        do {
            next = collationElementIterator2.next();
        } while (next == 0);
        if (next == -1) {
            return true;
        }
        while (true) {
            int i = -1;
            while (i != next) {
                do {
                    i = collationElementIterator.next();
                } while (i == 0);
                if (i == -1) {
                    return false;
                }
            }
            int offset = collationElementIterator.getOffset();
            if (m62930b(collationElementIterator, collationElementIterator2)) {
                if (!z) {
                    if (iArr != null) {
                        iArr[0] = offset - 1;
                        iArr[1] = collationElementIterator.getOffset();
                    }
                    return true;
                }
                do {
                    next2 = collationElementIterator.next();
                } while (next2 == 0);
                if (next2 == -1) {
                    return true;
                }
            }
            collationElementIterator.setOffset(offset);
            if (collationElementIterator.getOffset() != offset) {
                collationElementIterator.next();
            }
            collationElementIterator2.reset();
            do {
                next = collationElementIterator2.next();
            } while (next == 0);
        }
    }

    /* renamed from: b */
    public final boolean m62930b(CollationElementIterator collationElementIterator, CollationElementIterator collationElementIterator2) {
        int next;
        while (true) {
            int next2 = collationElementIterator2.next();
            if (next2 != 0) {
                if (next2 == -1) {
                    return true;
                }
                do {
                    next = collationElementIterator.next();
                } while (next == 0);
                if (next != next2) {
                    return false;
                }
            }
        }
    }

    /* renamed from: c */
    public final RuleBasedCollator m62931c() {
        return (RuleBasedCollator) getComparator();
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean contains(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator m62931c = m62931c();
        return m62929a(m62931c.getCollationElementIterator(unicodeString.toString()), m62931c.getCollationElementIterator(unicodeString2.toString()), null, false);
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean endsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator m62931c = m62931c();
        return m62929a(m62931c.getCollationElementIterator(unicodeString.toString()), m62931c.getCollationElementIterator(unicodeString2.toString()), null, true);
    }

    @Override // net.p110sf.saxon.expr.sort.SimpleCollation, net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return new CollationMatchKey(m62931c().getCollationKey(unicodeString.toString()));
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public boolean startsWith(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator m62931c = m62931c();
        return m62930b(m62931c.getCollationElementIterator(unicodeString.toString()), m62931c.getCollationElementIterator(unicodeString2.toString()));
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringAfter(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator m62931c = m62931c();
        String obj = unicodeString.toString();
        String obj2 = unicodeString2.toString();
        return m62929a(m62931c.getCollationElementIterator(obj), m62931c.getCollationElementIterator(obj2), new int[2], false) ? unicodeString.substring(r0[1]) : EmptyUnicodeString.getInstance();
    }

    @Override // net.p110sf.saxon.lib.SubstringMatcher
    public UnicodeString substringBefore(UnicodeString unicodeString, UnicodeString unicodeString2) {
        RuleBasedCollator m62931c = m62931c();
        String obj = unicodeString.toString();
        String obj2 = unicodeString2.toString();
        return m62929a(m62931c.getCollationElementIterator(obj), m62931c.getCollationElementIterator(obj2), new int[2], false) ? unicodeString.prefix(r0[0]) : EmptyUnicodeString.getInstance();
    }
}
