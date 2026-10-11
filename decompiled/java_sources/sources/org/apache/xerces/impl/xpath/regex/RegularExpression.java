package org.apache.xerces.impl.xpath.regex;

import java.io.Serializable;
import java.text.CharacterIterator;
import java.util.Locale;
import org.apache.xerces.impl.xpath.regex.C20040a;
import org.apache.xerces.impl.xpath.regex.Token;

/* loaded from: classes13.dex */
public class RegularExpression implements Serializable {
    static final int CARRIAGE_RETURN = 13;
    static final boolean DEBUG = false;
    static final int EXTENDED_COMMENT = 16;
    static final int IGNORE_CASE = 2;
    static final int LINE_FEED = 10;
    static final int LINE_SEPARATOR = 8232;
    static final int MULTIPLE_LINES = 8;
    static final int PARAGRAPH_SEPARATOR = 8233;
    static final int PROHIBIT_FIXED_STRING_OPTIMIZATION = 256;
    static final int PROHIBIT_HEAD_CHARACTER_OPTIMIZATION = 128;
    static final int SINGLE_LINE = 4;
    static final int SPECIAL_COMMA = 1024;
    static final int UNICODE_WORD_BOUNDARY = 64;
    static final int USE_UNICODE_CATEGORY = 32;
    private static final int WT_IGNORE = 0;
    private static final int WT_LETTER = 1;
    private static final int WT_OTHER = 2;
    static final int XMLSCHEMA_MODE = 512;
    private static final long serialVersionUID = 6242499334195006401L;
    transient C20036d context;
    transient RangeToken firstChar;
    transient String fixedString;
    transient boolean fixedStringOnly;
    transient int fixedStringOptions;
    transient BMPattern fixedStringTable;
    boolean hasBackReferences;
    transient int minlength;
    int nofparen;
    transient int numberOfClosures;
    transient C20040a operations;
    int options;
    String regex;
    Token tokentree;

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$a */
    /* loaded from: classes13.dex */
    public static final class C20033a extends AbstractC20037e {

        /* renamed from: a */
        public char[] f112571a;

        public C20033a(char[] cArr) {
            this.f112571a = cArr;
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: a */
        public char mo70014a(int i) {
            return this.f112571a[i];
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: b */
        public final boolean mo70015b(boolean z, int i, int i2, int i3, int i4) {
            if (i < 0 || i2 - i < i4) {
                return false;
            }
            return z ? m70019f(i, i2, i3, i4) : m70017d(i, i2, i3, i4);
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: c */
        public final boolean mo70016c(boolean z, int i, int i2, String str, int i3) {
            if (i < 0 || i2 - i < i3) {
                return false;
            }
            return z ? m70020g(i, i2, str, i3) : m70018e(i, i2, str, i3);
        }

        /* renamed from: d */
        public final boolean m70017d(int i, int i2, int i3, int i4) {
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                char[] cArr = this.f112571a;
                int i6 = i + 1;
                int i7 = i3 + 1;
                if (cArr[i] != cArr[i3]) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
        }

        /* renamed from: e */
        public final boolean m70018e(int i, int i2, String str, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i4 + 1;
                if (this.f112571a[i] != str.charAt(i4)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        /* renamed from: f */
        public final boolean m70019f(int i, int i2, int i3, int i4) {
            char upperCase;
            char upperCase2;
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                char[] cArr = this.f112571a;
                int i6 = i + 1;
                char c = cArr[i];
                int i7 = i3 + 1;
                char c2 = cArr[i3];
                if (c != c2 && (upperCase = Character.toUpperCase(c)) != (upperCase2 = Character.toUpperCase(c2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
        }

        /* renamed from: g */
        public final boolean m70020g(int i, int i2, String str, int i3) {
            char upperCase;
            char upperCase2;
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char c = this.f112571a[i];
                int i7 = i4 + 1;
                char charAt = str.charAt(i4);
                if (c != charAt && (upperCase = Character.toUpperCase(c)) != (upperCase2 = Character.toUpperCase(charAt)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        /* renamed from: h */
        public final void m70021h(char[] cArr) {
            this.f112571a = cArr;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$b */
    /* loaded from: classes13.dex */
    public static final class C20034b extends AbstractC20037e {

        /* renamed from: a */
        public CharacterIterator f112572a;

        public C20034b(CharacterIterator characterIterator) {
            this.f112572a = characterIterator;
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: a */
        public final char mo70014a(int i) {
            return this.f112572a.setIndex(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: b */
        public final boolean mo70015b(boolean z, int i, int i2, int i3, int i4) {
            if (i < 0 || i2 - i < i4) {
                return false;
            }
            return z ? m70024f(i, i2, i3, i4) : m70022d(i, i2, i3, i4);
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: c */
        public final boolean mo70016c(boolean z, int i, int i2, String str, int i3) {
            if (i < 0 || i2 - i < i3) {
                return false;
            }
            return z ? m70025g(i, i2, str, i3) : m70023e(i, i2, str, i3);
        }

        /* renamed from: d */
        public final boolean m70022d(int i, int i2, int i3, int i4) {
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i3 + 1;
                if (this.f112572a.setIndex(i) != this.f112572a.setIndex(i3)) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
        }

        /* renamed from: e */
        public final boolean m70023e(int i, int i2, String str, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i4 + 1;
                if (this.f112572a.setIndex(i) != str.charAt(i4)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        /* renamed from: f */
        public final boolean m70024f(int i, int i2, int i3, int i4) {
            char upperCase;
            char upperCase2;
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char index = this.f112572a.setIndex(i);
                int i7 = i3 + 1;
                char index2 = this.f112572a.setIndex(i3);
                if (index != index2 && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(index2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
        }

        /* renamed from: g */
        public final boolean m70025g(int i, int i2, String str, int i3) {
            char upperCase;
            char upperCase2;
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char index = this.f112572a.setIndex(i);
                int i7 = i4 + 1;
                char charAt = str.charAt(i4);
                if (index != charAt && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(charAt)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        /* renamed from: h */
        public final void m70026h(CharacterIterator characterIterator) {
            this.f112572a = characterIterator;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$c */
    /* loaded from: classes13.dex */
    public static final class C20035c {

        /* renamed from: a */
        public int[] f112573a = new int[4];

        /* renamed from: b */
        public int f112574b = 0;

        /* renamed from: a */
        public void m70027a(int i) {
            if (this.f112574b == this.f112573a.length) {
                this.f112573a = m70029c();
            }
            int[] iArr = this.f112573a;
            int i2 = this.f112574b;
            this.f112574b = i2 + 1;
            iArr[i2] = i;
        }

        /* renamed from: b */
        public boolean m70028b(int i) {
            for (int i2 = 0; i2 < this.f112574b; i2++) {
                if (this.f112573a[i2] == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: c */
        public final int[] m70029c() {
            int[] iArr = this.f112573a;
            int[] iArr2 = new int[iArr.length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, this.f112574b);
            return iArr2;
        }

        /* renamed from: d */
        public void m70030d() {
            this.f112574b = 0;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$d */
    /* loaded from: classes13.dex */
    public static final class C20036d {

        /* renamed from: a */
        public int f112575a;

        /* renamed from: b */
        public int f112576b;

        /* renamed from: c */
        public int f112577c;

        /* renamed from: d */
        public Match f112578d;

        /* renamed from: e */
        public boolean f112579e = false;

        /* renamed from: f */
        public C20035c[] f112580f;

        /* renamed from: g */
        public C20038f f112581g;

        /* renamed from: h */
        public C20033a f112582h;

        /* renamed from: i */
        public C20034b f112583i;

        /* renamed from: j */
        public AbstractC20037e f112584j;

        /* renamed from: a */
        public void m70031a(String str, int i, int i2, int i3) {
            C20038f c20038f = this.f112581g;
            if (c20038f == null) {
                this.f112581g = new C20038f(str);
            } else {
                c20038f.m70036d(str);
            }
            this.f112584j = this.f112581g;
            this.f112575a = i;
            this.f112576b = i2;
            m70034d(i3);
        }

        /* renamed from: b */
        public void m70032b(CharacterIterator characterIterator, int i, int i2, int i3) {
            C20034b c20034b = this.f112583i;
            if (c20034b == null) {
                this.f112583i = new C20034b(characterIterator);
            } else {
                c20034b.m70026h(characterIterator);
            }
            this.f112584j = this.f112583i;
            this.f112575a = i;
            this.f112576b = i2;
            m70034d(i3);
        }

        /* renamed from: c */
        public void m70033c(char[] cArr, int i, int i2, int i3) {
            C20033a c20033a = this.f112582h;
            if (c20033a == null) {
                this.f112582h = new C20033a(cArr);
            } else {
                c20033a.m70021h(cArr);
            }
            this.f112584j = this.f112582h;
            this.f112575a = i;
            this.f112576b = i2;
            m70034d(i3);
        }

        /* renamed from: d */
        public final void m70034d(int i) {
            this.f112577c = this.f112576b - this.f112575a;
            m70035e(true);
            this.f112578d = null;
            C20035c[] c20035cArr = this.f112580f;
            if (c20035cArr == null || c20035cArr.length != i) {
                this.f112580f = new C20035c[i];
            }
            for (int i2 = 0; i2 < i; i2++) {
                C20035c[] c20035cArr2 = this.f112580f;
                C20035c c20035c = c20035cArr2[i2];
                if (c20035c == null) {
                    c20035cArr2[i2] = new C20035c();
                } else {
                    c20035c.m70030d();
                }
            }
        }

        /* renamed from: e */
        public synchronized void m70035e(boolean z) {
            this.f112579e = z;
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$e */
    /* loaded from: classes13.dex */
    public static abstract class AbstractC20037e {
        /* renamed from: a */
        public abstract char mo70014a(int i);

        /* renamed from: b */
        public abstract boolean mo70015b(boolean z, int i, int i2, int i3, int i4);

        /* renamed from: c */
        public abstract boolean mo70016c(boolean z, int i, int i2, String str, int i3);
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.RegularExpression$f */
    /* loaded from: classes13.dex */
    public static final class C20038f extends AbstractC20037e {

        /* renamed from: a */
        public String f112585a;

        public C20038f(String str) {
            this.f112585a = str;
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: a */
        public final char mo70014a(int i) {
            return this.f112585a.charAt(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: b */
        public final boolean mo70015b(boolean z, int i, int i2, int i3, int i4) {
            if (i2 - i < i4) {
                return false;
            }
            if (z) {
                String str = this.f112585a;
                return str.regionMatches(true, i, str, i3, i4);
            }
            String str2 = this.f112585a;
            return str2.regionMatches(i, str2, i3, i4);
        }

        @Override // org.apache.xerces.impl.xpath.regex.RegularExpression.AbstractC20037e
        /* renamed from: c */
        public final boolean mo70016c(boolean z, int i, int i2, String str, int i3) {
            if (i2 - i < i3) {
                return false;
            }
            return z ? this.f112585a.regionMatches(true, i, str, 0, i3) : this.f112585a.regionMatches(i, str, 0, i3);
        }

        /* renamed from: d */
        public final void m70036d(String str) {
            this.f112585a = str;
        }
    }

    public RegularExpression(String str) throws ParseException {
        this(str, null);
    }

    private C20040a compile(Token token, C20040a c20040a, boolean z) {
        C20040a m70040d;
        C20040a.b m70041e;
        C20040a c20040a2;
        C20040a compile;
        int parenNumber;
        C20040a compile2;
        int i;
        int i2 = token.type;
        int i3 = 0;
        switch (i2) {
            case 0:
                m70040d = C20040a.m70040d(token.getChar());
                break;
            case 1:
                if (z) {
                    while (i3 < token.size()) {
                        c20040a = compile(token.getChild(i3), c20040a, true);
                        i3++;
                    }
                    return c20040a;
                }
                for (int size = token.size() - 1; size >= 0; size--) {
                    c20040a = compile(token.getChild(size), c20040a, false);
                }
                return c20040a;
            case 2:
                C20040a.g m70051o = C20040a.m70051o(token.size());
                while (i3 < token.size()) {
                    m70051o.m70060w(compile(token.getChild(i3), c20040a, z));
                    i3++;
                }
                return m70051o;
            case 3:
            case 9:
                Token child = token.getChild(0);
                int min = token.getMin();
                int max = token.getMax();
                if (min >= 0 && min == max) {
                    while (i3 < min) {
                        c20040a = compile(child, c20040a, z);
                        i3++;
                    }
                    return c20040a;
                }
                if (min > 0 && max > 0) {
                    max -= min;
                }
                if (max > 0) {
                    C20040a c20040a3 = c20040a;
                    int i4 = 0;
                    while (i4 < max) {
                        C20040a.b m70048l = C20040a.m70048l(token.type == 9);
                        m70048l.f112612b = c20040a;
                        m70048l.m70059w(compile(child, c20040a3, z));
                        i4++;
                        c20040a3 = m70048l;
                    }
                    c20040a2 = c20040a3;
                } else {
                    if (token.type == 9) {
                        m70041e = C20040a.m70047k();
                    } else {
                        int i5 = this.numberOfClosures;
                        this.numberOfClosures = i5 + 1;
                        m70041e = C20040a.m70041e(i5);
                    }
                    m70041e.f112612b = c20040a;
                    m70041e.m70059w(compile(child, m70041e, z));
                    c20040a2 = m70041e;
                }
                if (min <= 0) {
                    return c20040a2;
                }
                while (i3 < min) {
                    c20040a2 = compile(child, c20040a2, z);
                    i3++;
                }
                return c20040a2;
            case 4:
            case 5:
                m70040d = C20040a.m70049m(token);
                break;
            case 6:
                if (token.getParenNumber() == 0) {
                    return compile(token.getChild(0), c20040a, z);
                }
                int parenNumber2 = token.getParenNumber();
                if (z) {
                    compile = compile(token.getChild(0), C20040a.m70039c(parenNumber2, c20040a), z);
                    parenNumber = -token.getParenNumber();
                } else {
                    compile = compile(token.getChild(0), C20040a.m70039c(-parenNumber2, c20040a), z);
                    parenNumber = token.getParenNumber();
                }
                return C20040a.m70039c(parenNumber, compile);
            case 7:
                return c20040a;
            case 8:
                m70040d = C20040a.m70037a(token.getChar());
                break;
            case 10:
                m70040d = C20040a.m70050n(token.getString());
                break;
            case 11:
                m70040d = C20040a.m70043g();
                break;
            case 12:
                m70040d = C20040a.m70038b(token.getReferenceNumber());
                break;
            default:
                switch (i2) {
                    case 20:
                        compile2 = compile(token.getChild(0), null, false);
                        i = 20;
                        break;
                    case 21:
                        compile2 = compile(token.getChild(0), null, false);
                        i = 21;
                        break;
                    case 22:
                        compile2 = compile(token.getChild(0), null, true);
                        i = 22;
                        break;
                    case 23:
                        compile2 = compile(token.getChild(0), null, true);
                        i = 23;
                        break;
                    case 24:
                        return C20040a.m70044h(c20040a, compile(token.getChild(0), null, z));
                    case 25:
                        C20040a compile3 = compile(token.getChild(0), null, z);
                        Token.ModifierToken modifierToken = (Token.ModifierToken) token;
                        return C20040a.m70046j(c20040a, compile3, modifierToken.getOptions(), modifierToken.getOptionsMask());
                    case 26:
                        Token.ConditionToken conditionToken = (Token.ConditionToken) token;
                        int i6 = conditionToken.refNumber;
                        Token token2 = conditionToken.condition;
                        C20040a compile4 = token2 == null ? null : compile(token2, null, z);
                        C20040a compile5 = compile(conditionToken.yes, c20040a, z);
                        Token token3 = conditionToken.f112586no;
                        return C20040a.m70042f(c20040a, i6, compile4, compile5, token3 != null ? compile(token3, c20040a, z) : null);
                    default:
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Unknown token type: ");
                        stringBuffer.append(token.type);
                        throw new RuntimeException(stringBuffer.toString());
                }
                return C20040a.m70045i(i, c20040a, compile2);
        }
        m70040d.f112612b = c20040a;
        return m70040d;
    }

    private static final int getPreviousWordType(AbstractC20037e abstractC20037e, int i, int i2, int i3, int i4) {
        int wordType;
        do {
            i3--;
            wordType = getWordType(abstractC20037e, i, i2, i3, i4);
        } while (wordType == 0);
        return wordType;
    }

    private static final int getWordType(AbstractC20037e abstractC20037e, int i, int i2, int i3, int i4) {
        if (i3 < i || i3 >= i2) {
            return 2;
        }
        return getWordType0(abstractC20037e.mo70014a(i3), i4);
    }

    private static final int getWordType0(char c, int i) {
        if (!isSet(i, 64)) {
            return isSet(i, 32) ? Token.getRange("IsWord", true).match(c) ? 1 : 2 : isWordChar(c) ? 1 : 2;
        }
        int type = Character.getType(c);
        if (type == 15) {
            switch (c) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                    return 2;
                default:
                    return 0;
            }
        }
        if (type != 16) {
            switch (type) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                case 9:
                case 10:
                case 11:
                    return 1;
                case 6:
                case 7:
                    break;
                default:
                    return 2;
            }
        }
        return 0;
    }

    private static final boolean isEOLChar(int i) {
        return i == 10 || i == 13 || i == LINE_SEPARATOR || i == PARAGRAPH_SEPARATOR;
    }

    private static final boolean isSet(int i, int i2) {
        return (i & i2) == i2;
    }

    private static final boolean isWordChar(int i) {
        if (i == 95) {
            return true;
        }
        if (i < 48 || i > 122) {
            return false;
        }
        if (i <= 57) {
            return true;
        }
        if (i < 65) {
            return false;
        }
        return i <= 90 || i >= 97;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x017b, code lost:
    
        if (matchAnchor(r8, r13, r23, r14, r5) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x02da, code lost:
    
        if (isEOLChar(r0) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0349, code lost:
    
        if (r0 < 0) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x034b, code lost:
    
        r13 = r13.f112612b;
        r16 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0356, code lost:
    
        if (r0 >= 0) goto L197;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0040. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0043. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:49:0x0322. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:73:0x0325. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:129:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x033f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0188 -> B:31:0x0307). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int match(org.apache.xerces.impl.xpath.regex.RegularExpression.C20036d r23, org.apache.xerces.impl.xpath.regex.C20040a r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.RegularExpression.match(org.apache.xerces.impl.xpath.regex.RegularExpression$d, org.apache.xerces.impl.xpath.regex.a, int, int, int):int");
    }

    private boolean matchChar(int i, int i2, boolean z) {
        return z ? matchIgnoreCase(i, i2) : i == i2;
    }

    private static final boolean matchIgnoreCase(int i, int i2) {
        if (i == i2) {
            return true;
        }
        if (i > 65535 || i2 > 65535) {
            return false;
        }
        char upperCase = Character.toUpperCase((char) i);
        char upperCase2 = Character.toUpperCase((char) i2);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof RegularExpression)) {
            return false;
        }
        RegularExpression regularExpression = (RegularExpression) obj;
        return this.regex.equals(regularExpression.regex) && this.options == regularExpression.options;
    }

    public int getNumberOfGroups() {
        return this.nofparen;
    }

    public String getOptions() {
        return REUtil.m70005b(this.options);
    }

    public String getPattern() {
        return this.regex;
    }

    public int hashCode() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.regex);
        stringBuffer.append("/");
        stringBuffer.append(getOptions());
        return stringBuffer.toString().hashCode();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean matchAnchor(AbstractC20037e abstractC20037e, C20040a c20040a, C20036d c20036d, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int wordType;
        int wordType2;
        int mo70054r = c20040a.mo70054r();
        if (mo70054r != 36) {
            if (mo70054r != 60) {
                if (mo70054r != 62) {
                    if (mo70054r == 90) {
                        int i7 = c20036d.f112576b;
                        if (i != i7 && (((i6 = i + 1) != i7 || !isEOLChar(abstractC20037e.mo70014a(i))) && (i + 2 != c20036d.f112576b || abstractC20037e.mo70014a(i) != '\r' || abstractC20037e.mo70014a(i6) != '\n'))) {
                            return false;
                        }
                    } else if (mo70054r != 94) {
                        if (mo70054r != 98) {
                            if (mo70054r != 122) {
                                switch (mo70054r) {
                                    case 64:
                                        int i8 = c20036d.f112575a;
                                        if (i != i8 && (i <= i8 || !isEOLChar(abstractC20037e.mo70014a(i - 1)))) {
                                            return false;
                                        }
                                        break;
                                    case 65:
                                        if (i != c20036d.f112575a) {
                                            return false;
                                        }
                                        break;
                                    case 66:
                                        if (!(c20036d.f112577c == 0 || (wordType2 = getWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2)) == 0 || wordType2 == getPreviousWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2))) {
                                            return false;
                                        }
                                        break;
                                }
                            } else if (i != c20036d.f112576b) {
                                return false;
                            }
                        } else if (c20036d.f112577c == 0 || (wordType = getWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2)) == 0 || wordType == getPreviousWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2)) {
                            return false;
                        }
                    } else if (isSet(i2, 8)) {
                        int i9 = c20036d.f112575a;
                        if (i != i9 && (i <= i9 || i >= c20036d.f112576b || !isEOLChar(abstractC20037e.mo70014a(i - 1)))) {
                            return false;
                        }
                    } else if (i != c20036d.f112575a) {
                        return false;
                    }
                } else if (c20036d.f112577c == 0 || i == (i5 = c20036d.f112575a) || getWordType(abstractC20037e, i5, c20036d.f112576b, i, i2) != 2 || getPreviousWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2) != 1) {
                    return false;
                }
            } else if (c20036d.f112577c == 0 || i == (i4 = c20036d.f112576b) || getWordType(abstractC20037e, c20036d.f112575a, i4, i, i2) != 1 || getPreviousWordType(abstractC20037e, c20036d.f112575a, c20036d.f112576b, i, i2) != 2) {
                return false;
            }
        } else if (isSet(i2, 8)) {
            int i10 = c20036d.f112576b;
            if (i != i10 && (i >= i10 || !isEOLChar(abstractC20037e.mo70014a(i)))) {
                return false;
            }
        } else {
            int i11 = c20036d.f112576b;
            if (i != i11 && (((i3 = i + 1) != i11 || !isEOLChar(abstractC20037e.mo70014a(i))) && (i + 2 != c20036d.f112576b || abstractC20037e.mo70014a(i) != '\r' || abstractC20037e.mo70014a(i3) != '\n'))) {
                return false;
            }
        }
        return true;
    }

    public boolean matches(String str) {
        return matches(str, 0, str.length(), (Match) null);
    }

    public void prepare() {
        BMPattern bMPattern;
        int i;
        String m70006c;
        compile(this.tokentree);
        this.minlength = this.tokentree.getMinLength();
        this.firstChar = null;
        if (!isSet(this.options, 128) && !isSet(this.options, 512)) {
            RangeToken createRange = Token.createRange();
            if (this.tokentree.analyzeFirstCharacter(createRange, this.options) == 1) {
                createRange.compactRanges();
                this.firstChar = createRange;
            }
        }
        C20040a c20040a = this.operations;
        if (c20040a != null && (((i = c20040a.f112611a) == 6 || i == 1) && c20040a.f112612b == null)) {
            this.fixedStringOnly = true;
            if (i == 6) {
                m70006c = c20040a.mo70056t();
            } else if (c20040a.mo70054r() >= 65536) {
                m70006c = REUtil.m70006c(this.operations.mo70054r());
            } else {
                this.fixedString = new String(new char[]{(char) this.operations.mo70054r()});
                int i2 = this.options;
                this.fixedStringOptions = i2;
                bMPattern = new BMPattern(this.fixedString, 256, isSet(i2, 2));
            }
            this.fixedString = m70006c;
            int i22 = this.options;
            this.fixedStringOptions = i22;
            bMPattern = new BMPattern(this.fixedString, 256, isSet(i22, 2));
        } else {
            if (isSet(this.options, 256) || isSet(this.options, 512)) {
                return;
            }
            Token.C20039a c20039a = new Token.C20039a();
            this.tokentree.findFixedString(c20039a, this.options);
            Token token = c20039a.f112587a;
            String string = token == null ? null : token.getString();
            this.fixedString = string;
            this.fixedStringOptions = c20039a.f112588b;
            if (string != null && string.length() < 2) {
                this.fixedString = null;
            }
            String str = this.fixedString;
            if (str == null) {
                return;
            } else {
                bMPattern = new BMPattern(str, 256, isSet(this.fixedStringOptions, 2));
            }
        }
        this.fixedStringTable = bMPattern;
    }

    public void setPattern(String str) throws ParseException {
        setPattern(str, Locale.getDefault());
    }

    public String toString() {
        return this.tokentree.toString(this.options);
    }

    public RegularExpression(String str, String str2) throws ParseException {
        this.hasBackReferences = false;
        this.operations = null;
        this.context = null;
        this.firstChar = null;
        this.fixedString = null;
        this.fixedStringTable = null;
        this.fixedStringOnly = false;
        setPattern(str, str2);
    }

    private synchronized void compile(Token token) {
        if (this.operations != null) {
            return;
        }
        this.numberOfClosures = 0;
        this.operations = compile(token, null, false);
    }

    private void setPattern(String str, int i, Locale locale) throws ParseException {
        this.regex = str;
        this.options = i;
        C20042c c20041b = isSet(i, 512) ? new C20041b(locale) : new C20042c(locale);
        this.tokentree = c20041b.m70108j(this.regex, this.options);
        this.nofparen = c20041b.f112668j;
        this.hasBackReferences = c20041b.f112669k;
        this.operations = null;
        this.context = null;
    }

    public boolean equals(String str, int i) {
        return this.regex.equals(str) && this.options == i;
    }

    public boolean matches(String str, int i, int i2) {
        return matches(str, i, i2, (Match) null);
    }

    public RegularExpression(String str, String str2, Locale locale) throws ParseException {
        this.hasBackReferences = false;
        this.operations = null;
        this.context = null;
        this.firstChar = null;
        this.fixedString = null;
        this.fixedStringTable = null;
        this.fixedStringOnly = false;
        setPattern(str, str2, locale);
    }

    public boolean matches(String str, int i, int i2, Match match) {
        C20036d c20036d;
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            if (this.operations == null) {
                prepare();
            }
            if (this.context == null) {
                this.context = new C20036d();
            }
        }
        synchronized (this.context) {
            C20036d c20036d2 = this.context;
            if (c20036d2.f112579e) {
                c20036d2 = new C20036d();
            }
            c20036d = c20036d2;
            c20036d.m70031a(str, i, i2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(str);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        c20036d.f112578d = match;
        if (isSet(this.options, 512)) {
            int match2 = match(c20036d, this.operations, c20036d.f112575a, 1, this.options);
            if (match2 != c20036d.f112576b) {
                return false;
            }
            Match match3 = c20036d.f112578d;
            if (match3 != null) {
                match3.setBeginning(0, c20036d.f112575a);
                c20036d.f112578d.setEnd(0, match2);
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(str, c20036d.f112575a, c20036d.f112576b);
            if (matches < 0) {
                c20036d.m70035e(false);
                return false;
            }
            Match match4 = c20036d.f112578d;
            if (match4 != null) {
                match4.setBeginning(0, matches);
                c20036d.f112578d.setEnd(0, matches + this.fixedString.length());
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(str, c20036d.f112575a, c20036d.f112576b) < 0) {
            c20036d.m70035e(false);
            return false;
        }
        int i6 = c20036d.f112576b - this.minlength;
        C20040a c20040a = this.operations;
        int i7 = -1;
        if (c20040a == null || c20040a.f112611a != 7 || c20040a.mo70053q().f112611a != 0) {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i8 = c20036d.f112575a;
                while (i8 <= i6) {
                    int charAt = str.charAt(i8);
                    if (REUtil.m70009f(charAt) && (i5 = i8 + 1) < c20036d.f112576b) {
                        charAt = REUtil.m70004a(charAt, str.charAt(i5));
                    }
                    if (rangeToken.match(charAt)) {
                        i7 = match(c20036d, this.operations, i8, 1, this.options);
                        if (i7 >= 0) {
                            break;
                        }
                    }
                    i8++;
                }
                i4 = i7;
                i3 = i8;
            } else {
                i3 = c20036d.f112575a;
                while (i3 <= i6) {
                    i7 = match(c20036d, this.operations, i3, 1, this.options);
                    if (i7 >= 0) {
                        break;
                    }
                    i3++;
                }
                i4 = i7;
            }
        } else if (isSet(this.options, 4)) {
            i3 = c20036d.f112575a;
            i4 = match(c20036d, this.operations, i3, 1, this.options);
        } else {
            int i9 = c20036d.f112575a;
            boolean z = true;
            while (i9 <= i6) {
                if (isEOLChar(str.charAt(i9))) {
                    z = true;
                } else {
                    if (z) {
                        i7 = match(c20036d, this.operations, i9, 1, this.options);
                        if (i7 >= 0) {
                            break;
                        }
                    }
                    z = false;
                }
                i9++;
            }
            i3 = i9;
            i4 = i7;
        }
        if (i4 < 0) {
            c20036d.m70035e(false);
            return false;
        }
        Match match5 = c20036d.f112578d;
        if (match5 != null) {
            match5.setBeginning(0, i3);
            c20036d.f112578d.setEnd(0, i4);
        }
        c20036d.m70035e(false);
        return true;
    }

    public void setPattern(String str, String str2) throws ParseException {
        setPattern(str, str2, Locale.getDefault());
    }

    public RegularExpression(String str, Token token, int i, boolean z, int i2) {
        this.operations = null;
        this.context = null;
        this.firstChar = null;
        this.fixedString = null;
        this.fixedStringTable = null;
        this.fixedStringOnly = false;
        this.regex = str;
        this.tokentree = token;
        this.nofparen = i;
        this.options = i2;
        this.hasBackReferences = z;
    }

    public boolean matches(String str, Match match) {
        return matches(str, 0, str.length(), match);
    }

    public void setPattern(String str, String str2, Locale locale) throws ParseException {
        setPattern(str, REUtil.m70011h(str2), locale);
    }

    public boolean matches(CharacterIterator characterIterator) {
        return matches(characterIterator, (Match) null);
    }

    public void setPattern(String str, Locale locale) throws ParseException {
        setPattern(str, this.options, locale);
    }

    public boolean matches(CharacterIterator characterIterator, Match match) {
        C20036d c20036d;
        int i;
        int i2;
        int i3;
        int beginIndex = characterIterator.getBeginIndex();
        int endIndex = characterIterator.getEndIndex();
        synchronized (this) {
            if (this.operations == null) {
                prepare();
            }
            if (this.context == null) {
                this.context = new C20036d();
            }
        }
        synchronized (this.context) {
            C20036d c20036d2 = this.context;
            if (c20036d2.f112579e) {
                c20036d2 = new C20036d();
            }
            c20036d = c20036d2;
            c20036d.m70032b(characterIterator, beginIndex, endIndex, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(characterIterator);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        c20036d.f112578d = match;
        if (isSet(this.options, 512)) {
            int match2 = match(c20036d, this.operations, c20036d.f112575a, 1, this.options);
            if (match2 != c20036d.f112576b) {
                return false;
            }
            Match match3 = c20036d.f112578d;
            if (match3 != null) {
                match3.setBeginning(0, c20036d.f112575a);
                c20036d.f112578d.setEnd(0, match2);
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(characterIterator, c20036d.f112575a, c20036d.f112576b);
            if (matches < 0) {
                c20036d.m70035e(false);
                return false;
            }
            Match match4 = c20036d.f112578d;
            if (match4 != null) {
                match4.setBeginning(0, matches);
                c20036d.f112578d.setEnd(0, matches + this.fixedString.length());
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(characterIterator, c20036d.f112575a, c20036d.f112576b) < 0) {
            c20036d.m70035e(false);
            return false;
        }
        int i4 = c20036d.f112576b - this.minlength;
        C20040a c20040a = this.operations;
        int i5 = -1;
        if (c20040a == null || c20040a.f112611a != 7 || c20040a.mo70053q().f112611a != 0) {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i6 = c20036d.f112575a;
                while (i6 <= i4) {
                    int index = characterIterator.setIndex(i6);
                    if (REUtil.m70009f(index) && (i3 = i6 + 1) < c20036d.f112576b) {
                        index = REUtil.m70004a(index, characterIterator.setIndex(i3));
                    }
                    if (rangeToken.match(index)) {
                        i5 = match(c20036d, this.operations, i6, 1, this.options);
                        if (i5 >= 0) {
                            break;
                        }
                    }
                    i6++;
                }
                i2 = i5;
                i = i6;
            } else {
                i = c20036d.f112575a;
                while (i <= i4) {
                    i5 = match(c20036d, this.operations, i, 1, this.options);
                    if (i5 >= 0) {
                        break;
                    }
                    i++;
                }
                i2 = i5;
            }
        } else if (isSet(this.options, 4)) {
            i = c20036d.f112575a;
            i2 = match(c20036d, this.operations, i, 1, this.options);
        } else {
            int i7 = c20036d.f112575a;
            boolean z = true;
            while (i7 <= i4) {
                if (isEOLChar(characterIterator.setIndex(i7))) {
                    z = true;
                } else {
                    if (z) {
                        i5 = match(c20036d, this.operations, i7, 1, this.options);
                        if (i5 >= 0) {
                            break;
                        }
                    }
                    z = false;
                }
                i7++;
            }
            i = i7;
            i2 = i5;
        }
        if (i2 < 0) {
            c20036d.m70035e(false);
            return false;
        }
        Match match5 = c20036d.f112578d;
        if (match5 != null) {
            match5.setBeginning(0, i);
            c20036d.f112578d.setEnd(0, i2);
        }
        c20036d.m70035e(false);
        return true;
    }

    public boolean matches(char[] cArr) {
        return matches(cArr, 0, cArr.length, (Match) null);
    }

    public boolean matches(char[] cArr, int i, int i2) {
        return matches(cArr, i, i2, (Match) null);
    }

    public boolean matches(char[] cArr, int i, int i2, Match match) {
        C20036d c20036d;
        int i3;
        int i4;
        synchronized (this) {
            if (this.operations == null) {
                prepare();
            }
            if (this.context == null) {
                this.context = new C20036d();
            }
        }
        synchronized (this.context) {
            C20036d c20036d2 = this.context;
            if (c20036d2.f112579e) {
                c20036d2 = new C20036d();
            }
            c20036d = c20036d2;
            c20036d.m70033c(cArr, i, i2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(cArr);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        c20036d.f112578d = match;
        if (isSet(this.options, 512)) {
            int match2 = match(c20036d, this.operations, c20036d.f112575a, 1, this.options);
            if (match2 != c20036d.f112576b) {
                return false;
            }
            Match match3 = c20036d.f112578d;
            if (match3 != null) {
                match3.setBeginning(0, c20036d.f112575a);
                c20036d.f112578d.setEnd(0, match2);
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(cArr, c20036d.f112575a, c20036d.f112576b);
            if (matches < 0) {
                c20036d.m70035e(false);
                return false;
            }
            Match match4 = c20036d.f112578d;
            if (match4 != null) {
                match4.setBeginning(0, matches);
                c20036d.f112578d.setEnd(0, matches + this.fixedString.length());
            }
            c20036d.m70035e(false);
            return true;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(cArr, c20036d.f112575a, c20036d.f112576b) < 0) {
            c20036d.m70035e(false);
            return false;
        }
        int i5 = c20036d.f112576b - this.minlength;
        C20040a c20040a = this.operations;
        int i6 = -1;
        if (c20040a == null || c20040a.f112611a != 7 || c20040a.mo70053q().f112611a != 0) {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i7 = c20036d.f112575a;
                while (i7 <= i5) {
                    char c = cArr[i7];
                    boolean m70009f = REUtil.m70009f(c);
                    int i8 = c;
                    if (m70009f) {
                        int i9 = i7 + 1;
                        i8 = c;
                        if (i9 < c20036d.f112576b) {
                            i8 = REUtil.m70004a(c, cArr[i9]);
                        }
                    }
                    if (rangeToken.match(i8)) {
                        i6 = match(c20036d, this.operations, i7, 1, this.options);
                        if (i6 >= 0) {
                            break;
                        }
                    }
                    i7++;
                }
                i4 = i6;
                i3 = i7;
            } else {
                i3 = c20036d.f112575a;
                while (i3 <= i5) {
                    i6 = match(c20036d, this.operations, i3, 1, this.options);
                    if (i6 >= 0) {
                        break;
                    }
                    i3++;
                }
                i4 = i6;
            }
        } else if (isSet(this.options, 4)) {
            i3 = c20036d.f112575a;
            i4 = match(c20036d, this.operations, i3, 1, this.options);
        } else {
            int i10 = c20036d.f112575a;
            boolean z = true;
            while (i10 <= i5) {
                if (isEOLChar(cArr[i10])) {
                    z = true;
                } else {
                    if (z) {
                        i6 = match(c20036d, this.operations, i10, 1, this.options);
                        if (i6 >= 0) {
                            break;
                        }
                    }
                    z = false;
                }
                i10++;
            }
            i3 = i10;
            i4 = i6;
        }
        if (i4 < 0) {
            c20036d.m70035e(false);
            return false;
        }
        Match match5 = c20036d.f112578d;
        if (match5 != null) {
            match5.setBeginning(0, i3);
            c20036d.f112578d.setEnd(0, i4);
        }
        c20036d.m70035e(false);
        return true;
    }

    public boolean matches(char[] cArr, Match match) {
        return matches(cArr, 0, cArr.length, match);
    }
}
