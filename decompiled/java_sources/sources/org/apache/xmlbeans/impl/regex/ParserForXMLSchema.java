package org.apache.xmlbeans.impl.regex;

import java.util.Hashtable;
import java.util.Locale;
import org.apache.xmlbeans.impl.regex.Token;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class ParserForXMLSchema extends RegexParser {
    private static final String DIGITS = "09٠٩۰۹०९০৯੦੯૦૯୦୯௧௯౦౯೦೯൦൯๐๙໐໙༠༩";
    private static final String LETTERS = "AZazÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁΆΆΈΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆאתװײءغفيٱڷںھۀێېۓەەۥۦअहऽऽक़ॡঅঌএঐওনপরললশহড়ঢ়য়ৡৰৱਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹਖ਼ੜਫ਼ਫ਼ੲੴઅઋઍઍએઑઓનપરલળવહઽઽૠૠଅଌଏଐଓନପରଲଳଶହଽଽଡ଼ଢ଼ୟୡஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹఅఌఎఐఒనపళవహౠౡಅಌಎಐಒನಪಳವಹೞೞೠೡഅഌഎഐഒനപഹൠൡกฮะะาำเๅກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະະາຳຽຽເໄཀཇཉཀྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼΩΩKÅ℮℮ↀↂ〇〇〡〩ぁゔァヺㄅㄬ一龥가힣";
    private static final String NAMECHARS = "-.0:AZ__az··ÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁːˑ̀͠͡ͅΆΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁ҃҆ҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆֹֻֽֿֿׁׂ֑֣֡ׄׄאתװײءغـْ٠٩ٰڷںھۀێېۓە۪ۭۨ۰۹ँःअह़्॑॔क़ॣ०९ঁঃঅঌএঐওনপরললশহ়়াৄেৈো্ৗৗড়ঢ়য়ৣ০ৱਂਂਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹ਼਼ਾੂੇੈੋ੍ਖ਼ੜਫ਼ਫ਼੦ੴઁઃઅઋઍઍએઑઓનપરલળવહ઼ૅેૉો્ૠૠ૦૯ଁଃଅଌଏଐଓନପରଲଳଶହ଼ୃେୈୋ୍ୖୗଡ଼ଢ଼ୟୡ୦୯ஂஃஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹாூெைொ்ௗௗ௧௯ఁఃఅఌఎఐఒనపళవహాౄెైొ్ౕౖౠౡ౦౯ಂಃಅಌಎಐಒನಪಳವಹಾೄೆೈೊ್ೕೖೞೞೠೡ೦೯ംഃഅഌഎഐഒനപഹാൃെൈൊ്ൗൗൠൡ൦൯กฮะฺเ๎๐๙ກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະູົຽເໄໆໆ່ໍ໐໙༘༙༠༩༹༹༵༵༷༷༾ཇཉཀྵ྄ཱ྆ྋྐྕྗྗྙྭྱྷྐྵྐྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼ⃐⃜⃡⃡ΩΩKÅ℮℮ↀↂ々々〇〇〡〯〱〵ぁゔ゙゚ゝゞァヺーヾㄅㄬ一龥가힣";
    private static final String SPACES = "\t\n\r\r  ";
    private static Hashtable ranges;
    private static Hashtable ranges2;

    public ParserForXMLSchema() {
    }

    public static synchronized RangeToken getRange(String str, boolean z) {
        RangeToken rangeToken;
        synchronized (ParserForXMLSchema.class) {
            if (ranges == null) {
                ranges = new Hashtable();
                ranges2 = new Hashtable();
                RangeToken createRange = Token.createRange();
                setupRange(createRange, "\t\n\r\r  ");
                ranges.put("xml:isSpace", createRange);
                ranges2.put("xml:isSpace", Token.complementRanges(createRange));
                RangeToken createRange2 = Token.createRange();
                setupRange(createRange2, "09٠٩۰۹०९০৯੦੯૦૯୦୯௧௯౦౯೦೯൦൯๐๙໐໙༠༩");
                ranges.put("xml:isDigit", createRange2);
                ranges2.put("xml:isDigit", Token.complementRanges(createRange2));
                RangeToken createRange3 = Token.createRange();
                setupRange(createRange3, "09٠٩۰۹०९০৯੦੯૦૯୦୯௧௯౦౯೦೯൦൯๐๙໐໙༠༩");
                ranges.put("xml:isDigit", createRange3);
                ranges2.put("xml:isDigit", Token.complementRanges(createRange3));
                RangeToken createRange4 = Token.createRange();
                setupRange(createRange4, "AZazÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁΆΆΈΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆאתװײءغفيٱڷںھۀێېۓەەۥۦअहऽऽक़ॡঅঌএঐওনপরললশহড়ঢ়য়ৡৰৱਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹਖ਼ੜਫ਼ਫ਼ੲੴઅઋઍઍએઑઓનપરલળવહઽઽૠૠଅଌଏଐଓନପରଲଳଶହଽଽଡ଼ଢ଼ୟୡஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹఅఌఎఐఒనపళవహౠౡಅಌಎಐಒನಪಳವಹೞೞೠೡഅഌഎഐഒനപഹൠൡกฮะะาำเๅກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະະາຳຽຽເໄཀཇཉཀྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼΩΩKÅ℮℮ↀↂ〇〇〡〩ぁゔァヺㄅㄬ一龥가힣");
                createRange4.mergeRanges((Token) ranges.get("xml:isDigit"));
                ranges.put("xml:isWord", createRange4);
                ranges2.put("xml:isWord", Token.complementRanges(createRange4));
                RangeToken createRange5 = Token.createRange();
                setupRange(createRange5, "-.0:AZ__az··ÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁːˑ̀͠͡ͅΆΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁ҃҆ҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆֹֻֽֿֿׁׂ֑֣֡ׄׄאתװײءغـْ٠٩ٰڷںھۀێېۓە۪ۭۨ۰۹ँःअह़्॑॔क़ॣ०९ঁঃঅঌএঐওনপরললশহ়়াৄেৈো্ৗৗড়ঢ়য়ৣ০ৱਂਂਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹ਼਼ਾੂੇੈੋ੍ਖ਼ੜਫ਼ਫ਼੦ੴઁઃઅઋઍઍએઑઓનપરલળવહ઼ૅેૉો્ૠૠ૦૯ଁଃଅଌଏଐଓନପରଲଳଶହ଼ୃେୈୋ୍ୖୗଡ଼ଢ଼ୟୡ୦୯ஂஃஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹாூெைொ்ௗௗ௧௯ఁఃఅఌఎఐఒనపళవహాౄెైొ్ౕౖౠౡ౦౯ಂಃಅಌಎಐಒನಪಳವಹಾೄೆೈೊ್ೕೖೞೞೠೡ೦೯ംഃഅഌഎഐഒനപഹാൃെൈൊ്ൗൗൠൡ൦൯กฮะฺเ๎๐๙ກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະູົຽເໄໆໆ່ໍ໐໙༘༙༠༩༹༹༵༵༷༷༾ཇཉཀྵ྄ཱ྆ྋྐྕྗྗྙྭྱྷྐྵྐྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼ⃐⃜⃡⃡ΩΩKÅ℮℮ↀↂ々々〇〇〡〯〱〵ぁゔ゙゚ゝゞァヺーヾㄅㄬ一龥가힣");
                ranges.put("xml:isNameChar", createRange5);
                ranges2.put("xml:isNameChar", Token.complementRanges(createRange5));
                RangeToken createRange6 = Token.createRange();
                setupRange(createRange6, "AZazÀÖØöøıĴľŁňŊžƀǃǍǰǴǵǺȗɐʨʻˁΆΆΈΊΌΌΎΡΣώϐϖϚϚϜϜϞϞϠϠϢϳЁЌЎяёќўҁҐӄӇӈӋӌӐӫӮӵӸӹԱՖՙՙաֆאתװײءغفيٱڷںھۀێېۓەەۥۦअहऽऽक़ॡঅঌএঐওনপরললশহড়ঢ়য়ৡৰৱਅਊਏਐਓਨਪਰਲਲ਼ਵਸ਼ਸਹਖ਼ੜਫ਼ਫ਼ੲੴઅઋઍઍએઑઓનપરલળવહઽઽૠૠଅଌଏଐଓନପରଲଳଶହଽଽଡ଼ଢ଼ୟୡஅஊஎஐஒகஙசஜஜஞடணதநபமவஷஹఅఌఎఐఒనపళవహౠౡಅಌಎಐಒನಪಳವಹೞೞೠೡഅഌഎഐഒനപഹൠൡกฮะะาำเๅກຂຄຄງຈຊຊຍຍດທນຟມຣລລວວສຫອຮະະາຳຽຽເໄཀཇཉཀྵႠჅაჶᄀᄀᄂᄃᄅᄇᄉᄉᄋᄌᄎᄒᄼᄼᄾᄾᅀᅀᅌᅌᅎᅎᅐᅐᅔᅕᅙᅙᅟᅡᅣᅣᅥᅥᅧᅧᅩᅩᅭᅮᅲᅳᅵᅵᆞᆞᆨᆨᆫᆫᆮᆯᆷᆸᆺᆺᆼᇂᇫᇫᇰᇰᇹᇹḀẛẠỹἀἕἘἝἠὅὈὍὐὗὙὙὛὛὝὝὟώᾀᾴᾶᾼιιῂῄῆῌῐΐῖΊῠῬῲῴῶῼΩΩKÅ℮℮ↀↂ〇〇〡〩ぁゔァヺㄅㄬ一龥가힣");
                createRange6.addRange(95, 95);
                createRange6.addRange(58, 58);
                ranges.put("xml:isInitialNameChar", createRange6);
                ranges2.put("xml:isInitialNameChar", Token.complementRanges(createRange6));
            }
            rangeToken = z ? (RangeToken) ranges.get(str) : (RangeToken) ranges2.get(str);
        }
        return rangeToken;
    }

    public static void setupRange(Token token, String str) {
        int length = str.length();
        for (int i = 0; i < length; i += 2) {
            token.addRange(str.charAt(i), str.charAt(i + 1));
        }
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public boolean checkQuestion(int i) {
        return false;
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public int decodeEscaped() throws ParseException {
        if (read() != 10) {
            throw m70732ex("parser.next.1", this.offset - 1);
        }
        int i = this.chardata;
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
                                    throw m70732ex("parser.process.1", this.offset - 2);
                            }
                    }
            }
        }
        return i;
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token getTokenForShorthand(int i) {
        if (i == 67) {
            return getRange("xml:isNameChar", false);
        }
        if (i == 68) {
            return getRange("xml:isDigit", false);
        }
        if (i == 73) {
            return getRange("xml:isInitialNameChar", false);
        }
        if (i == 83) {
            return getRange("xml:isSpace", false);
        }
        if (i == 87) {
            return getRange("xml:isWord", false);
        }
        if (i == 105) {
            return getRange("xml:isInitialNameChar", true);
        }
        if (i == 115) {
            return getRange("xml:isSpace", true);
        }
        if (i == 119) {
            return getRange("xml:isWord", true);
        }
        if (i == 99) {
            return getRange("xml:isNameChar", true);
        }
        if (i == 100) {
            return getRange("xml:isDigit", true);
        }
        throw new RuntimeException("Internal Error: shorthands: \\u" + Integer.toString(i, 16));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x00a6, code lost:
    
        if (r10 < 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0195, code lost:
    
        if (read() == 1) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0197, code lost:
    
        r2.sortRanges();
        r2.compactRanges();
        setContext(0);
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01a4, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01ab, code lost:
    
        throw m70732ex("parser.cc.2", r16.offset);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0190, code lost:
    
        r2 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x018c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d6  */
    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.impl.regex.RangeToken parseCharacterClass(boolean r17) throws org.apache.xmlbeans.impl.regex.ParseException {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.regex.ParserForXMLSchema.parseCharacterClass(boolean):org.apache.xmlbeans.impl.regex.RangeToken");
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public RangeToken parseSetOperations() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBackreference() throws ParseException {
        throw m70732ex("parser.process.1", this.offset - 4);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_A() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_B() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_C() throws ParseException {
        next();
        return getTokenForShorthand(67);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_I() throws ParseException {
        next();
        return getTokenForShorthand(73);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_X() throws ParseException {
        throw m70732ex("parser.process.1", this.offset - 2);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_Z() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_b() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_c() throws ParseException {
        next();
        return getTokenForShorthand(99);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_g() throws ParseException {
        throw m70732ex("parser.process.1", this.offset - 2);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_gt() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_i() throws ParseException {
        next();
        return getTokenForShorthand(105);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_lt() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processBacksolidus_z() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public int processCIinCharacterClass(RangeToken rangeToken, int i) {
        rangeToken.mergeRanges(getTokenForShorthand(i));
        return -1;
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processCaret() throws ParseException {
        next();
        return Token.createChar(94);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processCondition() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processDollar() throws ParseException {
        next();
        return Token.createChar(36);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processIndependent() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processLookahead() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processLookbehind() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processModifiers() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processNegativelookahead() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processNegativelookbehind() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processParen() throws ParseException {
        next();
        Token.ParenToken createParen = Token.createParen(parseRegex(), 0);
        if (read() != 7) {
            throw m70732ex("parser.factor.1", this.offset - 1);
        }
        next();
        return createParen;
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processParen2() throws ParseException {
        throw m70732ex("parser.process.1", this.offset);
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processPlus(Token token) throws ParseException {
        next();
        return Token.createConcat(token, Token.createClosure(token));
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processQuestion(Token token) throws ParseException {
        next();
        Token.UnionToken createUnion = Token.createUnion();
        createUnion.addChild(token);
        createUnion.addChild(Token.createEmpty());
        return createUnion;
    }

    @Override // org.apache.xmlbeans.impl.regex.RegexParser
    public Token processStar(Token token) throws ParseException {
        next();
        return Token.createClosure(token);
    }

    public ParserForXMLSchema(Locale locale) {
    }
}
