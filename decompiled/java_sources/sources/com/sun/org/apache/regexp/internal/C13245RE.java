package com.sun.org.apache.regexp.internal;

import java.io.Serializable;
import java.util.Vector;
import org.xmlresolver.cache.ResourceCache;

/* renamed from: com.sun.org.apache.regexp.internal.RE */
/* loaded from: classes10.dex */
public class C13245RE implements Serializable {
    static final char E_ALNUM = 'w';
    static final char E_BOUND = 'b';
    static final char E_DIGIT = 'd';
    static final char E_NALNUM = 'W';
    static final char E_NBOUND = 'B';
    static final char E_NDIGIT = 'D';
    static final char E_NSPACE = 'S';
    static final char E_SPACE = 's';
    public static final int MATCH_CASEINDEPENDENT = 1;
    public static final int MATCH_MULTILINE = 2;
    public static final int MATCH_NORMAL = 0;
    public static final int MATCH_SINGLELINE = 4;
    static final int MAX_PAREN = 16;
    static final char OP_ANY = '.';
    static final char OP_ANYOF = '[';
    static final char OP_ATOM = 'A';
    static final char OP_BACKREF = '#';
    static final char OP_BOL = '^';
    static final char OP_BRANCH = '|';
    static final char OP_CLOSE = ')';
    static final char OP_CLOSE_CLUSTER = '>';
    static final char OP_END = 'E';
    static final char OP_EOL = '$';
    static final char OP_ESCAPE = '\\';
    static final char OP_GOTO = 'G';
    static final char OP_MAYBE = '?';
    static final char OP_NOTHING = 'N';
    static final char OP_OPEN = '(';
    static final char OP_OPEN_CLUSTER = '<';
    static final char OP_PLUS = '+';
    static final char OP_POSIXCLASS = 'P';
    static final char OP_RELUCTANTMAYBE = '/';
    static final char OP_RELUCTANTPLUS = '=';
    static final char OP_RELUCTANTSTAR = '8';
    static final char OP_STAR = '*';
    static final char POSIX_CLASS_ALNUM = 'w';
    static final char POSIX_CLASS_ALPHA = 'a';
    static final char POSIX_CLASS_BLANK = 'b';
    static final char POSIX_CLASS_CNTRL = 'c';
    static final char POSIX_CLASS_DIGIT = 'd';
    static final char POSIX_CLASS_GRAPH = 'g';
    static final char POSIX_CLASS_JPART = 'k';
    static final char POSIX_CLASS_JSTART = 'j';
    static final char POSIX_CLASS_LOWER = 'l';
    static final char POSIX_CLASS_PRINT = 'p';
    static final char POSIX_CLASS_PUNCT = '!';
    static final char POSIX_CLASS_SPACE = 's';
    static final char POSIX_CLASS_UPPER = 'u';
    static final char POSIX_CLASS_XDIGIT = 'x';
    public static final int REPLACE_ALL = 0;
    public static final int REPLACE_BACKREFERENCES = 2;
    public static final int REPLACE_FIRSTONLY = 1;
    static final int maxNode = 65536;
    static final int nodeSize = 3;
    static final int offsetNext = 2;
    static final int offsetOpcode = 0;
    static final int offsetOpdata = 1;
    transient int end0;
    transient int end1;
    transient int end2;
    transient int[] endBackref;
    transient int[] endn;
    int matchFlags;
    int maxParen;
    transient int parenCount;
    REProgram program;
    transient CharacterIterator search;
    transient int start0;
    transient int start1;
    transient int start2;
    transient int[] startBackref;
    transient int[] startn;

    public C13245RE(String str) throws RESyntaxException {
        this(str, 0);
    }

    private final void allocParens() {
        int i = this.maxParen;
        this.startn = new int[i];
        this.endn = new int[i];
        for (int i2 = 0; i2 < this.maxParen; i2++) {
            this.startn[i2] = -1;
            this.endn[i2] = -1;
        }
    }

    private int compareChars(char c, char c2, boolean z) {
        if (z) {
            c = Character.toLowerCase(c);
            c2 = Character.toLowerCase(c2);
        }
        return c - c2;
    }

    private boolean isNewline(int i) {
        char charAt = this.search.charAt(i);
        return charAt == '\n' || charAt == '\r' || charAt == 133 || charAt == 8232 || charAt == 8233;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001c. Please report as an issue. */
    public static String simplePatternToFullRegularExpression(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '$' && charAt != '.' && charAt != '?') {
                switch (charAt) {
                    case '(':
                    case ')':
                    case '+':
                        break;
                    case '*':
                        stringBuffer.append(ResourceCache.defaultPattern);
                        break;
                    default:
                        switch (charAt) {
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                                break;
                            default:
                                switch (charAt) {
                                }
                        }
                }
            }
            stringBuffer.append('\\');
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    public int getMatchFlags() {
        return this.matchFlags;
    }

    public String getParen(int i) {
        int parenStart;
        if (i >= this.parenCount || (parenStart = getParenStart(i)) < 0) {
            return null;
        }
        return this.search.substring(parenStart, getParenEnd(i));
    }

    public int getParenCount() {
        return this.parenCount;
    }

    public final int getParenEnd(int i) {
        if (i >= this.parenCount) {
            return -1;
        }
        if (i == 0) {
            return this.end0;
        }
        if (i == 1) {
            return this.end1;
        }
        if (i == 2) {
            return this.end2;
        }
        if (this.endn == null) {
            allocParens();
        }
        return this.endn[i];
    }

    public final int getParenLength(int i) {
        if (i < this.parenCount) {
            return getParenEnd(i) - getParenStart(i);
        }
        return -1;
    }

    public final int getParenStart(int i) {
        if (i >= this.parenCount) {
            return -1;
        }
        if (i == 0) {
            return this.start0;
        }
        if (i == 1) {
            return this.start1;
        }
        if (i == 2) {
            return this.start2;
        }
        if (this.startn == null) {
            allocParens();
        }
        return this.startn[i];
    }

    public REProgram getProgram() {
        return this.program;
    }

    public String[] grep(Object[] objArr) {
        Vector vector = new Vector();
        for (Object obj : objArr) {
            String obj2 = obj.toString();
            if (match(obj2)) {
                vector.addElement(obj2);
            }
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public void internalError(String str) throws Error {
        throw new Error("RE internal error: " + str);
    }

    public boolean match(String str, int i) {
        return match(new StringCharacterIterator(str), i);
    }

    public boolean matchAt(int i) {
        this.start0 = -1;
        this.end0 = -1;
        this.start1 = -1;
        this.end1 = -1;
        this.start2 = -1;
        this.end2 = -1;
        this.startn = null;
        this.endn = null;
        this.parenCount = 1;
        setParenStart(0, i);
        if ((this.program.flags & 1) != 0) {
            int i2 = this.maxParen;
            this.startBackref = new int[i2];
            this.endBackref = new int[i2];
        }
        int matchNodes = matchNodes(0, 65536, i);
        if (matchNodes != -1) {
            setParenEnd(0, matchNodes);
            return true;
        }
        this.parenCount = 0;
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e6, code lost:
    
        if (r8 != 'w') goto L265;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int matchNodes(int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 1098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.C13245RE.matchNodes(int, int, int):int");
    }

    public void setMatchFlags(int i) {
        this.matchFlags = i;
    }

    public final void setParenEnd(int i, int i2) {
        if (i < this.parenCount) {
            if (i == 0) {
                this.end0 = i2;
                return;
            }
            if (i == 1) {
                this.end1 = i2;
            } else {
                if (i == 2) {
                    this.end2 = i2;
                    return;
                }
                if (this.endn == null) {
                    allocParens();
                }
                this.endn[i] = i2;
            }
        }
    }

    public final void setParenStart(int i, int i2) {
        if (i < this.parenCount) {
            if (i == 0) {
                this.start0 = i2;
                return;
            }
            if (i == 1) {
                this.start1 = i2;
            } else {
                if (i == 2) {
                    this.start2 = i2;
                    return;
                }
                if (this.startn == null) {
                    allocParens();
                }
                this.startn[i] = i2;
            }
        }
    }

    public void setProgram(REProgram rEProgram) {
        int i;
        this.program = rEProgram;
        if (rEProgram == null || (i = rEProgram.maxParens) == -1) {
            this.maxParen = 16;
        } else {
            this.maxParen = i;
        }
    }

    public String[] split(String str) {
        Vector vector = new Vector();
        int length = str.length();
        int i = 0;
        while (i < length && match(str, i)) {
            int parenStart = getParenStart(0);
            int parenEnd = getParenEnd(0);
            if (parenEnd == i) {
                vector.addElement(str.substring(i, parenStart + 1));
                parenEnd++;
            } else {
                vector.addElement(str.substring(i, parenStart));
            }
            i = parenEnd;
        }
        String substring = str.substring(i);
        if (substring.length() != 0) {
            vector.addElement(substring);
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public String subst(String str, String str2) {
        return subst(str, str2, 0);
    }

    public C13245RE(String str, int i) throws RESyntaxException {
        this(new RECompiler().compile(str));
        setMatchFlags(i);
    }

    public boolean match(CharacterIterator characterIterator, int i) {
        int i2;
        if (this.program == null) {
            internalError("No RE program to run!");
        }
        this.search = characterIterator;
        char[] cArr = this.program.prefix;
        if (cArr == null) {
            while (!characterIterator.isEnd(i - 1)) {
                if (matchAt(i)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        boolean z = (this.matchFlags & 1) != 0;
        while (!characterIterator.isEnd((cArr.length + i) - 1)) {
            int i3 = i;
            int i4 = 0;
            while (true) {
                int i5 = i3 + 1;
                i2 = i4 + 1;
                if (!(compareChars(characterIterator.charAt(i3), cArr[i4], z) == 0) || i2 >= cArr.length) {
                    break;
                }
                i3 = i5;
                i4 = i2;
            }
            if (i2 == cArr.length && matchAt(i)) {
                return true;
            }
            i++;
        }
        return false;
    }

    public String subst(String str, String str2, int i) {
        int i2;
        char charAt;
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i3 = 0;
        while (i3 < length && match(str, i3)) {
            stringBuffer.append(str.substring(i3, getParenStart(0)));
            if ((i & 2) != 0) {
                int length2 = str2.length();
                int i4 = -2;
                int i5 = 0;
                boolean z = false;
                while (true) {
                    int indexOf = str2.indexOf("$", i5);
                    if (indexOf < 0) {
                        break;
                    }
                    if ((indexOf == 0 || str2.charAt(indexOf - 1) != '\\') && (i2 = indexOf + 1) < length2 && (charAt = str2.charAt(i2)) >= '0' && charAt <= '9') {
                        if (!z) {
                            stringBuffer.append(str2.substring(0, indexOf));
                            z = true;
                        } else {
                            stringBuffer.append(str2.substring(i4 + 2, indexOf));
                        }
                        stringBuffer.append(getParen(charAt - '0'));
                        i4 = indexOf;
                    }
                    i5 = indexOf + 1;
                }
                stringBuffer.append(str2.substring(i4 + 2, length2));
            } else {
                stringBuffer.append(str2);
            }
            int parenEnd = getParenEnd(0);
            if (parenEnd == i3) {
                parenEnd++;
            }
            i3 = parenEnd;
            if ((i & 1) != 0) {
                break;
            }
        }
        if (i3 < length) {
            stringBuffer.append(str.substring(i3));
        }
        return stringBuffer.toString();
    }

    public C13245RE(REProgram rEProgram, int i) {
        this.maxParen = 16;
        setProgram(rEProgram);
        setMatchFlags(i);
    }

    public C13245RE(REProgram rEProgram) {
        this(rEProgram, 0);
    }

    public C13245RE() {
        this((REProgram) null, 0);
    }

    public boolean match(String str) {
        return match(str, 0);
    }
}
