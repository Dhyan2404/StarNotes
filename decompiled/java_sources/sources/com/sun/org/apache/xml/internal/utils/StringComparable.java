package com.sun.org.apache.xml.internal.utils;

import java.text.CollationElementIterator;
import java.text.Collator;
import java.text.RuleBasedCollator;
import java.util.Locale;

/* loaded from: classes10.dex */
public class StringComparable implements Comparable {
    public static final int LOWER_CASE = 2;
    public static final int UNKNOWN_CASE = -1;
    public static final int UPPER_CASE = 1;
    private String m_caseOrder;
    private RuleBasedCollator m_collator;
    private Locale m_locale;
    private int m_mask;
    private String m_text;

    public StringComparable(String str, Locale locale, Collator collator, String str2) {
        this.m_mask = -1;
        this.m_text = str;
        this.m_locale = locale;
        RuleBasedCollator ruleBasedCollator = (RuleBasedCollator) collator;
        this.m_collator = ruleBasedCollator;
        this.m_caseOrder = str2;
        this.m_mask = getMask(ruleBasedCollator.getStrength());
    }

    private final int getCaseDiff(String str, String str2) {
        int strength = this.m_collator.getStrength();
        int decomposition = this.m_collator.getDecomposition();
        this.m_collator.setStrength(2);
        this.m_collator.setDecomposition(1);
        int[] firstCaseDiff = getFirstCaseDiff(str, str2, this.m_locale);
        this.m_collator.setStrength(strength);
        this.m_collator.setDecomposition(decomposition);
        if (firstCaseDiff != null) {
            return this.m_caseOrder.equals(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_CASEORDER_UPPER) ? firstCaseDiff[0] == 1 ? -1 : 1 : firstCaseDiff[0] == 2 ? -1 : 1;
        }
        return 0;
    }

    public static final Comparable getComparator(String str, Locale locale, Collator collator, String str2) {
        return (str2 == null || str2.length() == 0) ? ((RuleBasedCollator) collator).getCollationKey(str) : new StringComparable(str, locale, collator, str2);
    }

    private final int getElement(int i) {
        return this.m_mask & i;
    }

    private final int[] getFirstCaseDiff(String str, String str2, Locale locale) {
        int i;
        int[] iArr;
        int i2;
        int i3;
        String str3 = str;
        String str4 = str2;
        CollationElementIterator collationElementIterator = this.m_collator.getCollationElementIterator(str3);
        CollationElementIterator collationElementIterator2 = this.m_collator.getCollationElementIterator(str4);
        int element = getElement(-1);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = 1;
        int i9 = 1;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i8 != 0) {
                i4 = collationElementIterator2.getOffset();
                i10 = getElement(collationElementIterator2.next());
                i5 = collationElementIterator2.getOffset();
            }
            if (i9 != 0) {
                i6 = collationElementIterator.getOffset();
                i11 = getElement(collationElementIterator.next());
                i7 = collationElementIterator.getOffset();
            }
            int i12 = i6;
            int i13 = i7;
            if (i10 == element || i11 == element) {
                return null;
            }
            if (i11 == 0) {
                i6 = i12;
                i7 = i13;
                i8 = 0;
                i9 = 1;
            } else if (i10 == 0) {
                i6 = i12;
                i7 = i13;
                i8 = 1;
                i9 = 0;
            } else {
                if (i11 != i10 && i4 < i5 && i12 < i13) {
                    String substring = str3.substring(i12, i13);
                    String substring2 = str4.substring(i4, i5);
                    String upperCase = substring.toUpperCase(locale);
                    String upperCase2 = substring2.toUpperCase(locale);
                    if (this.m_collator.compare(upperCase, upperCase2) == 0) {
                        iArr = new int[]{-1, -1};
                        if (this.m_collator.compare(substring, upperCase) == 0) {
                            iArr[0] = 1;
                        } else if (this.m_collator.compare(substring, substring.toLowerCase(locale)) == 0) {
                            iArr[0] = 2;
                        }
                        if (this.m_collator.compare(substring2, upperCase2) == 0) {
                            i = 1;
                            iArr[1] = 1;
                        } else {
                            i = 1;
                            if (this.m_collator.compare(substring2, substring2.toLowerCase(locale)) == 0) {
                                i2 = 2;
                                iArr[1] = 2;
                                i3 = iArr[0];
                                if ((i3 == i && iArr[i] == i2) || (i3 == i2 && iArr[i] == i)) {
                                    break;
                                }
                                str4 = str2;
                                i6 = i12;
                                i7 = i13;
                                i8 = i;
                                i9 = i8;
                                str3 = str;
                            }
                        }
                        i2 = 2;
                        i3 = iArr[0];
                        if (i3 == i) {
                            break;
                        }
                        break;
                    }
                }
                i = 1;
                str4 = str2;
                i6 = i12;
                i7 = i13;
                i8 = i;
                i9 = i8;
                str3 = str;
            }
        }
        return iArr;
    }

    private static final int getMask(int i) {
        if (i != 0) {
            return i != 1 ? -1 : -256;
        }
        return -65536;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        int compare;
        String stringComparable = ((StringComparable) obj).toString();
        if (this.m_text.equals(stringComparable)) {
            return 0;
        }
        int strength = this.m_collator.getStrength();
        if (strength == 0 || strength == 1) {
            compare = this.m_collator.compare(this.m_text, stringComparable);
        } else {
            this.m_collator.setStrength(1);
            compare = this.m_collator.compare(this.m_text, stringComparable);
            this.m_collator.setStrength(strength);
        }
        if (compare != 0) {
            return compare;
        }
        int caseDiff = getCaseDiff(this.m_text, stringComparable);
        return caseDiff != 0 ? caseDiff : this.m_collator.compare(this.m_text, stringComparable);
    }

    public final String toString() {
        return this.m_text;
    }
}
