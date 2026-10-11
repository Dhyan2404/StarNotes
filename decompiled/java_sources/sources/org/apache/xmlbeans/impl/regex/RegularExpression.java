package org.apache.xmlbeans.impl.regex;

import java.io.Serializable;
import java.text.CharacterIterator;
import java.util.Locale;
import org.apache.xmlbeans.impl.regex.C20123Op;
import org.apache.xmlbeans.impl.regex.Token;

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
    transient C20123Op operations;
    int options;
    String regex;
    Token tokentree;

    /* loaded from: classes13.dex */
    public static final class ClosureContext {
        int[] offsets = new int[4];
        int currentIndex = 0;

        private int[] expandOffsets() {
            int[] iArr = this.offsets;
            int[] iArr2 = new int[iArr.length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, this.currentIndex);
            return iArr2;
        }

        public void addOffset(int i) {
            if (this.currentIndex == this.offsets.length) {
                this.offsets = expandOffsets();
            }
            int[] iArr = this.offsets;
            int i2 = this.currentIndex;
            this.currentIndex = i2 + 1;
            iArr[i2] = i;
        }

        public boolean contains(int i) {
            for (int i2 = 0; i2 < this.currentIndex; i2++) {
                if (this.offsets[i2] == i) {
                    return true;
                }
            }
            return false;
        }

        public void reset() {
            this.currentIndex = 0;
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class ExpressionTarget {
        public abstract char charAt(int i);

        public abstract boolean regionMatches(boolean z, int i, int i2, int i3, int i4);

        public abstract boolean regionMatches(boolean z, int i, int i2, String str, int i3);
    }

    /* loaded from: classes13.dex */
    public static final class StringTarget extends ExpressionTarget {
        private String target;

        public StringTarget(String str) {
            this.target = str;
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public char charAt(int i) {
            return this.target.charAt(i);
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, String str, int i3) {
            if (i2 - i < i3) {
                return false;
            }
            return z ? this.target.regionMatches(true, i, str, 0, i3) : this.target.regionMatches(i, str, 0, i3);
        }

        public void resetTarget(String str) {
            this.target = str;
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, int i3, int i4) {
            if (i2 - i < i4) {
                return false;
            }
            if (z) {
                String str = this.target;
                return str.regionMatches(true, i, str, i3, i4);
            }
            String str2 = this.target;
            return str2.regionMatches(i, str2, i3, i4);
        }
    }

    public RegularExpression(String str) throws ParseException {
        this(str, null);
    }

    private synchronized void compile(Token token) {
        if (this.operations != null) {
            return;
        }
        this.numberOfClosures = 0;
        this.operations = compile(token, null, false);
    }

    private static final int getPreviousWordType(ExpressionTarget expressionTarget, int i, int i2, int i3, int i4) {
        int i5 = i3 - 1;
        int wordType = getWordType(expressionTarget, i, i2, i5, i4);
        while (wordType == 0) {
            i5--;
            wordType = getWordType(expressionTarget, i, i2, i5, i4);
        }
        return wordType;
    }

    private static final int getWordType(ExpressionTarget expressionTarget, int i, int i2, int i3, int i4) {
        if (i3 < i || i3 >= i2) {
            return 2;
        }
        return getWordType0(expressionTarget.charAt(i3), i4);
    }

    private static int getWordType0(char c, int i) {
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

    private static boolean isEOLChar(int i) {
        return i == 10 || i == 13 || i == LINE_SEPARATOR || i == PARAGRAPH_SEPARATOR;
    }

    private static boolean isSet(int i, int i2) {
        return (i & i2) == i2;
    }

    private static boolean isWordChar(int i) {
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
    /* JADX WARN: Code restructure failed: missing block: B:236:0x02f5, code lost:
    
        if (isEOLChar(r0) != false) goto L171;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0040. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0043. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x033a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:78:0x033d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0356 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0322 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x019a -> B:33:0x0322). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int match(org.apache.xmlbeans.impl.regex.RegularExpression.Context r23, org.apache.xmlbeans.impl.regex.C20123Op r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.regex.RegularExpression.match(org.apache.xmlbeans.impl.regex.RegularExpression$Context, org.apache.xmlbeans.impl.regex.Op, int, int, int):int");
    }

    private boolean matchChar(int i, int i2, boolean z) {
        return z ? matchIgnoreCase(i, i2) : i == i2;
    }

    private static boolean matchIgnoreCase(int i, int i2) {
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
        return REUtil.createOptionString(this.options);
    }

    public String getPattern() {
        return this.regex;
    }

    public int hashCode() {
        return (this.regex + "/" + getOptions()).hashCode();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean matchAnchor(ExpressionTarget expressionTarget, C20123Op c20123Op, Context context, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int wordType;
        int wordType2;
        int data = c20123Op.getData();
        if (data != 36) {
            if (data != 60) {
                if (data != 62) {
                    if (data == 90) {
                        int i7 = context.limit;
                        if (i != i7 && (((i6 = i + 1) != i7 || !isEOLChar(expressionTarget.charAt(i))) && (i + 2 != context.limit || expressionTarget.charAt(i) != '\r' || expressionTarget.charAt(i6) != '\n'))) {
                            return false;
                        }
                    } else if (data != 94) {
                        if (data != 98) {
                            if (data != 122) {
                                switch (data) {
                                    case 64:
                                        int i8 = context.start;
                                        if (i != i8 && (i <= i8 || !isEOLChar(expressionTarget.charAt(i - 1)))) {
                                            return false;
                                        }
                                        break;
                                    case 65:
                                        if (i != context.start) {
                                            return false;
                                        }
                                        break;
                                    case 66:
                                        if (!(context.length == 0 || (wordType2 = getWordType(expressionTarget, context.start, context.limit, i, i2)) == 0 || wordType2 == getPreviousWordType(expressionTarget, context.start, context.limit, i, i2))) {
                                            return false;
                                        }
                                        break;
                                }
                            } else if (i != context.limit) {
                                return false;
                            }
                        } else if (context.length == 0 || (wordType = getWordType(expressionTarget, context.start, context.limit, i, i2)) == 0 || wordType == getPreviousWordType(expressionTarget, context.start, context.limit, i, i2)) {
                            return false;
                        }
                    } else if (isSet(i2, 8)) {
                        int i9 = context.start;
                        if (i != i9 && (i <= i9 || i >= context.limit || !isEOLChar(expressionTarget.charAt(i - 1)))) {
                            return false;
                        }
                    } else if (i != context.start) {
                        return false;
                    }
                } else if (context.length == 0 || i == (i5 = context.start) || getWordType(expressionTarget, i5, context.limit, i, i2) != 2 || getPreviousWordType(expressionTarget, context.start, context.limit, i, i2) != 1) {
                    return false;
                }
            } else if (context.length == 0 || i == (i4 = context.limit) || getWordType(expressionTarget, context.start, i4, i, i2) != 1 || getPreviousWordType(expressionTarget, context.start, context.limit, i, i2) != 2) {
                return false;
            }
        } else if (isSet(i2, 8)) {
            int i10 = context.limit;
            if (i != i10 && (i >= i10 || !isEOLChar(expressionTarget.charAt(i)))) {
                return false;
            }
        } else {
            int i11 = context.limit;
            if (i != i11 && (((i3 = i + 1) != i11 || !isEOLChar(expressionTarget.charAt(i))) && (i + 2 != context.limit || expressionTarget.charAt(i) != '\r' || expressionTarget.charAt(i3) != '\n'))) {
                return false;
            }
        }
        return true;
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
        C20123Op c20123Op = this.operations;
        if (c20123Op != null && (((i = c20123Op.type) == 6 || i == 1) && c20123Op.next == null)) {
            this.fixedStringOnly = true;
            if (i == 6) {
                this.fixedString = c20123Op.getString();
            } else if (c20123Op.getData() >= 65536) {
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
        setPattern(str, Locale.getDefault());
    }

    public String toString() {
        return this.tokentree.toString(this.options);
    }

    /* loaded from: classes13.dex */
    public static final class CharArrayTarget extends ExpressionTarget {
        char[] target;

        public CharArrayTarget(char[] cArr) {
            this.target = cArr;
        }

        private boolean regionMatchesIgnoreCase(int i, int i2, String str, int i3) {
            char upperCase;
            char upperCase2;
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char c = this.target[i];
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

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public char charAt(int i) {
            return this.target[i];
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, String str, int i3) {
            if (i < 0 || i2 - i < i3) {
                return false;
            }
            if (z) {
                return regionMatchesIgnoreCase(i, i2, str, i3);
            }
            return regionMatches(i, i2, str, i3);
        }

        public void resetTarget(char[] cArr) {
            this.target = cArr;
        }

        private boolean regionMatches(int i, int i2, String str, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i4 + 1;
                if (this.target[i] != str.charAt(i4)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, int i3, int i4) {
            if (i < 0 || i2 - i < i4) {
                return false;
            }
            if (z) {
                return regionMatchesIgnoreCase(i, i2, i3, i4);
            }
            return regionMatches(i, i2, i3, i4);
        }

        private boolean regionMatches(int i, int i2, int i3, int i4) {
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                char[] cArr = this.target;
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

        private boolean regionMatchesIgnoreCase(int i, int i2, int i3, int i4) {
            char upperCase;
            char upperCase2;
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                char[] cArr = this.target;
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
    }

    /* loaded from: classes13.dex */
    public static final class CharacterIteratorTarget extends ExpressionTarget {
        CharacterIterator target;

        public CharacterIteratorTarget(CharacterIterator characterIterator) {
            this.target = characterIterator;
        }

        private boolean regionMatchesIgnoreCase(int i, int i2, String str, int i3) {
            char upperCase;
            char upperCase2;
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char index = this.target.setIndex(i);
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

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public char charAt(int i) {
            return this.target.setIndex(i);
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, String str, int i3) {
            if (i < 0 || i2 - i < i3) {
                return false;
            }
            if (z) {
                return regionMatchesIgnoreCase(i, i2, str, i3);
            }
            return regionMatches(i, i2, str, i3);
        }

        public void resetTarget(CharacterIterator characterIterator) {
            this.target = characterIterator;
        }

        private boolean regionMatches(int i, int i2, String str, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i3 - 1;
                if (i3 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i4 + 1;
                if (this.target.setIndex(i) != str.charAt(i4)) {
                    return false;
                }
                i4 = i7;
                i3 = i5;
                i = i6;
            }
        }

        @Override // org.apache.xmlbeans.impl.regex.RegularExpression.ExpressionTarget
        public boolean regionMatches(boolean z, int i, int i2, int i3, int i4) {
            if (i < 0 || i2 - i < i4) {
                return false;
            }
            if (z) {
                return regionMatchesIgnoreCase(i, i2, i3, i4);
            }
            return regionMatches(i, i2, i3, i4);
        }

        private boolean regionMatches(int i, int i2, int i3, int i4) {
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                int i7 = i3 + 1;
                if (this.target.setIndex(i) != this.target.setIndex(i3)) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
        }

        private boolean regionMatchesIgnoreCase(int i, int i2, int i3, int i4) {
            char upperCase;
            char upperCase2;
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    return true;
                }
                int i6 = i + 1;
                char index = this.target.setIndex(i);
                int i7 = i3 + 1;
                char index2 = this.target.setIndex(i3);
                if (index != index2 && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(index2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    return false;
                }
                i4 = i5;
                i = i6;
                i3 = i7;
            }
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

    public boolean matches(char[] cArr, int i, int i2) {
        return matches(cArr, i, i2, (Match) null);
    }

    public void setPattern(String str, Locale locale) throws ParseException {
        setPattern(str, this.options, locale);
    }

    private void setPattern(String str, int i, Locale locale) throws ParseException {
        this.regex = str;
        this.options = i;
        RegexParser parserForXMLSchema = isSet(i, 512) ? new ParserForXMLSchema(locale) : new RegexParser(locale);
        this.tokentree = parserForXMLSchema.parse(this.regex, this.options);
        this.nofparen = parserForXMLSchema.parennumber;
        this.hasBackReferences = parserForXMLSchema.hasBackReferences;
        this.operations = null;
        this.context = null;
    }

    public boolean matches(char[] cArr, Match match) {
        return matches(cArr, 0, cArr.length, match);
    }

    public boolean equals(String str, int i) {
        return this.regex.equals(str) && this.options == i;
    }

    public boolean matches(char[] cArr, int i, int i2, Match match) {
        Context context;
        int i3;
        int i4;
        synchronized (this) {
            if (this.operations == null) {
                prepare();
            }
            if (this.context == null) {
                this.context = new Context();
            }
        }
        synchronized (this.context) {
            Context context2 = this.context;
            if (context2.inuse) {
                context2 = new Context();
            }
            context = context2;
            context.reset(cArr, i, i2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(cArr);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (isSet(this.options, 512)) {
            int match2 = match(context, this.operations, context.start, 1, this.options);
            if (match2 != context.limit) {
                return false;
            }
            Match match3 = context.match;
            if (match3 != null) {
                match3.setBeginning(0, context.start);
                context.match.setEnd(0, match2);
            }
            context.setInUse(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(cArr, context.start, context.limit);
            if (matches >= 0) {
                Match match4 = context.match;
                if (match4 != null) {
                    match4.setBeginning(0, matches);
                    context.match.setEnd(0, matches + this.fixedString.length());
                }
                context.setInUse(false);
                return true;
            }
            context.setInUse(false);
            return false;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(cArr, context.start, context.limit) < 0) {
            context.setInUse(false);
            return false;
        }
        int i5 = context.limit - this.minlength;
        C20123Op c20123Op = this.operations;
        int i6 = -1;
        if (c20123Op != null && c20123Op.type == 7 && c20123Op.getChild().type == 0) {
            if (isSet(this.options, 4)) {
                i3 = context.start;
                i4 = match(context, this.operations, i3, 1, this.options);
            } else {
                int i7 = context.start;
                boolean z = true;
                while (i7 <= i5) {
                    if (isEOLChar(cArr[i7])) {
                        z = true;
                    } else {
                        if (z) {
                            i6 = match(context, this.operations, i7, 1, this.options);
                            if (i6 >= 0) {
                                break;
                            }
                        }
                        z = false;
                    }
                    i7++;
                }
                i4 = i6;
                i3 = i7;
            }
        } else {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i8 = context.start;
                while (i8 <= i5) {
                    char c = cArr[i8];
                    boolean isHighSurrogate = REUtil.isHighSurrogate(c);
                    int i9 = c;
                    if (isHighSurrogate) {
                        int i10 = i8 + 1;
                        i9 = c;
                        if (i10 < context.limit) {
                            i9 = REUtil.composeFromSurrogates(c, cArr[i10]);
                        }
                    }
                    if (rangeToken.match(i9)) {
                        i6 = match(context, this.operations, i8, 1, this.options);
                        if (i6 >= 0) {
                            break;
                        }
                    }
                    i8++;
                }
                i4 = i6;
                i3 = i8;
            } else {
                i3 = context.start;
                while (i3 <= i5) {
                    i6 = match(context, this.operations, i3, 1, this.options);
                    if (i6 >= 0) {
                        break;
                    }
                    i3++;
                }
                i4 = i6;
            }
        }
        if (i4 >= 0) {
            Match match5 = context.match;
            if (match5 != null) {
                match5.setBeginning(0, i3);
                context.match.setEnd(0, i4);
            }
            context.setInUse(false);
            return true;
        }
        context.setInUse(false);
        return false;
    }

    private C20123Op compile(Token token, C20123Op c20123Op, boolean z) {
        C20123Op createChar;
        C20123Op.ChildOp createClosure;
        C20123Op c20123Op2;
        int i = token.type;
        int i2 = 0;
        switch (i) {
            case 0:
                createChar = C20123Op.createChar(token.getChar());
                createChar.next = c20123Op;
                break;
            case 1:
                if (!z) {
                    for (int size = token.size() - 1; size >= 0; size--) {
                        c20123Op = compile(token.getChild(size), c20123Op, false);
                    }
                    return c20123Op;
                }
                while (i2 < token.size()) {
                    c20123Op = compile(token.getChild(i2), c20123Op, true);
                    i2++;
                }
                return c20123Op;
            case 2:
                C20123Op.UnionOp createUnion = C20123Op.createUnion(token.size());
                while (i2 < token.size()) {
                    createUnion.addElement(compile(token.getChild(i2), c20123Op, z));
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
                        c20123Op = compile(child, c20123Op, z);
                        i2++;
                    }
                    return c20123Op;
                }
                if (min > 0 && max > 0) {
                    max -= min;
                }
                if (max > 0) {
                    C20123Op c20123Op3 = c20123Op;
                    int i3 = 0;
                    while (i3 < max) {
                        C20123Op.ChildOp createQuestion = C20123Op.createQuestion(token.type == 9);
                        createQuestion.next = c20123Op;
                        createQuestion.setChild(compile(child, c20123Op3, z));
                        i3++;
                        c20123Op3 = createQuestion;
                    }
                    c20123Op2 = c20123Op3;
                } else {
                    if (token.type == 9) {
                        createClosure = C20123Op.createNonGreedyClosure();
                    } else {
                        int i4 = this.numberOfClosures;
                        this.numberOfClosures = i4 + 1;
                        createClosure = C20123Op.createClosure(i4);
                    }
                    createClosure.next = c20123Op;
                    createClosure.setChild(compile(child, createClosure, z));
                    c20123Op2 = createClosure;
                }
                if (min <= 0) {
                    return c20123Op2;
                }
                while (i2 < min) {
                    c20123Op2 = compile(child, c20123Op2, z);
                    i2++;
                }
                return c20123Op2;
            case 4:
            case 5:
                createChar = C20123Op.createRange(token);
                createChar.next = c20123Op;
                break;
            case 6:
                if (token.getParenNumber() == 0) {
                    return compile(token.getChild(0), c20123Op, z);
                }
                if (z) {
                    return C20123Op.createCapture(-token.getParenNumber(), compile(token.getChild(0), C20123Op.createCapture(token.getParenNumber(), c20123Op), z));
                }
                return C20123Op.createCapture(token.getParenNumber(), compile(token.getChild(0), C20123Op.createCapture(-token.getParenNumber(), c20123Op), z));
            case 7:
                return c20123Op;
            case 8:
                createChar = C20123Op.createAnchor(token.getChar());
                createChar.next = c20123Op;
                break;
            case 10:
                createChar = C20123Op.createString(token.getString());
                createChar.next = c20123Op;
                break;
            case 11:
                createChar = C20123Op.createDot();
                createChar.next = c20123Op;
                break;
            case 12:
                createChar = C20123Op.createBackReference(token.getReferenceNumber());
                createChar.next = c20123Op;
                break;
            default:
                switch (i) {
                    case 20:
                        return C20123Op.createLook(20, c20123Op, compile(token.getChild(0), null, false));
                    case 21:
                        return C20123Op.createLook(21, c20123Op, compile(token.getChild(0), null, false));
                    case 22:
                        return C20123Op.createLook(22, c20123Op, compile(token.getChild(0), null, true));
                    case 23:
                        return C20123Op.createLook(23, c20123Op, compile(token.getChild(0), null, true));
                    case 24:
                        return C20123Op.createIndependent(c20123Op, compile(token.getChild(0), null, z));
                    case 25:
                        C20123Op compile = compile(token.getChild(0), null, z);
                        Token.ModifierToken modifierToken = (Token.ModifierToken) token;
                        return C20123Op.createModifier(c20123Op, compile, modifierToken.getOptions(), modifierToken.getOptionsMask());
                    case 26:
                        Token.ConditionToken conditionToken = (Token.ConditionToken) token;
                        int i5 = conditionToken.refNumber;
                        Token token2 = conditionToken.condition;
                        C20123Op compile2 = token2 == null ? null : compile(token2, null, z);
                        C20123Op compile3 = compile(conditionToken.yes, c20123Op, z);
                        Token token3 = conditionToken.f113748no;
                        return C20123Op.createCondition(c20123Op, i5, compile2, compile3, token3 != null ? compile(token3, c20123Op, z) : null);
                    default:
                        throw new RuntimeException("Unknown token type: " + token.type);
                }
        }
        return createChar;
    }

    /* loaded from: classes13.dex */
    public static final class Context {
        private CharArrayTarget charArrayTarget;
        private CharacterIteratorTarget characterIteratorTarget;
        ClosureContext[] closureContexts;
        boolean inuse = false;
        int length;
        int limit;
        Match match;
        int start;
        private StringTarget stringTarget;
        ExpressionTarget target;

        private void resetCommon(int i) {
            this.length = this.limit - this.start;
            setInUse(true);
            this.match = null;
            ClosureContext[] closureContextArr = this.closureContexts;
            if (closureContextArr == null || closureContextArr.length != i) {
                this.closureContexts = new ClosureContext[i];
            }
            for (int i2 = 0; i2 < i; i2++) {
                ClosureContext[] closureContextArr2 = this.closureContexts;
                ClosureContext closureContext = closureContextArr2[i2];
                if (closureContext == null) {
                    closureContextArr2[i2] = new ClosureContext();
                } else {
                    closureContext.reset();
                }
            }
        }

        public void reset(CharacterIterator characterIterator, int i, int i2, int i3) {
            CharacterIteratorTarget characterIteratorTarget = this.characterIteratorTarget;
            if (characterIteratorTarget == null) {
                this.characterIteratorTarget = new CharacterIteratorTarget(characterIterator);
            } else {
                characterIteratorTarget.resetTarget(characterIterator);
            }
            this.target = this.characterIteratorTarget;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }

        public synchronized void setInUse(boolean z) {
            this.inuse = z;
        }

        public void reset(String str, int i, int i2, int i3) {
            StringTarget stringTarget = this.stringTarget;
            if (stringTarget == null) {
                this.stringTarget = new StringTarget(str);
            } else {
                stringTarget.resetTarget(str);
            }
            this.target = this.stringTarget;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }

        public void reset(char[] cArr, int i, int i2, int i3) {
            CharArrayTarget charArrayTarget = this.charArrayTarget;
            if (charArrayTarget == null) {
                this.charArrayTarget = new CharArrayTarget(cArr);
            } else {
                charArrayTarget.resetTarget(cArr);
            }
            this.target = this.charArrayTarget;
            this.start = i;
            this.limit = i2;
            resetCommon(i3);
        }
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

    public void setPattern(String str, String str2) throws ParseException {
        setPattern(str, str2, Locale.getDefault());
    }

    public void setPattern(String str, String str2, Locale locale) throws ParseException {
        setPattern(str, REUtil.parseOptions(str2), locale);
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

    public boolean matches(String str, int i, int i2, Match match) {
        Context context;
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            if (this.operations == null) {
                prepare();
            }
            if (this.context == null) {
                this.context = new Context();
            }
        }
        synchronized (this.context) {
            Context context2 = this.context;
            if (context2.inuse) {
                context2 = new Context();
            }
            context = context2;
            context.reset(str, i, i2, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(str);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (isSet(this.options, 512)) {
            int match2 = match(context, this.operations, context.start, 1, this.options);
            if (match2 != context.limit) {
                return false;
            }
            Match match3 = context.match;
            if (match3 != null) {
                match3.setBeginning(0, context.start);
                context.match.setEnd(0, match2);
            }
            context.setInUse(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(str, context.start, context.limit);
            if (matches >= 0) {
                Match match4 = context.match;
                if (match4 != null) {
                    match4.setBeginning(0, matches);
                    context.match.setEnd(0, matches + this.fixedString.length());
                }
                context.setInUse(false);
                return true;
            }
            context.setInUse(false);
            return false;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(str, context.start, context.limit) < 0) {
            context.setInUse(false);
            return false;
        }
        int i6 = context.limit - this.minlength;
        C20123Op c20123Op = this.operations;
        int i7 = -1;
        if (c20123Op != null && c20123Op.type == 7 && c20123Op.getChild().type == 0) {
            if (isSet(this.options, 4)) {
                i3 = context.start;
                i4 = match(context, this.operations, i3, 1, this.options);
            } else {
                int i8 = context.start;
                boolean z = true;
                while (i8 <= i6) {
                    if (isEOLChar(str.charAt(i8))) {
                        z = true;
                    } else {
                        if (z) {
                            i7 = match(context, this.operations, i8, 1, this.options);
                            if (i7 >= 0) {
                                break;
                            }
                        }
                        z = false;
                    }
                    i8++;
                }
                i4 = i7;
                i3 = i8;
            }
        } else {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i9 = context.start;
                while (i9 <= i6) {
                    int charAt = str.charAt(i9);
                    if (REUtil.isHighSurrogate(charAt) && (i5 = i9 + 1) < context.limit) {
                        charAt = REUtil.composeFromSurrogates(charAt, str.charAt(i5));
                    }
                    if (rangeToken.match(charAt)) {
                        i7 = match(context, this.operations, i9, 1, this.options);
                        if (i7 >= 0) {
                            break;
                        }
                    }
                    i9++;
                }
                i4 = i7;
                i3 = i9;
            } else {
                i3 = context.start;
                while (i3 <= i6) {
                    i7 = match(context, this.operations, i3, 1, this.options);
                    if (i7 >= 0) {
                        break;
                    }
                    i3++;
                }
                i4 = i7;
            }
        }
        if (i4 >= 0) {
            Match match5 = context.match;
            if (match5 != null) {
                match5.setBeginning(0, i3);
                context.match.setEnd(0, i4);
            }
            context.setInUse(false);
            return true;
        }
        context.setInUse(false);
        return false;
    }

    public boolean matches(CharacterIterator characterIterator) {
        return matches(characterIterator, (Match) null);
    }

    public boolean matches(CharacterIterator characterIterator, Match match) {
        Context context;
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
                this.context = new Context();
            }
        }
        synchronized (this.context) {
            Context context2 = this.context;
            if (context2.inuse) {
                context2 = new Context();
            }
            context = context2;
            context.reset(characterIterator, beginIndex, endIndex, this.numberOfClosures);
        }
        if (match != null) {
            match.setNumberOfGroups(this.nofparen);
            match.setSource(characterIterator);
        } else if (this.hasBackReferences) {
            match = new Match();
            match.setNumberOfGroups(this.nofparen);
        }
        context.match = match;
        if (isSet(this.options, 512)) {
            int match2 = match(context, this.operations, context.start, 1, this.options);
            if (match2 != context.limit) {
                return false;
            }
            Match match3 = context.match;
            if (match3 != null) {
                match3.setBeginning(0, context.start);
                context.match.setEnd(0, match2);
            }
            context.setInUse(false);
            return true;
        }
        if (this.fixedStringOnly) {
            int matches = this.fixedStringTable.matches(characterIterator, context.start, context.limit);
            if (matches >= 0) {
                Match match4 = context.match;
                if (match4 != null) {
                    match4.setBeginning(0, matches);
                    context.match.setEnd(0, matches + this.fixedString.length());
                }
                context.setInUse(false);
                return true;
            }
            context.setInUse(false);
            return false;
        }
        if (this.fixedString != null && this.fixedStringTable.matches(characterIterator, context.start, context.limit) < 0) {
            context.setInUse(false);
            return false;
        }
        int i4 = context.limit - this.minlength;
        C20123Op c20123Op = this.operations;
        int i5 = -1;
        if (c20123Op != null && c20123Op.type == 7 && c20123Op.getChild().type == 0) {
            if (isSet(this.options, 4)) {
                i = context.start;
                i2 = match(context, this.operations, i, 1, this.options);
            } else {
                int i6 = context.start;
                boolean z = true;
                while (i6 <= i4) {
                    if (isEOLChar(characterIterator.setIndex(i6))) {
                        z = true;
                    } else {
                        if (z) {
                            i5 = match(context, this.operations, i6, 1, this.options);
                            if (i5 >= 0) {
                                break;
                            }
                        }
                        z = false;
                    }
                    i6++;
                }
                i2 = i5;
                i = i6;
            }
        } else {
            RangeToken rangeToken = this.firstChar;
            if (rangeToken != null) {
                int i7 = context.start;
                while (i7 <= i4) {
                    int index = characterIterator.setIndex(i7);
                    if (REUtil.isHighSurrogate(index) && (i3 = i7 + 1) < context.limit) {
                        index = REUtil.composeFromSurrogates(index, characterIterator.setIndex(i3));
                    }
                    if (rangeToken.match(index)) {
                        i5 = match(context, this.operations, i7, 1, this.options);
                        if (i5 >= 0) {
                            break;
                        }
                    }
                    i7++;
                }
                i2 = i5;
                i = i7;
            } else {
                i = context.start;
                while (i <= i4) {
                    i5 = match(context, this.operations, i, 1, this.options);
                    if (i5 >= 0) {
                        break;
                    }
                    i++;
                }
                i2 = i5;
            }
        }
        if (i2 >= 0) {
            Match match5 = context.match;
            if (match5 != null) {
                match5.setBeginning(0, i);
                context.match.setEnd(0, i2);
            }
            context.setInUse(false);
            return true;
        }
        context.setInUse(false);
        return false;
    }
}
