package net.p110sf.saxon.trans;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;

/* loaded from: classes11.dex */
public class DecimalSymbols {
    public static final int DECIMAL_SEPARATOR = 0;
    public static final int DIGIT = 2;
    public static final int EXPONENT_SEPARATOR = 7;
    public static final int GROUPING_SEPARATOR = 1;
    public static final int INFINITY = 9;
    public static final int MINUS_SIGN = 3;
    public static final int NAN = 10;
    public static final int PATTERN_SEPARATOR = 8;
    public static final int PERCENT = 4;
    public static final int PER_MILLE = 5;
    public static final int ZERO_DIGIT = 6;

    /* renamed from: g */
    public static final int f102269g = 0;

    /* renamed from: h */
    public static final int f102270h = 1;

    /* renamed from: i */
    public static final int f102271i = 2;

    /* renamed from: j */
    public static final int f102272j = 3;

    /* renamed from: a */
    public String[] f102276a = f102273k;

    /* renamed from: b */
    public String f102277b;

    /* renamed from: c */
    public String f102278c;

    /* renamed from: d */
    public final int[] f102279d;

    /* renamed from: e */
    public final int[] f102280e;

    /* renamed from: f */
    public final boolean[] f102281f;

    /* renamed from: k */
    public static final String[] f102273k = {"XTSE0020", "XTSE1295", "XTSE1300", "XTSE1290"};

    /* renamed from: l */
    public static final String[] f102274l = {"XQST0097", "XQST0097", "XQST0098", "XQST0114"};
    public static final String[] propertyNames = {Constants.ATTRNAME_DECIMALSEPARATOR, Constants.ATTRNAME_GROUPINGSEPARATOR, Constants.ATTRNAME_DIGIT, Constants.ATTRNAME_MINUSSIGN, Constants.ATTRNAME_PERCENT, Constants.ATTRNAME_PERMILLE, Constants.ATTRNAME_ZERODIGIT, "exponent-separator", Constants.ATTRNAME_PATTERNSEPARATOR, Constants.ATTRNAME_INFINITY, "NaN"};

    /* renamed from: m */
    public static int[] f102275m = {48, 1632, 1776, 2406, 2534, 2662, 2790, 2918, 3046, 3174, 3302, 3430, 3664, 3792, 3872, 4160, 6112, 6160, 6470, 6608, 65296, 66720, 120782, 120792, 120802, 120812, 120822};

    public DecimalSymbols(HostLanguage hostLanguage, int i) {
        String[] strArr = propertyNames;
        int[] iArr = new int[strArr.length - 2];
        this.f102279d = iArr;
        int[] iArr2 = new int[strArr.length];
        this.f102280e = iArr2;
        this.f102281f = new boolean[strArr.length];
        iArr[0] = 46;
        iArr[1] = 44;
        iArr[2] = 35;
        iArr[3] = 45;
        iArr[4] = 37;
        iArr[5] = 8240;
        iArr[6] = 48;
        iArr[7] = 101;
        iArr[8] = 59;
        this.f102277b = "Infinity";
        this.f102278c = "NaN";
        Arrays.fill(iArr2, Integer.MIN_VALUE);
        setHostLanguage(hostLanguage, i);
    }

    public static boolean isValidZeroDigit(int i) {
        return Arrays.binarySearch(f102275m, i) >= 0;
    }

    /* renamed from: a */
    public final void m64103a(String str, String str2, StructuredQName structuredQName) throws XPathException {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("Inconsistent properties in ");
        if (structuredQName == null) {
            str3 = "unnamed decimal format. ";
        } else {
            str3 = "decimal format " + structuredQName.getDisplayName() + ". ";
        }
        sb.append(str3);
        sb.append("The same character is used as the ");
        sb.append(str);
        sb.append(" and as the ");
        sb.append(str2);
        XPathException xPathException = new XPathException(sb.toString());
        xPathException.setErrorCode(this.f102276a[2]);
        throw xPathException;
    }

    /* renamed from: b */
    public final int m64104b(String str, String str2) throws XPathException {
        UnicodeString tidy = StringView.m63901of(str2).tidy();
        if (tidy.length() == 1) {
            return tidy.codePointAt(0L);
        }
        XPathException xPathException = new XPathException("Attribute " + str + " should be a single character", this.f102276a[0]);
        xPathException.setIsStaticError(true);
        throw xPathException;
    }

    public void checkConsistency(StructuredQName structuredQName) throws XPathException {
        int i = 0;
        while (true) {
            if (i >= 10) {
                IntHashMap intHashMap = new IntHashMap(20);
                intHashMap.put(getDecimalSeparator(), Constants.ATTRNAME_DECIMALSEPARATOR);
                if (intHashMap.get(getGroupingSeparator()) != null) {
                    m64103a(Constants.ATTRNAME_GROUPINGSEPARATOR, (String) intHashMap.get(getGroupingSeparator()), structuredQName);
                }
                intHashMap.put(getGroupingSeparator(), Constants.ATTRNAME_GROUPINGSEPARATOR);
                if (intHashMap.get(getPercent()) != null) {
                    m64103a(Constants.ATTRNAME_PERCENT, (String) intHashMap.get(getPercent()), structuredQName);
                }
                intHashMap.put(getPercent(), Constants.ATTRNAME_PERCENT);
                if (intHashMap.get(getPerMille()) != null) {
                    m64103a(Constants.ATTRNAME_PERMILLE, (String) intHashMap.get(getPerMille()), structuredQName);
                }
                intHashMap.put(getPerMille(), Constants.ATTRNAME_PERMILLE);
                if (intHashMap.get(getDigit()) != null) {
                    m64103a(Constants.ATTRNAME_DIGIT, (String) intHashMap.get(getDigit()), structuredQName);
                }
                intHashMap.put(getDigit(), Constants.ATTRNAME_DIGIT);
                if (intHashMap.get(getPatternSeparator()) != null) {
                    m64103a(Constants.ATTRNAME_PATTERNSEPARATOR, (String) intHashMap.get(getPatternSeparator()), structuredQName);
                }
                intHashMap.put(getPatternSeparator(), Constants.ATTRNAME_PATTERNSEPARATOR);
                if (intHashMap.get(getExponentSeparator()) != null) {
                    m64103a("exponent-separator", (String) intHashMap.get(getExponentSeparator()), structuredQName);
                }
                intHashMap.put(getExponentSeparator(), "exponent-separator");
                int zeroDigit = getZeroDigit();
                for (int i2 = zeroDigit; i2 < zeroDigit + 10; i2++) {
                    if (intHashMap.get(i2) != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Inconsistent properties in ");
                        sb.append(structuredQName != null ? "decimal format " + structuredQName.getDisplayName() + ". " : "unnamed decimal format. ");
                        sb.append("The same character is used as digit ");
                        sb.append(i2 - zeroDigit);
                        sb.append(" in the chosen digit family, and as the ");
                        sb.append((String) intHashMap.get(i2));
                        XPathException xPathException = new XPathException(sb.toString());
                        xPathException.setErrorCode(this.f102276a[2]);
                        throw xPathException;
                    }
                }
                return;
            }
            if (this.f102281f[i]) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Inconsistency in ");
                sb2.append(structuredQName != null ? "decimal format " + structuredQName.getDisplayName() + ". " : "unnamed decimal format. ");
                sb2.append("There are two inconsistent values for decimal-format property ");
                sb2.append(propertyNames[i]);
                sb2.append(" at the same import precedence");
                XPathException xPathException2 = new XPathException(sb2.toString());
                xPathException2.setErrorCode(this.f102276a[3]);
                xPathException2.setIsStaticError(true);
                throw xPathException2;
            }
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DecimalSymbols)) {
            return false;
        }
        DecimalSymbols decimalSymbols = (DecimalSymbols) obj;
        return getDecimalSeparator() == decimalSymbols.getDecimalSeparator() && getGroupingSeparator() == decimalSymbols.getGroupingSeparator() && getDigit() == decimalSymbols.getDigit() && getMinusSign() == decimalSymbols.getMinusSign() && getPercent() == decimalSymbols.getPercent() && getPerMille() == decimalSymbols.getPerMille() && getZeroDigit() == decimalSymbols.getZeroDigit() && getPatternSeparator() == decimalSymbols.getPatternSeparator() && getInfinity().equals(decimalSymbols.getInfinity()) && getNaN().equals(decimalSymbols.getNaN());
    }

    public void export(StructuredQName structuredQName, ExpressionPresenter expressionPresenter) {
        DecimalSymbols decimalSymbols = new DecimalSymbols(HostLanguage.XSLT, 31);
        expressionPresenter.startElement("decimalFormat");
        if (structuredQName != null) {
            expressionPresenter.emitAttribute("name", structuredQName);
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f102279d;
            if (i >= iArr.length) {
                break;
            }
            int i2 = iArr[i];
            if (i2 != decimalSymbols.f102279d[i]) {
                expressionPresenter.emitAttribute(propertyNames[i], i2 + "");
            }
            i++;
        }
        if (!"Infinity".equals(getInfinity())) {
            expressionPresenter.emitAttribute(Constants.ATTRNAME_INFINITY, getInfinity());
        }
        if (!"NaN".equals(getNaN())) {
            expressionPresenter.emitAttribute("NaN", getNaN());
        }
        expressionPresenter.endElement();
    }

    public int getDecimalSeparator() {
        return this.f102279d[0];
    }

    public int getDigit() {
        return this.f102279d[2];
    }

    public int getExponentSeparator() {
        return this.f102279d[7];
    }

    public int getGroupingSeparator() {
        return this.f102279d[1];
    }

    public String getInfinity() {
        return this.f102277b;
    }

    public int getMinusSign() {
        return this.f102279d[3];
    }

    public String getNaN() {
        return this.f102278c;
    }

    public int getPatternSeparator() {
        return this.f102279d[8];
    }

    public int getPerMille() {
        return this.f102279d[5];
    }

    public int getPercent() {
        return this.f102279d[4];
    }

    public int getZeroDigit() {
        return this.f102279d[6];
    }

    public int hashCode() {
        return getDecimalSeparator() + (getGroupingSeparator() * 37) + (getDigit() * 41);
    }

    public void setDecimalSeparator(String str) throws XPathException {
        setProperty(0, str, 0);
    }

    public void setDigit(String str) throws XPathException {
        setProperty(2, str, 0);
    }

    public void setExponentSeparator(String str) throws XPathException {
        setProperty(7, str, 0);
    }

    public void setGroupingSeparator(String str) throws XPathException {
        setProperty(1, str, 0);
    }

    public void setHostLanguage(HostLanguage hostLanguage, int i) {
        if (hostLanguage == HostLanguage.XQUERY) {
            this.f102276a = f102274l;
        } else {
            this.f102276a = f102273k;
        }
    }

    public void setInfinity(String str) throws XPathException {
        setProperty(9, str, 0);
    }

    public void setIntProperty(String str, int i) {
        int i2 = 0;
        while (true) {
            String[] strArr = propertyNames;
            if (i2 >= strArr.length) {
                return;
            }
            if (strArr[i2].equals(str)) {
                this.f102279d[i2] = i;
            }
            i2++;
        }
    }

    public void setMinusSign(String str) throws XPathException {
        setProperty(3, str, 0);
    }

    public void setNaN(String str) throws XPathException {
        setProperty(10, str, 0);
    }

    public void setPatternSeparator(String str) throws XPathException {
        setProperty(8, str, 0);
    }

    public void setPerMille(String str) throws XPathException {
        setProperty(5, str, 0);
    }

    public void setPercent(String str) throws XPathException {
        setProperty(4, str, 0);
    }

    public void setProperty(int i, String str, int i2) throws XPathException {
        String str2 = propertyNames[i];
        if (i <= 8) {
            int m64104b = m64104b(str2, str);
            int[] iArr = this.f102280e;
            int i3 = iArr[i];
            if (i2 > i3) {
                this.f102279d[i] = m64104b;
                iArr[i] = i2;
                this.f102281f[i] = false;
            } else if (i2 == i3 && m64104b != this.f102279d[i]) {
                this.f102281f[i] = true;
            }
            if (i == 6 && !isValidZeroDigit(m64104b)) {
                throw new XPathException("The value of the zero-digit attribute must be a Unicode digit with value zero", this.f102276a[1]);
            }
            return;
        }
        if (i == 9) {
            int[] iArr2 = this.f102280e;
            int i4 = iArr2[i];
            if (i2 > i4) {
                this.f102277b = str;
                iArr2[i] = i2;
                this.f102281f[i] = false;
                return;
            } else {
                if (i2 != i4 || this.f102277b.equals(str)) {
                    return;
                }
                this.f102281f[i] = true;
                return;
            }
        }
        if (i != 10) {
            throw new IllegalArgumentException();
        }
        int[] iArr3 = this.f102280e;
        int i5 = iArr3[i];
        if (i2 > i5) {
            this.f102278c = str;
            iArr3[i] = i2;
            this.f102281f[i] = false;
        } else {
            if (i2 != i5 || this.f102278c.equals(str)) {
                return;
            }
            this.f102281f[i] = false;
        }
    }

    public void setZeroDigit(String str) throws XPathException {
        setProperty(6, str, 0);
    }
}
