package org.apache.xerces.impl.xpath.regex;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.motion.MotionUtils;
import com.google.common.xml.XmlEscapers;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.Hashtable;
import java.util.Vector;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Utf8;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class Token implements Serializable {
    static final int ANCHOR = 8;
    static final int BACKREFERENCE = 12;
    static final int CHAR = 0;
    static final int CHAR_FINAL_QUOTE = 30;
    static final int CHAR_INIT_QUOTE = 29;
    static final int CHAR_LETTER = 31;
    static final int CHAR_MARK = 32;
    static final int CHAR_NUMBER = 33;
    static final int CHAR_OTHER = 35;
    static final int CHAR_PUNCTUATION = 36;
    static final int CHAR_SEPARATOR = 34;
    static final int CHAR_SYMBOL = 37;
    static final int CLOSURE = 3;
    static final int CONCAT = 1;
    static final int CONDITION = 26;
    static final boolean COUNTTOKENS = true;
    static final int DOT = 11;
    static final int EMPTY = 7;
    static final int FC_ANY = 2;
    static final int FC_CONTINUE = 0;
    static final int FC_TERMINAL = 1;
    static final int INDEPENDENT = 24;
    static final int LOOKAHEAD = 20;
    static final int LOOKBEHIND = 22;
    static final int MODIFIERGROUP = 25;
    static final int NEGATIVELOOKAHEAD = 21;
    static final int NEGATIVELOOKBEHIND = 23;
    private static final int NONBMP_BLOCK_START = 84;
    static final int NONGREEDYCLOSURE = 9;
    static final int NRANGE = 5;
    static final int PAREN = 6;
    static final int RANGE = 4;
    static final int STRING = 10;
    static final int UNION = 2;
    static final int UTF16_MAX = 1114111;
    private static final String[] blockNames;
    static final String blockRanges = "\u0000\u007f\u0080ÿĀſƀɏɐʯʰ˿̀ͯͰϿЀӿ\u0530֏\u0590\u05ff\u0600ۿ܀ݏހ\u07bfऀॿঀ\u09ff\u0a00\u0a7f\u0a80૿\u0b00\u0b7f\u0b80\u0bffఀ౿ಀ\u0cffഀൿ\u0d80\u0dff\u0e00\u0e7f\u0e80\u0effༀ\u0fffက႟Ⴀჿᄀᇿሀ\u137fᎠ\u13ff᐀ᙿ\u1680\u169fᚠ\u16ffក\u17ff᠀\u18afḀỿἀ\u1fff\u2000\u206f⁰\u209f₠\u20cf⃐\u20ff℀⅏⅐\u218f←⇿∀⋿⌀⏿␀\u243f⑀\u245f①⓿─╿▀▟■◿☀⛿✀➿⠀⣿⺀\u2eff⼀\u2fdf⿰\u2fff\u3000〿\u3040ゟ゠ヿ\u3100ㄯ\u3130\u318f㆐㆟ㆠㆿ㈀㋿㌀㏿㐀䶵一\u9fffꀀ\ua48f꒐\ua4cf가힣\ue000\uf8ff豈\ufaffﬀﭏﭐ\ufdff︠︯︰﹏﹐\ufe6fﹰ\ufefe\ufeff\ufeff\uff00\uffef";
    private static final Hashtable categories;
    private static final Hashtable categories2;
    private static final String[] categoryNames;
    static final int[] nonBMPBlockRanges;
    static Hashtable nonxs = null;
    private static final long serialVersionUID = 8484976002585487481L;
    static Token token_0to9 = null;
    private static Token token_ccs = null;
    private static Token token_grapheme = null;
    static Token token_not_0to9 = null;
    static Token token_not_spaces = null;
    static Token token_not_wordchars = null;
    static Token token_spaces = null;
    static Token token_wordchars = null;
    static int tokens = 0;
    static final String viramaString = "्্੍્୍்్್്ฺ྄";
    final int type;
    static Token token_empty = new Token(7);
    static Token token_linebeginning = createAnchor(94);
    static Token token_linebeginning2 = createAnchor(64);
    static Token token_lineend = createAnchor(36);
    static Token token_stringbeginning = createAnchor(65);
    static Token token_stringend = createAnchor(122);
    static Token token_stringend2 = createAnchor(90);
    static Token token_wordedge = createAnchor(98);
    static Token token_not_wordedge = createAnchor(66);
    static Token token_wordbeginning = createAnchor(60);
    static Token token_wordend = createAnchor(62);
    static Token token_dot = new Token(11);

    /* loaded from: classes13.dex */
    public static class CharToken extends Token implements Serializable {
        private static final long serialVersionUID = -4394272816279496989L;
        final int chardata;

        public CharToken(int i, int i2) {
            super(i);
            this.chardata = i2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int getChar() {
            return this.chardata;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public boolean match(int i) {
            if (this.type == 0) {
                return i == this.chardata;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("NFAArrow#match(): Internal error: ");
            stringBuffer.append(this.type);
            throw new RuntimeException(stringBuffer.toString());
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            StringBuffer stringBuffer;
            int i2 = this.type;
            if (i2 == 0) {
                int i3 = this.chardata;
                if (i3 == 9) {
                    return "\\t";
                }
                if (i3 == 10) {
                    return "\\n";
                }
                if (i3 == 12) {
                    return "\\f";
                }
                if (i3 == 13) {
                    return "\\r";
                }
                if (i3 == 27) {
                    return "\\e";
                }
                if (i3 != 46 && i3 != 63 && i3 != 91 && i3 != 92 && i3 != 123 && i3 != 124) {
                    switch (i3) {
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                            break;
                        default:
                            if (i3 < 65536) {
                                stringBuffer = new StringBuffer();
                                stringBuffer.append("");
                                break;
                            } else {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("0");
                                stringBuffer2.append(Integer.toHexString(this.chardata));
                                String stringBuffer3 = stringBuffer2.toString();
                                stringBuffer = new StringBuffer();
                                stringBuffer.append("\\v");
                                stringBuffer.append(stringBuffer3.substring(stringBuffer3.length() - 6, stringBuffer3.length()));
                                break;
                            }
                    }
                    return stringBuffer.toString();
                }
                stringBuffer = new StringBuffer();
                stringBuffer.append("\\");
            } else {
                if (i2 != 8) {
                    return null;
                }
                if (this == Token.token_linebeginning || this == Token.token_lineend) {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append("");
                } else {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append("\\");
                }
            }
            stringBuffer.append((char) this.chardata);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class ClosureToken extends Token implements Serializable {
        private static final long serialVersionUID = 1308971930673997452L;
        final Token child;
        int max;
        int min;

        public ClosureToken(int i, Token token) {
            super(i);
            this.child = token;
            setMin(-1);
            setMax(-1);
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            return this.child;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public final int getMax() {
            return this.max;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public final int getMin() {
            return this.min;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public final void setMax(int i) {
            this.max = i;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public final void setMin(int i) {
            this.min = i;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            return 1;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            String str;
            StringBuffer stringBuffer;
            String str2;
            int max;
            if (this.type == 3) {
                if (getMin() >= 0 || getMax() >= 0) {
                    str = "}";
                    if (getMin() == getMax()) {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        max = getMin();
                        stringBuffer.append(max);
                        stringBuffer.append(str);
                    } else if (getMin() >= 0 && getMax() >= 0) {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        stringBuffer.append(getMin());
                        stringBuffer.append(",");
                        max = getMax();
                        stringBuffer.append(max);
                        stringBuffer.append(str);
                    } else {
                        if (getMin() < 0 || getMax() >= 0) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Token#toString(): CLOSURE ");
                            stringBuffer2.append(getMin());
                            stringBuffer2.append(", ");
                            stringBuffer2.append(getMax());
                            throw new RuntimeException(stringBuffer2.toString());
                        }
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        stringBuffer.append(getMin());
                        str2 = ",}";
                    }
                } else {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(this.child.toString(i));
                    str2 = "*";
                }
                stringBuffer.append(str2);
            } else {
                if (getMin() >= 0 || getMax() >= 0) {
                    str = "}?";
                    if (getMin() == getMax()) {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        max = getMin();
                        stringBuffer.append(max);
                        stringBuffer.append(str);
                    } else if (getMin() >= 0 && getMax() >= 0) {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        stringBuffer.append(getMin());
                        stringBuffer.append(",");
                        max = getMax();
                        stringBuffer.append(max);
                        stringBuffer.append(str);
                    } else {
                        if (getMin() < 0 || getMax() >= 0) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("Token#toString(): NONGREEDYCLOSURE ");
                            stringBuffer3.append(getMin());
                            stringBuffer3.append(", ");
                            stringBuffer3.append(getMax());
                            throw new RuntimeException(stringBuffer3.toString());
                        }
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(this.child.toString(i));
                        stringBuffer.append("{");
                        stringBuffer.append(getMin());
                        str2 = ",}?";
                    }
                } else {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(this.child.toString(i));
                    str2 = "*?";
                }
                stringBuffer.append(str2);
            }
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class ConcatToken extends Token implements Serializable {
        private static final long serialVersionUID = 8717321425541346381L;
        final Token child;
        final Token child2;

        public ConcatToken(Token token, Token token2) {
            super(1);
            this.child = token;
            this.child2 = token2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            return i == 0 ? this.child : this.child2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            return 2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            StringBuffer stringBuffer;
            String token;
            Token token2 = this.child2;
            if (token2.type == 3 && token2.getChild(0) == this.child) {
                stringBuffer = new StringBuffer();
                stringBuffer.append(this.child.toString(i));
                token = "+";
            } else {
                Token token3 = this.child2;
                if (token3.type == 9 && token3.getChild(0) == this.child) {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(this.child.toString(i));
                    token = "+?";
                } else {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(this.child.toString(i));
                    token = this.child2.toString(i);
                }
            }
            stringBuffer.append(token);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class ConditionToken extends Token implements Serializable {
        private static final long serialVersionUID = 4353765277910594411L;
        final Token condition;

        /* renamed from: no */
        final Token f112586no;
        final int refNumber;
        final Token yes;

        public ConditionToken(int i, Token token, Token token2, Token token3) {
            super(26);
            this.refNumber = i;
            this.condition = token;
            this.yes = token2;
            this.f112586no = token3;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            if (i == 0) {
                return this.yes;
            }
            if (i == 1) {
                return this.f112586no;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Internal Error: ");
            stringBuffer.append(i);
            throw new RuntimeException(stringBuffer.toString());
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            return this.f112586no == null ? 1 : 2;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0047  */
        @Override // org.apache.xerces.impl.xpath.regex.Token
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString(int r4) {
            /*
                r3 = this;
                int r4 = r3.refNumber
                java.lang.String r0 = "(?("
                java.lang.String r1 = ")"
                if (r4 <= 0) goto L1d
                java.lang.StringBuffer r4 = new java.lang.StringBuffer
                r4.<init>()
                r4.append(r0)
                int r0 = r3.refNumber
                r4.append(r0)
            L15:
                r4.append(r1)
            L18:
                java.lang.String r4 = r4.toString()
                goto L43
            L1d:
                org.apache.xerces.impl.xpath.regex.Token r4 = r3.condition
                int r4 = r4.type
                r2 = 8
                if (r4 != r2) goto L33
                java.lang.StringBuffer r4 = new java.lang.StringBuffer
                r4.<init>()
                r4.append(r0)
                org.apache.xerces.impl.xpath.regex.Token r0 = r3.condition
                r4.append(r0)
                goto L15
            L33:
                java.lang.StringBuffer r4 = new java.lang.StringBuffer
                r4.<init>()
                java.lang.String r0 = "(?"
                r4.append(r0)
                org.apache.xerces.impl.xpath.regex.Token r0 = r3.condition
                r4.append(r0)
                goto L18
            L43:
                org.apache.xerces.impl.xpath.regex.Token r0 = r3.f112586no
                if (r0 != 0) goto L52
                java.lang.StringBuffer r0 = new java.lang.StringBuffer
                r0.<init>()
                r0.append(r4)
                org.apache.xerces.impl.xpath.regex.Token r3 = r3.yes
                goto L66
            L52:
                java.lang.StringBuffer r0 = new java.lang.StringBuffer
                r0.<init>()
                r0.append(r4)
                org.apache.xerces.impl.xpath.regex.Token r4 = r3.yes
                r0.append(r4)
                java.lang.String r4 = "|"
                r0.append(r4)
                org.apache.xerces.impl.xpath.regex.Token r3 = r3.f112586no
            L66:
                r0.append(r3)
                r0.append(r1)
                java.lang.String r3 = r0.toString()
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.Token.ConditionToken.toString(int):java.lang.String");
        }
    }

    /* loaded from: classes13.dex */
    public static class ModifierToken extends Token implements Serializable {
        private static final long serialVersionUID = -9114536559696480356L;
        final int add;
        final Token child;
        final int mask;

        public ModifierToken(Token token, int i, int i2) {
            super(25);
            this.child = token;
            this.add = i;
            this.mask = i2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            return this.child;
        }

        public int getOptions() {
            return this.add;
        }

        public int getOptionsMask() {
            return this.mask;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            return 1;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("(?");
            int i2 = this.add;
            stringBuffer.append(i2 == 0 ? "" : REUtil.m70005b(i2));
            int i3 = this.mask;
            stringBuffer.append(i3 != 0 ? REUtil.m70005b(i3) : "");
            stringBuffer.append(":");
            stringBuffer.append(this.child.toString(i));
            stringBuffer.append(MotionUtils.f31762d);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class ParenToken extends Token implements Serializable {
        private static final long serialVersionUID = -5938014719827987704L;
        final Token child;
        final int parennumber;

        public ParenToken(int i, Token token, int i2) {
            super(i);
            this.child = token;
            this.parennumber = i2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            return this.child;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int getParenNumber() {
            return this.parennumber;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            return 1;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0007. Please report as an issue. */
        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            StringBuffer stringBuffer;
            String str;
            int i2 = this.type;
            if (i2 != 6) {
                switch (i2) {
                    case 20:
                        stringBuffer = new StringBuffer();
                        str = "(?=";
                        break;
                    case 21:
                        stringBuffer = new StringBuffer();
                        str = "(?!";
                        break;
                    case 22:
                        stringBuffer = new StringBuffer();
                        str = "(?<=";
                        break;
                    case 23:
                        stringBuffer = new StringBuffer();
                        str = "(?<!";
                        break;
                    case 24:
                        stringBuffer = new StringBuffer();
                        str = "(?>";
                        break;
                    default:
                        return null;
                }
            } else if (this.parennumber == 0) {
                stringBuffer = new StringBuffer();
                str = "(?:";
            } else {
                stringBuffer = new StringBuffer();
                str = MotionUtils.f31761c;
            }
            stringBuffer.append(str);
            stringBuffer.append(this.child.toString(i));
            stringBuffer.append(MotionUtils.f31762d);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class StringToken extends Token implements Serializable {
        private static final long serialVersionUID = -4614366944218504172L;
        final int refNumber;
        String string;

        public StringToken(int i, String str, int i2) {
            super(i);
            this.string = str;
            this.refNumber = i2;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int getReferenceNumber() {
            return this.refNumber;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String getString() {
            return this.string;
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            if (this.type != 12) {
                return REUtil.quoteMeta(this.string);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("\\");
            stringBuffer.append(this.refNumber);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes13.dex */
    public static class UnionToken extends Token implements Serializable {
        private static final long serialVersionUID = -2568843945989489861L;
        Vector children;

        public UnionToken(int i) {
            super(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public void addChild(Token token) {
            int i;
            StringBuffer stringBuffer;
            String string;
            if (token == null) {
                return;
            }
            if (this.children == null) {
                this.children = new Vector();
            }
            if (this.type == 2) {
                this.children.addElement(token);
                return;
            }
            if (token.type == 1) {
                for (int i2 = 0; i2 < token.size(); i2++) {
                    addChild(token.getChild(i2));
                }
                return;
            }
            int size = this.children.size();
            if (size == 0) {
                this.children.addElement(token);
                return;
            }
            int i3 = size - 1;
            Token token2 = (Token) this.children.elementAt(i3);
            int i4 = token2.type;
            if ((i4 != 0 && i4 != 10) || ((i = token.type) != 0 && i != 10)) {
                this.children.addElement(token);
                return;
            }
            int length = i == 0 ? 2 : token.getString().length();
            if (token2.type == 0) {
                stringBuffer = new StringBuffer(length + 2);
                int i5 = token2.getChar();
                if (i5 >= 65536) {
                    stringBuffer.append(REUtil.m70006c(i5));
                } else {
                    stringBuffer.append((char) i5);
                }
                token2 = Token.createString(null);
                this.children.setElementAt(token2, i3);
            } else {
                stringBuffer = new StringBuffer(token2.getString().length() + length);
                stringBuffer.append(token2.getString());
            }
            if (token.type == 0) {
                int i6 = token.getChar();
                if (i6 < 65536) {
                    stringBuffer.append((char) i6);
                    ((StringToken) token2).string = new String(stringBuffer);
                }
                string = REUtil.m70006c(i6);
            } else {
                string = token.getString();
            }
            stringBuffer.append(string);
            ((StringToken) token2).string = new String(stringBuffer);
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public Token getChild(int i) {
            return (Token) this.children.elementAt(i);
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public int size() {
            Vector vector = this.children;
            if (vector == null) {
                return 0;
            }
            return vector.size();
        }

        @Override // org.apache.xerces.impl.xpath.regex.Token
        public String toString(int i) {
            StringBuffer stringBuffer;
            String str;
            StringBuffer stringBuffer2;
            String str2;
            if (this.type != 1) {
                if (this.children.size() == 2 && getChild(1).type == 7) {
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(getChild(0).toString(i));
                    str = "?";
                } else {
                    if (this.children.size() != 2 || getChild(0).type != 7) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(((Token) this.children.elementAt(0)).toString(i));
                        for (int i2 = 1; i2 < this.children.size(); i2++) {
                            stringBuffer3.append('|');
                            stringBuffer3.append(((Token) this.children.elementAt(i2)).toString(i));
                        }
                        return new String(stringBuffer3);
                    }
                    stringBuffer = new StringBuffer();
                    stringBuffer.append(getChild(1).toString(i));
                    str = "??";
                }
                stringBuffer.append(str);
                return stringBuffer.toString();
            }
            if (this.children.size() != 2) {
                StringBuffer stringBuffer4 = new StringBuffer();
                for (int i3 = 0; i3 < this.children.size(); i3++) {
                    stringBuffer4.append(((Token) this.children.elementAt(i3)).toString(i));
                }
                return new String(stringBuffer4);
            }
            Token child = getChild(0);
            Token child2 = getChild(1);
            if (child2.type == 3 && child2.getChild(0) == child) {
                stringBuffer2 = new StringBuffer();
                stringBuffer2.append(child.toString(i));
                str2 = "+";
            } else {
                if (child2.type != 9 || child2.getChild(0) != child) {
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append(child.toString(i));
                    stringBuffer5.append(child2.toString(i));
                    return stringBuffer5.toString();
                }
                stringBuffer2 = new StringBuffer();
                stringBuffer2.append(child.toString(i));
                str2 = "+?";
            }
            stringBuffer2.append(str2);
            return stringBuffer2.toString();
        }
    }

    /* renamed from: org.apache.xerces.impl.xpath.regex.Token$a */
    /* loaded from: classes13.dex */
    public static class C20039a {

        /* renamed from: a */
        public Token f112587a = null;

        /* renamed from: b */
        public int f112588b = 0;
    }

    static {
        RangeToken createRange = createRange();
        token_0to9 = createRange;
        createRange.addRange(48, 57);
        RangeToken createRange2 = createRange();
        token_wordchars = createRange2;
        createRange2.addRange(48, 57);
        token_wordchars.addRange(65, 90);
        token_wordchars.addRange(95, 95);
        token_wordchars.addRange(97, 122);
        RangeToken createRange3 = createRange();
        token_spaces = createRange3;
        createRange3.addRange(9, 9);
        token_spaces.addRange(10, 10);
        token_spaces.addRange(12, 12);
        token_spaces.addRange(13, 13);
        token_spaces.addRange(32, 32);
        token_not_0to9 = complementRanges(token_0to9);
        token_not_wordchars = complementRanges(token_wordchars);
        token_not_spaces = complementRanges(token_spaces);
        categories = new Hashtable();
        categories2 = new Hashtable();
        categoryNames = new String[]{"Cn", "Lu", "Ll", "Lt", "Lm", "Lo", "Mn", "Me", "Mc", "Nd", "Nl", "No", "Zs", "Zl", "Zp", "Cc", "Cf", null, "Co", "Cs", "Pd", "Ps", "Pe", "Pc", "Po", "Sm", "Sc", "Sk", "So", "Pi", "Pf", "L", "M", "N", Constants.HASIDCALL_INDEX_SIG, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "P", "S"};
        blockNames = new String[]{"Basic Latin", "Latin-1 Supplement", "Latin Extended-A", "Latin Extended-B", "IPA Extensions", "Spacing Modifier Letters", "Combining Diacritical Marks", "Greek", "Cyrillic", "Armenian", "Hebrew", "Arabic", "Syriac", "Thaana", OcrValues.LANG_DEVANAGARI, "Bengali", "Gurmukhi", "Gujarati", "Oriya", "Tamil", "Telugu", "Kannada", "Malayalam", "Sinhala", "Thai", "Lao", "Tibetan", "Myanmar", "Georgian", "Hangul Jamo", "Ethiopic", "Cherokee", "Unified Canadian Aboriginal Syllabics", "Ogham", "Runic", "Khmer", "Mongolian", "Latin Extended Additional", "Greek Extended", "General Punctuation", "Superscripts and Subscripts", "Currency Symbols", "Combining Marks for Symbols", "Letterlike Symbols", "Number Forms", "Arrows", "Mathematical Operators", "Miscellaneous Technical", "Control Pictures", "Optical Character Recognition", "Enclosed Alphanumerics", "Box Drawing", "Block Elements", "Geometric Shapes", "Miscellaneous Symbols", "Dingbats", "Braille Patterns", "CJK Radicals Supplement", "Kangxi Radicals", "Ideographic Description Characters", "CJK Symbols and Punctuation", "Hiragana", "Katakana", "Bopomofo", "Hangul Compatibility Jamo", "Kanbun", "Bopomofo Extended", "Enclosed CJK Letters and Months", "CJK Compatibility", "CJK Unified Ideographs Extension A", "CJK Unified Ideographs", "Yi Syllables", "Yi Radicals", "Hangul Syllables", "Private Use", "CJK Compatibility Ideographs", "Alphabetic Presentation Forms", "Arabic Presentation Forms-A", "Combining Half Marks", "CJK Compatibility Forms", "Small Form Variants", "Arabic Presentation Forms-B", "Specials", "Halfwidth and Fullwidth Forms", "Old Italic", "Gothic", "Deseret", "Byzantine Musical Symbols", "Musical Symbols", "Mathematical Alphanumeric Symbols", "CJK Unified Ideographs Extension B", "CJK Compatibility Ideographs Supplement", "Tags"};
        nonBMPBlockRanges = new int[]{66304, 66351, 66352, 66383, 66560, 66639, 118784, 119039, 119040, 119295, 119808, 120831, 131072, 173782, 194560, 195103, ArchiveFormatCode.ARCHIVE_FORMAT_7ZIP, 917631};
        nonxs = null;
        token_grapheme = null;
        token_ccs = null;
    }

    public Token(int i) {
        this.type = i;
    }

    public static Token complementRanges(Token token) {
        return RangeToken.complementRanges(token);
    }

    private static CharToken createAnchor(int i) {
        tokens++;
        return new CharToken(8, i);
    }

    public static StringToken createBackReference(int i) {
        tokens++;
        return new StringToken(12, null, i);
    }

    public static CharToken createChar(int i) {
        tokens++;
        return new CharToken(0, i);
    }

    public static ClosureToken createClosure(Token token) {
        tokens++;
        return new ClosureToken(3, token);
    }

    public static ConcatToken createConcat(Token token, Token token2) {
        tokens++;
        return new ConcatToken(token, token2);
    }

    public static ConditionToken createCondition(int i, Token token, Token token2, Token token3) {
        tokens++;
        return new ConditionToken(i, token, token2, token3);
    }

    public static Token createEmpty() {
        return token_empty;
    }

    public static ParenToken createLook(int i, Token token) {
        tokens++;
        return new ParenToken(i, token, 0);
    }

    public static ModifierToken createModifierGroup(Token token, int i, int i2) {
        tokens++;
        return new ModifierToken(token, i, i2);
    }

    public static ClosureToken createNGClosure(Token token) {
        tokens++;
        return new ClosureToken(9, token);
    }

    public static RangeToken createNRange() {
        tokens++;
        return new RangeToken(5);
    }

    public static ParenToken createParen(Token token, int i) {
        tokens++;
        return new ParenToken(6, token, i);
    }

    public static RangeToken createRange() {
        tokens++;
        return new RangeToken(4);
    }

    public static StringToken createString(String str) {
        tokens++;
        return new StringToken(10, str, 0);
    }

    public static UnionToken createUnion() {
        tokens++;
        return new UnionToken(2);
    }

    public static synchronized Token getCombiningCharacterSequence() {
        synchronized (Token.class) {
            Token token = token_ccs;
            if (token != null) {
                return token;
            }
            ConcatToken createConcat = createConcat(getRange("M", false), createClosure(getRange("M", true)));
            token_ccs = createConcat;
            return createConcat;
        }
    }

    public static synchronized Token getGraphemePattern() {
        synchronized (Token.class) {
            Token token = token_grapheme;
            if (token != null) {
                return token;
            }
            RangeToken createRange = createRange();
            createRange.mergeRanges(getRange("ASSIGNED", true));
            createRange.subtractRanges(getRange("M", true));
            createRange.subtractRanges(getRange(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, true));
            RangeToken createRange2 = createRange();
            for (int i = 0; i < 11; i++) {
                createRange2.addRange(i, i);
            }
            RangeToken createRange3 = createRange();
            createRange3.mergeRanges(getRange("M", true));
            createRange3.addRange(4448, 4607);
            createRange3.addRange(65438, 65439);
            UnionToken createUnion = createUnion();
            createUnion.addChild(createRange);
            createUnion.addChild(token_empty);
            UnionToken createUnion2 = createUnion();
            createUnion2.addChild(createConcat(createRange2, getRange("L", true)));
            createUnion2.addChild(createRange3);
            ConcatToken createConcat = createConcat(createUnion, createClosure(createUnion2));
            token_grapheme = createConcat;
            return createConcat;
        }
    }

    public static RangeToken getRange(String str, boolean z) {
        Hashtable hashtable = categories;
        if (hashtable.size() == 0) {
            synchronized (hashtable) {
                int length = categoryNames.length;
                Token[] tokenArr = new Token[length];
                for (int i = 0; i < length; i++) {
                    tokenArr[i] = createRange();
                }
                int i2 = 0;
                while (true) {
                    char c = '\"';
                    if (i2 >= 65536) {
                        tokenArr[0].addRange(65536, 1114111);
                        tokenArr[35].addRange(65536, 1114111);
                        for (int i3 = 0; i3 < length; i3++) {
                            String[] strArr = categoryNames;
                            if (strArr[i3] != null) {
                                if (i3 == 0) {
                                    tokenArr[i3].addRange(65536, 1114111);
                                }
                                categories.put(strArr[i3], tokenArr[i3]);
                                categories2.put(strArr[i3], complementRanges(tokenArr[i3]));
                            }
                        }
                        StringBuffer stringBuffer = new StringBuffer(50);
                        int i4 = 0;
                        while (true) {
                            String[] strArr2 = blockNames;
                            if (i4 >= strArr2.length) {
                                setAlias("ASSIGNED", "Cn", false);
                                setAlias("UNASSIGNED", "Cn", true);
                                RangeToken createRange = createRange();
                                createRange.addRange(0, 1114111);
                                Hashtable hashtable2 = categories;
                                hashtable2.put("ALL", createRange);
                                Hashtable hashtable3 = categories2;
                                hashtable3.put("ALL", complementRanges(createRange));
                                registerNonXS("ASSIGNED");
                                registerNonXS("UNASSIGNED");
                                registerNonXS("ALL");
                                RangeToken createRange2 = createRange();
                                createRange2.mergeRanges(tokenArr[1]);
                                createRange2.mergeRanges(tokenArr[2]);
                                createRange2.mergeRanges(tokenArr[5]);
                                hashtable2.put("IsAlpha", createRange2);
                                hashtable3.put("IsAlpha", complementRanges(createRange2));
                                registerNonXS("IsAlpha");
                                RangeToken createRange3 = createRange();
                                createRange3.mergeRanges(createRange2);
                                createRange3.mergeRanges(tokenArr[9]);
                                hashtable2.put("IsAlnum", createRange3);
                                hashtable3.put("IsAlnum", complementRanges(createRange3));
                                registerNonXS("IsAlnum");
                                RangeToken createRange4 = createRange();
                                createRange4.mergeRanges(token_spaces);
                                createRange4.mergeRanges(tokenArr[34]);
                                hashtable2.put("IsSpace", createRange4);
                                hashtable3.put("IsSpace", complementRanges(createRange4));
                                registerNonXS("IsSpace");
                                RangeToken createRange5 = createRange();
                                createRange5.mergeRanges(createRange3);
                                createRange5.addRange(95, 95);
                                hashtable2.put("IsWord", createRange5);
                                hashtable3.put("IsWord", complementRanges(createRange5));
                                registerNonXS("IsWord");
                                RangeToken createRange6 = createRange();
                                createRange6.addRange(0, 127);
                                hashtable2.put("IsASCII", createRange6);
                                hashtable3.put("IsASCII", complementRanges(createRange6));
                                registerNonXS("IsASCII");
                                RangeToken createRange7 = createRange();
                                createRange7.mergeRanges(tokenArr[35]);
                                createRange7.addRange(32, 32);
                                hashtable2.put("IsGraph", complementRanges(createRange7));
                                hashtable3.put("IsGraph", createRange7);
                                registerNonXS("IsGraph");
                                RangeToken createRange8 = createRange();
                                createRange8.addRange(48, 57);
                                createRange8.addRange(65, 70);
                                createRange8.addRange(97, 102);
                                hashtable2.put("IsXDigit", complementRanges(createRange8));
                                hashtable3.put("IsXDigit", createRange8);
                                registerNonXS("IsXDigit");
                                setAlias("IsDigit", "Nd", true);
                                setAlias("IsUpper", "Lu", true);
                                setAlias("IsLower", "Ll", true);
                                setAlias("IsCntrl", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, true);
                                setAlias("IsPrint", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, false);
                                setAlias("IsPunct", "P", true);
                                registerNonXS("IsDigit");
                                registerNonXS("IsUpper");
                                registerNonXS("IsLower");
                                registerNonXS("IsCntrl");
                                registerNonXS("IsPrint");
                                registerNonXS("IsPunct");
                                setAlias("alpha", "IsAlpha", true);
                                setAlias("alnum", "IsAlnum", true);
                                setAlias("ascii", "IsASCII", true);
                                setAlias("cntrl", "IsCntrl", true);
                                setAlias(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DIGIT, "IsDigit", true);
                                setAlias("graph", "IsGraph", true);
                                setAlias("lower", "IsLower", true);
                                setAlias("print", "IsPrint", true);
                                setAlias("punct", "IsPunct", true);
                                setAlias("space", "IsSpace", true);
                                setAlias("upper", "IsUpper", true);
                                setAlias("word", "IsWord", true);
                                setAlias("xdigit", "IsXDigit", true);
                                registerNonXS("alpha");
                                registerNonXS("alnum");
                                registerNonXS("ascii");
                                registerNonXS("cntrl");
                                registerNonXS(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_DIGIT);
                                registerNonXS("graph");
                                registerNonXS("lower");
                                registerNonXS("print");
                                registerNonXS("punct");
                                registerNonXS("space");
                                registerNonXS("upper");
                                registerNonXS("word");
                                registerNonXS("xdigit");
                            } else {
                                RangeToken createRange9 = createRange();
                                if (i4 < 84) {
                                    int i5 = i4 * 2;
                                    createRange9.addRange(blockRanges.charAt(i5), blockRanges.charAt(i5 + 1));
                                } else {
                                    int i6 = (i4 - 84) * 2;
                                    int[] iArr = nonBMPBlockRanges;
                                    createRange9.addRange(iArr[i6], iArr[i6 + 1]);
                                }
                                String str2 = strArr2[i4];
                                if (str2.equals("Specials")) {
                                    createRange9.addRange(65520, Utf8.REPLACEMENT_CODE_POINT);
                                }
                                if (str2.equals("Private Use")) {
                                    createRange9.addRange(ArchiveFormatCode.ARCHIVE_FORMAT_WARC, 1048573);
                                    createRange9.addRange(1048576, 1114109);
                                }
                                categories.put(str2, createRange9);
                                categories2.put(str2, complementRanges(createRange9));
                                stringBuffer.setLength(0);
                                stringBuffer.append("Is");
                                if (str2.indexOf(32) >= 0) {
                                    for (int i7 = 0; i7 < str2.length(); i7++) {
                                        if (str2.charAt(i7) != ' ') {
                                            stringBuffer.append(str2.charAt(i7));
                                        }
                                    }
                                } else {
                                    stringBuffer.append(str2);
                                }
                                setAlias(stringBuffer.toString(), str2, true);
                                i4++;
                            }
                        }
                    } else {
                        int type = Character.getType((char) i2);
                        if (type == 21 || type == 22) {
                            if (i2 == 171 || i2 == 8216 || i2 == 8219 || i2 == 8220 || i2 == 8223 || i2 == 8249) {
                                type = 29;
                            }
                            if (i2 == 187 || i2 == 8217 || i2 == 8221 || i2 == 8250) {
                                type = 30;
                            }
                        }
                        tokenArr[type].addRange(i2, i2);
                        switch (type) {
                            case 0:
                            case 15:
                            case 16:
                            case 18:
                            case 19:
                                c = '#';
                                break;
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                                c = XmlEscapers.f35498b;
                                break;
                            case 6:
                            case 7:
                            case 8:
                                c = ' ';
                                break;
                            case 9:
                            case 10:
                            case 11:
                                c = PublicSuffixDatabase.f103895g;
                                break;
                            case 12:
                            case 13:
                            case 14:
                                break;
                            case 17:
                            default:
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("org.apache.xerces.utils.regex.Token#getRange(): Unknown Unicode category: ");
                                stringBuffer2.append(type);
                                throw new RuntimeException(stringBuffer2.toString());
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 29:
                            case 30:
                                c = '$';
                                break;
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                                c = '%';
                                break;
                        }
                        tokenArr[c].addRange(i2, i2);
                        i2++;
                    }
                }
            }
        }
        return (RangeToken) (z ? categories : categories2).get(str);
    }

    public static boolean isRegisterNonXS(String str) {
        Hashtable hashtable = nonxs;
        if (hashtable == null) {
            return false;
        }
        return hashtable.containsKey(str);
    }

    private static final boolean isSet(int i, int i2) {
        return (i & i2) == i2;
    }

    private final boolean isShorterThan(Token token) {
        if (token == null) {
            return false;
        }
        if (this.type != 10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Internal Error: Illegal type: ");
            stringBuffer.append(this.type);
            throw new RuntimeException(stringBuffer.toString());
        }
        int length = getString().length();
        if (token.type == 10) {
            return length < token.getString().length();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Internal Error: Illegal type: ");
        stringBuffer2.append(token.type);
        throw new RuntimeException(stringBuffer2.toString());
    }

    public static void registerNonXS(String str) {
        if (nonxs == null) {
            nonxs = new Hashtable();
        }
        nonxs.put(str, str);
    }

    private static void setAlias(String str, String str2, boolean z) {
        Hashtable hashtable = categories;
        Token token = (Token) hashtable.get(str2);
        Hashtable hashtable2 = categories2;
        Token token2 = (Token) hashtable2.get(str2);
        if (z) {
            hashtable.put(str, token);
            hashtable2.put(str, token2);
        } else {
            hashtable2.put(str, token);
            hashtable.put(str, token2);
        }
    }

    public void addChild(Token token) {
        throw new RuntimeException("Not supported.");
    }

    public void addRange(int i, int i2) {
        throw new RuntimeException("Not supported.");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processFallThroughCases(RegionMaker.java:841)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:800)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    public final int analyzeFirstCharacter(org.apache.xerces.impl.xpath.regex.RangeToken r8, int r9) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.Token.analyzeFirstCharacter(org.apache.xerces.impl.xpath.regex.RangeToken, int):int");
    }

    public void compactRanges() {
        throw new RuntimeException("Not supported.");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void findFixedString(org.apache.xerces.impl.xpath.regex.Token.C20039a r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.type
            r1 = 0
            r2 = 0
            switch(r0) {
                case 0: goto L70;
                case 1: goto L49;
                case 2: goto L46;
                case 3: goto L46;
                case 4: goto L46;
                case 5: goto L46;
                case 6: goto L3e;
                case 7: goto L46;
                case 8: goto L46;
                case 9: goto L46;
                case 10: goto L39;
                case 11: goto L46;
                case 12: goto L46;
                default: goto L7;
            }
        L7:
            switch(r0) {
                case 20: goto L46;
                case 21: goto L46;
                case 22: goto L46;
                case 23: goto L46;
                case 24: goto L3e;
                case 25: goto L23;
                case 26: goto L46;
                default: goto La;
            }
        La:
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            java.lang.StringBuffer r7 = new java.lang.StringBuffer
            r7.<init>()
            java.lang.String r0 = "Token#findFixedString(): Invalid Type: "
            r7.append(r0)
            int r5 = r5.type
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            r6.<init>(r5)
            throw r6
        L23:
            r0 = r5
            org.apache.xerces.impl.xpath.regex.Token$ModifierToken r0 = (org.apache.xerces.impl.xpath.regex.Token.ModifierToken) r0
            int r1 = r0.getOptions()
            r7 = r7 | r1
            int r0 = r0.getOptionsMask()
            int r0 = ~r0
            r7 = r7 & r0
            org.apache.xerces.impl.xpath.regex.Token r5 = r5.getChild(r2)
            r5.findFixedString(r6, r7)
            return
        L39:
            r6.f112587a = r5
            r6.f112588b = r7
            return
        L3e:
            org.apache.xerces.impl.xpath.regex.Token r5 = r5.getChild(r2)
            r5.findFixedString(r6, r7)
            return
        L46:
            r6.f112587a = r1
            return
        L49:
            r0 = r2
        L4a:
            int r3 = r5.size()
            if (r2 < r3) goto L55
            r6.f112587a = r1
            r6.f112588b = r0
            return
        L55:
            org.apache.xerces.impl.xpath.regex.Token r3 = r5.getChild(r2)
            r3.findFixedString(r6, r7)
            if (r1 == 0) goto L66
            org.apache.xerces.impl.xpath.regex.Token r3 = r6.f112587a
            boolean r3 = r1.isShorterThan(r3)
            if (r3 == 0) goto L6d
        L66:
            org.apache.xerces.impl.xpath.regex.Token r0 = r6.f112587a
            int r1 = r6.f112588b
            r4 = r1
            r1 = r0
            r0 = r4
        L6d:
            int r2 = r2 + 1
            goto L4a
        L70:
            r6.f112587a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.Token.findFixedString(org.apache.xerces.impl.xpath.regex.Token$a, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChar() {
        return -1;
    }

    public Token getChild(int i) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMax() {
        return -1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int getMaxLength() {
        /*
            r4 = this;
            int r0 = r4.type
            r1 = -1
            r2 = 1
            r3 = 0
            switch(r0) {
                case 0: goto L92;
                case 1: goto L7b;
                case 2: goto L50;
                case 3: goto L3b;
                case 4: goto L39;
                case 5: goto L39;
                case 6: goto L30;
                case 7: goto L2f;
                case 8: goto L2f;
                case 9: goto L3b;
                case 10: goto L26;
                case 11: goto L39;
                case 12: goto L25;
                default: goto L8;
            }
        L8:
            switch(r0) {
                case 20: goto L24;
                case 21: goto L24;
                case 22: goto L24;
                case 23: goto L24;
                case 24: goto L30;
                case 25: goto L30;
                case 26: goto L50;
                default: goto Lb;
            }
        Lb:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            java.lang.String r2 = "Token#getMaxLength(): Invalid Type: "
            r1.append(r2)
            int r4 = r4.type
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4)
            throw r0
        L24:
            return r3
        L25:
            return r1
        L26:
            java.lang.String r4 = r4.getString()
            int r4 = r4.length()
            return r4
        L2f:
            return r3
        L30:
            org.apache.xerces.impl.xpath.regex.Token r4 = r4.getChild(r3)
            int r4 = r4.getMaxLength()
            return r4
        L39:
            r4 = 2
            return r4
        L3b:
            int r0 = r4.getMax()
            if (r0 < 0) goto L4f
            int r0 = r4.getMax()
            org.apache.xerces.impl.xpath.regex.Token r4 = r4.getChild(r3)
            int r4 = r4.getMaxLength()
            int r0 = r0 * r4
            return r0
        L4f:
            return r1
        L50:
            int r0 = r4.size()
            if (r0 != 0) goto L57
            return r3
        L57:
            org.apache.xerces.impl.xpath.regex.Token r0 = r4.getChild(r3)
            int r0 = r0.getMaxLength()
        L5f:
            if (r0 < 0) goto L79
            int r3 = r4.size()
            if (r2 < r3) goto L68
            goto L79
        L68:
            org.apache.xerces.impl.xpath.regex.Token r3 = r4.getChild(r2)
            int r3 = r3.getMaxLength()
            if (r3 >= 0) goto L73
            goto L7a
        L73:
            if (r3 <= r0) goto L76
            r0 = r3
        L76:
            int r2 = r2 + 1
            goto L5f
        L79:
            r1 = r0
        L7a:
            return r1
        L7b:
            r0 = r3
        L7c:
            int r2 = r4.size()
            if (r3 < r2) goto L83
            return r0
        L83:
            org.apache.xerces.impl.xpath.regex.Token r2 = r4.getChild(r3)
            int r2 = r2.getMaxLength()
            if (r2 >= 0) goto L8e
            return r1
        L8e:
            int r0 = r0 + r2
            int r3 = r3 + 1
            goto L7c
        L92:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.Token.getMaxLength():int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMin() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getMinLength() {
        /*
            r3 = this;
            int r0 = r3.type
            r1 = 1
            r2 = 0
            switch(r0) {
                case 0: goto L84;
                case 1: goto L70;
                case 2: goto L4c;
                case 3: goto L37;
                case 4: goto L84;
                case 5: goto L84;
                case 6: goto L2e;
                case 7: goto L2d;
                case 8: goto L2d;
                case 9: goto L37;
                case 10: goto L24;
                case 11: goto L84;
                case 12: goto L23;
                default: goto L7;
            }
        L7:
            switch(r0) {
                case 20: goto L23;
                case 21: goto L23;
                case 22: goto L23;
                case 23: goto L23;
                case 24: goto L2e;
                case 25: goto L2e;
                case 26: goto L4c;
                default: goto La;
            }
        La:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            java.lang.String r2 = "Token#getMinLength(): Invalid Type: "
            r1.append(r2)
            int r3 = r3.type
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r0.<init>(r3)
            throw r0
        L23:
            return r2
        L24:
            java.lang.String r3 = r3.getString()
            int r3 = r3.length()
            return r3
        L2d:
            return r2
        L2e:
            org.apache.xerces.impl.xpath.regex.Token r3 = r3.getChild(r2)
            int r3 = r3.getMinLength()
            return r3
        L37:
            int r0 = r3.getMin()
            if (r0 < 0) goto L4b
            int r0 = r3.getMin()
            org.apache.xerces.impl.xpath.regex.Token r3 = r3.getChild(r2)
            int r3 = r3.getMinLength()
            int r0 = r0 * r3
            return r0
        L4b:
            return r2
        L4c:
            int r0 = r3.size()
            if (r0 != 0) goto L53
            return r2
        L53:
            org.apache.xerces.impl.xpath.regex.Token r0 = r3.getChild(r2)
            int r0 = r0.getMinLength()
        L5b:
            int r2 = r3.size()
            if (r1 < r2) goto L62
            return r0
        L62:
            org.apache.xerces.impl.xpath.regex.Token r2 = r3.getChild(r1)
            int r2 = r2.getMinLength()
            if (r2 >= r0) goto L6d
            r0 = r2
        L6d:
            int r1 = r1 + 1
            goto L5b
        L70:
            r0 = r2
        L71:
            int r1 = r3.size()
            if (r2 < r1) goto L78
            return r0
        L78:
            org.apache.xerces.impl.xpath.regex.Token r1 = r3.getChild(r2)
            int r1 = r1.getMinLength()
            int r0 = r0 + r1
            int r2 = r2 + 1
            goto L71
        L84:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.Token.getMinLength():int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getParenNumber() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getReferenceNumber() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getString() {
        return null;
    }

    public void intersectRanges(Token token) {
        throw new RuntimeException("Not supported.");
    }

    boolean match(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("NFAArrow#match(): Internal error: ");
        stringBuffer.append(this.type);
        throw new RuntimeException(stringBuffer.toString());
    }

    public void mergeRanges(Token token) {
        throw new RuntimeException("Not supported.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMax(int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMin(int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int size() {
        return 0;
    }

    public void sortRanges() {
        throw new RuntimeException("Not supported.");
    }

    public void subtractRanges(Token token) {
        throw new RuntimeException("Not supported.");
    }

    public String toString() {
        return toString(0);
    }

    public static UnionToken createConcat() {
        tokens++;
        return new UnionToken(1);
    }

    public static RangeToken getRange(String str, boolean z, boolean z2) {
        RangeToken range = getRange(str, z);
        if (z2 && range != null && isRegisterNonXS(str)) {
            return null;
        }
        return range;
    }

    public String toString(int i) {
        return this.type == 11 ? "." : "";
    }
}
