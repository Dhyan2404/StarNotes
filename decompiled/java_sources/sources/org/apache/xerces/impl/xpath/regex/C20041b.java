package org.apache.xerces.impl.xpath.regex;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.impl.xpath.regex.Token;

/* renamed from: org.apache.xerces.impl.xpath.regex.b */
/* loaded from: classes13.dex */
public class C20041b extends C20042c {

    /* renamed from: O */
    public static Hashtable f112624O = null;

    /* renamed from: P */
    public static Hashtable f112625P = null;

    /* renamed from: Q */
    public static final String f112626Q = "\t\n\r\r  ";

    /* renamed from: R */
    public static final String f112627R = "-.0:AZ__az··ÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁːˑ̀͠͡ͅΆΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁ҃҆ҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆֹֻֽֿֿׁׂ֑֣֡ׄׄאתװײءغـْ٠٩ٰڷںھۀێېۓە۪ۭۨ۰۹ँःअह़्॑॔क़ॣ०९ঁঃঅঌএঐওনপরললশহ়়াৄেৈো্ৗৗড়ঢ়য়ৣ০ৱਂਂਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹ਼਼ਾੂੇੈੋ੍ਖ਼ੜਫ਼ਫ਼੦ੴઁઃઅઋઍઍએઑઓનપરલળવહ઼ૅેૉો્ૠૠ૦૯ଁଃଅଌଏଐଓନପରଲଳଶହ଼ୃେୈୋ୍ୖୗଡ଼ଢ଼ୟୡ୦୯ஂஃஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹாூெைொ்ௗௗ௧௯ఁఃఅఌఎఐఒనపళవహాౄెైొ్ౕౖౠౡ౦౯ಂಃಅಌಎಐಒನಪಳವಹಾೄೆೈೊ್ೕೖೞೞೠೡ೦೯ംഃഅഌഎഐഒനപഹാൃെൈൊ്ൗൗൠൡ൦൯กฮะฺเ๎๐๙ກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະູົຽເໄໆໆ່ໍ໐໙༘༙༠༩༹༹༵༵༷༷༾ཇཉཀྵ྄ཱ྆ྋྐྕྗྗྙྭྱྷྐྵྐྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼ⃐⃜⃡⃡ΩΩKÅ℮℮ↀↂ々々〇〇〡〯〱〵ぁゔ゙゚ゝゞァヺーヾㄅㄬ一龥가힣";

    /* renamed from: S */
    public static final String f112628S = "AZazÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁΆΆΈΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆאתװײءغفيٱڷںھۀێېۓەەۥۦअहऽऽक़ॡঅঌএঐওনপরললশহড়ঢ়য়ৡৰৱਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹਖ਼ੜਫ਼ਫ਼ੲੴઅઋઍઍએઑઓનપરલળવહઽઽૠૠଅଌଏଐଓନପରଲଳଶହଽଽଡ଼ଢ଼ୟୡஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹఅఌఎఐఒనపళవహౠౡಅಌಎಐಒನಪಳವಹೞೞೠೡഅഌഎഐഒനപഹൠൡกฮะะาำเๅກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະະາຳຽຽເໄཀཇཉཀྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼΩΩKÅ℮℮ↀↂ〇〇〡〩ぁゔァヺㄅㄬ一龥가힣";

    /* renamed from: T */
    public static final String f112629T = "09٠٩۰۹०९০৯੦੯૦૯୦୯௧௯౦౯೦೯൦൯๐๙໐໙༠༩";

    /* renamed from: U */
    public static final int[] f112630U = {48, 57, 1632, 1641, 1776, 1785, 2406, 2415, 2534, 2543, 2662, 2671, 2790, 2799, 2918, 2927, 3047, 3055, 3174, 3183, 3302, 3311, 3430, 3439, 3664, 3673, 3792, 3801, 3872, 3881, 4160, 4169, 4969, 4977, 6112, 6121, 6160, 6169, 65296, 65305, 120782, 120831};

    public C20041b() {
    }

    /* renamed from: X */
    public static synchronized RangeToken m70061X(String str, boolean z) {
        RangeToken rangeToken;
        synchronized (C20041b.class) {
            if (f112624O == null) {
                f112624O = new Hashtable();
                f112625P = new Hashtable();
                RangeToken createRange = Token.createRange();
                m70062Y(createRange, f112626Q);
                f112624O.put("xml:isSpace", createRange);
                f112625P.put("xml:isSpace", Token.complementRanges(createRange));
                RangeToken createRange2 = Token.createRange();
                m70063Z(createRange2, f112630U);
                f112624O.put("xml:isDigit", createRange2);
                f112625P.put("xml:isDigit", Token.complementRanges(createRange2));
                RangeToken createRange3 = Token.createRange();
                createRange3.mergeRanges(Token.getRange("P", true));
                createRange3.mergeRanges(Token.getRange(Constants.HASIDCALL_INDEX_SIG, true));
                createRange3.mergeRanges(Token.getRange(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, true));
                f112625P.put("xml:isWord", createRange3);
                f112624O.put("xml:isWord", Token.complementRanges(createRange3));
                RangeToken createRange4 = Token.createRange();
                m70062Y(createRange4, f112627R);
                f112624O.put("xml:isNameChar", createRange4);
                f112625P.put("xml:isNameChar", Token.complementRanges(createRange4));
                RangeToken createRange5 = Token.createRange();
                m70062Y(createRange5, f112628S);
                createRange5.addRange(95, 95);
                createRange5.addRange(58, 58);
                f112624O.put("xml:isInitialNameChar", createRange5);
                f112625P.put("xml:isInitialNameChar", Token.complementRanges(createRange5));
            }
            rangeToken = (RangeToken) (z ? f112624O.get(str) : f112625P.get(str));
        }
        return rangeToken;
    }

    /* renamed from: Y */
    public static void m70062Y(Token token, String str) {
        int length = str.length();
        for (int i = 0; i < length; i += 2) {
            token.addRange(str.charAt(i), str.charAt(i + 1));
        }
    }

    /* renamed from: Z */
    public static void m70063Z(Token token, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i += 2) {
            token.addRange(iArr[i], iArr[i + 1]);
        }
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: A */
    public Token mo70064A() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: B */
    public Token mo70065B() throws ParseException {
        m70107i();
        return mo70085f(105);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: C */
    public Token mo70066C() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: E */
    public Token mo70067E() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: F */
    public int mo70068F(RangeToken rangeToken, int i) {
        rangeToken.mergeRanges(mo70085f(i));
        return -1;
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: G */
    public Token mo70069G() throws ParseException {
        m70107i();
        return Token.createChar(94);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: H */
    public Token mo70070H() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: I */
    public Token mo70071I() throws ParseException {
        m70107i();
        return Token.createChar(36);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: J */
    public Token mo70072J() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: K */
    public Token mo70073K() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: L */
    public Token mo70074L() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: M */
    public Token mo70075M() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: N */
    public Token mo70076N() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: O */
    public Token mo70077O() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: P */
    public Token mo70078P() throws ParseException {
        m70107i();
        Token.ParenToken createParen = Token.createParen(m70111n(), 0);
        if (m70102U() != 7) {
            throw m70105e("parser.factor.1", this.f112659a - 1);
        }
        m70107i();
        return createParen;
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: Q */
    public Token mo70079Q() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: R */
    public Token mo70080R(Token token) throws ParseException {
        m70107i();
        return Token.createConcat(token, Token.createClosure(token));
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: S */
    public Token mo70081S(Token token) throws ParseException {
        m70107i();
        Token.UnionToken createUnion = Token.createUnion();
        createUnion.addChild(token);
        createUnion.addChild(Token.createEmpty());
        return createUnion;
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: T */
    public Token mo70082T(Token token) throws ParseException {
        m70107i();
        return Token.createClosure(token);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: c */
    public boolean mo70083c(int i) {
        return false;
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: d */
    public int mo70084d() throws ParseException {
        if (m70102U() != 10) {
            throw m70105e("parser.next.1", this.f112659a - 1);
        }
        int i = this.f112664f;
        if (i != 45 && i != 46 && i != 63) {
            if (i == 110) {
                return 10;
            }
            if (i == 114) {
                return 13;
            }
            if (i == 116) {
                return 9;
            }
            switch (i) {
                case 40:
                case 41:
                case 42:
                case 43:
                    break;
                default:
                    switch (i) {
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                            break;
                        default:
                            switch (i) {
                                case 123:
                                case 124:
                                case 125:
                                    break;
                                default:
                                    throw m70105e("parser.process.1", this.f112659a - 2);
                            }
                    }
            }
        }
        return i;
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: f */
    public Token mo70085f(int i) {
        if (i == 67) {
            return m70061X("xml:isNameChar", false);
        }
        if (i == 68) {
            return m70061X("xml:isDigit", false);
        }
        if (i == 73) {
            return m70061X("xml:isInitialNameChar", false);
        }
        if (i == 83) {
            return m70061X("xml:isSpace", false);
        }
        if (i == 87) {
            return m70061X("xml:isWord", false);
        }
        if (i == 105) {
            return m70061X("xml:isInitialNameChar", true);
        }
        if (i == 115) {
            return m70061X("xml:isSpace", true);
        }
        if (i == 119) {
            return m70061X("xml:isWord", true);
        }
        if (i == 99) {
            return m70061X("xml:isNameChar", true);
        }
        if (i == 100) {
            return m70061X("xml:isDigit", true);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Internal Error: shorthands: \\u");
        stringBuffer.append(Integer.toString(i, 16));
        throw new RuntimeException(stringBuffer.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x00b0, code lost:
    
        if (r10 < 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00da, code lost:
    
        if (m70102U() == r1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00dc, code lost:
    
        r2.sortRanges();
        r2.compactRanges();
        m70103V(r3);
        m70107i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00e8, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ef, code lost:
    
        throw m70105e("parser.cc.2", r16.f112659a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
    
        r2 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0100  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.xpath.regex.RangeToken mo70086l(boolean r17) throws org.apache.xerces.impl.xpath.regex.ParseException {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.C20041b.mo70086l(boolean):org.apache.xerces.impl.xpath.regex.RangeToken");
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: o */
    public RangeToken mo70087o() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: q */
    public Token mo70088q() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a - 4);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: r */
    public Token mo70089r() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: s */
    public Token mo70090s() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: t */
    public Token mo70091t() throws ParseException {
        m70107i();
        return mo70085f(67);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: u */
    public Token mo70092u() throws ParseException {
        m70107i();
        return mo70085f(73);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: v */
    public Token mo70093v() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a - 2);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: w */
    public Token mo70094w() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: x */
    public Token mo70095x() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: y */
    public Token mo70096y() throws ParseException {
        m70107i();
        return mo70085f(99);
    }

    @Override // org.apache.xerces.impl.xpath.regex.C20042c
    /* renamed from: z */
    public Token mo70097z() throws ParseException {
        throw m70105e("parser.process.1", this.f112659a - 2);
    }

    public C20041b(Locale locale) {
        super(locale);
    }
}
