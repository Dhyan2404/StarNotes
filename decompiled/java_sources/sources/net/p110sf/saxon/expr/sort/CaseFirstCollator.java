package net.p110sf.saxon.expr.sort;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.regex.charclass.Categories;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CaseFirstCollator implements StringCollator {

    /* renamed from: a */
    public final StringCollator f100010a;

    /* renamed from: b */
    public final boolean f100011b;

    /* renamed from: c */
    public final String f100012c;

    public CaseFirstCollator(StringCollator stringCollator, boolean z, String str) {
        this.f100010a = stringCollator;
        this.f100011b = z;
        this.f100012c = str;
    }

    public static StringCollator makeCaseOrderedCollator(String str, StringCollator stringCollator, String str2) throws XPathException {
        str2.hashCode();
        if (str2.equals(Constants.ATTRVAL_CASEORDER_LOWER)) {
            return new CaseFirstCollator(stringCollator, false, str);
        }
        if (str2.equals(Constants.ATTRVAL_CASEORDER_UPPER)) {
            return new CaseFirstCollator(stringCollator, true, str);
        }
        throw new XPathException("case-order must be lower-first, upper-first, or #default");
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        UnicodeString tidy = unicodeString.tidy();
        UnicodeString tidy2 = unicodeString2.tidy();
        Categories.Category category = Categories.getCategory("L");
        Categories.Category category2 = Categories.getCategory("Lu");
        Categories.Category category3 = Categories.getCategory("Ll");
        int compareStrings = this.f100010a.compareStrings(tidy, tidy2);
        if (compareStrings != 0) {
            return compareStrings;
        }
        long j = 0;
        long j2 = 0;
        while (true) {
            if (j >= tidy.length() || j2 >= tidy2.length() || tidy.codePointAt(j) != tidy2.codePointAt(j2)) {
                while (j < tidy.length() && !category.test(tidy.codePointAt(j))) {
                    j++;
                }
                while (j2 < tidy2.length() && !category.test(tidy2.codePointAt(j2))) {
                    j2++;
                }
                if (j >= tidy.length() || j2 >= tidy2.length()) {
                    return 0;
                }
                boolean z = this.f100011b;
                long j3 = j + 1;
                int codePointAt = tidy.codePointAt(j);
                boolean test = z ? category2.test(codePointAt) : category3.test(codePointAt);
                long j4 = 1 + j2;
                boolean test2 = this.f100011b ? category2.test(tidy2.codePointAt(j2)) : category3.test(tidy2.codePointAt(j2));
                j2 = j4;
                if (test && !test2) {
                    return -1;
                }
                if (test2 && !test) {
                    return 1;
                }
                j = j3;
            } else {
                j++;
                j2++;
            }
        }
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return compareStrings(unicodeString, unicodeString2) == 0;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        return this.f100010a.getCollationKey(unicodeString);
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return this.f100012c;
    }
}
