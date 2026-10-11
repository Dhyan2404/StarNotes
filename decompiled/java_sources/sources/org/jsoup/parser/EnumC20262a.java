package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.ExtUnits;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.parser.EnumC20262a;
import org.jsoup.parser.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: org.jsoup.parser.a */
/* loaded from: classes13.dex */
public abstract class EnumC20262a {

    /* renamed from: a */
    public static final EnumC20262a f114209a;

    /* renamed from: b */
    public static final EnumC20262a f114210b;

    /* renamed from: c */
    public static final EnumC20262a f114211c;

    /* renamed from: d */
    public static final EnumC20262a f114212d;

    /* renamed from: e */
    public static final EnumC20262a f114213e;

    /* renamed from: f */
    public static final EnumC20262a f114214f;

    /* renamed from: g */
    public static final EnumC20262a f114215g;

    /* renamed from: h */
    public static final EnumC20262a f114216h;

    /* renamed from: i */
    public static final EnumC20262a f114217i;

    /* renamed from: j */
    public static final EnumC20262a f114218j;

    /* renamed from: k */
    public static final EnumC20262a f114219k;

    /* renamed from: l */
    public static final EnumC20262a f114220l;

    /* renamed from: m */
    public static final EnumC20262a f114221m;

    /* renamed from: n */
    public static final EnumC20262a f114222n;

    /* renamed from: o */
    public static final EnumC20262a f114223o;

    /* renamed from: p */
    public static final EnumC20262a f114224p;

    /* renamed from: q */
    public static final EnumC20262a f114225q;

    /* renamed from: r */
    public static final EnumC20262a f114226r;

    /* renamed from: s */
    public static final EnumC20262a f114227s;

    /* renamed from: t */
    public static final EnumC20262a f114228t;

    /* renamed from: u */
    public static final EnumC20262a f114229u;

    /* renamed from: v */
    public static final EnumC20262a f114230v;

    /* renamed from: w */
    public static final EnumC20262a f114231w;

    /* renamed from: x */
    private static final String f114232x;

    /* renamed from: y */
    private static final /* synthetic */ EnumC20262a[] f114233y;

    /* renamed from: org.jsoup.parser.a$a */
    /* loaded from: classes13.dex */
    public static final class a {

        /* renamed from: a */
        public static final String[] f114246a = {gon.f71271X, "basefont", "bgsound", "command", "link"};

        /* renamed from: b */
        public static final String[] f114247b = {"noframes", "style"};

        /* renamed from: c */
        public static final String[] f114248c = {"body", "br", "html"};

        /* renamed from: d */
        public static final String[] f114249d = {"body", "html"};

        /* renamed from: e */
        public static final String[] f114250e = {"body", "br", gon.f71289o, "html"};

        /* renamed from: f */
        public static final String[] f114251f = {"basefont", "bgsound", "link", "meta", "noframes", "style"};

        /* renamed from: g */
        public static final String[] f114252g = {gon.f71271X, "basefont", "bgsound", "command", "link", "meta", "noframes", Constants.ELEMNAME_SCRIPT_STRING, "style", "title"};

        /* renamed from: h */
        public static final String[] f114253h = {"address", "article", "aside", "blockquote", "center", "details", CouchFieldKey.KEY_DIR, gon.f71293q, "dl", "fieldset", "figcaption", "figure", org.apache.poi.convert.htmlgen.Constants.NAME_FOOTER, org.apache.poi.convert.htmlgen.Constants.NAME_HEADER, "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};

        /* renamed from: i */
        public static final String[] f114254i = {"h1", "h2", "h3", "h4", "h5", "h6"};

        /* renamed from: j */
        public static final String[] f114255j = {"address", gon.f71293q, "p"};

        /* renamed from: k */
        public static final String[] f114256k = {"dd", "dt"};

        /* renamed from: l */
        public static final String[] f114257l = {"b", "big", "code", ExtUnits.UNIT_EM, "font", "i", "s", "small", HWRGestureType.STRIKE, "strong", gon.f71287n, "u"};

        /* renamed from: m */
        public static final String[] f114258m = {"applet", "marquee", "object"};

        /* renamed from: n */
        public static final String[] f114259n = {"area", "br", "embed", "img", "keygen", "wbr"};

        /* renamed from: o */
        public static final String[] f114260o = {Constants.ELEMNAME_PARAMVARIABLE_STRING, "source", "track"};

        /* renamed from: p */
        public static final String[] f114261p = {"action", "name", "prompt"};

        /* renamed from: q */
        public static final String[] f114262q = {"caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, gon.f71289o, "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: r */
        public static final String[] f114263r = {"address", "article", "aside", "blockquote", "button", "center", "details", CouchFieldKey.KEY_DIR, gon.f71293q, "dl", "fieldset", "figcaption", "figure", org.apache.poi.convert.htmlgen.Constants.NAME_FOOTER, org.apache.poi.convert.htmlgen.Constants.NAME_HEADER, "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};

        /* renamed from: s */
        public static final String[] f114264s = {"a", "b", "big", "code", ExtUnits.UNIT_EM, "font", "i", "nobr", "s", "small", HWRGestureType.STRIKE, "strong", gon.f71287n, "u"};

        /* renamed from: t */
        public static final String[] f114265t = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: u */
        public static final String[] f114266u = {"tbody", "tfoot", "thead"};

        /* renamed from: v */
        public static final String[] f114267v = {"td", "th", "tr"};

        /* renamed from: w */
        public static final String[] f114268w = {Constants.ELEMNAME_SCRIPT_STRING, "style"};

        /* renamed from: x */
        public static final String[] f114269x = {"td", "th"};

        /* renamed from: y */
        public static final String[] f114270y = {"body", "caption", "col", "colgroup", "html"};

        /* renamed from: z */
        public static final String[] f114271z = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: A */
        public static final String[] f114234A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: B */
        public static final String[] f114235B = {"body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: C */
        public static final String[] f114236C = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: D */
        public static final String[] f114237D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};

        /* renamed from: E */
        public static final String[] f114238E = {"body", "caption", "col", "colgroup", "html", "td", "th", "tr"};

        /* renamed from: F */
        public static final String[] f114239F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: G */
        public static final String[] f114240G = {"body", "caption", "col", "colgroup", "html", "td", "th"};

        /* renamed from: H */
        public static final String[] f114241H = {"input", "keygen", "textarea"};

        /* renamed from: I */
        public static final String[] f114242I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: J */
        public static final String[] f114243J = {"tbody", "tfoot", "thead"};

        /* renamed from: K */
        public static final String[] f114244K = {gon.f71289o, "noscript"};

        /* renamed from: L */
        public static final String[] f114245L = {"body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
    }

    static {
        C20289b c20289b = new C20289b("Initial", 0);
        f114209a = c20289b;
        final String str = "BeforeHtml";
        final int i = 1;
        EnumC20262a enumC20262a = new EnumC20262a(str, i) { // from class: org.jsoup.parser.m
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71359b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.m71227Y("html");
                htmlTreeBuilder.m71206D0(EnumC20262a.f114211c);
                return htmlTreeBuilder.process(token);
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    htmlTreeBuilder.m71218P(token.asStartTag());
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114211c);
                    return true;
                }
                if ((!token.isEndTag() || !StringUtil.inSorted(token.asEndTag().normalName(), EnumC20262a.a.f114250e)) && token.isEndTag()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                return m71359b(token, htmlTreeBuilder);
            }
        };
        f114210b = enumC20262a;
        final String str2 = "BeforeHead";
        final int i2 = 2;
        EnumC20262a enumC20262a2 = new EnumC20262a(str2, i2) { // from class: org.jsoup.parser.s
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return EnumC20262a.f114215g.mo71335a(token, htmlTreeBuilder);
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals(gon.f71289o)) {
                    htmlTreeBuilder.m71202B0(htmlTreeBuilder.m71218P(token.asStartTag()));
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114212d);
                    return true;
                }
                if (token.isEndTag() && StringUtil.inSorted(token.asEndTag().normalName(), EnumC20262a.a.f114250e)) {
                    htmlTreeBuilder.processStartTag(gon.f71289o);
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                htmlTreeBuilder.processStartTag(gon.f71289o);
                return htmlTreeBuilder.process(token);
            }
        };
        f114211c = enumC20262a2;
        final String str3 = "InHead";
        final int i3 = 3;
        EnumC20262a enumC20262a3 = new EnumC20262a(str3, i3) { // from class: org.jsoup.parser.t
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                EnumC20262a enumC20262a4;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                int i4 = C20290b0.f114349a[token.f114186a.ordinal()];
                if (i4 == 1) {
                    htmlTreeBuilder.m71221S(token.asComment());
                } else {
                    if (i4 == 2) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (i4 == 3) {
                        Token.StartTag asStartTag = token.asStartTag();
                        String normalName = asStartTag.normalName();
                        if (normalName.equals("html")) {
                            return EnumC20262a.f114215g.mo71335a(token, htmlTreeBuilder);
                        }
                        if (StringUtil.inSorted(normalName, EnumC20262a.a.f114246a)) {
                            Element m71222T = htmlTreeBuilder.m71222T(asStartTag);
                            if (normalName.equals(gon.f71271X) && m71222T.hasAttr("href")) {
                                htmlTreeBuilder.m71236f0(m71222T);
                            }
                        } else if (normalName.equals("meta")) {
                            htmlTreeBuilder.m71222T(asStartTag);
                        } else if (normalName.equals("title")) {
                            EnumC20262a.m71333c(asStartTag, htmlTreeBuilder);
                        } else if (StringUtil.inSorted(normalName, EnumC20262a.a.f114247b)) {
                            EnumC20262a.m71334d(asStartTag, htmlTreeBuilder);
                        } else if (normalName.equals("noscript")) {
                            htmlTreeBuilder.m71218P(asStartTag);
                            enumC20262a4 = EnumC20262a.f114213e;
                        } else {
                            if (!normalName.equals(Constants.ELEMNAME_SCRIPT_STRING)) {
                                if (!normalName.equals(gon.f71289o)) {
                                    return m71388a(token, (AbstractC20358z) htmlTreeBuilder);
                                }
                                htmlTreeBuilder.m71267v(this);
                                return false;
                            }
                            htmlTreeBuilder.f114372b.m71367f(EnumC20264ab.f114328f);
                            htmlTreeBuilder.m71234e0();
                            htmlTreeBuilder.m71206D0(EnumC20262a.f114216h);
                            htmlTreeBuilder.m71218P(asStartTag);
                        }
                    } else {
                        if (i4 != 4) {
                            return m71388a(token, (AbstractC20358z) htmlTreeBuilder);
                        }
                        String normalName2 = token.asEndTag().normalName();
                        if (!normalName2.equals(gon.f71289o)) {
                            if (StringUtil.inSorted(normalName2, EnumC20262a.a.f114248c)) {
                                return m71388a(token, (AbstractC20358z) htmlTreeBuilder);
                            }
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                        htmlTreeBuilder.m71246k0();
                        enumC20262a4 = EnumC20262a.f114214f;
                    }
                    htmlTreeBuilder.m71206D0(enumC20262a4);
                }
                return true;
            }

            /* renamed from: a */
            private boolean m71388a(Token token, AbstractC20358z abstractC20358z) {
                abstractC20358z.processEndTag(gon.f71289o);
                return abstractC20358z.process(token);
            }
        };
        f114212d = enumC20262a3;
        final String str4 = "InHeadNoscript";
        final int i4 = 4;
        EnumC20262a enumC20262a4 = new EnumC20262a(str4, i4) { // from class: org.jsoup.parser.u
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71389b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.m71267v(this);
                htmlTreeBuilder.m71220R(new Token.C20258b().m71305e(token.toString()));
                return true;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals("noscript")) {
                    htmlTreeBuilder.m71246k0();
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114212d);
                    return true;
                }
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b || token.isComment() || (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), EnumC20262a.a.f114251f))) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114212d);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals("br")) {
                    return m71389b(token, htmlTreeBuilder);
                }
                if ((!token.isStartTag() || !StringUtil.inSorted(token.asStartTag().normalName(), EnumC20262a.a.f114244K)) && !token.isEndTag()) {
                    return m71389b(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.m71267v(this);
                return false;
            }
        };
        f114213e = enumC20262a4;
        final String str5 = "AfterHead";
        final int i5 = 5;
        EnumC20262a enumC20262a5 = new EnumC20262a(str5, i5) { // from class: org.jsoup.parser.v
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71390b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.processStartTag("body");
                htmlTreeBuilder.m71269w(true);
                return htmlTreeBuilder.process(token);
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                EnumC20262a enumC20262a6;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return true;
                }
                if (token.isStartTag()) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("html")) {
                        return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                    }
                    if (normalName.equals("body")) {
                        htmlTreeBuilder.m71242i0();
                        htmlTreeBuilder.m71218P(asStartTag);
                        htmlTreeBuilder.m71269w(false);
                        enumC20262a6 = EnumC20262a.f114215g;
                    } else if (normalName.equals("frameset")) {
                        htmlTreeBuilder.m71218P(asStartTag);
                        enumC20262a6 = EnumC20262a.f114227s;
                    } else {
                        if (StringUtil.inSorted(normalName, EnumC20262a.a.f114252g)) {
                            htmlTreeBuilder.m71267v(this);
                            Element m71208F = htmlTreeBuilder.m71208F();
                            htmlTreeBuilder.m71256p0(m71208F);
                            htmlTreeBuilder.m71254o0(token, EnumC20262a.f114212d);
                            htmlTreeBuilder.m71264t0(m71208F);
                            return true;
                        }
                        if (normalName.equals(gon.f71289o)) {
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                    }
                    htmlTreeBuilder.m71206D0(enumC20262a6);
                    return true;
                }
                if (token.isEndTag() && !StringUtil.inSorted(token.asEndTag().normalName(), EnumC20262a.a.f114249d)) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                m71390b(token, htmlTreeBuilder);
                return true;
            }
        };
        f114214f = enumC20262a5;
        final String str6 = "InBody";
        final int i6 = 6;
        EnumC20262a enumC20262a6 = new EnumC20262a(str6, i6) { // from class: org.jsoup.parser.w
            {
                C20289b c20289b2 = null;
            }

            /* JADX WARN: Code restructure failed: missing block: B:133:0x024d, code lost:
            
                if (r0.m71211I("p") != false) goto L171;
             */
            /* JADX WARN: Code restructure failed: missing block: B:134:0x024f, code lost:
            
                r0.processEndTag("p");
             */
            /* JADX WARN: Code restructure failed: missing block: B:199:0x03ca, code lost:
            
                if (r0.m71222T(r2).attr("type").equalsIgnoreCase(org.apache.poi.ss.util.CellUtil.HIDDEN) == false) goto L357;
             */
            /* JADX WARN: Code restructure failed: missing block: B:275:0x057a, code lost:
            
                if (r0.m71211I("p") != false) goto L171;
             */
            /* JADX WARN: Code restructure failed: missing block: B:301:0x05fe, code lost:
            
                if (r0.m71211I("p") != false) goto L171;
             */
            /* JADX WARN: Failed to find 'out' block for switch in B:122:0x0229. Please report as an issue. */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private boolean m71391c(org.jsoup.parser.Token r19, org.jsoup.parser.HtmlTreeBuilder r20) {
                /*
                    Method dump skipped, instructions count: 2078
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.C20355w.m71391c(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }

            /* JADX WARN: Code restructure failed: missing block: B:108:0x01b6, code lost:
            
                if (r10.currentElement().normalName().equals(r1) == false) goto L125;
             */
            /* JADX WARN: Code restructure failed: missing block: B:122:0x01fc, code lost:
            
                if (r10.currentElement().normalName().equals(r1) == false) goto L125;
             */
            /* JADX WARN: Code restructure failed: missing block: B:130:0x0226, code lost:
            
                if (r10.currentElement().normalName().equals(r1) == false) goto L125;
             */
            /* JADX WARN: Code restructure failed: missing block: B:64:0x010f, code lost:
            
                if (r10.currentElement().normalName().equals(r1) == false) goto L125;
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x01bb, code lost:
            
                r10.m71250m0(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:67:0x01b8, code lost:
            
                r10.m71267v(r8);
             */
            /* JADX WARN: Failed to find 'out' block for switch in B:51:0x00de. Please report as an issue. */
            /* renamed from: d */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private boolean m71392d(org.jsoup.parser.Token r9, org.jsoup.parser.HtmlTreeBuilder r10) {
                /*
                    Method dump skipped, instructions count: 656
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.C20355w.m71392d(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }

            /* renamed from: e */
            private boolean m71393e(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                String normalName = token.asEndTag().normalName();
                ArrayList<Element> m71210H = htmlTreeBuilder.m71210H();
                for (int i7 = 0; i7 < 8; i7++) {
                    Element m71199A = htmlTreeBuilder.m71199A(normalName);
                    if (m71199A == null) {
                        return m71394b(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.m71240h0(m71199A)) {
                        htmlTreeBuilder.m71267v(this);
                    } else {
                        if (!htmlTreeBuilder.m71213K(m71199A.normalName())) {
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                        if (htmlTreeBuilder.currentElement() != m71199A) {
                            htmlTreeBuilder.m71267v(this);
                        }
                        int size = m71210H.size();
                        Element element = null;
                        int i8 = 0;
                        boolean z = false;
                        Element element2 = null;
                        while (true) {
                            if (i8 >= size || i8 >= 64) {
                                break;
                            }
                            Element element3 = m71210H.get(i8);
                            if (element3 == m71199A) {
                                element2 = m71210H.get(i8 - 1);
                                z = true;
                            } else if (z && htmlTreeBuilder.m71231c0(element3)) {
                                element = element3;
                                break;
                            }
                            i8++;
                        }
                        if (element == null) {
                            htmlTreeBuilder.m71250m0(m71199A.normalName());
                        } else {
                            Element element4 = element;
                            Element element5 = element4;
                            for (int i9 = 0; i9 < 3; i9++) {
                                if (htmlTreeBuilder.m71240h0(element4)) {
                                    element4 = htmlTreeBuilder.m71253o(element4);
                                }
                                if (!htmlTreeBuilder.m71230b0(element4)) {
                                    htmlTreeBuilder.m71264t0(element4);
                                } else {
                                    if (element4 == m71199A) {
                                        break;
                                    }
                                    Element element6 = new Element(Tag.valueOf(element4.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.m71201B());
                                    htmlTreeBuilder.m71268v0(element4, element6);
                                    htmlTreeBuilder.m71270w0(element4, element6);
                                    if (element5.parent() != null) {
                                        element5.remove();
                                    }
                                    element6.appendChild(element5);
                                    element4 = element6;
                                    element5 = element4;
                                }
                            }
                            if (StringUtil.inSorted(element2.normalName(), EnumC20262a.a.f114265t)) {
                                if (element5.parent() != null) {
                                    element5.remove();
                                }
                                htmlTreeBuilder.m71224V(element5);
                            } else {
                                if (element5.parent() != null) {
                                    element5.remove();
                                }
                                element2.appendChild(element5);
                            }
                            Element element7 = new Element(m71199A.tag(), htmlTreeBuilder.m71201B());
                            element7.attributes().addAll(m71199A.attributes());
                            for (Node node : (Node[]) element.childNodes().toArray(new Node[0])) {
                                element7.appendChild(node);
                            }
                            element.appendChild(element7);
                            htmlTreeBuilder.m71262s0(m71199A);
                            htmlTreeBuilder.m71264t0(m71199A);
                            htmlTreeBuilder.m71226X(element, element7);
                        }
                    }
                    htmlTreeBuilder.m71262s0(m71199A);
                    return true;
                }
                return true;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                String str7;
                boolean m71332b;
                int i7 = C20290b0.f114349a[token.f114186a.ordinal()];
                if (i7 == 1) {
                    htmlTreeBuilder.m71221S(token.asComment());
                } else {
                    if (i7 == 2) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (i7 == 3) {
                        return m71391c(token, htmlTreeBuilder);
                    }
                    if (i7 == 4) {
                        return m71392d(token, htmlTreeBuilder);
                    }
                    if (i7 == 5) {
                        Token.C20258b asCharacter = token.asCharacter();
                        String m71304d = asCharacter.m71304d();
                        str7 = EnumC20262a.f114232x;
                        if (m71304d.equals(str7)) {
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                        if (htmlTreeBuilder.m71271x()) {
                            m71332b = EnumC20262a.m71332b(asCharacter);
                            if (m71332b) {
                                htmlTreeBuilder.m71260r0();
                                htmlTreeBuilder.m71220R(asCharacter);
                            }
                        }
                        htmlTreeBuilder.m71260r0();
                        htmlTreeBuilder.m71220R(asCharacter);
                        htmlTreeBuilder.m71269w(false);
                    }
                }
                return true;
            }

            /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
            
                return true;
             */
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean m71394b(org.jsoup.parser.Token r6, org.jsoup.parser.HtmlTreeBuilder r7) {
                /*
                    r5 = this;
                    org.jsoup.parser.Token$EndTag r6 = r6.asEndTag()
                    java.lang.String r6 = r6.normalName
                    java.util.ArrayList r0 = r7.m71210H()
                    int r1 = r0.size()
                    r2 = 1
                    int r1 = r1 - r2
                L10:
                    if (r1 < 0) goto L48
                    java.lang.Object r3 = r0.get(r1)
                    org.jsoup.nodes.Element r3 = (org.jsoup.nodes.Element) r3
                    java.lang.String r4 = r3.normalName()
                    boolean r4 = r4.equals(r6)
                    if (r4 == 0) goto L3a
                    r7.m71275z(r6)
                    org.jsoup.nodes.Element r0 = r7.currentElement()
                    java.lang.String r0 = r0.normalName()
                    boolean r0 = r6.equals(r0)
                    if (r0 != 0) goto L36
                    r7.m71267v(r5)
                L36:
                    r7.m71250m0(r6)
                    goto L48
                L3a:
                    boolean r3 = r7.m71231c0(r3)
                    if (r3 == 0) goto L45
                    r7.m71267v(r5)
                    r5 = 0
                    return r5
                L45:
                    int r1 = r1 + (-1)
                    goto L10
                L48:
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.C20355w.m71394b(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }
        };
        f114215g = enumC20262a6;
        final String str7 = "Text";
        final int i7 = 7;
        EnumC20262a enumC20262a7 = new EnumC20262a(str7, i7) { // from class: org.jsoup.parser.x
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isCharacter()) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isEOF()) {
                    htmlTreeBuilder.m71267v(this);
                    htmlTreeBuilder.m71246k0();
                    htmlTreeBuilder.m71206D0(htmlTreeBuilder.m71244j0());
                    return htmlTreeBuilder.process(token);
                }
                if (!token.isEndTag()) {
                    return true;
                }
                htmlTreeBuilder.m71246k0();
                htmlTreeBuilder.m71206D0(htmlTreeBuilder.m71244j0());
                return true;
            }
        };
        f114216h = enumC20262a7;
        final String str8 = "InTable";
        final int i8 = 8;
        EnumC20262a enumC20262a8 = new EnumC20262a(str8, i8) { // from class: org.jsoup.parser.y
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                EnumC20262a enumC20262a9;
                if (token.isCharacter()) {
                    htmlTreeBuilder.m71238g0();
                    htmlTreeBuilder.m71234e0();
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114218j);
                    return htmlTreeBuilder.process(token);
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (!token.isStartTag()) {
                    if (!token.isEndTag()) {
                        if (!token.isEOF()) {
                            return m71395b(token, htmlTreeBuilder);
                        }
                        if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                            htmlTreeBuilder.m71267v(this);
                        }
                        return true;
                    }
                    String normalName = token.asEndTag().normalName();
                    if (!normalName.equals("table")) {
                        if (!StringUtil.inSorted(normalName, EnumC20262a.a.f114235B)) {
                            return m71395b(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (!htmlTreeBuilder.m71217O(normalName)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71250m0("table");
                    htmlTreeBuilder.m71272x0();
                    return true;
                }
                Token.StartTag asStartTag = token.asStartTag();
                String normalName2 = asStartTag.normalName();
                if (normalName2.equals("caption")) {
                    htmlTreeBuilder.m71263t();
                    htmlTreeBuilder.m71225W();
                    htmlTreeBuilder.m71218P(asStartTag);
                    enumC20262a9 = EnumC20262a.f114219k;
                } else if (normalName2.equals("colgroup")) {
                    htmlTreeBuilder.m71263t();
                    htmlTreeBuilder.m71218P(asStartTag);
                    enumC20262a9 = EnumC20262a.f114220l;
                } else {
                    if (normalName2.equals("col")) {
                        htmlTreeBuilder.processStartTag("colgroup");
                        return htmlTreeBuilder.process(token);
                    }
                    if (!StringUtil.inSorted(normalName2, EnumC20262a.a.f114266u)) {
                        if (StringUtil.inSorted(normalName2, EnumC20262a.a.f114267v)) {
                            htmlTreeBuilder.processStartTag("tbody");
                            return htmlTreeBuilder.process(token);
                        }
                        if (normalName2.equals("table")) {
                            htmlTreeBuilder.m71267v(this);
                            if (htmlTreeBuilder.processEndTag("table")) {
                                return htmlTreeBuilder.process(token);
                            }
                        } else {
                            if (StringUtil.inSorted(normalName2, EnumC20262a.a.f114268w)) {
                                return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114212d);
                            }
                            if (normalName2.equals("input")) {
                                if (!asStartTag.f114195j.get("type").equalsIgnoreCase(CellUtil.HIDDEN)) {
                                    return m71395b(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.m71222T(asStartTag);
                            } else {
                                if (!normalName2.equals("form")) {
                                    return m71395b(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.m71267v(this);
                                if (htmlTreeBuilder.m71205D() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.m71223U(asStartTag, false);
                            }
                        }
                        return true;
                    }
                    htmlTreeBuilder.m71263t();
                    htmlTreeBuilder.m71218P(asStartTag);
                    enumC20262a9 = EnumC20262a.f114221m;
                }
                htmlTreeBuilder.m71206D0(enumC20262a9);
                return true;
            }

            /* renamed from: b */
            public boolean m71395b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.m71267v(this);
                if (!StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), EnumC20262a.a.f114236C)) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                }
                htmlTreeBuilder.m71200A0(true);
                boolean m71254o0 = htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                htmlTreeBuilder.m71200A0(false);
                return m71254o0;
            }
        };
        f114217i = enumC20262a8;
        final String str9 = "InTableText";
        final int i9 = 9;
        EnumC20262a enumC20262a9 = new EnumC20262a(str9, i9) { // from class: org.jsoup.parser.c
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                String str10;
                if (token.f114186a == Token.TokenType.Character) {
                    Token.C20258b asCharacter = token.asCharacter();
                    String m71304d = asCharacter.m71304d();
                    str10 = EnumC20262a.f114232x;
                    if (m71304d.equals(str10)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    Token.C20258b m71305e = new Token.C20258b().m71305e(asCharacter.m71304d());
                    htmlTreeBuilder.updateToken(m71305e);
                    htmlTreeBuilder.m71209G().add(m71305e);
                    return true;
                }
                if (htmlTreeBuilder.m71209G().size() > 0) {
                    for (Token.C20258b c20258b : htmlTreeBuilder.m71209G()) {
                        m71332b = EnumC20262a.m71332b(c20258b);
                        if (m71332b) {
                            htmlTreeBuilder.m71220R(c20258b);
                        } else {
                            htmlTreeBuilder.m71267v(this);
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().normalName(), EnumC20262a.a.f114236C)) {
                                htmlTreeBuilder.m71200A0(true);
                                htmlTreeBuilder.m71254o0(c20258b, EnumC20262a.f114215g);
                                htmlTreeBuilder.m71200A0(false);
                            } else {
                                htmlTreeBuilder.m71254o0(c20258b, EnumC20262a.f114215g);
                            }
                        }
                    }
                    htmlTreeBuilder.m71238g0();
                }
                htmlTreeBuilder.m71206D0(htmlTreeBuilder.m71244j0());
                return htmlTreeBuilder.process(token);
            }
        };
        f114218j = enumC20262a9;
        final String str10 = "InCaption";
        final int i10 = 10;
        EnumC20262a enumC20262a10 = new EnumC20262a(str10, i10) { // from class: org.jsoup.parser.d
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isEndTag() && token.asEndTag().normalName().equals("caption")) {
                    if (!htmlTreeBuilder.m71217O(token.asEndTag().normalName())) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71273y();
                    if (!htmlTreeBuilder.currentElement().normalName().equals("caption")) {
                        htmlTreeBuilder.m71267v(this);
                    }
                    htmlTreeBuilder.m71250m0("caption");
                    htmlTreeBuilder.m71257q();
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114217i);
                    return true;
                }
                if ((token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), EnumC20262a.a.f114234A)) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                    htmlTreeBuilder.m71267v(this);
                    if (htmlTreeBuilder.processEndTag("caption")) {
                        return htmlTreeBuilder.process(token);
                    }
                    return true;
                }
                if (!token.isEndTag() || !StringUtil.inSorted(token.asEndTag().normalName(), EnumC20262a.a.f114245L)) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                }
                htmlTreeBuilder.m71267v(this);
                return false;
            }
        };
        f114219k = enumC20262a10;
        final String str11 = "InColumnGroup";
        final int i11 = 11;
        EnumC20262a enumC20262a11 = new EnumC20262a(str11, i11) { // from class: org.jsoup.parser.e
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                int i12 = C20290b0.f114349a[token.f114186a.ordinal()];
                if (i12 == 1) {
                    htmlTreeBuilder.m71221S(token.asComment());
                } else if (i12 == 2) {
                    htmlTreeBuilder.m71267v(this);
                } else if (i12 == 3) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    normalName.hashCode();
                    if (!normalName.equals("col")) {
                        return !normalName.equals("html") ? m71351a(token, (AbstractC20358z) htmlTreeBuilder) : htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                    }
                    htmlTreeBuilder.m71222T(asStartTag);
                } else {
                    if (i12 != 4) {
                        if (i12 == 6 && htmlTreeBuilder.currentElement().normalName().equals("html")) {
                            return true;
                        }
                        return m71351a(token, (AbstractC20358z) htmlTreeBuilder);
                    }
                    if (!token.asEndTag().normalName.equals("colgroup")) {
                        return m71351a(token, (AbstractC20358z) htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71246k0();
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114217i);
                }
                return true;
            }

            /* renamed from: a */
            private boolean m71351a(Token token, AbstractC20358z abstractC20358z) {
                if (abstractC20358z.processEndTag("colgroup")) {
                    return abstractC20358z.process(token);
                }
                return true;
            }
        };
        f114220l = enumC20262a11;
        final String str12 = "InTableBody";
        final int i12 = 12;
        EnumC20262a enumC20262a12 = new EnumC20262a(str12, i12) { // from class: org.jsoup.parser.f
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71352b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!htmlTreeBuilder.m71217O("tbody") && !htmlTreeBuilder.m71217O("thead") && !htmlTreeBuilder.m71213K("tfoot")) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                htmlTreeBuilder.m71261s();
                htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().normalName());
                return htmlTreeBuilder.process(token);
            }

            /* renamed from: c */
            private boolean m71353c(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114217i);
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                EnumC20262a enumC20262a13;
                int i13 = C20290b0.f114349a[token.f114186a.ordinal()];
                if (i13 == 3) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("template")) {
                        htmlTreeBuilder.m71218P(asStartTag);
                        return true;
                    }
                    if (!normalName.equals("tr")) {
                        if (!StringUtil.inSorted(normalName, EnumC20262a.a.f114269x)) {
                            return StringUtil.inSorted(normalName, EnumC20262a.a.f114237D) ? m71352b(token, htmlTreeBuilder) : m71353c(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.m71267v(this);
                        htmlTreeBuilder.processStartTag("tr");
                        return htmlTreeBuilder.process(asStartTag);
                    }
                    htmlTreeBuilder.m71261s();
                    htmlTreeBuilder.m71218P(asStartTag);
                    enumC20262a13 = EnumC20262a.f114222n;
                } else {
                    if (i13 != 4) {
                        return m71353c(token, htmlTreeBuilder);
                    }
                    String normalName2 = token.asEndTag().normalName();
                    if (!StringUtil.inSorted(normalName2, EnumC20262a.a.f114243J)) {
                        if (normalName2.equals("table")) {
                            return m71352b(token, htmlTreeBuilder);
                        }
                        if (!StringUtil.inSorted(normalName2, EnumC20262a.a.f114238E)) {
                            return m71353c(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (!htmlTreeBuilder.m71217O(normalName2)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71261s();
                    htmlTreeBuilder.m71246k0();
                    enumC20262a13 = EnumC20262a.f114217i;
                }
                htmlTreeBuilder.m71206D0(enumC20262a13);
                return true;
            }
        };
        f114221m = enumC20262a12;
        final String str13 = "InRow";
        final int i13 = 13;
        EnumC20262a enumC20262a13 = new EnumC20262a(str13, i13) { // from class: org.jsoup.parser.g
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71355b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114217i);
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isStartTag()) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("template")) {
                        htmlTreeBuilder.m71218P(asStartTag);
                        return true;
                    }
                    if (!StringUtil.inSorted(normalName, EnumC20262a.a.f114269x)) {
                        return StringUtil.inSorted(normalName, EnumC20262a.a.f114239F) ? m71354a(token, (AbstractC20358z) htmlTreeBuilder) : m71355b(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.m71265u();
                    htmlTreeBuilder.m71218P(asStartTag);
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114223o);
                    htmlTreeBuilder.m71225W();
                    return true;
                }
                if (!token.isEndTag()) {
                    return m71355b(token, htmlTreeBuilder);
                }
                String normalName2 = token.asEndTag().normalName();
                if (normalName2.equals("tr")) {
                    if (!htmlTreeBuilder.m71217O(normalName2)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71265u();
                    htmlTreeBuilder.m71246k0();
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114221m);
                    return true;
                }
                if (normalName2.equals("table")) {
                    return m71354a(token, (AbstractC20358z) htmlTreeBuilder);
                }
                if (!StringUtil.inSorted(normalName2, EnumC20262a.a.f114266u)) {
                    if (!StringUtil.inSorted(normalName2, EnumC20262a.a.f114240G)) {
                        return m71355b(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (htmlTreeBuilder.m71217O(normalName2)) {
                    htmlTreeBuilder.processEndTag("tr");
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.m71267v(this);
                return false;
            }

            /* renamed from: a */
            private boolean m71354a(Token token, AbstractC20358z abstractC20358z) {
                if (abstractC20358z.processEndTag("tr")) {
                    return abstractC20358z.process(token);
                }
                return false;
            }
        };
        f114222n = enumC20262a13;
        final String str14 = "InCell";
        final int i14 = 14;
        EnumC20262a enumC20262a14 = new EnumC20262a(str14, i14) { // from class: org.jsoup.parser.h
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: a */
            private void m71356a(HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.processEndTag(htmlTreeBuilder.m71217O("td") ? "td" : "th");
            }

            /* renamed from: b */
            private boolean m71357b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isEndTag()) {
                    String normalName = token.asEndTag().normalName();
                    if (StringUtil.inSorted(normalName, EnumC20262a.a.f114269x)) {
                        if (!htmlTreeBuilder.m71217O(normalName)) {
                            htmlTreeBuilder.m71267v(this);
                            htmlTreeBuilder.m71206D0(EnumC20262a.f114222n);
                            return false;
                        }
                        htmlTreeBuilder.m71273y();
                        if (!htmlTreeBuilder.currentElement().normalName().equals(normalName)) {
                            htmlTreeBuilder.m71267v(this);
                        }
                        htmlTreeBuilder.m71250m0(normalName);
                        htmlTreeBuilder.m71257q();
                        htmlTreeBuilder.m71206D0(EnumC20262a.f114222n);
                        return true;
                    }
                    if (StringUtil.inSorted(normalName, EnumC20262a.a.f114270y)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (!StringUtil.inSorted(normalName, EnumC20262a.a.f114271z)) {
                        return m71357b(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.m71217O(normalName)) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                } else {
                    if (!token.isStartTag() || !StringUtil.inSorted(token.asStartTag().normalName(), EnumC20262a.a.f114234A)) {
                        return m71357b(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.m71217O("td") && !htmlTreeBuilder.m71217O("th")) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                }
                m71356a(htmlTreeBuilder);
                return htmlTreeBuilder.process(token);
            }
        };
        f114223o = enumC20262a14;
        final String str15 = "InSelect";
        final int i15 = 15;
        EnumC20262a enumC20262a15 = new EnumC20262a(str15, i15) { // from class: org.jsoup.parser.i
            {
                C20289b c20289b2 = null;
            }

            /* renamed from: b */
            private boolean m71358b(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.m71267v(this);
                return false;
            }

            /* JADX WARN: Code restructure failed: missing block: B:37:0x00b9, code lost:
            
                if (r10.currentElement().normalName().equals("optgroup") != false) goto L49;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00dc, code lost:
            
                r10.m71246k0();
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x00da, code lost:
            
                if (r10.currentElement().normalName().equals("option") != false) goto L49;
             */
            /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
            
                if (r10.currentElement().normalName().equals("html") == false) goto L8;
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
            
                r10.m71267v(r8);
             */
            /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0078. Please report as an issue. */
            /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0014. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean mo71335a(org.jsoup.parser.Token r9, org.jsoup.parser.HtmlTreeBuilder r10) {
                /*
                    Method dump skipped, instructions count: 426
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.C20341i.mo71335a(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }
        };
        f114224p = enumC20262a15;
        final String str16 = "InSelectInTable";
        final int i16 = 16;
        EnumC20262a enumC20262a16 = new EnumC20262a(str16, i16) { // from class: org.jsoup.parser.j
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isStartTag() && StringUtil.inSorted(token.asStartTag().normalName(), EnumC20262a.a.f114242I)) {
                    htmlTreeBuilder.m71267v(this);
                    htmlTreeBuilder.processEndTag("select");
                    return htmlTreeBuilder.process(token);
                }
                if (!token.isEndTag() || !StringUtil.inSorted(token.asEndTag().normalName(), EnumC20262a.a.f114242I)) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114224p);
                }
                htmlTreeBuilder.m71267v(this);
                if (!htmlTreeBuilder.m71217O(token.asEndTag().normalName())) {
                    return false;
                }
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
        };
        f114225q = enumC20262a16;
        final String str17 = "AfterBody";
        final int i17 = 17;
        EnumC20262a enumC20262a17 = new EnumC20262a(str17, i17) { // from class: org.jsoup.parser.k
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                    if (htmlTreeBuilder.m71229a0()) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    htmlTreeBuilder.m71206D0(EnumC20262a.f114229u);
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.m71267v(this);
                htmlTreeBuilder.m71206D0(EnumC20262a.f114215g);
                return htmlTreeBuilder.process(token);
            }
        };
        f114226r = enumC20262a17;
        final String str18 = "InFrameset";
        final int i18 = 18;
        EnumC20262a enumC20262a18 = new EnumC20262a(str18, i18) { // from class: org.jsoup.parser.l
            {
                C20289b c20289b2 = null;
            }

            /* JADX WARN: Failed to find 'out' block for switch in B:29:0x006f. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                EnumC20262a enumC20262a19;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                } else if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                } else {
                    if (token.isDoctype()) {
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    if (token.isStartTag()) {
                        Token.StartTag asStartTag = token.asStartTag();
                        String normalName = asStartTag.normalName();
                        normalName.hashCode();
                        char c = 65535;
                        switch (normalName.hashCode()) {
                            case -1644953643:
                                if (normalName.equals("frameset")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 3213227:
                                if (normalName.equals("html")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 97692013:
                                if (normalName.equals(TypedValues.AttributesType.S_FRAME)) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 1192721831:
                                if (normalName.equals("noframes")) {
                                    c = 3;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                                htmlTreeBuilder.m71218P(asStartTag);
                                break;
                            case 1:
                                enumC20262a19 = EnumC20262a.f114215g;
                                return htmlTreeBuilder.m71254o0(asStartTag, enumC20262a19);
                            case 2:
                                htmlTreeBuilder.m71222T(asStartTag);
                                break;
                            case 3:
                                enumC20262a19 = EnumC20262a.f114212d;
                                return htmlTreeBuilder.m71254o0(asStartTag, enumC20262a19);
                            default:
                                htmlTreeBuilder.m71267v(this);
                                return false;
                        }
                    } else if (token.isEndTag() && token.asEndTag().normalName().equals("frameset")) {
                        if (htmlTreeBuilder.currentElement().normalName().equals("html")) {
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                        htmlTreeBuilder.m71246k0();
                        if (!htmlTreeBuilder.m71229a0() && !htmlTreeBuilder.currentElement().normalName().equals("frameset")) {
                            htmlTreeBuilder.m71206D0(EnumC20262a.f114228t);
                        }
                    } else {
                        if (!token.isEOF()) {
                            htmlTreeBuilder.m71267v(this);
                            return false;
                        }
                        if (!htmlTreeBuilder.currentElement().normalName().equals("html")) {
                            htmlTreeBuilder.m71267v(this);
                        }
                    }
                }
                return true;
            }
        };
        f114227s = enumC20262a18;
        final String str19 = "AfterFrameset";
        final int i19 = 19;
        EnumC20262a enumC20262a19 = new EnumC20262a(str19, i19) { // from class: org.jsoup.parser.n
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                EnumC20262a enumC20262a20;
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.m71267v(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    enumC20262a20 = EnumC20262a.f114215g;
                } else {
                    if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                        htmlTreeBuilder.m71206D0(EnumC20262a.f114230v);
                        return true;
                    }
                    if (!token.isStartTag() || !token.asStartTag().normalName().equals("noframes")) {
                        if (token.isEOF()) {
                            return true;
                        }
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                    enumC20262a20 = EnumC20262a.f114212d;
                }
                return htmlTreeBuilder.m71254o0(token, enumC20262a20);
            }
        };
        f114228t = enumC20262a19;
        final String str20 = "AfterAfterBody";
        final int i20 = 20;
        EnumC20262a enumC20262a20 = new EnumC20262a(str20, i20) { // from class: org.jsoup.parser.o
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (token.isDoctype() || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                    return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
                }
                m71332b = EnumC20262a.m71332b(token);
                if (m71332b) {
                    Element m71250m0 = htmlTreeBuilder.m71250m0("html");
                    htmlTreeBuilder.m71220R(token.asCharacter());
                    htmlTreeBuilder.stack.add(m71250m0);
                    htmlTreeBuilder.stack.add(m71250m0.selectFirst("body"));
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.m71267v(this);
                htmlTreeBuilder.m71206D0(EnumC20262a.f114215g);
                return htmlTreeBuilder.process(token);
            }
        };
        f114229u = enumC20262a20;
        final String str21 = "AfterAfterFrameset";
        final int i21 = 21;
        EnumC20262a enumC20262a21 = new EnumC20262a(str21, i21) { // from class: org.jsoup.parser.p
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean m71332b;
                if (token.isComment()) {
                    htmlTreeBuilder.m71221S(token.asComment());
                    return true;
                }
                if (!token.isDoctype()) {
                    m71332b = EnumC20262a.m71332b(token);
                    if (!m71332b && (!token.isStartTag() || !token.asStartTag().normalName().equals("html"))) {
                        if (token.isEOF()) {
                            return true;
                        }
                        if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                            return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114212d);
                        }
                        htmlTreeBuilder.m71267v(this);
                        return false;
                    }
                }
                return htmlTreeBuilder.m71254o0(token, EnumC20262a.f114215g);
            }
        };
        f114230v = enumC20262a21;
        final String str22 = "ForeignContent";
        final int i22 = 22;
        EnumC20262a enumC20262a22 = new EnumC20262a(str22, i22) { // from class: org.jsoup.parser.q
            {
                C20289b c20289b2 = null;
            }

            @Override // org.jsoup.parser.EnumC20262a
            /* renamed from: a */
            public boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                return true;
            }
        };
        f114231w = enumC20262a22;
        f114233y = new EnumC20262a[]{c20289b, enumC20262a, enumC20262a2, enumC20262a3, enumC20262a4, enumC20262a5, enumC20262a6, enumC20262a7, enumC20262a8, enumC20262a9, enumC20262a10, enumC20262a11, enumC20262a12, enumC20262a13, enumC20262a14, enumC20262a15, enumC20262a16, enumC20262a17, enumC20262a18, enumC20262a19, enumC20262a20, enumC20262a21, enumC20262a22};
        f114232x = String.valueOf((char) 0);
    }

    private EnumC20262a(String str, int i) {
    }

    /* renamed from: a */
    public static EnumC20262a m71325a(String str) {
        return (EnumC20262a) Enum.valueOf(EnumC20262a.class, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m71333c(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.f114372b.m71367f(EnumC20264ab.f114325c);
        htmlTreeBuilder.m71234e0();
        htmlTreeBuilder.m71206D0(f114216h);
        htmlTreeBuilder.m71218P(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m71334d(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.f114372b.m71367f(EnumC20264ab.f114327e);
        htmlTreeBuilder.m71234e0();
        htmlTreeBuilder.m71206D0(f114216h);
        htmlTreeBuilder.m71218P(startTag);
    }

    /* renamed from: a */
    public abstract boolean mo71335a(Token token, HtmlTreeBuilder htmlTreeBuilder);

    public /* synthetic */ EnumC20262a(String str, int i, C20289b c20289b) {
        this(str, i);
    }

    /* renamed from: b */
    private static boolean m71331b(String str) {
        return StringUtil.isBlank(str);
    }

    /* renamed from: a */
    public static EnumC20262a[] m71328a() {
        return (EnumC20262a[]) f114233y.clone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m71332b(Token token) {
        if (token.isCharacter()) {
            return StringUtil.isBlank(token.asCharacter().m71304d());
        }
        return false;
    }
}
