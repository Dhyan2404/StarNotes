package org.jsoup.parser;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.util.Arrays;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.Token;

/* renamed from: org.jsoup.parser.r */
/* loaded from: classes13.dex */
public final class C20350r {

    /* renamed from: r */
    public static final char f114350r = 65533;

    /* renamed from: s */
    public static final char[] f114351s;

    /* renamed from: t */
    public static final int f114352t = 128;

    /* renamed from: u */
    public static final int[] f114353u = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, DataBinderMapperImpl.f53082N5, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, DataBinderMapperImpl.f53089O5, 8250, 339, 157, 382, 376};

    /* renamed from: a */
    public final CharacterReader f114354a;

    /* renamed from: b */
    public final ParseErrorList f114355b;

    /* renamed from: d */
    public Token f114357d;

    /* renamed from: i */
    public Token.Tag f114362i;

    /* renamed from: o */
    public String f114368o;

    /* renamed from: c */
    public EnumC20264ab f114356c = EnumC20264ab.f114299a;

    /* renamed from: e */
    public boolean f114358e = false;

    /* renamed from: f */
    public String f114359f = null;

    /* renamed from: g */
    public StringBuilder f114360g = new StringBuilder(1024);

    /* renamed from: h */
    public StringBuilder f114361h = new StringBuilder(1024);

    /* renamed from: j */
    public Token.StartTag f114363j = new Token.StartTag();

    /* renamed from: k */
    public Token.EndTag f114364k = new Token.EndTag();

    /* renamed from: l */
    public Token.C20258b f114365l = new Token.C20258b();

    /* renamed from: m */
    public Token.C20260d f114366m = new Token.C20260d();

    /* renamed from: n */
    public Token.C20259c f114367n = new Token.C20259c();

    /* renamed from: p */
    public final int[] f114369p = new int[1];

    /* renamed from: q */
    public final int[] f114370q = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f114351s = cArr;
        Arrays.sort(cArr);
    }

    public C20350r(CharacterReader characterReader, ParseErrorList parseErrorList) {
        this.f114354a = characterReader;
        this.f114355b = parseErrorList;
    }

    /* renamed from: A */
    public String m71360A() {
        return this.f114368o;
    }

    /* renamed from: B */
    public boolean m71361B() {
        return true;
    }

    /* renamed from: a */
    public Token.Tag m71362a(boolean z) {
        Token.Tag mo71287a = z ? this.f114363j.mo71287a() : this.f114364k.mo71287a();
        this.f114362i = mo71287a;
        return mo71287a;
    }

    /* renamed from: b */
    public Token m71363b() {
        while (!this.f114358e) {
            this.f114356c.mo71349a(this, this.f114354a);
        }
        StringBuilder sb = this.f114360g;
        if (sb.length() != 0) {
            String sb2 = sb.toString();
            sb.delete(0, sb.length());
            this.f114359f = null;
            return this.f114365l.m71305e(sb2);
        }
        String str = this.f114359f;
        if (str == null) {
            this.f114358e = false;
            return this.f114357d;
        }
        Token.C20258b m71305e = this.f114365l.m71305e(str);
        this.f114359f = null;
        return m71305e;
    }

    /* renamed from: c */
    public void m71364c(char c) {
        m71365d(String.valueOf(c));
    }

    /* renamed from: d */
    public void m71365d(String str) {
        if (this.f114359f == null) {
            this.f114359f = str;
            m71374m(this.f114365l);
        } else {
            if (this.f114360g.length() == 0) {
                this.f114360g.append(this.f114359f);
            }
            this.f114360g.append(str);
        }
        m71378q(this.f114365l);
    }

    /* renamed from: e */
    public void m71366e(Token token) {
        Validate.isFalse(this.f114358e);
        this.f114357d = token;
        this.f114358e = true;
        Token.TokenType tokenType = token.f114186a;
        if (tokenType == Token.TokenType.StartTag) {
            this.f114368o = ((Token.StartTag) token).tagName;
        } else if (tokenType == Token.TokenType.EndTag) {
            Token.EndTag endTag = (Token.EndTag) token;
            if (endTag.f114195j != null) {
                m71373l("Attributes incorrectly present on end tag");
            }
            if ("br".equals(endTag.tagName) && "br".equals(this.f114368o) && StringUtil.isBlank(this.f114359f)) {
                this.f114358e = false;
                m71373l("Ignore end tag (br)");
            }
        }
        m71374m(this.f114357d);
        m71378q(this.f114357d);
    }

    /* renamed from: f */
    public void m71367f(EnumC20264ab enumC20264ab) {
        this.f114356c = enumC20264ab;
    }

    /* renamed from: g */
    public void m71368g(char[] cArr) {
        m71365d(String.valueOf(cArr));
    }

    /* renamed from: h */
    public void m71369h(int[] iArr) {
        m71365d(new String(iArr, 0, iArr.length));
    }

    /* renamed from: i */
    public int[] m71370i(Character ch, boolean z) {
        int i;
        if (this.f114354a.isEmpty()) {
            return null;
        }
        if ((ch != null && ch.charValue() == this.f114354a.current()) || this.f114354a.m71197y(f114351s)) {
            return null;
        }
        int[] iArr = this.f114369p;
        this.f114354a.m71191s();
        if (this.f114354a.m71192t("#")) {
            boolean m71193u = this.f114354a.m71193u("X");
            CharacterReader characterReader = this.f114354a;
            String m71181i = m71193u ? characterReader.m71181i() : characterReader.m71180h();
            if (m71181i.length() != 0) {
                this.f114354a.m71173I();
                if (!this.f114354a.m71192t(AndroidTreeView.f47214k)) {
                    m71377p("missing semicolon");
                }
                try {
                    i = Integer.valueOf(m71181i, m71193u ? 16 : 10).intValue();
                } catch (NumberFormatException unused) {
                    i = -1;
                }
                if (i == -1 || ((i >= 55296 && i <= 57343) || i > 1114111)) {
                    m71377p("character outside of valid range");
                    iArr[0] = 65533;
                    return iArr;
                }
                if (i >= 128) {
                    int[] iArr2 = f114353u;
                    if (i < iArr2.length + 128) {
                        m71377p("character is not a valid unicode code point");
                        i = iArr2[i - 128];
                    }
                }
                iArr[0] = i;
                return iArr;
            }
            m71377p("numeric reference with no numerals");
        } else {
            String m71183k = this.f114354a.m71183k();
            boolean m71194v = this.f114354a.m71194v(';');
            if (!(Entities.isBaseNamedEntity(m71183k) || Entities.isUserNamedEntity(m71183k) || (Entities.isNamedEntity(m71183k) && m71194v))) {
                this.f114354a.m71171G();
                if (m71194v) {
                    m71377p("invalid named reference");
                }
                return null;
            }
            if (!z || (!this.f114354a.m71167B() && !this.f114354a.m71198z() && !this.f114354a.m71196x('=', '-', NameUtil.USCORE))) {
                this.f114354a.m71173I();
                if (!this.f114354a.m71192t(AndroidTreeView.f47214k)) {
                    m71377p("missing semicolon");
                }
                int codepointsForName = Entities.codepointsForName(m71183k, this.f114370q);
                if (codepointsForName == 1) {
                    iArr[0] = this.f114370q[0];
                    return iArr;
                }
                if (codepointsForName == 2) {
                    return this.f114370q;
                }
                Validate.fail("Unexpected characters returned for " + m71183k);
                return this.f114370q;
            }
        }
        this.f114354a.m71171G();
        return null;
    }

    /* renamed from: j */
    public String m71371j(boolean z) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        while (!this.f114354a.isEmpty()) {
            borrowBuilder.append(this.f114354a.consumeTo('&'));
            if (this.f114354a.m71194v('&')) {
                this.f114354a.m71178f();
                int[] m71370i = m71370i(null, z);
                if (m71370i == null || m71370i.length == 0) {
                    borrowBuilder.append('&');
                } else {
                    borrowBuilder.appendCodePoint(m71370i[0]);
                    if (m71370i.length == 2) {
                        borrowBuilder.appendCodePoint(m71370i[1]);
                    }
                }
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    /* renamed from: k */
    public EnumC20264ab m71372k() {
        return this.f114356c;
    }

    /* renamed from: l */
    public void m71373l(String str) {
        if (this.f114355b.canAddError()) {
            this.f114355b.add(new ParseError(this.f114354a.pos(), str));
        }
    }

    /* renamed from: m */
    public void m71374m(Token token) {
        token.setByteStartPos(this.f114354a.byteStartPos());
    }

    /* renamed from: n */
    public void m71375n(EnumC20264ab enumC20264ab) {
        this.f114354a.advance();
        this.f114356c = enumC20264ab;
    }

    /* renamed from: o */
    public void m71376o() {
        this.f114362i.m71300m();
        m71366e(this.f114362i);
    }

    /* renamed from: p */
    public final void m71377p(String str) {
        if (this.f114355b.canAddError()) {
            this.f114355b.add(new ParseError(this.f114354a.pos(), "Invalid character reference: %s", str));
        }
    }

    /* renamed from: q */
    public void m71378q(Token token) {
        token.setByteEndPos(this.f114354a.byteEndPos());
        this.f114354a.nextPos();
    }

    /* renamed from: r */
    public void m71379r(EnumC20264ab enumC20264ab) {
        if (this.f114355b.canAddError()) {
            this.f114355b.add(new ParseError(this.f114354a.pos(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.f114354a.current()), enumC20264ab));
        }
    }

    /* renamed from: s */
    public void m71380s() {
        this.f114367n.mo71287a();
    }

    /* renamed from: t */
    public void m71381t(EnumC20264ab enumC20264ab) {
        if (this.f114355b.canAddError()) {
            this.f114355b.add(new ParseError(this.f114354a.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", enumC20264ab));
        }
    }

    /* renamed from: u */
    public void m71382u() {
        m71366e(this.f114367n);
    }

    /* renamed from: v */
    public void m71383v() {
        this.f114367n.mo71287a();
        this.f114367n.f114200f = true;
    }

    /* renamed from: w */
    public void m71384w() {
        this.f114366m.mo71287a();
    }

    /* renamed from: x */
    public void m71385x() {
        m71366e(this.f114366m);
    }

    /* renamed from: y */
    public void m71386y() {
        Token.m71286b(this.f114361h);
    }

    /* renamed from: z */
    public boolean m71387z() {
        return this.f114368o != null && this.f114362i.name().equalsIgnoreCase(this.f114368o);
    }
}
