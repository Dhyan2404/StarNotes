package org.apache.xerces.impl.xpath.regex;

import com.sunia.HTREnginev2.xnd;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Vector;
import org.apache.xerces.impl.xpath.regex.Token;

/* renamed from: org.apache.xerces.impl.xpath.regex.c */
/* loaded from: classes13.dex */
public class C20042c {

    /* renamed from: A */
    public static final int f112631A = 14;

    /* renamed from: B */
    public static final int f112632B = 15;

    /* renamed from: C */
    public static final int f112633C = 16;

    /* renamed from: D */
    public static final int f112634D = 17;

    /* renamed from: E */
    public static final int f112635E = 18;

    /* renamed from: F */
    public static final int f112636F = 19;

    /* renamed from: G */
    public static final int f112637G = 20;

    /* renamed from: H */
    public static final int f112638H = 21;

    /* renamed from: I */
    public static final int f112639I = 22;

    /* renamed from: J */
    public static final int f112640J = 23;

    /* renamed from: K */
    public static final int f112641K = 24;

    /* renamed from: L */
    public static final int f112642L = 0;

    /* renamed from: M */
    public static final int f112643M = 1;

    /* renamed from: N */
    public static final int f112644N = 2;

    /* renamed from: m */
    public static final int f112645m = 0;

    /* renamed from: n */
    public static final int f112646n = 1;

    /* renamed from: o */
    public static final int f112647o = 2;

    /* renamed from: p */
    public static final int f112648p = 3;

    /* renamed from: q */
    public static final int f112649q = 4;

    /* renamed from: r */
    public static final int f112650r = 5;

    /* renamed from: s */
    public static final int f112651s = 6;

    /* renamed from: t */
    public static final int f112652t = 7;

    /* renamed from: u */
    public static final int f112653u = 8;

    /* renamed from: v */
    public static final int f112654v = 9;

    /* renamed from: w */
    public static final int f112655w = 10;

    /* renamed from: x */
    public static final int f112656x = 11;

    /* renamed from: y */
    public static final int f112657y = 12;

    /* renamed from: z */
    public static final int f112658z = 13;

    /* renamed from: a */
    public int f112659a;

    /* renamed from: b */
    public String f112660b;

    /* renamed from: c */
    public int f112661c;

    /* renamed from: d */
    public int f112662d;

    /* renamed from: e */
    public ResourceBundle f112663e;

    /* renamed from: f */
    public int f112664f;

    /* renamed from: g */
    public int f112665g;

    /* renamed from: k */
    public boolean f112669k;

    /* renamed from: h */
    public int f112666h = 0;

    /* renamed from: i */
    public int f112667i = 1;

    /* renamed from: j */
    public int f112668j = 1;

    /* renamed from: l */
    public Vector f112670l = null;

    /* renamed from: org.apache.xerces.impl.xpath.regex.c$a */
    /* loaded from: classes13.dex */
    public static class a {

        /* renamed from: a */
        public int f112671a;

        /* renamed from: b */
        public int f112672b;

        public a(int i, int i2) {
            this.f112671a = i;
            this.f112672b = i2;
        }
    }

    public C20042c() {
        m70104W(Locale.getDefault());
    }

    /* renamed from: a */
    public static final void m70098a(RangeToken rangeToken, int i) {
        int[] m58291f = xnd.m58291f(i);
        rangeToken.addRange(i, i);
        if (m58291f != null) {
            for (int i2 = 0; i2 < m58291f.length; i2 += 2) {
                int i3 = m58291f[i2];
                rangeToken.addRange(i3, i3);
            }
        }
    }

    /* renamed from: b */
    public static final void m70099b(RangeToken rangeToken, int i, int i2) {
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        rangeToken.addRange(i, i2);
        while (i <= i2) {
            int[] m58291f = xnd.m58291f(i);
            if (m58291f != null) {
                for (int i3 = 0; i3 < m58291f.length; i3 += 2) {
                    int i4 = m58291f[i3];
                    rangeToken.addRange(i4, i4);
                }
            }
            i++;
        }
    }

    /* renamed from: g */
    public static final int m70100g(int i) {
        if (i < 48 || i > 102) {
            return -1;
        }
        if (i <= 57) {
            return i - 48;
        }
        int i2 = 65;
        if (i < 65) {
            return -1;
        }
        if (i > 70) {
            i2 = 97;
            if (i < 97) {
                return -1;
            }
        }
        return (i - i2) + 10;
    }

    /* renamed from: A */
    public Token mo70064A() throws ParseException {
        m70107i();
        return Token.token_wordend;
    }

    /* renamed from: B */
    public Token mo70065B() throws ParseException {
        Token.CharToken createChar = Token.createChar(105);
        m70107i();
        return createChar;
    }

    /* renamed from: C */
    public Token mo70066C() throws ParseException {
        m70107i();
        return Token.token_wordbeginning;
    }

    /* renamed from: D */
    public RangeToken m70101D(int i) throws ParseException {
        m70107i();
        if (m70102U() != 0 || this.f112664f != 123) {
            throw m70105e("parser.atom.2", this.f112659a - 1);
        }
        boolean z = i == 112;
        int i2 = this.f112659a;
        int indexOf = this.f112660b.indexOf(125, i2);
        if (indexOf < 0) {
            throw m70105e("parser.atom.3", this.f112659a);
        }
        String substring = this.f112660b.substring(i2, indexOf);
        this.f112659a = indexOf + 1;
        return Token.getRange(substring, z, m70106h(512));
    }

    /* renamed from: E */
    public Token mo70067E() throws ParseException {
        m70107i();
        return Token.token_stringend;
    }

    /* renamed from: F */
    public int mo70068F(RangeToken rangeToken, int i) {
        return mo70084d();
    }

    /* renamed from: G */
    public Token mo70069G() throws ParseException {
        m70107i();
        return Token.token_linebeginning;
    }

    /* renamed from: H */
    public Token mo70070H() throws ParseException {
        Token m70110m;
        int i;
        char charAt;
        int i2 = this.f112659a;
        if (i2 + 1 >= this.f112661c) {
            throw m70105e("parser.factor.4", i2);
        }
        char charAt2 = this.f112660b.charAt(i2);
        Token token = null;
        if ('1' > charAt2 || charAt2 > '9') {
            if (charAt2 == '?') {
                this.f112659a--;
            }
            m70107i();
            m70110m = m70110m();
            int i3 = m70110m.type;
            if (i3 != 8) {
                switch (i3) {
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw m70105e("parser.factor.5", this.f112659a);
                }
            } else if (m70102U() != 7) {
                throw m70105e("parser.factor.1", this.f112659a - 1);
            }
            i = -1;
        } else {
            int i4 = charAt2 - '0';
            if (this.f112668j <= i4) {
                throw m70105e("parser.parse.2", this.f112659a);
            }
            while (true) {
                int i5 = this.f112659a;
                if (i5 + 1 < this.f112661c && '0' <= (charAt = this.f112660b.charAt(i5 + 1)) && charAt <= '9') {
                    i = (charAt - '0') + (i4 * 10);
                    if (i >= this.f112668j) {
                        break;
                    }
                    this.f112659a++;
                    i4 = i;
                }
            }
            this.f112669k = true;
            if (this.f112670l == null) {
                this.f112670l = new Vector();
            }
            this.f112670l.addElement(new a(i4, this.f112659a));
            int i6 = this.f112659a + 1;
            this.f112659a = i6;
            if (this.f112660b.charAt(i6) != ')') {
                throw m70105e("parser.factor.1", this.f112659a);
            }
            this.f112659a++;
            m70110m = null;
        }
        m70107i();
        Token m70111n = m70111n();
        if (m70111n.type == 2) {
            if (m70111n.size() != 2) {
                throw m70105e("parser.factor.6", this.f112659a);
            }
            token = m70111n.getChild(1);
            m70111n = m70111n.getChild(0);
        }
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return Token.createCondition(i, m70110m, m70111n, token);
    }

    /* renamed from: I */
    public Token mo70071I() throws ParseException {
        m70107i();
        return Token.token_lineend;
    }

    /* renamed from: J */
    public Token mo70072J() throws ParseException {
        m70107i();
        Token.ParenToken createLook = Token.createLook(24, m70111n());
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createLook;
    }

    /* renamed from: K */
    public Token mo70073K() throws ParseException {
        m70107i();
        Token.ParenToken createLook = Token.createLook(20, m70111n());
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createLook;
    }

    /* renamed from: L */
    public Token mo70074L() throws ParseException {
        m70107i();
        Token.ParenToken createLook = Token.createLook(22, m70111n());
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createLook;
    }

    /* renamed from: M */
    public Token mo70075M() throws ParseException {
        int m70008e;
        int m70008e2;
        int i = 0;
        char c = 65535;
        int i2 = 0;
        while (true) {
            int i3 = this.f112659a;
            if (i3 < this.f112661c && (m70008e2 = REUtil.m70008e((c = this.f112660b.charAt(i3)))) != 0) {
                i2 |= m70008e2;
                this.f112659a++;
            }
        }
        int i4 = this.f112659a;
        if (i4 >= this.f112661c) {
            throw m70105e("parser.factor.2", i4 - 1);
        }
        if (c == '-') {
            while (true) {
                this.f112659a = i4 + 1;
                int i5 = this.f112659a;
                if (i5 < this.f112661c && (m70008e = REUtil.m70008e((c = this.f112660b.charAt(i5)))) != 0) {
                    i |= m70008e;
                    i4 = this.f112659a;
                }
            }
            int i6 = this.f112659a;
            if (i6 >= this.f112661c) {
                throw m70105e("parser.factor.2", i6 - 1);
            }
        }
        if (c != ':') {
            if (c != ')') {
                throw m70105e("parser.factor.3", this.f112659a);
            }
            this.f112659a++;
            m70107i();
            return Token.createModifierGroup(m70111n(), i2, i);
        }
        this.f112659a++;
        m70107i();
        Token.ModifierToken createModifierGroup = Token.createModifierGroup(m70111n(), i2, i);
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createModifierGroup;
    }

    /* renamed from: N */
    public Token mo70076N() throws ParseException {
        m70107i();
        Token.ParenToken createLook = Token.createLook(21, m70111n());
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createLook;
    }

    /* renamed from: O */
    public Token mo70077O() throws ParseException {
        m70107i();
        Token.ParenToken createLook = Token.createLook(23, m70111n());
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createLook;
    }

    /* renamed from: P */
    public Token mo70078P() throws ParseException {
        m70107i();
        int i = this.f112667i;
        this.f112667i = i + 1;
        Token.ParenToken createParen = Token.createParen(m70111n(), i);
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        this.f112668j++;
        m70107i();
        return createParen;
    }

    /* renamed from: Q */
    public Token mo70079Q() throws ParseException {
        m70107i();
        Token.ParenToken createParen = Token.createParen(m70111n(), 0);
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createParen;
    }

    /* renamed from: R */
    public Token mo70080R(Token token) throws ParseException {
        Token.ClosureToken createClosure;
        m70107i();
        if (m70102U() == 5) {
            m70107i();
            createClosure = Token.createNGClosure(token);
        } else {
            createClosure = Token.createClosure(token);
        }
        return Token.createConcat(token, createClosure);
    }

    /* renamed from: S */
    public Token mo70081S(Token token) throws ParseException {
        m70107i();
        Token.UnionToken createUnion = Token.createUnion();
        if (m70102U() == 5) {
            m70107i();
            createUnion.addChild(Token.createEmpty());
            createUnion.addChild(token);
        } else {
            createUnion.addChild(token);
            createUnion.addChild(Token.createEmpty());
        }
        return createUnion;
    }

    /* renamed from: T */
    public Token mo70082T(Token token) throws ParseException {
        m70107i();
        if (m70102U() != 5) {
            return Token.createClosure(token);
        }
        m70107i();
        return Token.createNGClosure(token);
    }

    /* renamed from: U */
    public final int m70102U() {
        return this.f112665g;
    }

    /* renamed from: V */
    public final void m70103V(int i) {
        this.f112666h = i;
    }

    /* renamed from: W */
    public void m70104W(Locale locale) {
        try {
            this.f112663e = locale != null ? ResourceBundle.getBundle("org.apache.xerces.impl.xpath.regex.message", locale) : ResourceBundle.getBundle("org.apache.xerces.impl.xpath.regex.message");
        } catch (MissingResourceException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Installation Problem???  Couldn't load messages: ");
            stringBuffer.append(e.getMessage());
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    /* renamed from: c */
    public boolean mo70083c(int i) {
        return i < this.f112661c && this.f112660b.charAt(i) == '?';
    }

    /* renamed from: d */
    public int mo70084d() throws ParseException {
        int m70100g;
        int m70100g2;
        int m70100g3;
        int m70100g4;
        int m70100g5;
        int m70100g6;
        int m70100g7;
        int m70100g8;
        int m70100g9;
        int m70100g10;
        int m70100g11;
        if (m70102U() != 10) {
            throw m70105e("parser.next.1", this.f112659a - 1);
        }
        int i = this.f112664f;
        if (i != 65 && i != 90) {
            if (i == 110) {
                return 10;
            }
            if (i == 114) {
                return 13;
            }
            if (i == 120) {
                m70107i();
                if (m70102U() != 0) {
                    throw m70105e("parser.descape.1", this.f112659a - 1);
                }
                if (this.f112664f == 123) {
                    int i2 = 0;
                    while (true) {
                        m70107i();
                        if (m70102U() != 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int m70100g12 = m70100g(this.f112664f);
                        if (m70100g12 < 0) {
                            if (this.f112664f != 125) {
                                throw m70105e("parser.descape.3", this.f112659a - 1);
                            }
                            if (i2 <= 1114111) {
                                return i2;
                            }
                            throw m70105e("parser.descape.4", this.f112659a - 1);
                        }
                        int i3 = i2 * 16;
                        if (i2 > i3) {
                            throw m70105e("parser.descape.2", this.f112659a - 1);
                        }
                        i2 = i3 + m70100g12;
                    }
                } else {
                    if (m70102U() != 0 || (m70100g = m70100g(this.f112664f)) < 0) {
                        throw m70105e("parser.descape.1", this.f112659a - 1);
                    }
                    m70107i();
                    if (m70102U() != 0 || (m70100g2 = m70100g(this.f112664f)) < 0) {
                        throw m70105e("parser.descape.1", this.f112659a - 1);
                    }
                }
            } else if (i != 122) {
                if (i == 101) {
                    return 27;
                }
                if (i == 102) {
                    return 12;
                }
                switch (i) {
                    case 116:
                        return 9;
                    case 117:
                        m70107i();
                        if (m70102U() != 0 || (m70100g3 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        m70107i();
                        if (m70102U() != 0 || (m70100g4 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i4 = (m70100g3 * 16) + m70100g4;
                        m70107i();
                        if (m70102U() != 0 || (m70100g5 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        m70100g = (i4 * 16) + m70100g5;
                        m70107i();
                        if (m70102U() != 0 || (m70100g2 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        break;
                    case 118:
                        m70107i();
                        if (m70102U() != 0 || (m70100g6 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        m70107i();
                        if (m70102U() != 0 || (m70100g7 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i5 = (m70100g6 * 16) + m70100g7;
                        m70107i();
                        if (m70102U() != 0 || (m70100g8 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i6 = (i5 * 16) + m70100g8;
                        m70107i();
                        if (m70102U() != 0 || (m70100g9 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i7 = (i6 * 16) + m70100g9;
                        m70107i();
                        if (m70102U() != 0 || (m70100g10 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i8 = (i7 * 16) + m70100g10;
                        m70107i();
                        if (m70102U() != 0 || (m70100g11 = m70100g(this.f112664f)) < 0) {
                            throw m70105e("parser.descape.1", this.f112659a - 1);
                        }
                        int i9 = m70100g11 + (i8 * 16);
                        if (i9 <= 1114111) {
                            return i9;
                        }
                        throw m70105e("parser.descappe.4", this.f112659a - 1);
                    default:
                        return i;
                }
            }
            return m70100g2 + (m70100g * 16);
        }
        throw m70105e("parser.descape.5", this.f112659a - 2);
    }

    /* renamed from: e */
    public final ParseException m70105e(String str, int i) {
        return new ParseException(this.f112663e.getString(str), i);
    }

    /* renamed from: f */
    public Token mo70085f(int i) {
        boolean z = false;
        if (i != 68) {
            if (i != 83) {
                if (i != 87) {
                    z = true;
                    if (i != 100) {
                        if (i != 115) {
                            if (i != 119) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Internal Error: shorthands: \\u");
                                stringBuffer.append(Integer.toString(i, 16));
                                throw new RuntimeException(stringBuffer.toString());
                            }
                            if (!m70106h(32)) {
                                return Token.token_wordchars;
                            }
                        } else if (!m70106h(32)) {
                            return Token.token_spaces;
                        }
                    } else if (!m70106h(32)) {
                        return Token.token_0to9;
                    }
                } else if (!m70106h(32)) {
                    return Token.token_not_wordchars;
                }
                return Token.getRange("IsWord", z);
            }
            if (!m70106h(32)) {
                return Token.token_not_spaces;
            }
            return Token.getRange("IsSpace", z);
        }
        if (!m70106h(32)) {
            return Token.token_not_0to9;
        }
        return Token.getRange("Nd", z);
    }

    /* renamed from: h */
    public final boolean m70106h(int i) {
        return (this.f112662d & i) == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m70107i() {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.C20042c.m70107i():void");
    }

    /* renamed from: j */
    public synchronized Token m70108j(String str, int i) throws ParseException {
        Token m70111n;
        this.f112662d = i;
        this.f112659a = 0;
        m70103V(0);
        this.f112668j = 1;
        this.f112667i = 1;
        this.f112669k = false;
        this.f112660b = str;
        if (m70106h(16)) {
            this.f112660b = REUtil.m70012i(this.f112660b);
        }
        this.f112661c = this.f112660b.length();
        m70107i();
        m70111n = m70111n();
        int i2 = this.f112659a;
        if (i2 != this.f112661c) {
            throw m70105e("parser.parse.1", i2);
        }
        if (m70102U() != 1) {
            throw m70105e("parser.parse.1", this.f112659a - 1);
        }
        if (this.f112670l != null) {
            for (int i3 = 0; i3 < this.f112670l.size(); i3++) {
                a aVar = (a) this.f112670l.elementAt(i3);
                if (this.f112668j <= aVar.f112671a) {
                    throw m70105e("parser.parse.2", aVar.f112672b);
                }
            }
            this.f112670l.removeAllElements();
        }
        return m70111n;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x0055. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x0058. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x005b. Please report as an issue. */
    /* renamed from: k */
    public Token m70109k() throws ParseException {
        Token createParen;
        int m70102U = m70102U();
        if (m70102U != 0) {
            if (m70102U == 6) {
                return mo70078P();
            }
            if (m70102U == 13) {
                return mo70079Q();
            }
            if (m70102U == 18) {
                return mo70072J();
            }
            if (m70102U == 19) {
                return mo70087o();
            }
            if (m70102U == 22) {
                return mo70075M();
            }
            if (m70102U == 23) {
                return mo70070H();
            }
            switch (m70102U) {
                case 8:
                    m70107i();
                    return Token.token_dot;
                case 9:
                    return mo70086l(true);
                case 10:
                    int i = this.f112664f;
                    if (i == 67) {
                        return mo70091t();
                    }
                    if (i != 68) {
                        if (i == 73) {
                            return mo70092u();
                        }
                        if (i != 80) {
                            if (i != 83) {
                                if (i == 105) {
                                    return mo70065B();
                                }
                                if (i != 110) {
                                    if (i != 112) {
                                        if (i != 87) {
                                            if (i == 88) {
                                                return mo70093v();
                                            }
                                            switch (i) {
                                                case 49:
                                                case 50:
                                                case 51:
                                                case 52:
                                                case 53:
                                                case 54:
                                                case 55:
                                                case 56:
                                                case 57:
                                                    return mo70088q();
                                                default:
                                                    switch (i) {
                                                        case 99:
                                                            return mo70096y();
                                                        case 100:
                                                            break;
                                                        case 101:
                                                        case 102:
                                                            break;
                                                        case 103:
                                                            return mo70097z();
                                                        default:
                                                            switch (i) {
                                                                case 114:
                                                                case 116:
                                                                case 117:
                                                                case 118:
                                                                case 120:
                                                                    break;
                                                                case 115:
                                                                case 119:
                                                                    break;
                                                                default:
                                                                    createParen = Token.createChar(i);
                                                                    break;
                                                            }
                                                    }
                                            }
                                        }
                                    }
                                }
                                i = mo70084d();
                                if (i >= 65536) {
                                    createParen = Token.createString(REUtil.m70006c(i));
                                    break;
                                }
                                createParen = Token.createChar(i);
                            }
                        }
                        int i2 = this.f112659a;
                        createParen = m70101D(i);
                        if (createParen == null) {
                            throw m70105e("parser.atom.5", i2);
                        }
                    }
                    Token mo70085f = mo70085f(i);
                    m70107i();
                    return mo70085f;
                default:
                    throw m70105e("parser.atom.4", this.f112659a - 1);
            }
        }
        int i3 = this.f112664f;
        if (i3 == 93 || i3 == 123 || i3 == 125) {
            throw m70105e("parser.atom.4", this.f112659a - 1);
        }
        Token.CharToken createChar = Token.createChar(i3);
        int i4 = this.f112664f;
        m70107i();
        if (!REUtil.m70009f(i4) || m70102U() != 0 || !REUtil.m70010g(this.f112664f)) {
            return createChar;
        }
        createParen = Token.createParen(Token.createString(new String(new char[]{(char) i4, (char) this.f112664f})), 0);
        m70107i();
        return createParen;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x00ac, code lost:
    
        if (r11 < 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x013c, code lost:
    
        if (m70102U() == 1) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x013e, code lost:
    
        if (r17 != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0140, code lost:
    
        if (r6 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0142, code lost:
    
        r5.subtractRanges(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0147, code lost:
    
        r5.sortRanges();
        r5.compactRanges();
        m70103V(0);
        m70107i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0153, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0146, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x015a, code lost:
    
        throw m70105e("parser.cc.2", r16.f112659a);
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.xpath.regex.RangeToken mo70086l(boolean r17) throws org.apache.xerces.impl.xpath.regex.ParseException {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.C20042c.mo70086l(boolean):org.apache.xerces.impl.xpath.regex.RangeToken");
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00d9  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.xpath.regex.Token m70110m() throws org.apache.xerces.impl.xpath.regex.ParseException {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.C20042c.m70110m():org.apache.xerces.impl.xpath.regex.Token");
    }

    /* renamed from: n */
    public Token m70111n() throws ParseException {
        Token m70112p = m70112p();
        Token.UnionToken unionToken = null;
        while (m70102U() == 2) {
            m70107i();
            if (unionToken == null) {
                unionToken = Token.createUnion();
                unionToken.addChild(m70112p);
                m70112p = unionToken;
            }
            m70112p.addChild(m70112p());
        }
        return m70112p;
    }

    /* renamed from: o */
    public RangeToken mo70087o() throws ParseException {
        RangeToken mo70086l = mo70086l(false);
        while (true) {
            int m70102U = m70102U();
            if (m70102U == 7) {
                m70107i();
                return mo70086l;
            }
            int i = this.f112664f;
            if ((m70102U != 0 || (i != 45 && i != 38)) && m70102U != 4) {
                throw m70105e("parser.ope.2", this.f112659a - 1);
            }
            m70107i();
            if (m70102U() != 9) {
                throw m70105e("parser.ope.1", this.f112659a - 1);
            }
            RangeToken mo70086l2 = mo70086l(false);
            if (m70102U == 4) {
                mo70086l.mergeRanges(mo70086l2);
            } else if (i == 45) {
                mo70086l.subtractRanges(mo70086l2);
            } else {
                if (i != 38) {
                    throw new RuntimeException("ASSERT");
                }
                mo70086l.intersectRanges(mo70086l2);
            }
        }
    }

    /* renamed from: p */
    public Token m70112p() throws ParseException {
        int m70102U = m70102U();
        if (m70102U == 2 || m70102U == 7 || m70102U == 1) {
            return Token.createEmpty();
        }
        Token m70110m = m70110m();
        Token.UnionToken unionToken = null;
        while (true) {
            int m70102U2 = m70102U();
            if (m70102U2 == 2 || m70102U2 == 7 || m70102U2 == 1) {
                break;
            }
            if (unionToken == null) {
                unionToken = Token.createConcat();
                unionToken.addChild(m70110m);
                m70110m = unionToken;
            }
            unionToken.addChild(m70110m());
        }
        return m70110m;
    }

    /* renamed from: q */
    public Token mo70088q() throws ParseException {
        char charAt;
        int i;
        int i2 = this.f112664f - 48;
        if (this.f112668j <= i2) {
            throw m70105e("parser.parse.2", this.f112659a - 2);
        }
        while (true) {
            int i3 = this.f112659a;
            if (i3 < this.f112661c && '0' <= (charAt = this.f112660b.charAt(i3)) && charAt <= '9' && (i = (i2 * 10) + (charAt - '0')) < this.f112668j) {
                this.f112659a++;
                this.f112664f = charAt;
                i2 = i;
            }
        }
        Token.StringToken createBackReference = Token.createBackReference(i2);
        this.f112669k = true;
        if (this.f112670l == null) {
            this.f112670l = new Vector();
        }
        this.f112670l.addElement(new a(i2, this.f112659a - 2));
        m70107i();
        return createBackReference;
    }

    /* renamed from: r */
    public Token mo70089r() throws ParseException {
        m70107i();
        return Token.token_stringbeginning;
    }

    /* renamed from: s */
    public Token mo70090s() throws ParseException {
        m70107i();
        return Token.token_not_wordedge;
    }

    /* renamed from: t */
    public Token mo70091t() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    /* renamed from: u */
    public Token mo70092u() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    /* renamed from: v */
    public Token mo70093v() throws ParseException {
        m70107i();
        return Token.getCombiningCharacterSequence();
    }

    /* renamed from: w */
    public Token mo70094w() throws ParseException {
        m70107i();
        return Token.token_stringend2;
    }

    /* renamed from: x */
    public Token mo70095x() throws ParseException {
        m70107i();
        return Token.token_wordedge;
    }

    /* renamed from: y */
    public Token mo70096y() throws ParseException {
        int i = this.f112659a;
        if (i < this.f112661c) {
            String str = this.f112660b;
            this.f112659a = i + 1;
            char charAt = str.charAt(i);
            if ((65504 & charAt) == 64) {
                m70107i();
                return Token.createChar(charAt - '@');
            }
        }
        throw m70105e("parser.atom.1", this.f112659a - 1);
    }

    /* renamed from: z */
    public Token mo70097z() throws ParseException {
        m70107i();
        return Token.getGraphemePattern();
    }

    public C20042c(Locale locale) {
        m70104W(locale);
    }
}
