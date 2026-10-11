package com.sun.org.apache.xerces.internal.impl.xpath.regex;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.Token;
import java.io.Serializable;
import java.text.CharacterIterator;

/* loaded from: classes10.dex */
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
    private static final long serialVersionUID = 3905241217112815923L;
    transient Context context;
    transient RangeToken firstChar;
    transient String fixedString;
    transient boolean fixedStringOnly;
    transient int fixedStringOptions;
    transient BMPattern fixedStringTable;
    boolean hasBackReferences;
    transient int minlength;
    int nofparen;
    transient int numberOfClosures;
    transient C13364Op operations;
    int options;
    String regex;
    Token tokentree;

    public RegularExpression(String str) throws ParseException {
        this.hasBackReferences = false;
        this.operations = null;
        this.context = null;
        this.firstChar = null;
        this.fixedString = null;
        this.fixedStringTable = null;
        this.fixedStringOnly = false;
        setPattern(str, (String) null);
    }

    private synchronized void compile(Token token) {
        if (this.operations != null) {
            return;
        }
        this.numberOfClosures = 0;
        this.operations = compile(token, null, false);
    }

    private static final int getPreviousWordType(char[] cArr, int i, int i2, int i3, int i4) {
        int i5 = i3 - 1;
        int wordType = getWordType(cArr, i, i2, i5, i4);
        while (wordType == 0) {
            i5--;
            wordType = getWordType(cArr, i, i2, i5, i4);
        }
        return wordType;
    }

    private static final int getWordType(char[] cArr, int i, int i2, int i3, int i4) {
        if (i3 < i || i3 >= i2) {
            return 2;
        }
        return getWordType0(cArr[i3], i4);
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
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0069, code lost:
    
        if (r11.match.getEnd(r12.refNumber) >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0090, code lost:
    
        if (matchCharArray(r11, r12.condition, r13, r14, r15) >= 0) goto L43;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:254:0x01fd. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int matchCharArray(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.Context r11, com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 1370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matchCharArray(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression$Context, com.sun.org.apache.xerces.internal.impl.xpath.regex.Op, int, int, int):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0069, code lost:
    
        if (r11.match.getEnd(r12.refNumber) >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0090, code lost:
    
        if (matchCharacterIterator(r11, r12.condition, r13, r14, r15) >= 0) goto L43;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:254:0x01fd. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int matchCharacterIterator(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.Context r11, com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 1412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matchCharacterIterator(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression$Context, com.sun.org.apache.xerces.internal.impl.xpath.regex.Op, int, int, int):int");
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0069, code lost:
    
        if (r11.match.getEnd(r12.refNumber) >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0090, code lost:
    
        if (matchString(r11, r12.condition, r13, r14, r15) >= 0) goto L43;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:254:0x01fd. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int matchString(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.Context r11, com.sun.org.apache.xerces.internal.impl.xpath.regex.C13364Op r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 1412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matchString(com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression$Context, com.sun.org.apache.xerces.internal.impl.xpath.regex.Op, int, int, int):int");
    }

    private static final boolean regionMatches(char[] cArr, int i, int i2, String str, int i3) {
        if (i < 0 || i2 - i < i3) {
            return false;
        }
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return true;
            }
            int i6 = i + 1;
            int i7 = i4 + 1;
            if (cArr[i] != str.charAt(i4)) {
                return false;
            }
            i = i6;
            i3 = i5;
            i4 = i7;
        }
    }

    private static final boolean regionMatchesIgnoreCase(char[] cArr, int i, int i2, String str, int i3) {
        char upperCase;
        char upperCase2;
        if (i < 0 || i2 - i < i3) {
            return false;
        }
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return true;
            }
            int i6 = i + 1;
            char c = cArr[i];
            int i7 = i4 + 1;
            char charAt = str.charAt(i4);
            if (c != charAt && (upperCase = Character.toUpperCase(c)) != (upperCase2 = Character.toUpperCase(charAt)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
            i = i6;
            i3 = i5;
            i4 = i7;
        }
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
        return REUtil.createOptionString(this.options);
    }

    public String getPattern() {
        return this.regex;
    }

    public int hashCode() {
        return (this.regex + "/" + getOptions()).hashCode();
    }

    public boolean matches(char[] cArr) {
        return matches(cArr, 0, cArr.length, (Match) null);
    }

    public void prepare() {
        int i;
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
        C13364Op c13364Op = this.operations;
        if (c13364Op != null && (((i = c13364Op.type) == 6 || i == 1) && c13364Op.next == null)) {
            this.fixedStringOnly = true;
            if (i == 6) {
                this.fixedString = c13364Op.getString();
            } else if (c13364Op.getData() >= 65536) {
                this.fixedString = REUtil.decomposeToSurrogates(this.operations.getData());
            } else {
                this.fixedString = new String(new char[]{(char) this.operations.getData()});
            }
            int i2 = this.options;
            this.fixedStringOptions = i2;
            this.fixedStringTable = new BMPattern(this.fixedString, 256, isSet(i2, 2));
            return;
        }
        if (isSet(this.options, 256) || isSet(this.options, 512)) {
            return;
        }
        Token.FixedStringContainer fixedStringContainer = new Token.FixedStringContainer();
        this.tokentree.findFixedString(fixedStringContainer, this.options);
        Token token = fixedStringContainer.token;
        String string = token == null ? null : token.getString();
        this.fixedString = string;
        this.fixedStringOptions = fixedStringContainer.options;
        if (string != null && string.length() < 2) {
            this.fixedString = null;
        }
        String str = this.fixedString;
        if (str != null) {
            this.fixedStringTable = new BMPattern(str, 256, isSet(this.fixedStringOptions, 2));
        }
    }

    public void setPattern(String str) throws ParseException {
        setPattern(str, this.options);
    }

    public String toString() {
        return this.tokentree.toString(this.options);
    }

    private static final int getWordType(String str, int i, int i2, int i3, int i4) {
        if (i3 < i || i3 >= i2) {
            return 2;
        }
        return getWordType0(str.charAt(i3), i4);
    }

    private static final boolean regionMatches(char[] cArr, int i, int i2, int i3, int i4) {
        if (i < 0 || i2 - i < i4) {
            return false;
        }
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                return true;
            }
            int i6 = i + 1;
            int i7 = i3 + 1;
            if (cArr[i] != cArr[i3]) {
                return false;
            }
            i = i6;
            i3 = i7;
            i4 = i5;
        }
    }

    private void setPattern(String str, int i) throws ParseException {
        this.regex = str;
        this.options = i;
        RegexParser parserForXMLSchema = isSet(i, 512) ? new ParserForXMLSchema() : new RegexParser();
        this.tokentree = parserForXMLSchema.parse(this.regex, this.options);
        this.nofparen = parserForXMLSchema.parennumber;
        this.hasBackReferences = parserForXMLSchema.hasBackReferences;
        this.operations = null;
        this.context = null;
    }

    public boolean matches(char[] cArr, int i, int i2) {
        return matches(cArr, i, i2, (Match) null);
    }

    private static final int getPreviousWordType(String str, int i, int i2, int i3, int i4) {
        int i5 = i3 - 1;
        int wordType = getWordType(str, i, i2, i5, i4);
        while (wordType == 0) {
            i5--;
            wordType = getWordType(str, i, i2, i5, i4);
        }
        return wordType;
    }

    private static final int getWordType(CharacterIterator characterIterator, int i, int i2, int i3, int i4) {
        if (i3 < i || i3 >= i2) {
            return 2;
        }
        return getWordType0(characterIterator.setIndex(i3), i4);
    }

    private static final boolean regionMatches(String str, int i, int i2, String str2, int i3) {
        if (i2 - i < i3) {
            return false;
        }
        return str.regionMatches(i, str2, 0, i3);
    }

    public boolean matches(char[] cArr, Match match) {
        return matches(cArr, 0, cArr.length, match);
    }

    /* loaded from: classes10.dex */
    public static final class Context {
        char[] charTarget;
        CharacterIterator ciTarget;
        boolean inuse = false;
        int length;
        int limit;
        Match match;
        int[] offsets;
        int start;
        String strTarget;

        private void resetCommon(int i) {
            this.length = this.limit - this.start;
            this.inuse = true;
            this.match = null;
            int[] iArr = this.offsets;
            if (iArr == null || iArr.length != i) {
                this.offsets = new int[i];
            }
            for (int i2 = 0; i2 < i; i2++) {
                this.offsets[i2] = -1;
            }
        }

        public void reset(CharacterIterator characterIterator, int i, int i2, int i3) {
            this.ciTarget = characterIterator;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }

        public void reset(String str, int i, int i2, int i3) {
            this.strTarget = str;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }

        public void reset(char[] cArr, int i, int i2, int i3) {
            this.charTarget = cArr;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }
    }

    private static final boolean regionMatches(String str, int i, int i2, int i3, int i4) {
        if (i2 - i < i4) {
            return false;
        }
        return str.regionMatches(i, str, i3, i4);
    }

    public boolean equals(String str, int i) {
        return this.regex.equals(str) && this.options == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x019a A[EDGE_INSN: B:94:0x019a->B:95:0x019a BREAK  A[LOOP:1: B:85:0x011d->B:97:0x0165], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0165 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean matches(char[] r10, int r11, int r12, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match r13) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matches(char[], int, int, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match):boolean");
    }

    private static final int getPreviousWordType(CharacterIterator characterIterator, int i, int i2, int i3, int i4) {
        int i5 = i3 - 1;
        int wordType = getWordType(characterIterator, i, i2, i5, i4);
        while (wordType == 0) {
            i5--;
            wordType = getWordType(characterIterator, i, i2, i5, i4);
        }
        return wordType;
    }

    private static final boolean regionMatches(CharacterIterator characterIterator, int i, int i2, String str, int i3) {
        if (i < 0 || i2 - i < i3) {
            return false;
        }
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return true;
            }
            int i6 = i + 1;
            int i7 = i4 + 1;
            if (characterIterator.setIndex(i) != str.charAt(i4)) {
                return false;
            }
            i = i6;
            i3 = i5;
            i4 = i7;
        }
    }

    private C13364Op compile(Token token, C13364Op c13364Op, boolean z) {
        C13364Op createChar;
        C13364Op.ChildOp createClosure;
        C13364Op c13364Op2;
        int i = token.type;
        int i2 = 0;
        switch (i) {
            case 0:
                createChar = C13364Op.createChar(token.getChar());
                createChar.next = c13364Op;
                break;
            case 1:
                if (!z) {
                    for (int size = token.size() - 1; size >= 0; size--) {
                        c13364Op = compile(token.getChild(size), c13364Op, false);
                    }
                    return c13364Op;
                }
                while (i2 < token.size()) {
                    c13364Op = compile(token.getChild(i2), c13364Op, true);
                    i2++;
                }
                return c13364Op;
            case 2:
                C13364Op.UnionOp createUnion = C13364Op.createUnion(token.size());
                while (i2 < token.size()) {
                    createUnion.addElement(compile(token.getChild(i2), c13364Op, z));
                    i2++;
                }
                return createUnion;
            case 3:
            case 9:
                Token child = token.getChild(0);
                int min = token.getMin();
                int max = token.getMax();
                if (min >= 0 && min == max) {
                    while (i2 < min) {
                        c13364Op = compile(child, c13364Op, z);
                        i2++;
                    }
                    return c13364Op;
                }
                if (min > 0 && max > 0) {
                    max -= min;
                }
                if (max > 0) {
                    C13364Op c13364Op3 = c13364Op;
                    int i3 = 0;
                    while (i3 < max) {
                        C13364Op.ChildOp createQuestion = C13364Op.createQuestion(token.type == 9);
                        createQuestion.next = c13364Op;
                        createQuestion.setChild(compile(child, c13364Op3, z));
                        i3++;
                        c13364Op3 = createQuestion;
                    }
                    c13364Op2 = c13364Op3;
                } else {
                    if (token.type == 9) {
                        createClosure = C13364Op.createNonGreedyClosure();
                    } else if (child.getMinLength() == 0) {
                        int i4 = this.numberOfClosures;
                        this.numberOfClosures = i4 + 1;
                        createClosure = C13364Op.createClosure(i4);
                    } else {
                        createClosure = C13364Op.createClosure(-1);
                    }
                    createClosure.next = c13364Op;
                    createClosure.setChild(compile(child, createClosure, z));
                    c13364Op2 = createClosure;
                }
                if (min <= 0) {
                    return c13364Op2;
                }
                while (i2 < min) {
                    c13364Op2 = compile(child, c13364Op2, z);
                    i2++;
                }
                return c13364Op2;
            case 4:
            case 5:
                createChar = C13364Op.createRange(token);
                createChar.next = c13364Op;
                break;
            case 6:
                if (token.getParenNumber() == 0) {
                    return compile(token.getChild(0), c13364Op, z);
                }
                if (z) {
                    return C13364Op.createCapture(-token.getParenNumber(), compile(token.getChild(0), C13364Op.createCapture(token.getParenNumber(), c13364Op), z));
                }
                return C13364Op.createCapture(token.getParenNumber(), compile(token.getChild(0), C13364Op.createCapture(-token.getParenNumber(), c13364Op), z));
            case 7:
                return c13364Op;
            case 8:
                createChar = C13364Op.createAnchor(token.getChar());
                createChar.next = c13364Op;
                break;
            case 10:
                createChar = C13364Op.createString(token.getString());
                createChar.next = c13364Op;
                break;
            case 11:
                createChar = C13364Op.createDot();
                createChar.next = c13364Op;
                break;
            case 12:
                createChar = C13364Op.createBackReference(token.getReferenceNumber());
                createChar.next = c13364Op;
                break;
            default:
                switch (i) {
                    case 20:
                        return C13364Op.createLook(20, c13364Op, compile(token.getChild(0), null, false));
                    case 21:
                        return C13364Op.createLook(21, c13364Op, compile(token.getChild(0), null, false));
                    case 22:
                        return C13364Op.createLook(22, c13364Op, compile(token.getChild(0), null, true));
                    case 23:
                        return C13364Op.createLook(23, c13364Op, compile(token.getChild(0), null, true));
                    case 24:
                        return C13364Op.createIndependent(c13364Op, compile(token.getChild(0), null, z));
                    case 25:
                        C13364Op compile = compile(token.getChild(0), null, z);
                        Token.ModifierToken modifierToken = (Token.ModifierToken) token;
                        return C13364Op.createModifier(c13364Op, compile, modifierToken.getOptions(), modifierToken.getOptionsMask());
                    case 26:
                        Token.ConditionToken conditionToken = (Token.ConditionToken) token;
                        int i5 = conditionToken.refNumber;
                        Token token2 = conditionToken.condition;
                        C13364Op compile2 = token2 == null ? null : compile(token2, null, z);
                        C13364Op compile3 = compile(conditionToken.yes, c13364Op, z);
                        Token token3 = conditionToken.f64117no;
                        return C13364Op.createCondition(c13364Op, i5, compile2, compile3, token3 != null ? compile(token3, c13364Op, z) : null);
                    default:
                        throw new RuntimeException("Unknown token type: " + token.type);
                }
        }
        return createChar;
    }

    private static final boolean regionMatches(CharacterIterator characterIterator, int i, int i2, int i3, int i4) {
        if (i < 0 || i2 - i < i4) {
            return false;
        }
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                return true;
            }
            int i6 = i + 1;
            int i7 = i3 + 1;
            if (characterIterator.setIndex(i) != characterIterator.setIndex(i3)) {
                return false;
            }
            i = i6;
            i3 = i7;
            i4 = i5;
        }
    }

    private static final boolean regionMatchesIgnoreCase(char[] cArr, int i, int i2, int i3, int i4) {
        char upperCase;
        char upperCase2;
        if (i < 0 || i2 - i < i4) {
            return false;
        }
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                return true;
            }
            int i6 = i + 1;
            char c = cArr[i];
            int i7 = i3 + 1;
            char c2 = cArr[i3];
            if (c != c2 && (upperCase = Character.toUpperCase(c)) != (upperCase2 = Character.toUpperCase(c2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
            i = i6;
            i3 = i7;
            i4 = i5;
        }
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

    public void setPattern(String str, String str2) throws ParseException {
        setPattern(str, REUtil.parseOptions(str2));
    }

    private static final boolean regionMatchesIgnoreCase(String str, int i, int i2, String str2, int i3) {
        return str.regionMatches(true, i, str2, 0, i3);
    }

    private static final boolean regionMatchesIgnoreCase(String str, int i, int i2, int i3, int i4) {
        if (i2 - i < i4) {
            return false;
        }
        return str.regionMatches(true, i, str, i3, i4);
    }

    private static final boolean regionMatchesIgnoreCase(CharacterIterator characterIterator, int i, int i2, String str, int i3) {
        char upperCase;
        char upperCase2;
        if (i < 0 || i2 - i < i3) {
            return false;
        }
        int i4 = 0;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                return true;
            }
            int i6 = i + 1;
            char index = characterIterator.setIndex(i);
            int i7 = i4 + 1;
            char charAt = str.charAt(i4);
            if (index != charAt && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(charAt)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
            i = i6;
            i3 = i5;
            i4 = i7;
        }
    }

    private static final boolean regionMatchesIgnoreCase(CharacterIterator characterIterator, int i, int i2, int i3, int i4) {
        char upperCase;
        char upperCase2;
        if (i < 0 || i2 - i < i4) {
            return false;
        }
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                return true;
            }
            int i6 = i + 1;
            char index = characterIterator.setIndex(i);
            int i7 = i3 + 1;
            char index2 = characterIterator.setIndex(i3);
            if (index != index2 && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(index2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
            i = i6;
            i3 = i7;
            i4 = i5;
        }
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

    public boolean matches(String str) {
        return matches(str, 0, str.length(), (Match) null);
    }

    public boolean matches(String str, int i, int i2) {
        return matches(str, i, i2, (Match) null);
    }

    public boolean matches(String str, Match match) {
        return matches(str, 0, str.length(), match);
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x01a4 A[EDGE_INSN: B:94:0x01a4->B:95:0x01a4 BREAK  A[LOOP:1: B:85:0x011f->B:97:0x016b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean matches(java.lang.String r10, int r11, int r12, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match r13) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matches(java.lang.String, int, int, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match):boolean");
    }

    public boolean matches(CharacterIterator characterIterator) {
        return matches(characterIterator, (Match) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01ac A[EDGE_INSN: B:95:0x01ac->B:96:0x01ac BREAK  A[LOOP:1: B:86:0x0127->B:98:0x0173], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0173 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean matches(java.text.CharacterIterator r12, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match r13) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xpath.regex.RegularExpression.matches(java.text.CharacterIterator, com.sun.org.apache.xerces.internal.impl.xpath.regex.Match):boolean");
    }
}
