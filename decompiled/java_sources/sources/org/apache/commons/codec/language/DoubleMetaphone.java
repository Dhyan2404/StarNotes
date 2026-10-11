package org.apache.commons.codec.language;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.StringUtils;

/* loaded from: classes9.dex */
public class DoubleMetaphone implements StringEncoder {

    /* renamed from: b */
    public static final String f104758b = "AEIOUY";

    /* renamed from: c */
    public static final String[] f104759c = {BaseTLSIdentity.CERT_ATTRIBUTE_GIVEN_NAME, "KN", "PN", "WR", "PS"};

    /* renamed from: d */
    public static final String[] f104760d = {"L", "R", "N", "M", "B", "H", "F", "V", "W", " "};

    /* renamed from: e */
    public static final String[] f104761e = {"ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER"};

    /* renamed from: f */
    public static final String[] f104762f = {"L", "T", "K", "S", "N", "M", "B", Constants.HASIDCALL_INDEX_SIG};

    /* renamed from: a */
    public int f104763a = 4;

    public static boolean contains(String str, int i, int i2, String... strArr) {
        int i3;
        if (i < 0 || (i3 = i2 + i) > str.length()) {
            return false;
        }
        String substring = str.substring(i, i3);
        for (String str2 : strArr) {
            if (substring.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A */
    public final boolean m65777A(char c) {
        return f104758b.indexOf(c) != -1;
    }

    /* renamed from: a */
    public final String m65778a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return null;
        }
        return trim.toUpperCase(Locale.ENGLISH);
    }

    /* renamed from: b */
    public final boolean m65779b(String str, int i) {
        if (contains(str, i, 4, "CHIA")) {
            return true;
        }
        if (i <= 1) {
            return false;
        }
        int i2 = i - 2;
        if (m65777A(charAt(str, i2)) || !contains(str, i - 1, 3, "ACH")) {
            return false;
        }
        char charAt = charAt(str, i + 2);
        return !(charAt == 'I' || charAt == 'E') || contains(str, i2, 6, "BACHER", "MACHER");
    }

    /* renamed from: c */
    public final boolean m65780c(String str, int i) {
        if (i != 0) {
            return false;
        }
        int i2 = i + 1;
        return (contains(str, i2, 5, "HARAC", "HARIS") || contains(str, i2, 3, "HOR", "HYM", "HIA", "HEM")) && !contains(str, 0, 5, "CHORE");
    }

    public char charAt(String str, int i) {
        if (i < 0 || i >= str.length()) {
            return (char) 0;
        }
        return str.charAt(i);
    }

    /* renamed from: d */
    public final boolean m65781d(String str, int i) {
        if (!contains(str, 0, 4, "VAN ", "VON ") && !contains(str, 0, 3, "SCH") && !contains(str, i - 2, 6, "ORCHES", "ARCHIT", "ORCHID")) {
            int i2 = i + 2;
            if (!contains(str, i2, 1, "T", "S")) {
                if (!contains(str, i - 1, 1, "A", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "U", "E") && i != 0) {
                    return false;
                }
                if (!contains(str, i2, 1, f104760d) && i + 1 != str.length() - 1) {
                    return false;
                }
            }
        }
        return true;
    }

    public String doubleMetaphone(String str) {
        return doubleMetaphone(str, false);
    }

    /* renamed from: e */
    public final boolean m65782e(String str, int i) {
        if (i == str.length() - 3 && contains(str, i - 1, 4, "ILLO", "ILLA", "ALLE")) {
            return true;
        }
        return (contains(str, str.length() - 2, 2, "AS", "OS") || contains(str, str.length() - 1, 1, "A", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION)) && contains(str, i - 1, 4, "ALLE");
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return doubleMetaphone((String) obj);
        }
        throw new EncoderException("DoubleMetaphone encode parameter is not of type String");
    }

    /* renamed from: f */
    public final boolean m65783f(String str, int i) {
        int i2 = i + 1;
        if (charAt(str, i2) == 'M') {
            return true;
        }
        return contains(str, i + (-1), 3, "UMB") && (i2 == str.length() - 1 || contains(str, i + 2, 2, "ER"));
    }

    /* renamed from: g */
    public final int m65784g(DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (i == 0) {
            doubleMetaphoneResult.append('A');
        }
        return i + 1;
    }

    public int getMaxCodeLen() {
        return this.f104763a;
    }

    /* renamed from: h */
    public final int m65785h(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (m65779b(str, i)) {
            doubleMetaphoneResult.append('K');
        } else if (i == 0 && contains(str, i, 6, "CAESAR")) {
            doubleMetaphoneResult.append('S');
        } else {
            if (contains(str, i, 2, "CH")) {
                return m65787j(str, doubleMetaphoneResult, i);
            }
            if (!contains(str, i, 2, "CZ") || contains(str, i - 2, 4, "WICZ")) {
                int i2 = i + 1;
                if (contains(str, i2, 3, "CIA")) {
                    doubleMetaphoneResult.append('X');
                } else {
                    if (contains(str, i, 2, "CC") && (i != 1 || charAt(str, 0) != 'M')) {
                        return m65786i(str, doubleMetaphoneResult, i);
                    }
                    if (contains(str, i, 2, "CK", "CG", "CQ")) {
                        doubleMetaphoneResult.append('K');
                    } else if (!contains(str, i, 2, "CI", "CE", "CY")) {
                        doubleMetaphoneResult.append('K');
                        if (!contains(str, i2, 2, " C", " Q", " G")) {
                            if (!contains(str, i2, 1, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "K", "Q") || contains(str, i2, 2, "CE", "CI")) {
                                return i2;
                            }
                        }
                    } else if (contains(str, i, 3, "CIO", "CIE", "CIA")) {
                        doubleMetaphoneResult.append('S', 'X');
                    } else {
                        doubleMetaphoneResult.append('S');
                    }
                }
                return i + 3;
            }
            doubleMetaphoneResult.append('S', 'X');
        }
        return i + 2;
    }

    /* renamed from: i */
    public final int m65786i(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        int i2 = i + 2;
        if (!contains(str, i2, 1, "I", "E", "H") || contains(str, i2, 2, "HU")) {
            doubleMetaphoneResult.append('K');
            return i2;
        }
        if ((i == 1 && charAt(str, i - 1) == 'A') || contains(str, i - 1, 5, "UCCEE", "UCCES")) {
            doubleMetaphoneResult.append("KS");
        } else {
            doubleMetaphoneResult.append('X');
        }
        return i + 3;
    }

    public boolean isDoubleMetaphoneEqual(String str, String str2) {
        return isDoubleMetaphoneEqual(str, str2, false);
    }

    /* renamed from: j */
    public final int m65787j(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (i > 0 && contains(str, i, 4, "CHAE")) {
            doubleMetaphoneResult.append('K', 'X');
        } else if (m65780c(str, i)) {
            doubleMetaphoneResult.append('K');
        } else {
            if (!m65781d(str, i)) {
                if (i <= 0) {
                    doubleMetaphoneResult.append('X');
                } else if (contains(str, 0, 2, "MC")) {
                    doubleMetaphoneResult.append('K');
                } else {
                    doubleMetaphoneResult.append('X', 'K');
                }
                return i + 2;
            }
            doubleMetaphoneResult.append('K');
        }
        return i + 2;
    }

    /* renamed from: k */
    public final int m65788k(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (!contains(str, i, 2, "DG")) {
            if (contains(str, i, 2, "DT", "DD")) {
                doubleMetaphoneResult.append('T');
                return i + 2;
            }
            doubleMetaphoneResult.append('T');
            return i + 1;
        }
        int i2 = i + 2;
        if (contains(str, i2, 1, "I", "E", "Y")) {
            doubleMetaphoneResult.append('J');
            return i + 3;
        }
        doubleMetaphoneResult.append("TK");
        return i2;
    }

    /* renamed from: l */
    public final int m65789l(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i, boolean z) {
        int i2 = i + 1;
        if (charAt(str, i2) == 'H') {
            return m65790m(str, doubleMetaphoneResult, i);
        }
        if (charAt(str, i2) == 'N') {
            if (i == 1 && m65777A(charAt(str, 0)) && !z) {
                doubleMetaphoneResult.append("KN", "N");
            } else if (contains(str, i + 2, 2, "EY") || charAt(str, i2) == 'Y' || z) {
                doubleMetaphoneResult.append("KN");
            } else {
                doubleMetaphoneResult.append("N", "KN");
            }
        } else if (contains(str, i2, 2, "LI") && !z) {
            doubleMetaphoneResult.append("KL", "L");
        } else if (i == 0 && (charAt(str, i2) == 'Y' || contains(str, i2, 2, f104761e))) {
            doubleMetaphoneResult.append('K', 'J');
        } else {
            if ((contains(str, i2, 2, "ER") || charAt(str, i2) == 'Y') && !contains(str, 0, 6, "DANGER", "RANGER", "MANGER")) {
                int i3 = i - 1;
                if (!contains(str, i3, 1, "E", "I") && !contains(str, i3, 3, "RGY", "OGY")) {
                    doubleMetaphoneResult.append('K', 'J');
                }
            }
            if (!contains(str, i2, 1, "E", "I", "Y") && !contains(str, i - 1, 4, "AGGI", "OGGI")) {
                if (charAt(str, i2) != 'G') {
                    doubleMetaphoneResult.append('K');
                    return i2;
                }
                int i4 = i + 2;
                doubleMetaphoneResult.append('K');
                return i4;
            }
            if (contains(str, 0, 4, "VAN ", "VON ") || contains(str, 0, 3, "SCH") || contains(str, i2, 2, "ET")) {
                doubleMetaphoneResult.append('K');
            } else if (contains(str, i2, 3, "IER")) {
                doubleMetaphoneResult.append('J');
            } else {
                doubleMetaphoneResult.append('J', 'K');
            }
        }
        return i + 2;
    }

    /* renamed from: m */
    public final int m65790m(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (i > 0 && !m65777A(charAt(str, i - 1))) {
            doubleMetaphoneResult.append('K');
        } else {
            if (i == 0) {
                int i2 = i + 2;
                if (charAt(str, i2) == 'I') {
                    doubleMetaphoneResult.append('J');
                    return i2;
                }
                doubleMetaphoneResult.append('K');
                return i2;
            }
            if ((i <= 1 || !contains(str, i - 2, 1, "B", "H", SardineUtil.DEFAULT_NAMESPACE_PREFIX)) && ((i <= 2 || !contains(str, i - 3, 1, "B", "H", SardineUtil.DEFAULT_NAMESPACE_PREFIX)) && (i <= 3 || !contains(str, i - 4, 1, "B", "H")))) {
                if (i > 2 && charAt(str, i - 1) == 'U' && contains(str, i - 3, 1, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "G", "L", "R", "T")) {
                    doubleMetaphoneResult.append('F');
                } else if (i > 0 && charAt(str, i - 1) != 'I') {
                    doubleMetaphoneResult.append('K');
                }
            }
        }
        return i + 2;
    }

    /* renamed from: n */
    public final int m65791n(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if ((i != 0 && !m65777A(charAt(str, i - 1))) || !m65777A(charAt(str, i + 1))) {
            return i + 1;
        }
        doubleMetaphoneResult.append('H');
        return i + 2;
    }

    /* renamed from: o */
    public final int m65792o(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i, boolean z) {
        if (contains(str, i, 4, "JOSE") || contains(str, 0, 4, "SAN ")) {
            if ((i == 0 && charAt(str, i + 4) == ' ') || str.length() == 4 || contains(str, 0, 4, "SAN ")) {
                doubleMetaphoneResult.append('H');
            } else {
                doubleMetaphoneResult.append('J', 'H');
            }
            return i + 1;
        }
        if (i != 0 || contains(str, i, 4, "JOSE")) {
            int i2 = i - 1;
            if (m65777A(charAt(str, i2)) && !z) {
                int i3 = i + 1;
                if (charAt(str, i3) == 'A' || charAt(str, i3) == 'O') {
                    doubleMetaphoneResult.append('J', 'H');
                }
            }
            if (i == str.length() - 1) {
                doubleMetaphoneResult.append('J', ' ');
            } else if (!contains(str, i + 1, 1, f104762f) && !contains(str, i2, 1, "S", "K", "L")) {
                doubleMetaphoneResult.append('J');
            }
        } else {
            doubleMetaphoneResult.append('J', 'A');
        }
        int i4 = i + 1;
        return charAt(str, i4) == 'J' ? i + 2 : i4;
    }

    /* renamed from: p */
    public final int m65793p(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        int i2 = i + 1;
        if (charAt(str, i2) != 'L') {
            doubleMetaphoneResult.append('L');
            return i2;
        }
        if (m65782e(str, i)) {
            doubleMetaphoneResult.appendPrimary('L');
        } else {
            doubleMetaphoneResult.append('L');
        }
        return i + 2;
    }

    /* renamed from: q */
    public final int m65794q(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        int i2 = i + 1;
        if (charAt(str, i2) == 'H') {
            doubleMetaphoneResult.append('F');
            return i + 2;
        }
        doubleMetaphoneResult.append('P');
        if (contains(str, i2, 1, "P", "B")) {
            i2 = i + 2;
        }
        return i2;
    }

    /* renamed from: r */
    public final int m65795r(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i, boolean z) {
        if (i != str.length() - 1 || z || !contains(str, i - 2, 2, "IE") || contains(str, i - 4, 2, "ME", "MA")) {
            doubleMetaphoneResult.append('R');
        } else {
            doubleMetaphoneResult.appendAlternate('R');
        }
        int i2 = i + 1;
        return charAt(str, i2) == 'R' ? i + 2 : i2;
    }

    /* renamed from: s */
    public final int m65796s(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i, boolean z) {
        if (!contains(str, i - 1, 3, "ISL", "YSL")) {
            if (i != 0 || !contains(str, i, 5, "SUGAR")) {
                if (contains(str, i, 2, "SH")) {
                    if (contains(str, i + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ")) {
                        doubleMetaphoneResult.append('S');
                    } else {
                        doubleMetaphoneResult.append('X');
                    }
                } else {
                    if (contains(str, i, 3, "SIO", "SIA") || contains(str, i, 4, "SIAN")) {
                        if (z) {
                            doubleMetaphoneResult.append('S');
                        } else {
                            doubleMetaphoneResult.append('S', 'X');
                        }
                        return i + 3;
                    }
                    if (i != 0 || !contains(str, i + 1, 1, "M", "N", "L", "W")) {
                        int i2 = i + 1;
                        if (!contains(str, i2, 1, Constants.HASIDCALL_INDEX_SIG)) {
                            if (contains(str, i, 2, "SC")) {
                                return m65797t(str, doubleMetaphoneResult, i);
                            }
                            if (i == str.length() - 1 && contains(str, i - 2, 2, "AI", "OI")) {
                                doubleMetaphoneResult.appendAlternate('S');
                            } else {
                                doubleMetaphoneResult.append('S');
                            }
                            if (!contains(str, i2, 1, "S", Constants.HASIDCALL_INDEX_SIG)) {
                                return i2;
                            }
                        }
                    }
                    doubleMetaphoneResult.append('S', 'X');
                    int i3 = i + 1;
                    if (!contains(str, i3, 1, Constants.HASIDCALL_INDEX_SIG)) {
                        return i3;
                    }
                }
                return i + 2;
            }
            doubleMetaphoneResult.append('X', 'S');
        }
        return i + 1;
    }

    public void setMaxCodeLen(int i) {
        this.f104763a = i;
    }

    /* renamed from: t */
    public final int m65797t(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        int i2 = i + 2;
        if (charAt(str, i2) == 'H') {
            int i3 = i + 3;
            if (contains(str, i3, 2, "OO", "ER", "EN", "UY", "ED", "EM")) {
                if (contains(str, i3, 2, "ER", "EN")) {
                    doubleMetaphoneResult.append("X", "SK");
                } else {
                    doubleMetaphoneResult.append("SK");
                }
            } else if (i != 0 || m65777A(charAt(str, 3)) || charAt(str, 3) == 'W') {
                doubleMetaphoneResult.append('X');
            } else {
                doubleMetaphoneResult.append('X', 'S');
            }
        } else if (contains(str, i2, 1, "I", "E", "Y")) {
            doubleMetaphoneResult.append('S');
        } else {
            doubleMetaphoneResult.append("SK");
        }
        return i + 3;
    }

    /* renamed from: u */
    public final int m65798u(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (contains(str, i, 4, "TION")) {
            doubleMetaphoneResult.append('X');
        } else {
            if (!contains(str, i, 3, "TIA", "TCH")) {
                if (!contains(str, i, 2, "TH") && !contains(str, i, 3, "TTH")) {
                    doubleMetaphoneResult.append('T');
                    int i2 = i + 1;
                    return contains(str, i2, 1, "T", SardineUtil.DEFAULT_NAMESPACE_PREFIX) ? i + 2 : i2;
                }
                int i3 = i + 2;
                if (contains(str, i3, 2, "OM", "AM") || contains(str, 0, 4, "VAN ", "VON ") || contains(str, 0, 3, "SCH")) {
                    doubleMetaphoneResult.append('T');
                    return i3;
                }
                doubleMetaphoneResult.append('0', 'T');
                return i3;
            }
            doubleMetaphoneResult.append('X');
        }
        return i + 3;
    }

    /* renamed from: v */
    public final int m65799v(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (contains(str, i, 2, "WR")) {
            doubleMetaphoneResult.append('R');
            return i + 2;
        }
        if (i == 0) {
            int i2 = i + 1;
            if (m65777A(charAt(str, i2)) || contains(str, i, 2, "WH")) {
                if (m65777A(charAt(str, i2))) {
                    doubleMetaphoneResult.append('A', 'F');
                } else {
                    doubleMetaphoneResult.append('A');
                }
                return i2;
            }
        }
        if ((i == str.length() - 1 && m65777A(charAt(str, i - 1))) || contains(str, i - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY") || contains(str, 0, 3, "SCH")) {
            doubleMetaphoneResult.appendAlternate('F');
        } else if (contains(str, i, 4, "WICZ", "WITZ")) {
            doubleMetaphoneResult.append("TS", "FX");
            return i + 4;
        }
        return i + 1;
    }

    /* renamed from: w */
    public final int m65800w(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i) {
        if (i == 0) {
            doubleMetaphoneResult.append('S');
            return i + 1;
        }
        if (i != str.length() - 1 || (!contains(str, i - 3, 3, "IAU", "EAU") && !contains(str, i - 2, 2, "AU", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION_UNIT))) {
            doubleMetaphoneResult.append("KS");
        }
        int i2 = i + 1;
        return contains(str, i2, 1, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "X") ? i + 2 : i2;
    }

    /* renamed from: x */
    public final int m65801x(String str, DoubleMetaphoneResult doubleMetaphoneResult, int i, boolean z) {
        int i2 = i + 1;
        if (charAt(str, i2) == 'H') {
            doubleMetaphoneResult.append('J');
            return i + 2;
        }
        if (contains(str, i2, 2, "ZO", "ZI", "ZA") || (z && i > 0 && charAt(str, i - 1) != 'T')) {
            doubleMetaphoneResult.append("S", "TS");
        } else {
            doubleMetaphoneResult.append('S');
        }
        if (charAt(str, i2) == 'Z') {
            i2 = i + 2;
        }
        return i2;
    }

    /* renamed from: y */
    public final boolean m65802y(String str) {
        for (String str2 : f104759c) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    public final boolean m65803z(String str) {
        return str.indexOf(87) > -1 || str.indexOf(75) > -1 || str.indexOf("CZ") > -1 || str.indexOf("WITZ") > -1;
    }

    /* loaded from: classes9.dex */
    public class DoubleMetaphoneResult {

        /* renamed from: a */
        public final StringBuilder f104764a;

        /* renamed from: b */
        public final StringBuilder f104765b;

        /* renamed from: c */
        public final int f104766c;

        public DoubleMetaphoneResult(int i) {
            this.f104764a = new StringBuilder(DoubleMetaphone.this.getMaxCodeLen());
            this.f104765b = new StringBuilder(DoubleMetaphone.this.getMaxCodeLen());
            this.f104766c = i;
        }

        public void append(char c) {
            appendPrimary(c);
            appendAlternate(c);
        }

        public void appendAlternate(char c) {
            if (this.f104765b.length() < this.f104766c) {
                this.f104765b.append(c);
            }
        }

        public void appendPrimary(char c) {
            if (this.f104764a.length() < this.f104766c) {
                this.f104764a.append(c);
            }
        }

        public String getAlternate() {
            return this.f104765b.toString();
        }

        public String getPrimary() {
            return this.f104764a.toString();
        }

        public boolean isComplete() {
            return this.f104764a.length() >= this.f104766c && this.f104765b.length() >= this.f104766c;
        }

        public void append(char c, char c2) {
            appendPrimary(c);
            appendAlternate(c2);
        }

        public void appendAlternate(String str) {
            int length = this.f104766c - this.f104765b.length();
            if (str.length() <= length) {
                this.f104765b.append(str);
            } else {
                this.f104765b.append(str.substring(0, length));
            }
        }

        public void appendPrimary(String str) {
            int length = this.f104766c - this.f104764a.length();
            if (str.length() <= length) {
                this.f104764a.append(str);
            } else {
                this.f104764a.append(str.substring(0, length));
            }
        }

        public void append(String str) {
            appendPrimary(str);
            appendAlternate(str);
        }

        public void append(String str, String str2) {
            appendPrimary(str);
            appendAlternate(str2);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0039. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.apache.commons.codec.language.DoubleMetaphone] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String] */
    public String doubleMetaphone(String str, boolean z) {
        int i;
        ?? m65778a = m65778a(str);
        if (m65778a == 0) {
            return null;
        }
        boolean m65803z = m65803z(m65778a);
        ?? m65802y = m65802y(m65778a);
        DoubleMetaphoneResult doubleMetaphoneResult = new DoubleMetaphoneResult(getMaxCodeLen());
        while (!doubleMetaphoneResult.isComplete() && m65802y <= m65778a.length() - 1) {
            char charAt = m65778a.charAt(m65802y);
            if (charAt == 199) {
                doubleMetaphoneResult.append('S');
            } else if (charAt != 209) {
                switch (charAt) {
                    case 'A':
                    case 'E':
                    case 'I':
                    case 'O':
                    case 'U':
                    case 'Y':
                        m65802y = m65784g(doubleMetaphoneResult, m65802y);
                        break;
                    case 'B':
                        doubleMetaphoneResult.append('P');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'B') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'C':
                        m65802y = m65785h(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'D':
                        m65802y = m65788k(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'F':
                        doubleMetaphoneResult.append('F');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'F') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'G':
                        m65802y = m65789l(m65778a, doubleMetaphoneResult, m65802y, m65803z);
                        break;
                    case 'H':
                        m65802y = m65791n(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'J':
                        m65802y = m65792o(m65778a, doubleMetaphoneResult, m65802y, m65803z);
                        break;
                    case 'K':
                        doubleMetaphoneResult.append('K');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'K') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'L':
                        m65802y = m65793p(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'M':
                        doubleMetaphoneResult.append('M');
                        if (!m65783f(m65778a, m65802y)) {
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'N':
                        doubleMetaphoneResult.append('N');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'N') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'P':
                        m65802y = m65794q(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'Q':
                        doubleMetaphoneResult.append('K');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'Q') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'R':
                        m65802y = m65795r(m65778a, doubleMetaphoneResult, m65802y, m65803z);
                        break;
                    case 'S':
                        m65802y = m65796s(m65778a, doubleMetaphoneResult, m65802y, m65803z);
                        break;
                    case 'T':
                        m65802y = m65798u(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'V':
                        doubleMetaphoneResult.append('F');
                        i = m65802y + 1;
                        if (charAt(m65778a, i) != 'V') {
                            m65802y = i;
                            break;
                        } else {
                            m65802y += 2;
                            break;
                        }
                    case 'W':
                        m65802y = m65799v(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'X':
                        m65802y = m65800w(m65778a, doubleMetaphoneResult, m65802y);
                        break;
                    case 'Z':
                        m65802y = m65801x(m65778a, doubleMetaphoneResult, m65802y, m65803z);
                        break;
                }
            } else {
                doubleMetaphoneResult.append('N');
            }
            m65802y++;
        }
        return z ? doubleMetaphoneResult.getAlternate() : doubleMetaphoneResult.getPrimary();
    }

    public boolean isDoubleMetaphoneEqual(String str, String str2, boolean z) {
        return StringUtils.equals(doubleMetaphone(str, z), doubleMetaphone(str2, z));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return doubleMetaphone(str);
    }
}
