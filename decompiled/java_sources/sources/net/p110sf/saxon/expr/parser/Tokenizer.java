package net.p110sf.saxon.expr.parser;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.base.data.Operators;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.rve;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* loaded from: classes11.dex */
public final class Tokenizer {
    public static final int BARE_NAME_STATE = 1;
    public static final int DEFAULT_STATE = 0;
    public static final char NUL = 0;
    public static final int OPERATOR_STATE = 3;
    public static final int SEQUENCE_TYPE_STATE = 2;
    public boolean disallowUnionKeyword;

    /* renamed from: e */
    public int f99985e;
    public String input;

    /* renamed from: a */
    public int f99981a = 0;
    public int currentToken = 0;
    public String currentTokenValue = null;
    public int currentTokenStartOffset = 0;

    /* renamed from: b */
    public int f99982b = 0;

    /* renamed from: c */
    public String f99983c = null;

    /* renamed from: d */
    public int f99984d = 0;
    public int inputOffset = 0;

    /* renamed from: f */
    public int f99986f = 1;

    /* renamed from: g */
    public int f99987g = 1;

    /* renamed from: h */
    public List<Integer> f99988h = null;

    /* renamed from: i */
    public int f99989i = -1;

    /* renamed from: j */
    public String f99990j = "";
    public boolean isXQuery = false;
    public int languageLevel = 20;
    public boolean allowSaxonExtensions = false;

    /* renamed from: a */
    public final boolean m62846a(int i) {
        return i <= 150;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public int m62847b(String str) {
        char c;
        str.hashCode();
        switch (str.hashCode()) {
            case -1944836172:
                if (str.equals(Constants.ELEMNAME_OTHERWISE_STRING)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1458301887:
                if (str.equals("satisfies")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1392885889:
                if (str.equals(gon.f71276c0)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1289550567:
                if (str.equals("except")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1068795718:
                if (str.equals("modify")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1009687108:
                if (str.equals("orElse")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -934396624:
                if (str.equals("return")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -862853570:
                if (str.equals("andAlso")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3122:
                if (str.equals("as")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 3159:
                if (str.equals("by")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 3244:
                if (str.equals("eq")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3294:
                if (str.equals("ge")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 3309:
                if (str.equals(WebvttCueParser.f27234n)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 3365:
                if (str.equals("in")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 3370:
                if (str.equals("is")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 3449:
                if (str.equals("le")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 3464:
                if (str.equals(WebvttCueParser.f27233m)) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 3511:
                if (str.equals("ne")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 3555:
                if (str.equals(Operators.OR)) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 3707:
                if (str.equals("to")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 96727:
                if (str.equals(Operators.AND)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 99473:
                if (str.equals(gon.f71293q)) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 108290:
                if (str.equals("mod")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 3046192:
                if (str.equals("case")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 3116345:
                if (str.equals("else")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 3227528:
                if (str.equals("idiv")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 3237472:
                if (str.equals("into")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 3558941:
                if (str.equals("then")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 3649734:
                if (str.equals("with")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 92734940:
                if (str.equals(gon.f71277d0)) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case 111433423:
                if (str.equals("union")) {
                    c = rve.f83547p;
                    break;
                }
                c = 65535;
                break;
            case 113097959:
                if (str.equals("where")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case 503014687:
                if (str.equals("intersect")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case 1544803905:
                if (str.equals("default")) {
                    c = PublicSuffixDatabase.f103895g;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 79;
            case 1:
                return 34;
            case 2:
                return 119;
            case 3:
                return 24;
            case 4:
                return 68;
            case 5:
                return this.allowSaxonExtensions ? 81 : -1;
            case 6:
                return 25;
            case 7:
                return this.allowSaxonExtensions ? 80 : -1;
            case '\b':
                return 71;
            case '\t':
                return 82;
            case '\n':
                return 50;
            case 11:
                return 54;
            case '\f':
                return 52;
            case '\r':
                return 31;
            case 14:
                return 20;
            case 15:
                return 55;
            case 16:
                return 53;
            case 17:
                return 51;
            case 18:
                return 9;
            case 19:
                return 29;
            case 20:
                return 10;
            case 21:
                return 18;
            case 22:
                return 19;
            case 23:
                return 67;
            case 24:
                return 27;
            case 25:
                return 56;
            case 26:
                return 120;
            case 27:
                return 26;
            case 28:
                return 121;
            case 29:
                return 118;
            case 30:
                return 1;
            case 31:
                return 28;
            case ' ':
                return 23;
            case '!':
                return 212;
            default:
                return -1;
        }
    }

    /* renamed from: c */
    public final int m62848c(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1944836172:
                if (str.equals(Constants.ELEMNAME_OTHERWISE_STRING)) {
                    c = 0;
                    break;
                }
                break;
            case -1927242956:
                if (str.equals("namespace-node")) {
                    c = 1;
                    break;
                }
                break;
            case -1826099856:
                if (str.equals("schema-attribute")) {
                    c = 2;
                    break;
                }
                break;
            case -1662836996:
                if (str.equals("element")) {
                    c = 3;
                    break;
                }
                break;
            case -1570896176:
                if (str.equals("schema-element")) {
                    c = 4;
                    break;
                }
                break;
            case -1407396309:
                if (str.equals("atomic")) {
                    c = 5;
                    break;
                }
                break;
            case -934908847:
                if (str.equals("record")) {
                    c = 6;
                    break;
                }
                break;
            case -889473228:
                if (str.equals("switch")) {
                    c = 7;
                    break;
                }
                break;
            case -666359596:
                if (str.equals(Constants.ELEMNAME_PI_STRING)) {
                    c = '\b';
                    break;
                }
                break;
            case -504073490:
                if (str.equals("typeswitch")) {
                    c = '\t';
                    break;
                }
                break;
            case 3357:
                if (str.equals(Constants.ELEMNAME_IF_STRING)) {
                    c = '\n';
                    break;
                }
                break;
            case 107868:
                if (str.equals(Constant.MAP_TAG)) {
                    c = 11;
                    break;
                }
                break;
            case 3118337:
                if (str.equals("enum")) {
                    c = '\f';
                    break;
                }
                break;
            case 3242771:
                if (str.equals("item")) {
                    c = '\r';
                    break;
                }
                break;
            case 3386882:
                if (str.equals("node")) {
                    c = 14;
                    break;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    c = 15;
                    break;
                }
                break;
            case 3575610:
                if (str.equals("type")) {
                    c = 16;
                    break;
                }
                break;
            case 13085340:
                if (str.equals("attribute")) {
                    c = 17;
                    break;
                }
                break;
            case 93090393:
                if (str.equals("array")) {
                    c = 18;
                    break;
                }
                break;
            case 110725064:
                if (str.equals("tuple")) {
                    c = 19;
                    break;
                }
                break;
            case 111433423:
                if (str.equals("union")) {
                    c = 20;
                    break;
                }
                break;
            case 950398559:
                if (str.equals("comment")) {
                    c = 21;
                    break;
                }
                break;
            case 1380938712:
                if (str.equals(Constants.EXSLT_ELEMNAME_FUNCTION_STRING)) {
                    c = 22;
                    break;
                }
                break;
            case 1456610369:
                if (str.equals("empty-sequence")) {
                    c = 23;
                    break;
                }
                break;
            case 1539209076:
                if (str.equals("document-node")) {
                    c = 24;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 79;
            case 1:
            case 11:
            case 18:
            case 22:
                return this.languageLevel == 20 ? 35 : 69;
            case 2:
            case 3:
            case 4:
            case '\b':
            case '\r':
            case 14:
            case 15:
            case 17:
            case 21:
            case 23:
            case 24:
                return 69;
            case 5:
            case 6:
            case '\f':
            case 16:
            case 19:
            case 20:
                return this.allowSaxonExtensions ? 69 : 35;
            case 7:
                return this.languageLevel == 20 ? 35 : 66;
            case '\t':
                return 65;
            case '\n':
                return 37;
            default:
                return 35;
        }
    }

    /* renamed from: d */
    public final long m62849d(int i) {
        List<Integer> list = this.f99988h;
        if (list == null) {
            return i;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            if (i > this.f99988h.get(size).intValue()) {
                return (i - r1) | ((size + 1) << 32);
            }
        }
        return i;
    }

    /* renamed from: e */
    public final void m62850e() {
        this.f99987g++;
        if (this.f99988h == null) {
            this.f99988h = new ArrayList(20);
        }
        this.f99988h.add(Integer.valueOf(this.inputOffset - 1));
    }

    /* renamed from: f */
    public int m62851f() {
        return this.f99982b;
    }

    /* renamed from: g */
    public String m62852g(int i) {
        String str = RemoveAudioAction.f58149k;
        if (i != -1) {
            int i2 = i + 30;
            int i3 = this.f99985e;
            if (i2 > i3) {
                i2 = i3;
            }
            StringBuilder sb = new StringBuilder();
            if (i <= 0) {
                str = "";
            }
            sb.append(str);
            sb.append(this.input.substring(i, i2));
            return Whitespace.collapseWhitespace(sb.toString());
        }
        int i4 = this.inputOffset;
        int i5 = this.f99985e;
        if (i4 > i5) {
            this.inputOffset = i5;
        }
        int i6 = this.inputOffset;
        if (i6 < 34) {
            return this.input.substring(0, i6);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(RemoveAudioAction.f58149k);
        String str2 = this.input;
        int i7 = this.inputOffset;
        sb2.append(str2.substring(i7 - 30, i7));
        return Whitespace.collapseWhitespace(sb2.toString());
    }

    public int getColumnNumber() {
        return (int) (m62849d(this.currentTokenStartOffset) & 2147483647L);
    }

    public int getLineNumber() {
        return this.f99986f;
    }

    public int getState() {
        return this.f99981a;
    }

    public void incrementLineNumber(int i) {
        this.f99987g++;
        if (this.f99988h == null) {
            this.f99988h = new ArrayList(20);
        }
        this.f99988h.add(Integer.valueOf(i));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0724, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0725, code lost:
    
        net.p110sf.saxon.transpile.CSharp.emitCode("goto case '_';");
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0218, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Separator needed after numeric literal");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0605, code lost:
    
        if (r1 >= 128) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x060b, code lost:
    
        if (java.lang.Character.isLetter(r1) == false) goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0635, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Invalid character '" + r1 + "' (x" + java.lang.Integer.toHexString(r1) + ") in expression");
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x03df, code lost:
    
        r16.f99983c = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x03e3, code lost:
    
        r2 = r16.input.indexOf(r1, r16.inputOffset);
        r16.inputOffset = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x03ed, code lost:
    
        if (r2 < 0) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x03ef, code lost:
    
        r2 = new java.lang.StringBuilder();
        r2.append(r16.f99983c);
        r4 = r16.input;
        r5 = r16.f99984d + 1;
        r6 = r16.inputOffset;
        r16.inputOffset = r6 + 1;
        r2.append(r4.substring(r5, r6));
        r16.f99983c = r2.toString();
        r2 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0415, code lost:
    
        if (r2 >= r16.f99985e) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x041d, code lost:
    
        if (r16.input.charAt(r2) != r1) goto L485;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0636, code lost:
    
        net.p110sf.saxon.transpile.CSharp.emitCode("goto case '_';");
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x041f, code lost:
    
        r16.f99983c += r1;
        r2 = r16.inputOffset;
        r16.f99984d = r2;
        r16.inputOffset = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x043a, code lost:
    
        r2 = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0442, code lost:
    
        if (r16.f99983c.indexOf(10) < 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x044a, code lost:
    
        if (r3 >= r16.f99983c.length()) goto L487;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0452, code lost:
    
        if (r16.f99983c.charAt(r3) != r2) goto L489;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0454, code lost:
    
        incrementLineNumber((r16.f99984d + r3) + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x063b, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x045b, code lost:
    
        r3 = r3 + 1;
        r2 = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0460, code lost:
    
        r16.f99982b = 202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0464, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0465, code lost:
    
        r16.inputOffset = r16.f99984d + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0471, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Unmatched quote in expression");
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x063c, code lost:
    
        r2 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0640, code lost:
    
        if (r2 >= r16.f99985e) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0642, code lost:
    
        r2 = r16.input.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0648, code lost:
    
        if (r2 == '-') goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x064a, code lost:
    
        if (r2 == '.') goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x064c, code lost:
    
        if (r2 == ':') goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0650, code lost:
    
        if (r2 == '_') goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x055a, code lost:
    
        r2 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x055e, code lost:
    
        if (r2 >= r16.f99985e) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0566, code lost:
    
        if (r16.input.charAt(r2) != '{') goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0568, code lost:
    
        r1 = r16.input;
        r2 = r16.inputOffset;
        r16.inputOffset = r2 + 1;
        r1 = r1.indexOf(125, r2);
        r2 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0578, code lost:
    
        if (r1 < r2) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x057a, code lost:
    
        r2 = net.p110sf.saxon.value.Whitespace.collapseWhitespace(r16.input.substring(r2, r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x058a, code lost:
    
        if (r2.contains("{") != false) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x058c, code lost:
    
        r1 = r1 + 1;
        r16.inputOffset = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x058f, code lost:
    
        r4 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0593, code lost:
    
        if (r4 >= r16.f99985e) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0595, code lost:
    
        r4 = r16.input.charAt(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x059d, code lost:
    
        if (r4 > 128) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x05a3, code lost:
    
        if (java.lang.Character.isLetterOrDigit(r4) != false) goto L501;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x05a7, code lost:
    
        if (r4 == '_') goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x05a9, code lost:
    
        if (r4 == '.') goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0654, code lost:
    
        if (r2 >= 128) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x05ab, code lost:
    
        if (r4 != '-') goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x05b0, code lost:
    
        if (r4 != '*') goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x05b2, code lost:
    
        r4 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x05b4, code lost:
    
        if (r1 != r4) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x05b6, code lost:
    
        r16.inputOffset = r4 + 1;
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x05c1, code lost:
    
        r16.f99983c = "Q{" + r2 + "}" + r16.input.substring(r1, r16.inputOffset);
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x05e4, code lost:
    
        if (r3 == 0) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x05e6, code lost:
    
        r14 = 208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x05eb, code lost:
    
        r16.f99982b = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x05ed, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x05e9, code lost:
    
        r14 = 201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x05bb, code lost:
    
        r16.inputOffset++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x065a, code lost:
    
        if (java.lang.Character.isLetterOrDigit(r2) != false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x05f5, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("EQName must not contain opening brace");
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x05fd, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Missing closing brace in EQName");
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x05fe, code lost:
    
        net.p110sf.saxon.transpile.CSharp.emitCode("goto default;");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x065c, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x072a, code lost:
    
        if (r1 == false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x072d, code lost:
    
        r16.inputOffset++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0734, code lost:
    
        r16.f99983c = r16.input.substring(r16.f99984d, r16.inputOffset);
        r16.f99982b = 201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0744, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0666, code lost:
    
        if (r3 != 0) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0668, code lost:
    
        r2 = r16.f99989i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x066a, code lost:
    
        if (r2 == 213) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x066c, code lost:
    
        if (r2 != 70) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x066f, code lost:
    
        r2 = r16.inputOffset;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0675, code lost:
    
        if ((r2 + 1) >= r16.f99985e) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0677, code lost:
    
        r2 = r16.input.charAt(r2 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x067f, code lost:
    
        if (r2 != ':') goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0699, code lost:
    
        if (r2 != '*') goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x06b3, code lost:
    
        if (r2 == '_') goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x06b5, code lost:
    
        if (r2 > 127) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x06bb, code lost:
    
        if (java.lang.Character.isLetter(r2) != false) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x06bd, code lost:
    
        r16.f99983c = r16.input.substring(r16.f99984d, r16.inputOffset);
        r16.f99982b = 201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x06cd, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x06d0, code lost:
    
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x069b, code lost:
    
        r16.f99983c = r16.input.substring(r16.f99984d, r16.inputOffset);
        r16.f99982b = 208;
        r16.inputOffset += 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x06b0, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0681, code lost:
    
        r16.f99983c = r16.input.substring(r16.f99984d, r16.inputOffset);
        r16.f99982b = 36;
        r16.inputOffset += 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0696, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x06d2, code lost:
    
        r16.f99983c = r16.input.substring(r16.f99984d, r16.inputOffset);
        r16.f99982b = 201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x06e2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x06e3, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x06e7, code lost:
    
        r2 = r16.f99989i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x06ef, code lost:
    
        if (r2 <= 150) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x06f1, code lost:
    
        if (r2 == 213) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x06f3, code lost:
    
        if (r2 == 70) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0704, code lost:
    
        if (m62847b(r16.input.substring(r16.f99984d, r16.inputOffset)) == (-1)) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x070a, code lost:
    
        if (r16.f99989i != 201) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0712, code lost:
    
        if (m62847b(r16.f99990j) != (-1)) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0714, code lost:
    
        r16.f99982b = m62847b(r16.input.substring(r16.f99984d, r16.inputOffset));
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:216:0x01fe. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x005b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0062. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:210:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x024e A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x03c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lookAhead() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 1982
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.Tokenizer.lookAhead():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00d6, code lost:
    
        if (r1.equals(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PI_STRING) == false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void next() throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.parser.Tokenizer.next():void");
    }

    public char nextChar() {
        int i = this.inputOffset;
        if (i >= this.f99985e) {
            return (char) 0;
        }
        String str = this.input;
        this.inputOffset = i + 1;
        char charAt = str.charAt(i);
        if (charAt == '\n') {
            m62850e();
            this.f99986f++;
        }
        return charAt;
    }

    public void setState(int i) {
        this.f99981a = i;
        if (i == 0) {
            this.f99989i = -1;
            this.f99990j = "";
            this.currentToken = -1;
        } else if (i == 3) {
            this.f99989i = 204;
            this.f99990j = MotionUtils.f31762d;
            this.currentToken = 204;
        }
    }

    public void tokenize(String str, int i, int i2) throws XPathException {
        this.f99982b = 0;
        this.f99983c = null;
        this.f99984d = 0;
        this.inputOffset = i;
        this.input = str;
        this.f99986f = 0;
        this.f99987g = 0;
        if (i2 == -1) {
            this.f99985e = str.length();
        } else {
            this.f99985e = i2;
        }
        lookAhead();
        next();
    }

    public void treatCurrentAsOperator() {
        int i = this.currentToken;
        if (i != 201) {
            if (i != 207) {
                return;
            }
            this.currentToken = 17;
        } else {
            int m62847b = m62847b(this.currentTokenValue);
            if (m62847b != -1) {
                this.currentToken = m62847b;
            }
        }
    }

    public void unreadChar() {
        String str = this.input;
        int i = this.inputOffset - 1;
        this.inputOffset = i;
        if (str.charAt(i) == '\n') {
            this.f99987g--;
            this.f99986f--;
            List<Integer> list = this.f99988h;
            if (list != null) {
                list.remove(list.size() - 1);
            }
        }
    }

    public int getColumnNumber(int i) {
        return (int) (m62849d(i) & 2147483647L);
    }

    public int getLineNumber(int i) {
        return (int) (m62849d(i) >> 32);
    }
}
