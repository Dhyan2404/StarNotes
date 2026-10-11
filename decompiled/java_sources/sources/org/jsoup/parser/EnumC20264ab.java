package org.jsoup.parser;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import org.apache.logging.log4j.util.Chars;
import org.jsoup.nodes.DocumentType;
import org.jsoup.parser.Token;
import org.mortbay.util.MultiPartWriter;
import org.scribe.services.PlaintextSignatureService;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: org.jsoup.parser.ab */
/* loaded from: classes13.dex */
public abstract class EnumC20264ab {

    /* renamed from: A */
    public static final EnumC20264ab f114273A;

    /* renamed from: B */
    public static final EnumC20264ab f114274B;

    /* renamed from: C */
    public static final EnumC20264ab f114275C;

    /* renamed from: D */
    public static final EnumC20264ab f114276D;

    /* renamed from: E */
    public static final EnumC20264ab f114277E;

    /* renamed from: F */
    public static final EnumC20264ab f114278F;

    /* renamed from: G */
    public static final EnumC20264ab f114279G;

    /* renamed from: H */
    public static final EnumC20264ab f114280H;

    /* renamed from: I */
    public static final EnumC20264ab f114281I;

    /* renamed from: J */
    public static final EnumC20264ab f114282J;

    /* renamed from: K */
    public static final EnumC20264ab f114283K;

    /* renamed from: L */
    public static final EnumC20264ab f114284L;

    /* renamed from: M */
    public static final EnumC20264ab f114285M;

    /* renamed from: N */
    public static final EnumC20264ab f114286N;

    /* renamed from: O */
    public static final EnumC20264ab f114287O;

    /* renamed from: P */
    public static final EnumC20264ab f114288P;

    /* renamed from: Q */
    public static final EnumC20264ab f114289Q;

    /* renamed from: R */
    public static final EnumC20264ab f114290R;

    /* renamed from: S */
    public static final EnumC20264ab f114291S;

    /* renamed from: T */
    public static final EnumC20264ab f114292T;

    /* renamed from: U */
    public static final EnumC20264ab f114293U;

    /* renamed from: V */
    public static final EnumC20264ab f114294V;

    /* renamed from: W */
    public static final EnumC20264ab f114295W;

    /* renamed from: X */
    public static final EnumC20264ab f114296X;

    /* renamed from: Y */
    public static final EnumC20264ab f114297Y;

    /* renamed from: Z */
    public static final EnumC20264ab f114298Z;

    /* renamed from: a */
    public static final EnumC20264ab f114299a;

    /* renamed from: aa */
    public static final EnumC20264ab f114300aa;

    /* renamed from: ab */
    public static final EnumC20264ab f114301ab;

    /* renamed from: ac */
    public static final EnumC20264ab f114302ac;

    /* renamed from: ad */
    public static final EnumC20264ab f114303ad;

    /* renamed from: ae */
    public static final EnumC20264ab f114304ae;

    /* renamed from: af */
    public static final EnumC20264ab f114305af;

    /* renamed from: ag */
    public static final EnumC20264ab f114306ag;

    /* renamed from: ah */
    public static final EnumC20264ab f114307ah;

    /* renamed from: ai */
    public static final EnumC20264ab f114308ai;

    /* renamed from: aj */
    public static final EnumC20264ab f114309aj;

    /* renamed from: ak */
    public static final EnumC20264ab f114310ak;

    /* renamed from: al */
    public static final EnumC20264ab f114311al;

    /* renamed from: am */
    public static final EnumC20264ab f114312am;

    /* renamed from: an */
    public static final EnumC20264ab f114313an;

    /* renamed from: ao */
    public static final EnumC20264ab f114314ao;

    /* renamed from: ap */
    static final char f114315ap = 0;

    /* renamed from: aq */
    static final char[] f114316aq;

    /* renamed from: ar */
    static final char[] f114317ar;

    /* renamed from: as */
    static final char[] f114318as;

    /* renamed from: at */
    static final char[] f114319at;

    /* renamed from: au */
    private static final char f114320au = 65533;

    /* renamed from: av */
    private static final String f114321av;

    /* renamed from: aw */
    private static final char f114322aw = 65535;

    /* renamed from: ax */
    private static final /* synthetic */ EnumC20264ab[] f114323ax;

    /* renamed from: b */
    public static final EnumC20264ab f114324b;

    /* renamed from: c */
    public static final EnumC20264ab f114325c;

    /* renamed from: d */
    public static final EnumC20264ab f114326d;

    /* renamed from: e */
    public static final EnumC20264ab f114327e;

    /* renamed from: f */
    public static final EnumC20264ab f114328f;

    /* renamed from: g */
    public static final EnumC20264ab f114329g;

    /* renamed from: h */
    public static final EnumC20264ab f114330h;

    /* renamed from: i */
    public static final EnumC20264ab f114331i;

    /* renamed from: j */
    public static final EnumC20264ab f114332j;

    /* renamed from: k */
    public static final EnumC20264ab f114333k;

    /* renamed from: l */
    public static final EnumC20264ab f114334l;

    /* renamed from: m */
    public static final EnumC20264ab f114335m;

    /* renamed from: n */
    public static final EnumC20264ab f114336n;

    /* renamed from: o */
    public static final EnumC20264ab f114337o;

    /* renamed from: p */
    public static final EnumC20264ab f114338p;

    /* renamed from: q */
    public static final EnumC20264ab f114339q;

    /* renamed from: r */
    public static final EnumC20264ab f114340r;

    /* renamed from: s */
    public static final EnumC20264ab f114341s;

    /* renamed from: t */
    public static final EnumC20264ab f114342t;

    /* renamed from: u */
    public static final EnumC20264ab f114343u;

    /* renamed from: v */
    public static final EnumC20264ab f114344v;

    /* renamed from: w */
    public static final EnumC20264ab f114345w;

    /* renamed from: x */
    public static final EnumC20264ab f114346x;

    /* renamed from: y */
    public static final EnumC20264ab f114347y;

    /* renamed from: z */
    public static final EnumC20264ab f114348z;

    static {
        C20265ac c20265ac = new C20265ac("Data", 0);
        f114299a = c20265ac;
        final String str = "CharacterReferenceInData";
        final int i = 1;
        EnumC20264ab enumC20264ab = new EnumC20264ab(str, i) { // from class: org.jsoup.parser.an
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71344b(c20350r, EnumC20264ab.f114299a);
            }
        };
        f114324b = enumC20264ab;
        final String str2 = "Rcdata";
        final int i2 = 2;
        EnumC20264ab enumC20264ab2 = new EnumC20264ab(str2, i2) { // from class: org.jsoup.parser.ay
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab3;
                char current = characterReader.current();
                if (current == 0) {
                    c20350r.m71379r(this);
                    characterReader.advance();
                    c20350r.m71364c((char) 65533);
                    return;
                }
                if (current == '&') {
                    enumC20264ab3 = EnumC20264ab.f114326d;
                } else {
                    if (current != '<') {
                        if (current != 65535) {
                            c20350r.m71365d(characterReader.m71179g());
                            return;
                        } else {
                            c20350r.m71366e(new Token.C20261e());
                            return;
                        }
                    }
                    enumC20264ab3 = EnumC20264ab.f114333k;
                }
                c20350r.m71375n(enumC20264ab3);
            }
        };
        f114325c = enumC20264ab2;
        final String str3 = "CharacterReferenceInRcdata";
        final int i3 = 3;
        EnumC20264ab enumC20264ab3 = new EnumC20264ab(str3, i3) { // from class: org.jsoup.parser.bj
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71344b(c20350r, EnumC20264ab.f114325c);
            }
        };
        f114326d = enumC20264ab3;
        final String str4 = "Rawtext";
        final int i4 = 4;
        EnumC20264ab enumC20264ab4 = new EnumC20264ab(str4, i4) { // from class: org.jsoup.parser.bu
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71346d(c20350r, characterReader, this, EnumC20264ab.f114336n);
            }
        };
        f114327e = enumC20264ab4;
        final String str5 = "ScriptData";
        final int i5 = 5;
        EnumC20264ab enumC20264ab5 = new EnumC20264ab(str5, i5) { // from class: org.jsoup.parser.cf
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71346d(c20350r, characterReader, this, EnumC20264ab.f114339q);
            }
        };
        f114328f = enumC20264ab5;
        final String str6 = PlaintextSignatureService.f115993a;
        final int i6 = 6;
        EnumC20264ab enumC20264ab6 = new EnumC20264ab(str6, i6) { // from class: org.jsoup.parser.co
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    c20350r.m71379r(this);
                    characterReader.advance();
                    c20350r.m71364c((char) 65533);
                } else if (current != 65535) {
                    c20350r.m71365d(characterReader.consumeTo((char) 0));
                } else {
                    c20350r.m71366e(new Token.C20261e());
                }
            }
        };
        f114329g = enumC20264ab6;
        final String str7 = "TagOpen";
        final int i7 = 7;
        EnumC20264ab enumC20264ab7 = new EnumC20264ab(str7, i7) { // from class: org.jsoup.parser.cp
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab8;
                EnumC20264ab enumC20264ab9;
                char current = characterReader.current();
                if (current == '!') {
                    enumC20264ab8 = EnumC20264ab.f114290R;
                } else if (current == '/') {
                    enumC20264ab8 = EnumC20264ab.f114331i;
                } else {
                    if (current != '?') {
                        if (characterReader.m71167B()) {
                            c20350r.m71362a(true);
                            enumC20264ab9 = EnumC20264ab.f114332j;
                        } else {
                            c20350r.m71379r(this);
                            c20350r.m71364c('<');
                            enumC20264ab9 = EnumC20264ab.f114299a;
                        }
                        c20350r.m71367f(enumC20264ab9);
                        return;
                    }
                    c20350r.m71383v();
                    enumC20264ab8 = EnumC20264ab.f114289Q;
                }
                c20350r.m71375n(enumC20264ab8);
            }
        };
        f114330h = enumC20264ab7;
        final String str8 = "EndTagOpen";
        final int i8 = 8;
        EnumC20264ab enumC20264ab8 = new EnumC20264ab(str8, i8) { // from class: org.jsoup.parser.cq
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab9;
                EnumC20264ab enumC20264ab10;
                if (characterReader.isEmpty()) {
                    c20350r.m71381t(this);
                    c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG);
                    enumC20264ab10 = EnumC20264ab.f114299a;
                } else {
                    if (!characterReader.m71167B()) {
                        boolean m71194v = characterReader.m71194v('>');
                        c20350r.m71379r(this);
                        if (m71194v) {
                            enumC20264ab9 = EnumC20264ab.f114299a;
                        } else {
                            c20350r.m71383v();
                            enumC20264ab9 = EnumC20264ab.f114289Q;
                        }
                        c20350r.m71375n(enumC20264ab9);
                        return;
                    }
                    c20350r.m71362a(false);
                    enumC20264ab10 = EnumC20264ab.f114332j;
                }
                c20350r.m71367f(enumC20264ab10);
            }
        };
        f114331i = enumC20264ab8;
        final String str9 = "TagName";
        final int i9 = 9;
        EnumC20264ab enumC20264ab9 = new EnumC20264ab(str9, i9) { // from class: org.jsoup.parser.ad
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                String str10;
                EnumC20264ab enumC20264ab10;
                c20350r.f114362i.m71299l(characterReader.m71185m());
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    Token.Tag tag = c20350r.f114362i;
                    str10 = EnumC20264ab.f114321av;
                    tag.m71299l(str10);
                    return;
                }
                if (m71178f != ' ') {
                    if (m71178f != '/') {
                        if (m71178f == '<') {
                            characterReader.m71172H();
                            c20350r.m71379r(this);
                        } else if (m71178f != '>') {
                            if (m71178f == 65535) {
                                c20350r.m71381t(this);
                                enumC20264ab10 = EnumC20264ab.f114299a;
                            } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                                c20350r.f114362i.m71298k(m71178f);
                                return;
                            }
                        }
                        c20350r.m71376o();
                        enumC20264ab10 = EnumC20264ab.f114299a;
                    } else {
                        enumC20264ab10 = EnumC20264ab.f114288P;
                    }
                    c20350r.m71367f(enumC20264ab10);
                }
                enumC20264ab10 = EnumC20264ab.f114280H;
                c20350r.m71367f(enumC20264ab10);
            }
        };
        f114332j = enumC20264ab9;
        final String str10 = "RcdataLessthanSign";
        final int i10 = 10;
        EnumC20264ab enumC20264ab10 = new EnumC20264ab(str10, i10) { // from class: org.jsoup.parser.ae
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab11;
                if (characterReader.m71194v('/')) {
                    c20350r.m71386y();
                    c20350r.m71375n(EnumC20264ab.f114334l);
                    return;
                }
                if (characterReader.m71167B() && c20350r.m71360A() != null) {
                    if (!characterReader.m71189q(XMLStreamWriterImpl.OPEN_END_TAG + c20350r.m71360A())) {
                        c20350r.f114362i = c20350r.m71362a(false).name(c20350r.m71360A());
                        c20350r.m71376o();
                        characterReader.m71172H();
                        enumC20264ab11 = EnumC20264ab.f114299a;
                        c20350r.m71367f(enumC20264ab11);
                    }
                }
                c20350r.m71365d("<");
                enumC20264ab11 = EnumC20264ab.f114325c;
                c20350r.m71367f(enumC20264ab11);
            }
        };
        f114333k = enumC20264ab10;
        final String str11 = "RCDATAEndTagOpen";
        final int i11 = 11;
        EnumC20264ab enumC20264ab11 = new EnumC20264ab(str11, i11) { // from class: org.jsoup.parser.af
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (!characterReader.m71167B()) {
                    c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG);
                    c20350r.m71367f(EnumC20264ab.f114325c);
                } else {
                    c20350r.m71362a(false);
                    c20350r.f114362i.m71298k(characterReader.current());
                    c20350r.f114361h.append(characterReader.current());
                    c20350r.m71375n(EnumC20264ab.f114335m);
                }
            }
        };
        f114334l = enumC20264ab11;
        final String str12 = "RCDATAEndTagName";
        final int i12 = 12;
        EnumC20264ab enumC20264ab12 = new EnumC20264ab(str12, i12) { // from class: org.jsoup.parser.ag
            {
                C20265ac c20265ac2 = null;
            }

            /* renamed from: b */
            private void m71350b(C20350r c20350r, CharacterReader characterReader) {
                c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG + c20350r.f114361h.toString());
                characterReader.m71172H();
                c20350r.m71367f(EnumC20264ab.f114325c);
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab13;
                if (characterReader.m71167B()) {
                    String m71182j = characterReader.m71182j();
                    c20350r.f114362i.m71299l(m71182j);
                    c20350r.f114361h.append(m71182j);
                    return;
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    if (c20350r.m71387z()) {
                        enumC20264ab13 = EnumC20264ab.f114280H;
                        c20350r.m71367f(enumC20264ab13);
                        return;
                    }
                    m71350b(c20350r, characterReader);
                }
                if (m71178f == '/') {
                    if (c20350r.m71387z()) {
                        enumC20264ab13 = EnumC20264ab.f114288P;
                        c20350r.m71367f(enumC20264ab13);
                        return;
                    }
                    m71350b(c20350r, characterReader);
                }
                if (m71178f == '>' && c20350r.m71387z()) {
                    c20350r.m71376o();
                    enumC20264ab13 = EnumC20264ab.f114299a;
                    c20350r.m71367f(enumC20264ab13);
                    return;
                }
                m71350b(c20350r, characterReader);
            }
        };
        f114335m = enumC20264ab12;
        final String str13 = "RawtextLessthanSign";
        final int i13 = 13;
        EnumC20264ab enumC20264ab13 = new EnumC20264ab(str13, i13) { // from class: org.jsoup.parser.ah
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (characterReader.m71194v('/')) {
                    c20350r.m71386y();
                    c20350r.m71375n(EnumC20264ab.f114337o);
                } else {
                    c20350r.m71364c('<');
                    c20350r.m71367f(EnumC20264ab.f114327e);
                }
            }
        };
        f114336n = enumC20264ab13;
        final String str14 = "RawtextEndTagOpen";
        final int i14 = 14;
        EnumC20264ab enumC20264ab14 = new EnumC20264ab(str14, i14) { // from class: org.jsoup.parser.ai
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71347e(c20350r, characterReader, EnumC20264ab.f114338p, EnumC20264ab.f114327e);
            }
        };
        f114337o = enumC20264ab14;
        final String str15 = "RawtextEndTagName";
        final int i15 = 15;
        EnumC20264ab enumC20264ab15 = new EnumC20264ab(str15, i15) { // from class: org.jsoup.parser.aj
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71342b(c20350r, characterReader, EnumC20264ab.f114327e);
            }
        };
        f114338p = enumC20264ab15;
        final String str16 = "ScriptDataLessthanSign";
        final int i16 = 16;
        EnumC20264ab enumC20264ab16 = new EnumC20264ab(str16, i16) { // from class: org.jsoup.parser.ak
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab17;
                char m71178f = characterReader.m71178f();
                if (m71178f == '!') {
                    c20350r.m71365d("<!");
                    enumC20264ab17 = EnumC20264ab.f114342t;
                } else if (m71178f != '/') {
                    c20350r.m71365d("<");
                    if (m71178f != 65535) {
                        characterReader.m71172H();
                        enumC20264ab17 = EnumC20264ab.f114328f;
                    } else {
                        c20350r.m71381t(this);
                        enumC20264ab17 = EnumC20264ab.f114299a;
                    }
                } else {
                    c20350r.m71386y();
                    enumC20264ab17 = EnumC20264ab.f114340r;
                }
                c20350r.m71367f(enumC20264ab17);
            }
        };
        f114339q = enumC20264ab16;
        final String str17 = "ScriptDataEndTagOpen";
        final int i17 = 17;
        EnumC20264ab enumC20264ab17 = new EnumC20264ab(str17, i17) { // from class: org.jsoup.parser.al
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71347e(c20350r, characterReader, EnumC20264ab.f114341s, EnumC20264ab.f114328f);
            }
        };
        f114340r = enumC20264ab17;
        final String str18 = "ScriptDataEndTagName";
        final int i18 = 18;
        EnumC20264ab enumC20264ab18 = new EnumC20264ab(str18, i18) { // from class: org.jsoup.parser.am
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71342b(c20350r, characterReader, EnumC20264ab.f114328f);
            }
        };
        f114341s = enumC20264ab18;
        final String str19 = "ScriptDataEscapeStart";
        final int i19 = 19;
        EnumC20264ab enumC20264ab19 = new EnumC20264ab(str19, i19) { // from class: org.jsoup.parser.ao
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (!characterReader.m71194v('-')) {
                    c20350r.m71367f(EnumC20264ab.f114328f);
                } else {
                    c20350r.m71364c('-');
                    c20350r.m71375n(EnumC20264ab.f114343u);
                }
            }
        };
        f114342t = enumC20264ab19;
        final String str20 = "ScriptDataEscapeStartDash";
        final int i20 = 20;
        EnumC20264ab enumC20264ab20 = new EnumC20264ab(str20, i20) { // from class: org.jsoup.parser.ap
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (!characterReader.m71194v('-')) {
                    c20350r.m71367f(EnumC20264ab.f114328f);
                } else {
                    c20350r.m71364c('-');
                    c20350r.m71375n(EnumC20264ab.f114346x);
                }
            }
        };
        f114343u = enumC20264ab20;
        final String str21 = "ScriptDataEscaped";
        final int i21 = 21;
        EnumC20264ab enumC20264ab21 = new EnumC20264ab(str21, i21) { // from class: org.jsoup.parser.aq
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab22;
                if (characterReader.isEmpty()) {
                    c20350r.m71381t(this);
                    c20350r.m71367f(EnumC20264ab.f114299a);
                    return;
                }
                char current = characterReader.current();
                if (current == 0) {
                    c20350r.m71379r(this);
                    characterReader.advance();
                    c20350r.m71364c((char) 65533);
                    return;
                }
                if (current == '-') {
                    c20350r.m71364c('-');
                    enumC20264ab22 = EnumC20264ab.f114345w;
                } else {
                    if (current != '<') {
                        c20350r.m71365d(characterReader.consumeToAny('-', '<', 0));
                        return;
                    }
                    enumC20264ab22 = EnumC20264ab.f114347y;
                }
                c20350r.m71375n(enumC20264ab22);
            }
        };
        f114344v = enumC20264ab21;
        final String str22 = "ScriptDataEscapedDash";
        final int i22 = 22;
        EnumC20264ab enumC20264ab22 = new EnumC20264ab(str22, i22) { // from class: org.jsoup.parser.ar
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab23;
                if (characterReader.isEmpty()) {
                    c20350r.m71381t(this);
                    c20350r.m71367f(EnumC20264ab.f114299a);
                    return;
                }
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '-') {
                        c20350r.m71364c(m71178f);
                        enumC20264ab23 = EnumC20264ab.f114346x;
                    } else if (m71178f != '<') {
                        c20350r.m71364c(m71178f);
                    } else {
                        enumC20264ab23 = EnumC20264ab.f114347y;
                    }
                    c20350r.m71367f(enumC20264ab23);
                }
                c20350r.m71379r(this);
                c20350r.m71364c((char) 65533);
                enumC20264ab23 = EnumC20264ab.f114344v;
                c20350r.m71367f(enumC20264ab23);
            }
        };
        f114345w = enumC20264ab22;
        final String str23 = "ScriptDataEscapedDashDash";
        final int i23 = 23;
        EnumC20264ab enumC20264ab23 = new EnumC20264ab(str23, i23) { // from class: org.jsoup.parser.as
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab24;
                if (characterReader.isEmpty()) {
                    c20350r.m71381t(this);
                    c20350r.m71367f(EnumC20264ab.f114299a);
                    return;
                }
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '-') {
                        c20350r.m71364c(m71178f);
                        return;
                    }
                    if (m71178f != '<') {
                        c20350r.m71364c(m71178f);
                        if (m71178f == '>') {
                            enumC20264ab24 = EnumC20264ab.f114328f;
                        }
                    } else {
                        enumC20264ab24 = EnumC20264ab.f114347y;
                    }
                    c20350r.m71367f(enumC20264ab24);
                }
                c20350r.m71379r(this);
                c20350r.m71364c((char) 65533);
                enumC20264ab24 = EnumC20264ab.f114344v;
                c20350r.m71367f(enumC20264ab24);
            }
        };
        f114346x = enumC20264ab23;
        final String str24 = "ScriptDataEscapedLessthanSign";
        final int i24 = 24;
        EnumC20264ab enumC20264ab24 = new EnumC20264ab(str24, i24) { // from class: org.jsoup.parser.at
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab25;
                if (characterReader.m71167B()) {
                    c20350r.m71386y();
                    c20350r.f114361h.append(characterReader.current());
                    c20350r.m71365d("<" + characterReader.current());
                    enumC20264ab25 = EnumC20264ab.f114274B;
                } else if (!characterReader.m71194v('/')) {
                    c20350r.m71364c('<');
                    c20350r.m71367f(EnumC20264ab.f114344v);
                    return;
                } else {
                    c20350r.m71386y();
                    enumC20264ab25 = EnumC20264ab.f114348z;
                }
                c20350r.m71375n(enumC20264ab25);
            }
        };
        f114347y = enumC20264ab24;
        final String str25 = "ScriptDataEscapedEndTagOpen";
        final int i25 = 25;
        EnumC20264ab enumC20264ab25 = new EnumC20264ab(str25, i25) { // from class: org.jsoup.parser.au
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (!characterReader.m71167B()) {
                    c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG);
                    c20350r.m71367f(EnumC20264ab.f114344v);
                } else {
                    c20350r.m71362a(false);
                    c20350r.f114362i.m71298k(characterReader.current());
                    c20350r.f114361h.append(characterReader.current());
                    c20350r.m71375n(EnumC20264ab.f114273A);
                }
            }
        };
        f114348z = enumC20264ab25;
        final String str26 = "ScriptDataEscapedEndTagName";
        final int i26 = 26;
        EnumC20264ab enumC20264ab26 = new EnumC20264ab(str26, i26) { // from class: org.jsoup.parser.av
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71342b(c20350r, characterReader, EnumC20264ab.f114344v);
            }
        };
        f114273A = enumC20264ab26;
        final String str27 = "ScriptDataDoubleEscapeStart";
        final int i27 = 27;
        EnumC20264ab enumC20264ab27 = new EnumC20264ab(str27, i27) { // from class: org.jsoup.parser.aw
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71348f(c20350r, characterReader, EnumC20264ab.f114275C, EnumC20264ab.f114344v);
            }
        };
        f114274B = enumC20264ab27;
        final String str28 = "ScriptDataDoubleEscaped";
        final int i28 = 28;
        EnumC20264ab enumC20264ab28 = new EnumC20264ab(str28, i28) { // from class: org.jsoup.parser.ax
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab29;
                char current = characterReader.current();
                if (current == 0) {
                    c20350r.m71379r(this);
                    characterReader.advance();
                    c20350r.m71364c((char) 65533);
                    return;
                }
                if (current == '-') {
                    c20350r.m71364c(current);
                    enumC20264ab29 = EnumC20264ab.f114276D;
                } else {
                    if (current != '<') {
                        if (current != 65535) {
                            c20350r.m71365d(characterReader.consumeToAny('-', '<', 0));
                            return;
                        } else {
                            c20350r.m71381t(this);
                            c20350r.m71367f(EnumC20264ab.f114299a);
                            return;
                        }
                    }
                    c20350r.m71364c(current);
                    enumC20264ab29 = EnumC20264ab.f114278F;
                }
                c20350r.m71375n(enumC20264ab29);
            }
        };
        f114275C = enumC20264ab28;
        final String str29 = "ScriptDataDoubleEscapedDash";
        final int i29 = 29;
        EnumC20264ab enumC20264ab29 = new EnumC20264ab(str29, i29) { // from class: org.jsoup.parser.az
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab30;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '-') {
                        c20350r.m71364c(m71178f);
                        enumC20264ab30 = EnumC20264ab.f114277E;
                    } else if (m71178f == '<') {
                        c20350r.m71364c(m71178f);
                        enumC20264ab30 = EnumC20264ab.f114278F;
                    } else if (m71178f != 65535) {
                        c20350r.m71364c(m71178f);
                    } else {
                        c20350r.m71381t(this);
                        enumC20264ab30 = EnumC20264ab.f114299a;
                    }
                    c20350r.m71367f(enumC20264ab30);
                }
                c20350r.m71379r(this);
                c20350r.m71364c((char) 65533);
                enumC20264ab30 = EnumC20264ab.f114275C;
                c20350r.m71367f(enumC20264ab30);
            }
        };
        f114276D = enumC20264ab29;
        final String str30 = "ScriptDataDoubleEscapedDashDash";
        final int i30 = 30;
        EnumC20264ab enumC20264ab30 = new EnumC20264ab(str30, i30) { // from class: org.jsoup.parser.ba
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab31;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '-') {
                        c20350r.m71364c(m71178f);
                        return;
                    }
                    if (m71178f == '<') {
                        c20350r.m71364c(m71178f);
                        enumC20264ab31 = EnumC20264ab.f114278F;
                    } else if (m71178f == '>') {
                        c20350r.m71364c(m71178f);
                        enumC20264ab31 = EnumC20264ab.f114328f;
                    } else if (m71178f != 65535) {
                        c20350r.m71364c(m71178f);
                    } else {
                        c20350r.m71381t(this);
                        enumC20264ab31 = EnumC20264ab.f114299a;
                    }
                    c20350r.m71367f(enumC20264ab31);
                }
                c20350r.m71379r(this);
                c20350r.m71364c((char) 65533);
                enumC20264ab31 = EnumC20264ab.f114275C;
                c20350r.m71367f(enumC20264ab31);
            }
        };
        f114277E = enumC20264ab30;
        final String str31 = "ScriptDataDoubleEscapedLessthanSign";
        final int i31 = 31;
        EnumC20264ab enumC20264ab31 = new EnumC20264ab(str31, i31) { // from class: org.jsoup.parser.bb
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                if (!characterReader.m71194v('/')) {
                    c20350r.m71367f(EnumC20264ab.f114275C);
                    return;
                }
                c20350r.m71364c('/');
                c20350r.m71386y();
                c20350r.m71375n(EnumC20264ab.f114279G);
            }
        };
        f114278F = enumC20264ab31;
        final String str32 = "ScriptDataDoubleEscapeEnd";
        final int i32 = 32;
        EnumC20264ab enumC20264ab32 = new EnumC20264ab(str32, i32) { // from class: org.jsoup.parser.bc
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab.m71348f(c20350r, characterReader, EnumC20264ab.f114344v, EnumC20264ab.f114275C);
            }
        };
        f114279G = enumC20264ab32;
        final String str33 = "BeforeAttributeName";
        final int i33 = 33;
        EnumC20264ab enumC20264ab33 = new EnumC20264ab(str33, i33) { // from class: org.jsoup.parser.bd
            {
                C20265ac c20265ac2 = null;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to find 'out' block for switch in B:21:0x002b. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab34;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    characterReader.m71172H();
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71302o();
                } else {
                    if (m71178f == ' ') {
                        return;
                    }
                    if (m71178f != '\"' && m71178f != '\'') {
                        if (m71178f != '/') {
                            if (m71178f == 65535) {
                                c20350r.m71381t(this);
                            } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                                switch (m71178f) {
                                    case '<':
                                        characterReader.m71172H();
                                        c20350r.m71379r(this);
                                        c20350r.m71376o();
                                        break;
                                    case '=':
                                        break;
                                    case '>':
                                        c20350r.m71376o();
                                        break;
                                    default:
                                        c20350r.f114362i.m71302o();
                                        characterReader.m71172H();
                                        break;
                                }
                            } else {
                                return;
                            }
                            enumC20264ab34 = EnumC20264ab.f114299a;
                        } else {
                            enumC20264ab34 = EnumC20264ab.f114288P;
                        }
                        c20350r.m71367f(enumC20264ab34);
                    }
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71302o();
                    c20350r.f114362i.m71292e(m71178f);
                }
                enumC20264ab34 = EnumC20264ab.f114281I;
                c20350r.m71367f(enumC20264ab34);
            }
        };
        f114280H = enumC20264ab33;
        final String str34 = "AttributeName";
        final int i34 = 34;
        EnumC20264ab enumC20264ab34 = new EnumC20264ab(str34, i34) { // from class: org.jsoup.parser.be
            {
                C20265ac c20265ac2 = null;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0036. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab35;
                c20350r.f114362i.m71293f(characterReader.m71187o(EnumC20264ab.f114318as));
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71292e((char) 65533);
                    return;
                }
                if (m71178f != ' ') {
                    if (m71178f != '\"' && m71178f != '\'') {
                        if (m71178f != '/') {
                            if (m71178f == 65535) {
                                c20350r.m71381t(this);
                            } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                                switch (m71178f) {
                                    case '<':
                                        break;
                                    case '=':
                                        enumC20264ab35 = EnumC20264ab.f114283K;
                                        break;
                                    case '>':
                                        c20350r.m71376o();
                                        break;
                                    default:
                                        c20350r.f114362i.m71292e(m71178f);
                                        return;
                                }
                            }
                            enumC20264ab35 = EnumC20264ab.f114299a;
                        } else {
                            enumC20264ab35 = EnumC20264ab.f114288P;
                        }
                        c20350r.m71367f(enumC20264ab35);
                    }
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71292e(m71178f);
                    return;
                }
                enumC20264ab35 = EnumC20264ab.f114282J;
                c20350r.m71367f(enumC20264ab35);
            }
        };
        f114281I = enumC20264ab34;
        final String str35 = "AfterAttributeName";
        final int i35 = 35;
        EnumC20264ab enumC20264ab35 = new EnumC20264ab(str35, i35) { // from class: org.jsoup.parser.bf
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab36;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71292e((char) 65533);
                } else {
                    if (m71178f == ' ') {
                        return;
                    }
                    if (m71178f != '\"' && m71178f != '\'') {
                        if (m71178f != '/') {
                            if (m71178f == 65535) {
                                c20350r.m71381t(this);
                            } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                                switch (m71178f) {
                                    case '<':
                                        break;
                                    case '=':
                                        enumC20264ab36 = EnumC20264ab.f114283K;
                                        break;
                                    case '>':
                                        c20350r.m71376o();
                                        break;
                                    default:
                                        c20350r.f114362i.m71302o();
                                        characterReader.m71172H();
                                        break;
                                }
                            } else {
                                return;
                            }
                            enumC20264ab36 = EnumC20264ab.f114299a;
                        } else {
                            enumC20264ab36 = EnumC20264ab.f114288P;
                        }
                        c20350r.m71367f(enumC20264ab36);
                    }
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71302o();
                    c20350r.f114362i.m71292e(m71178f);
                }
                enumC20264ab36 = EnumC20264ab.f114281I;
                c20350r.m71367f(enumC20264ab36);
            }
        };
        f114282J = enumC20264ab35;
        final String str36 = "BeforeAttributeValue";
        final int i36 = 36;
        EnumC20264ab enumC20264ab36 = new EnumC20264ab(str36, i36) { // from class: org.jsoup.parser.bg
            {
                C20265ac c20265ac2 = null;
            }

            /* JADX WARN: Failed to find 'out' block for switch in B:23:0x002f. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab37;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f != ' ') {
                        if (m71178f != '\"') {
                            if (m71178f != '`') {
                                if (m71178f == 65535) {
                                    c20350r.m71381t(this);
                                } else {
                                    if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r') {
                                        return;
                                    }
                                    if (m71178f != '&') {
                                        if (m71178f != '\'') {
                                            switch (m71178f) {
                                                case '>':
                                                    c20350r.m71379r(this);
                                                    break;
                                            }
                                        } else {
                                            enumC20264ab37 = EnumC20264ab.f114285M;
                                        }
                                    }
                                    characterReader.m71172H();
                                }
                                c20350r.m71376o();
                                enumC20264ab37 = EnumC20264ab.f114299a;
                            }
                            c20350r.m71379r(this);
                            c20350r.f114362i.m71294g(m71178f);
                        } else {
                            enumC20264ab37 = EnumC20264ab.f114284L;
                        }
                        c20350r.m71367f(enumC20264ab37);
                    }
                    return;
                }
                c20350r.m71379r(this);
                c20350r.f114362i.m71294g((char) 65533);
                enumC20264ab37 = EnumC20264ab.f114286N;
                c20350r.m71367f(enumC20264ab37);
            }
        };
        f114283K = enumC20264ab36;
        final String str37 = "AttributeValue_doubleQuoted";
        final int i37 = 37;
        EnumC20264ab enumC20264ab37 = new EnumC20264ab(str37, i37) { // from class: org.jsoup.parser.bh
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab38;
                String m71187o = characterReader.m71187o(EnumC20264ab.f114317ar);
                if (m71187o.length() > 0) {
                    c20350r.f114362i.m71295h(m71187o);
                } else {
                    c20350r.f114362i.m71303q();
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71294g((char) 65533);
                    return;
                }
                if (m71178f == '\"') {
                    enumC20264ab38 = EnumC20264ab.f114287O;
                } else {
                    if (m71178f == '&') {
                        int[] m71370i = c20350r.m71370i('\"', true);
                        if (m71370i != null) {
                            c20350r.f114362i.m71297j(m71370i);
                            return;
                        } else {
                            c20350r.f114362i.m71294g('&');
                            return;
                        }
                    }
                    if (m71178f != 65535) {
                        c20350r.f114362i.m71294g(m71178f);
                        return;
                    } else {
                        c20350r.m71381t(this);
                        enumC20264ab38 = EnumC20264ab.f114299a;
                    }
                }
                c20350r.m71367f(enumC20264ab38);
            }
        };
        f114284L = enumC20264ab37;
        final String str38 = "AttributeValue_singleQuoted";
        final int i38 = 38;
        EnumC20264ab enumC20264ab38 = new EnumC20264ab(str38, i38) { // from class: org.jsoup.parser.bi
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab39;
                String m71187o = characterReader.m71187o(EnumC20264ab.f114316aq);
                if (m71187o.length() > 0) {
                    c20350r.f114362i.m71295h(m71187o);
                } else {
                    c20350r.f114362i.m71303q();
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71294g((char) 65533);
                    return;
                }
                if (m71178f == 65535) {
                    c20350r.m71381t(this);
                    enumC20264ab39 = EnumC20264ab.f114299a;
                } else {
                    if (m71178f == '&') {
                        int[] m71370i = c20350r.m71370i(Character.valueOf(Chars.QUOTE), true);
                        if (m71370i != null) {
                            c20350r.f114362i.m71297j(m71370i);
                            return;
                        } else {
                            c20350r.f114362i.m71294g('&');
                            return;
                        }
                    }
                    if (m71178f != '\'') {
                        c20350r.f114362i.m71294g(m71178f);
                        return;
                    }
                    enumC20264ab39 = EnumC20264ab.f114287O;
                }
                c20350r.m71367f(enumC20264ab39);
            }
        };
        f114285M = enumC20264ab38;
        final String str39 = "AttributeValue_unquoted";
        final int i39 = 39;
        EnumC20264ab enumC20264ab39 = new EnumC20264ab(str39, i39) { // from class: org.jsoup.parser.bk
            {
                C20265ac c20265ac2 = null;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0040. Please report as an issue. */
            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab40;
                String m71187o = characterReader.m71187o(EnumC20264ab.f114319at);
                if (m71187o.length() > 0) {
                    c20350r.f114362i.m71295h(m71187o);
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71294g((char) 65533);
                    return;
                }
                if (m71178f != ' ') {
                    if (m71178f != '\"' && m71178f != '`') {
                        if (m71178f == 65535) {
                            c20350r.m71381t(this);
                        } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                            if (m71178f == '&') {
                                int[] m71370i = c20350r.m71370i('>', true);
                                if (m71370i != null) {
                                    c20350r.f114362i.m71297j(m71370i);
                                    return;
                                } else {
                                    c20350r.f114362i.m71294g('&');
                                    return;
                                }
                            }
                            if (m71178f != '\'') {
                                switch (m71178f) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        c20350r.m71376o();
                                        break;
                                    default:
                                        c20350r.f114362i.m71294g(m71178f);
                                        return;
                                }
                            }
                        }
                        enumC20264ab40 = EnumC20264ab.f114299a;
                        c20350r.m71367f(enumC20264ab40);
                    }
                    c20350r.m71379r(this);
                    c20350r.f114362i.m71294g(m71178f);
                    return;
                }
                enumC20264ab40 = EnumC20264ab.f114280H;
                c20350r.m71367f(enumC20264ab40);
            }
        };
        f114286N = enumC20264ab39;
        final String str40 = "AfterAttributeValue_quoted";
        final int i40 = 40;
        EnumC20264ab enumC20264ab40 = new EnumC20264ab(str40, i40) { // from class: org.jsoup.parser.bl
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab41;
                char m71178f = characterReader.m71178f();
                if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r' && m71178f != ' ') {
                    if (m71178f != '/') {
                        if (m71178f == '>') {
                            c20350r.m71376o();
                        } else if (m71178f != 65535) {
                            characterReader.m71172H();
                            c20350r.m71379r(this);
                        } else {
                            c20350r.m71381t(this);
                        }
                        enumC20264ab41 = EnumC20264ab.f114299a;
                    } else {
                        enumC20264ab41 = EnumC20264ab.f114288P;
                    }
                    c20350r.m71367f(enumC20264ab41);
                }
                enumC20264ab41 = EnumC20264ab.f114280H;
                c20350r.m71367f(enumC20264ab41);
            }
        };
        f114287O = enumC20264ab40;
        final String str41 = "SelfClosingStartTag";
        final int i41 = 41;
        EnumC20264ab enumC20264ab41 = new EnumC20264ab(str41, i41) { // from class: org.jsoup.parser.bm
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab42;
                char m71178f = characterReader.m71178f();
                if (m71178f == '>') {
                    c20350r.f114362i.f114194i = true;
                    c20350r.m71376o();
                } else {
                    if (m71178f != 65535) {
                        characterReader.m71172H();
                        c20350r.m71379r(this);
                        enumC20264ab42 = EnumC20264ab.f114280H;
                        c20350r.m71367f(enumC20264ab42);
                    }
                    c20350r.m71381t(this);
                }
                enumC20264ab42 = EnumC20264ab.f114299a;
                c20350r.m71367f(enumC20264ab42);
            }
        };
        f114288P = enumC20264ab41;
        final String str42 = "BogusComment";
        final int i42 = 42;
        EnumC20264ab enumC20264ab42 = new EnumC20264ab(str42, i42) { // from class: org.jsoup.parser.bn
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                characterReader.m71172H();
                c20350r.f114367n.m71308f(characterReader.consumeTo('>'));
                char m71178f = characterReader.m71178f();
                if (m71178f == '>' || m71178f == 65535) {
                    c20350r.m71382u();
                    c20350r.m71367f(EnumC20264ab.f114299a);
                }
            }
        };
        f114289Q = enumC20264ab42;
        final String str43 = "MarkupDeclarationOpen";
        final int i43 = 43;
        EnumC20264ab enumC20264ab43 = new EnumC20264ab(str43, i43) { // from class: org.jsoup.parser.bo
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab44;
                if (characterReader.m71192t(MultiPartWriter.f115320h)) {
                    c20350r.m71380s();
                    enumC20264ab44 = EnumC20264ab.f114291S;
                } else if (characterReader.m71193u("DOCTYPE")) {
                    enumC20264ab44 = EnumC20264ab.f114297Y;
                } else {
                    if (!characterReader.m71192t("[CDATA[")) {
                        c20350r.m71379r(this);
                        c20350r.m71383v();
                        c20350r.m71375n(EnumC20264ab.f114289Q);
                        return;
                    }
                    c20350r.m71386y();
                    enumC20264ab44 = EnumC20264ab.f114314ao;
                }
                c20350r.m71367f(enumC20264ab44);
            }
        };
        f114290R = enumC20264ab43;
        final String str44 = "CommentStart";
        final int i44 = 44;
        EnumC20264ab enumC20264ab44 = new EnumC20264ab(str44, i44) { // from class: org.jsoup.parser.bp
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab45;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f != '-') {
                        if (m71178f == '>') {
                            c20350r.m71379r(this);
                        } else if (m71178f != 65535) {
                            characterReader.m71172H();
                        } else {
                            c20350r.m71381t(this);
                        }
                        c20350r.m71382u();
                        enumC20264ab45 = EnumC20264ab.f114299a;
                    } else {
                        enumC20264ab45 = EnumC20264ab.f114292T;
                    }
                    c20350r.m71367f(enumC20264ab45);
                }
                c20350r.m71379r(this);
                c20350r.f114367n.m71307e((char) 65533);
                enumC20264ab45 = EnumC20264ab.f114293U;
                c20350r.m71367f(enumC20264ab45);
            }
        };
        f114291S = enumC20264ab44;
        final String str45 = "CommentStartDash";
        final int i45 = 45;
        EnumC20264ab enumC20264ab45 = new EnumC20264ab(str45, i45) { // from class: org.jsoup.parser.bq
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                Token.C20259c c20259c;
                EnumC20264ab enumC20264ab46;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f != '-') {
                        if (m71178f == '>') {
                            c20350r.m71379r(this);
                        } else if (m71178f != 65535) {
                            c20259c = c20350r.f114367n;
                        } else {
                            c20350r.m71381t(this);
                        }
                        c20350r.m71382u();
                        enumC20264ab46 = EnumC20264ab.f114299a;
                    } else {
                        enumC20264ab46 = EnumC20264ab.f114292T;
                    }
                    c20350r.m71367f(enumC20264ab46);
                }
                c20350r.m71379r(this);
                c20259c = c20350r.f114367n;
                m71178f = 65533;
                c20259c.m71307e(m71178f);
                enumC20264ab46 = EnumC20264ab.f114293U;
                c20350r.m71367f(enumC20264ab46);
            }
        };
        f114292T = enumC20264ab45;
        final String str46 = "Comment";
        final int i46 = 46;
        EnumC20264ab enumC20264ab46 = new EnumC20264ab(str46, i46) { // from class: org.jsoup.parser.br
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    c20350r.m71379r(this);
                    characterReader.advance();
                    c20350r.f114367n.m71307e((char) 65533);
                } else if (current == '-') {
                    c20350r.m71375n(EnumC20264ab.f114294V);
                } else {
                    if (current != 65535) {
                        c20350r.f114367n.m71308f(characterReader.consumeToAny('-', 0));
                        return;
                    }
                    c20350r.m71381t(this);
                    c20350r.m71382u();
                    c20350r.m71367f(EnumC20264ab.f114299a);
                }
            }
        };
        f114293U = enumC20264ab46;
        final String str47 = "CommentEndDash";
        final int i47 = 47;
        EnumC20264ab enumC20264ab47 = new EnumC20264ab(str47, i47) { // from class: org.jsoup.parser.bs
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                Token.C20259c m71307e;
                EnumC20264ab enumC20264ab48;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '-') {
                        enumC20264ab48 = EnumC20264ab.f114295W;
                    } else if (m71178f != 65535) {
                        m71307e = c20350r.f114367n.m71307e('-');
                    } else {
                        c20350r.m71381t(this);
                        c20350r.m71382u();
                        enumC20264ab48 = EnumC20264ab.f114299a;
                    }
                    c20350r.m71367f(enumC20264ab48);
                }
                c20350r.m71379r(this);
                m71307e = c20350r.f114367n.m71307e('-');
                m71178f = 65533;
                m71307e.m71307e(m71178f);
                enumC20264ab48 = EnumC20264ab.f114293U;
                c20350r.m71367f(enumC20264ab48);
            }
        };
        f114294V = enumC20264ab47;
        final String str48 = "CommentEnd";
        final int i48 = 48;
        EnumC20264ab enumC20264ab48 = new EnumC20264ab(str48, i48) { // from class: org.jsoup.parser.bt
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                Token.C20259c m71308f;
                EnumC20264ab enumC20264ab49;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f == '!') {
                        c20350r.m71379r(this);
                        enumC20264ab49 = EnumC20264ab.f114296X;
                    } else {
                        if (m71178f == '-') {
                            c20350r.m71379r(this);
                            c20350r.f114367n.m71307e('-');
                            return;
                        }
                        if (m71178f != '>') {
                            if (m71178f != 65535) {
                                c20350r.m71379r(this);
                                m71308f = c20350r.f114367n.m71308f(MultiPartWriter.f115320h);
                            } else {
                                c20350r.m71381t(this);
                            }
                        }
                        c20350r.m71382u();
                        enumC20264ab49 = EnumC20264ab.f114299a;
                    }
                    c20350r.m71367f(enumC20264ab49);
                }
                c20350r.m71379r(this);
                m71308f = c20350r.f114367n.m71308f(MultiPartWriter.f115320h);
                m71178f = 65533;
                m71308f.m71307e(m71178f);
                enumC20264ab49 = EnumC20264ab.f114293U;
                c20350r.m71367f(enumC20264ab49);
            }
        };
        f114295W = enumC20264ab48;
        final String str49 = "CommentEndBang";
        final int i49 = 49;
        EnumC20264ab enumC20264ab49 = new EnumC20264ab(str49, i49) { // from class: org.jsoup.parser.bv
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                Token.C20259c m71308f;
                EnumC20264ab enumC20264ab50;
                char m71178f = characterReader.m71178f();
                if (m71178f != 0) {
                    if (m71178f != '-') {
                        if (m71178f != '>') {
                            if (m71178f != 65535) {
                                m71308f = c20350r.f114367n.m71308f("--!");
                            } else {
                                c20350r.m71381t(this);
                            }
                        }
                        c20350r.m71382u();
                        enumC20264ab50 = EnumC20264ab.f114299a;
                    } else {
                        c20350r.f114367n.m71308f("--!");
                        enumC20264ab50 = EnumC20264ab.f114294V;
                    }
                    c20350r.m71367f(enumC20264ab50);
                }
                c20350r.m71379r(this);
                m71308f = c20350r.f114367n.m71308f("--!");
                m71178f = 65533;
                m71308f.m71307e(m71178f);
                enumC20264ab50 = EnumC20264ab.f114293U;
                c20350r.m71367f(enumC20264ab50);
            }
        };
        f114296X = enumC20264ab49;
        final String str50 = "Doctype";
        final int i50 = 50;
        EnumC20264ab enumC20264ab50 = new EnumC20264ab(str50, i50) { // from class: org.jsoup.parser.bw
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab51;
                char m71178f = characterReader.m71178f();
                if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r' && m71178f != ' ') {
                    if (m71178f != '>') {
                        if (m71178f != 65535) {
                            c20350r.m71379r(this);
                        } else {
                            c20350r.m71381t(this);
                        }
                    }
                    c20350r.m71379r(this);
                    c20350r.m71384w();
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab51 = EnumC20264ab.f114299a;
                    c20350r.m71367f(enumC20264ab51);
                }
                enumC20264ab51 = EnumC20264ab.f114298Z;
                c20350r.m71367f(enumC20264ab51);
            }
        };
        f114297Y = enumC20264ab50;
        final String str51 = "BeforeDoctypeName";
        final int i51 = 51;
        EnumC20264ab enumC20264ab51 = new EnumC20264ab(str51, i51) { // from class: org.jsoup.parser.bx
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                StringBuilder sb;
                EnumC20264ab enumC20264ab52;
                if (characterReader.m71167B()) {
                    c20350r.m71384w();
                    c20350r.m71367f(EnumC20264ab.f114300aa);
                    return;
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.m71384w();
                    sb = c20350r.f114366m.f114201d;
                    m71178f = 65533;
                } else {
                    if (m71178f == ' ') {
                        return;
                    }
                    if (m71178f == 65535) {
                        c20350r.m71381t(this);
                        c20350r.m71384w();
                        c20350r.f114366m.f114205h = true;
                        c20350r.m71385x();
                        enumC20264ab52 = EnumC20264ab.f114299a;
                        c20350r.m71367f(enumC20264ab52);
                    }
                    if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r') {
                        return;
                    }
                    c20350r.m71384w();
                    sb = c20350r.f114366m.f114201d;
                }
                sb.append(m71178f);
                enumC20264ab52 = EnumC20264ab.f114300aa;
                c20350r.m71367f(enumC20264ab52);
            }
        };
        f114298Z = enumC20264ab51;
        final String str52 = "DoctypeName";
        final int i52 = 52;
        EnumC20264ab enumC20264ab52 = new EnumC20264ab(str52, i52) { // from class: org.jsoup.parser.by
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab53;
                if (characterReader.m71167B()) {
                    c20350r.f114366m.f114201d.append(characterReader.m71182j());
                    return;
                }
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114366m.f114201d.append((char) 65533);
                    return;
                }
                if (m71178f != ' ') {
                    if (m71178f != '>') {
                        if (m71178f == 65535) {
                            c20350r.m71381t(this);
                            c20350r.f114366m.f114205h = true;
                        } else if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r') {
                            c20350r.f114366m.f114201d.append(m71178f);
                            return;
                        }
                    }
                    c20350r.m71385x();
                    enumC20264ab53 = EnumC20264ab.f114299a;
                    c20350r.m71367f(enumC20264ab53);
                }
                enumC20264ab53 = EnumC20264ab.f114301ab;
                c20350r.m71367f(enumC20264ab53);
            }
        };
        f114300aa = enumC20264ab52;
        final String str53 = "AfterDoctypeName";
        final int i53 = 53;
        EnumC20264ab enumC20264ab53 = new EnumC20264ab(str53, i53) { // from class: org.jsoup.parser.bz
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab54;
                EnumC20264ab enumC20264ab55;
                if (characterReader.isEmpty()) {
                    c20350r.m71381t(this);
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    c20350r.m71367f(EnumC20264ab.f114299a);
                    return;
                }
                if (characterReader.m71196x('\t', '\n', '\r', '\f', ' ')) {
                    characterReader.advance();
                    return;
                }
                if (!characterReader.m71194v('>')) {
                    if (characterReader.m71193u(DocumentType.PUBLIC_KEY)) {
                        c20350r.f114366m.f114202e = DocumentType.PUBLIC_KEY;
                        enumC20264ab55 = EnumC20264ab.f114302ac;
                    } else if (characterReader.m71193u(DocumentType.SYSTEM_KEY)) {
                        c20350r.f114366m.f114202e = DocumentType.SYSTEM_KEY;
                        enumC20264ab55 = EnumC20264ab.f114308ai;
                    } else if (characterReader.m71194v('[')) {
                        characterReader.consumeTo(']');
                        return;
                    } else {
                        c20350r.m71379r(this);
                        c20350r.f114366m.f114205h = true;
                        enumC20264ab54 = EnumC20264ab.f114313an;
                    }
                    c20350r.m71367f(enumC20264ab55);
                    return;
                }
                c20350r.m71385x();
                enumC20264ab54 = EnumC20264ab.f114299a;
                c20350r.m71375n(enumC20264ab54);
            }
        };
        f114301ab = enumC20264ab53;
        final String str54 = "AfterDoctypePublicKeyword";
        final int i54 = 54;
        EnumC20264ab enumC20264ab54 = new EnumC20264ab(str54, i54) { // from class: org.jsoup.parser.ca
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab55;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    enumC20264ab55 = EnumC20264ab.f114303ad;
                } else if (m71178f == '\"') {
                    c20350r.m71379r(this);
                    enumC20264ab55 = EnumC20264ab.f114304ae;
                } else if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else if (m71178f != 65535) {
                        c20350r.m71379r(this);
                        c20350r.f114366m.f114205h = true;
                        enumC20264ab55 = EnumC20264ab.f114313an;
                    } else {
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab55 = EnumC20264ab.f114299a;
                } else {
                    c20350r.m71379r(this);
                    enumC20264ab55 = EnumC20264ab.f114305af;
                }
                c20350r.m71367f(enumC20264ab55);
            }
        };
        f114302ac = enumC20264ab54;
        final String str55 = "BeforeDoctypePublicIdentifier";
        final int i55 = 55;
        EnumC20264ab enumC20264ab55 = new EnumC20264ab(str55, i55) { // from class: org.jsoup.parser.cb
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab56;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    return;
                }
                if (m71178f == '\"') {
                    enumC20264ab56 = EnumC20264ab.f114304ae;
                } else if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else if (m71178f != 65535) {
                        c20350r.m71379r(this);
                        c20350r.f114366m.f114205h = true;
                        enumC20264ab56 = EnumC20264ab.f114313an;
                    } else {
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab56 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab56 = EnumC20264ab.f114305af;
                }
                c20350r.m71367f(enumC20264ab56);
            }
        };
        f114303ad = enumC20264ab55;
        final String str56 = "DoctypePublicIdentifier_doubleQuoted";
        final int i56 = 56;
        EnumC20264ab enumC20264ab56 = new EnumC20264ab(str56, i56) { // from class: org.jsoup.parser.cc
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab57;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114366m.f114203f.append((char) 65533);
                    return;
                }
                if (m71178f != '\"') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else {
                        if (m71178f != 65535) {
                            c20350r.f114366m.f114203f.append(m71178f);
                            return;
                        }
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab57 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab57 = EnumC20264ab.f114306ag;
                }
                c20350r.m71367f(enumC20264ab57);
            }
        };
        f114304ae = enumC20264ab56;
        final String str57 = "DoctypePublicIdentifier_singleQuoted";
        final int i57 = 57;
        EnumC20264ab enumC20264ab57 = new EnumC20264ab(str57, i57) { // from class: org.jsoup.parser.cd
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab58;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114366m.f114203f.append((char) 65533);
                    return;
                }
                if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else {
                        if (m71178f != 65535) {
                            c20350r.f114366m.f114203f.append(m71178f);
                            return;
                        }
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab58 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab58 = EnumC20264ab.f114306ag;
                }
                c20350r.m71367f(enumC20264ab58);
            }
        };
        f114305af = enumC20264ab57;
        final String str58 = "AfterDoctypePublicIdentifier";
        final int i58 = 58;
        EnumC20264ab enumC20264ab58 = new EnumC20264ab(str58, i58) { // from class: org.jsoup.parser.ce
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab59;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    enumC20264ab59 = EnumC20264ab.f114307ah;
                } else if (m71178f == '\"') {
                    c20350r.m71379r(this);
                    enumC20264ab59 = EnumC20264ab.f114310ak;
                } else if (m71178f != '\'') {
                    if (m71178f != '>') {
                        if (m71178f != 65535) {
                            c20350r.m71379r(this);
                            c20350r.f114366m.f114205h = true;
                            enumC20264ab59 = EnumC20264ab.f114313an;
                        } else {
                            c20350r.m71381t(this);
                            c20350r.f114366m.f114205h = true;
                        }
                    }
                    c20350r.m71385x();
                    enumC20264ab59 = EnumC20264ab.f114299a;
                } else {
                    c20350r.m71379r(this);
                    enumC20264ab59 = EnumC20264ab.f114311al;
                }
                c20350r.m71367f(enumC20264ab59);
            }
        };
        f114306ag = enumC20264ab58;
        final String str59 = "BetweenDoctypePublicAndSystemIdentifiers";
        final int i59 = 59;
        EnumC20264ab enumC20264ab59 = new EnumC20264ab(str59, i59) { // from class: org.jsoup.parser.cg
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab60;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    return;
                }
                if (m71178f == '\"') {
                    c20350r.m71379r(this);
                    enumC20264ab60 = EnumC20264ab.f114310ak;
                } else if (m71178f != '\'') {
                    if (m71178f != '>') {
                        if (m71178f != 65535) {
                            c20350r.m71379r(this);
                            c20350r.f114366m.f114205h = true;
                            enumC20264ab60 = EnumC20264ab.f114313an;
                        } else {
                            c20350r.m71381t(this);
                            c20350r.f114366m.f114205h = true;
                        }
                    }
                    c20350r.m71385x();
                    enumC20264ab60 = EnumC20264ab.f114299a;
                } else {
                    c20350r.m71379r(this);
                    enumC20264ab60 = EnumC20264ab.f114311al;
                }
                c20350r.m71367f(enumC20264ab60);
            }
        };
        f114307ah = enumC20264ab59;
        final String str60 = "AfterDoctypeSystemKeyword";
        final int i60 = 60;
        EnumC20264ab enumC20264ab60 = new EnumC20264ab(str60, i60) { // from class: org.jsoup.parser.ch
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab61;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    enumC20264ab61 = EnumC20264ab.f114309aj;
                } else if (m71178f == '\"') {
                    c20350r.m71379r(this);
                    enumC20264ab61 = EnumC20264ab.f114310ak;
                } else if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else {
                        if (m71178f != 65535) {
                            c20350r.m71379r(this);
                            c20350r.f114366m.f114205h = true;
                            c20350r.m71385x();
                            return;
                        }
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab61 = EnumC20264ab.f114299a;
                } else {
                    c20350r.m71379r(this);
                    enumC20264ab61 = EnumC20264ab.f114311al;
                }
                c20350r.m71367f(enumC20264ab61);
            }
        };
        f114308ai = enumC20264ab60;
        final String str61 = "BeforeDoctypeSystemIdentifier";
        final int i61 = 61;
        EnumC20264ab enumC20264ab61 = new EnumC20264ab(str61, i61) { // from class: org.jsoup.parser.ci
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab62;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    return;
                }
                if (m71178f == '\"') {
                    enumC20264ab62 = EnumC20264ab.f114310ak;
                } else if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else if (m71178f != 65535) {
                        c20350r.m71379r(this);
                        c20350r.f114366m.f114205h = true;
                        enumC20264ab62 = EnumC20264ab.f114313an;
                    } else {
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab62 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab62 = EnumC20264ab.f114311al;
                }
                c20350r.m71367f(enumC20264ab62);
            }
        };
        f114309aj = enumC20264ab61;
        final String str62 = "DoctypeSystemIdentifier_doubleQuoted";
        final int i62 = 62;
        EnumC20264ab enumC20264ab62 = new EnumC20264ab(str62, i62) { // from class: org.jsoup.parser.cj
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab63;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114366m.f114204g.append((char) 65533);
                    return;
                }
                if (m71178f != '\"') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else {
                        if (m71178f != 65535) {
                            c20350r.f114366m.f114204g.append(m71178f);
                            return;
                        }
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab63 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab63 = EnumC20264ab.f114312am;
                }
                c20350r.m71367f(enumC20264ab63);
            }
        };
        f114310ak = enumC20264ab62;
        final String str63 = "DoctypeSystemIdentifier_singleQuoted";
        final int i63 = 63;
        EnumC20264ab enumC20264ab63 = new EnumC20264ab(str63, i63) { // from class: org.jsoup.parser.ck
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab64;
                char m71178f = characterReader.m71178f();
                if (m71178f == 0) {
                    c20350r.m71379r(this);
                    c20350r.f114366m.f114204g.append((char) 65533);
                    return;
                }
                if (m71178f != '\'') {
                    if (m71178f == '>') {
                        c20350r.m71379r(this);
                    } else {
                        if (m71178f != 65535) {
                            c20350r.f114366m.f114204g.append(m71178f);
                            return;
                        }
                        c20350r.m71381t(this);
                    }
                    c20350r.f114366m.f114205h = true;
                    c20350r.m71385x();
                    enumC20264ab64 = EnumC20264ab.f114299a;
                } else {
                    enumC20264ab64 = EnumC20264ab.f114312am;
                }
                c20350r.m71367f(enumC20264ab64);
            }
        };
        f114311al = enumC20264ab63;
        final String str64 = "AfterDoctypeSystemIdentifier";
        final int i64 = 64;
        EnumC20264ab enumC20264ab64 = new EnumC20264ab(str64, i64) { // from class: org.jsoup.parser.cl
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                EnumC20264ab enumC20264ab65;
                char m71178f = characterReader.m71178f();
                if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                    return;
                }
                if (m71178f != '>') {
                    if (m71178f != 65535) {
                        c20350r.m71379r(this);
                        enumC20264ab65 = EnumC20264ab.f114313an;
                        c20350r.m71367f(enumC20264ab65);
                    }
                    c20350r.m71381t(this);
                    c20350r.f114366m.f114205h = true;
                }
                c20350r.m71385x();
                enumC20264ab65 = EnumC20264ab.f114299a;
                c20350r.m71367f(enumC20264ab65);
            }
        };
        f114312am = enumC20264ab64;
        final String str65 = "BogusDoctype";
        final int i65 = 65;
        EnumC20264ab enumC20264ab65 = new EnumC20264ab(str65, i65) { // from class: org.jsoup.parser.cm
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                char m71178f = characterReader.m71178f();
                if (m71178f == '>' || m71178f == 65535) {
                    c20350r.m71385x();
                    c20350r.m71367f(EnumC20264ab.f114299a);
                }
            }
        };
        f114313an = enumC20264ab65;
        final String str66 = "CdataSection";
        final int i66 = 66;
        EnumC20264ab enumC20264ab66 = new EnumC20264ab(str66, i66) { // from class: org.jsoup.parser.cn
            {
                C20265ac c20265ac2 = null;
            }

            @Override // org.jsoup.parser.EnumC20264ab
            /* renamed from: a */
            public void mo71349a(C20350r c20350r, CharacterReader characterReader) {
                c20350r.f114361h.append(characterReader.m71186n("]]>"));
                if (characterReader.m71192t("]]>") || characterReader.isEmpty()) {
                    c20350r.m71366e(new Token.C20257a(c20350r.f114361h.toString()));
                    c20350r.m71367f(EnumC20264ab.f114299a);
                }
            }
        };
        f114314ao = enumC20264ab66;
        f114323ax = new EnumC20264ab[]{c20265ac, enumC20264ab, enumC20264ab2, enumC20264ab3, enumC20264ab4, enumC20264ab5, enumC20264ab6, enumC20264ab7, enumC20264ab8, enumC20264ab9, enumC20264ab10, enumC20264ab11, enumC20264ab12, enumC20264ab13, enumC20264ab14, enumC20264ab15, enumC20264ab16, enumC20264ab17, enumC20264ab18, enumC20264ab19, enumC20264ab20, enumC20264ab21, enumC20264ab22, enumC20264ab23, enumC20264ab24, enumC20264ab25, enumC20264ab26, enumC20264ab27, enumC20264ab28, enumC20264ab29, enumC20264ab30, enumC20264ab31, enumC20264ab32, enumC20264ab33, enumC20264ab34, enumC20264ab35, enumC20264ab36, enumC20264ab37, enumC20264ab38, enumC20264ab39, enumC20264ab40, enumC20264ab41, enumC20264ab42, enumC20264ab43, enumC20264ab44, enumC20264ab45, enumC20264ab46, enumC20264ab47, enumC20264ab48, enumC20264ab49, enumC20264ab50, enumC20264ab51, enumC20264ab52, enumC20264ab53, enumC20264ab54, enumC20264ab55, enumC20264ab56, enumC20264ab57, enumC20264ab58, enumC20264ab59, enumC20264ab60, enumC20264ab61, enumC20264ab62, enumC20264ab63, enumC20264ab64, enumC20264ab65, enumC20264ab66};
        f114316aq = new char[]{0, '&', Chars.QUOTE};
        f114317ar = new char[]{0, '\"', '&'};
        f114318as = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', Chars.QUOTE, '/', '<', '=', '>'};
        f114319at = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', '&', Chars.QUOTE, '<', '=', '>', '`'};
        f114321av = String.valueOf((char) 65533);
    }

    private EnumC20264ab(String str, int i) {
    }

    /* renamed from: a */
    public static EnumC20264ab m71336a(String str) {
        return (EnumC20264ab) Enum.valueOf(EnumC20264ab.class, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m71346d(C20350r c20350r, CharacterReader characterReader, EnumC20264ab enumC20264ab, EnumC20264ab enumC20264ab2) {
        char current = characterReader.current();
        if (current == 0) {
            c20350r.m71379r(enumC20264ab);
            characterReader.advance();
            c20350r.m71364c((char) 65533);
        } else if (current == '<') {
            c20350r.m71375n(enumC20264ab2);
        } else if (current != 65535) {
            c20350r.m71365d(characterReader.m71184l());
        } else {
            c20350r.m71366e(new Token.C20261e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m71347e(C20350r c20350r, CharacterReader characterReader, EnumC20264ab enumC20264ab, EnumC20264ab enumC20264ab2) {
        if (characterReader.m71167B()) {
            c20350r.m71362a(false);
            c20350r.m71367f(enumC20264ab);
        } else {
            c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG);
            c20350r.m71367f(enumC20264ab2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m71348f(C20350r c20350r, CharacterReader characterReader, EnumC20264ab enumC20264ab, EnumC20264ab enumC20264ab2) {
        if (characterReader.m71167B()) {
            String m71182j = characterReader.m71182j();
            c20350r.f114361h.append(m71182j);
            c20350r.m71365d(m71182j);
            return;
        }
        char m71178f = characterReader.m71178f();
        if (m71178f != '\t' && m71178f != '\n' && m71178f != '\f' && m71178f != '\r' && m71178f != ' ' && m71178f != '/' && m71178f != '>') {
            characterReader.m71172H();
            c20350r.m71367f(enumC20264ab2);
        } else {
            if (c20350r.f114361h.toString().equals(Constants.ELEMNAME_SCRIPT_STRING)) {
                c20350r.m71367f(enumC20264ab);
            } else {
                c20350r.m71367f(enumC20264ab2);
            }
            c20350r.m71364c(m71178f);
        }
    }

    /* renamed from: a */
    public abstract void mo71349a(C20350r c20350r, CharacterReader characterReader);

    public /* synthetic */ EnumC20264ab(String str, int i, C20265ac c20265ac) {
        this(str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m71342b(C20350r c20350r, CharacterReader characterReader, EnumC20264ab enumC20264ab) {
        EnumC20264ab enumC20264ab2;
        if (characterReader.m71167B()) {
            String m71182j = characterReader.m71182j();
            c20350r.f114362i.m71299l(m71182j);
            c20350r.f114361h.append(m71182j);
            return;
        }
        boolean z = true;
        if (c20350r.m71387z() && !characterReader.isEmpty()) {
            char m71178f = characterReader.m71178f();
            if (m71178f == '\t' || m71178f == '\n' || m71178f == '\f' || m71178f == '\r' || m71178f == ' ') {
                enumC20264ab2 = f114280H;
            } else if (m71178f == '/') {
                enumC20264ab2 = f114288P;
            } else if (m71178f != '>') {
                c20350r.f114361h.append(m71178f);
            } else {
                c20350r.m71376o();
                enumC20264ab2 = f114299a;
            }
            c20350r.m71367f(enumC20264ab2);
            z = false;
        }
        if (z) {
            c20350r.m71365d(XMLStreamWriterImpl.OPEN_END_TAG + c20350r.f114361h.toString());
            c20350r.m71367f(enumC20264ab);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m71344b(C20350r c20350r, EnumC20264ab enumC20264ab) {
        int[] m71370i = c20350r.m71370i(null, false);
        if (m71370i == null) {
            c20350r.m71364c('&');
        } else {
            c20350r.m71369h(m71370i);
        }
        c20350r.m71367f(enumC20264ab);
    }

    /* renamed from: a */
    public static EnumC20264ab[] m71340a() {
        return (EnumC20264ab[]) f114323ax.clone();
    }
}
