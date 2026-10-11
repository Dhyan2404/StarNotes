package org.apache.xerces.impl.xpath.regex;

import java.io.PrintStream;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class RangeToken extends Token implements Serializable {
    private static final int MAPSIZE = 256;
    private static final long serialVersionUID = -553983121197679934L;
    boolean compacted;
    RangeToken icaseCache;
    int[] map;
    int nonMapIndex;
    int[] ranges;
    boolean sorted;

    public RangeToken(int i) {
        super(i);
        this.icaseCache = null;
        this.map = null;
        setSorted(false);
    }

    public static Token complementRanges(Token token) {
        int i = token.type;
        if (i != 4 && i != 5) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Token#complementRanges(): must be RANGE: ");
            stringBuffer.append(token.type);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        RangeToken rangeToken = (RangeToken) token;
        rangeToken.sortRanges();
        rangeToken.compactRanges();
        int[] iArr = rangeToken.ranges;
        int length = iArr.length + 2;
        int i2 = 0;
        if (iArr[0] == 0) {
            length -= 2;
        }
        int i3 = iArr[iArr.length - 1];
        if (i3 == 1114111) {
            length -= 2;
        }
        RangeToken createRange = Token.createRange();
        int[] iArr2 = new int[length];
        createRange.ranges = iArr2;
        int[] iArr3 = rangeToken.ranges;
        if (iArr3[0] > 0) {
            iArr2[0] = 0;
            iArr2[1] = iArr3[0] - 1;
            i2 = 2;
        }
        int i4 = 1;
        while (true) {
            int[] iArr4 = rangeToken.ranges;
            if (i4 >= iArr4.length - 2) {
                break;
            }
            int[] iArr5 = createRange.ranges;
            int i5 = i2 + 1;
            iArr5[i2] = iArr4[i4] + 1;
            i2 = i5 + 1;
            iArr5[i5] = iArr4[i4 + 1] - 1;
            i4 += 2;
        }
        if (i3 != 1114111) {
            int[] iArr6 = createRange.ranges;
            iArr6[i2] = i3 + 1;
            iArr6[i2 + 1] = 1114111;
        }
        createRange.setCompacted();
        return createRange;
    }

    private void createMap() {
        int[] iArr = new int[8];
        int length = this.ranges.length;
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            iArr[i2] = 0;
        }
        while (true) {
            int[] iArr2 = this.ranges;
            if (i >= iArr2.length) {
                break;
            }
            int i3 = iArr2[i];
            int i4 = iArr2[i + 1];
            if (i3 >= 256) {
                break;
            }
            while (i3 <= i4 && i3 < 256) {
                int i5 = i3 / 32;
                iArr[i5] = iArr[i5] | (1 << (i3 & 31));
                i3++;
            }
            if (i4 >= 256) {
                break;
            } else {
                i += 2;
            }
        }
        length = i;
        this.map = iArr;
        this.nonMapIndex = length;
    }

    private static String escapeCharInCharClass(int i) {
        StringBuffer stringBuffer;
        String str;
        String stringBuffer2;
        int length;
        if (i == 9) {
            return "\\t";
        }
        if (i == 10) {
            return "\\n";
        }
        if (i == 12) {
            return "\\f";
        }
        if (i == 13) {
            return "\\r";
        }
        if (i == 27) {
            return "\\e";
        }
        if (i != 44 && i != 45) {
            switch (i) {
                case 91:
                case 92:
                case 93:
                case 94:
                    break;
                default:
                    if (i >= 32) {
                        if (i < 65536) {
                            stringBuffer = new StringBuffer();
                            str = "";
                            stringBuffer.append(str);
                            stringBuffer.append((char) i);
                            break;
                        } else {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("0");
                            stringBuffer3.append(Integer.toHexString(i));
                            stringBuffer2 = stringBuffer3.toString();
                            stringBuffer = new StringBuffer();
                            stringBuffer.append("\\v");
                            length = stringBuffer2.length() - 6;
                        }
                    } else {
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append("0");
                        stringBuffer4.append(Integer.toHexString(i));
                        stringBuffer2 = stringBuffer4.toString();
                        stringBuffer = new StringBuffer();
                        stringBuffer.append("\\x");
                        length = stringBuffer2.length() - 2;
                    }
                    stringBuffer.append(stringBuffer2.substring(length, stringBuffer2.length()));
                    break;
            }
            return stringBuffer.toString();
        }
        stringBuffer = new StringBuffer();
        str = "\\";
        stringBuffer.append(str);
        stringBuffer.append((char) i);
        return stringBuffer.toString();
    }

    private final boolean isCompacted() {
        return this.compacted;
    }

    private final boolean isSorted() {
        return this.sorted;
    }

    private final void setCompacted() {
        this.compacted = true;
    }

    private final void setSorted(boolean z) {
        this.sorted = z;
        if (z) {
            return;
        }
        this.compacted = false;
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public void addRange(int i, int i2) {
        this.icaseCache = null;
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        int[] iArr = this.ranges;
        if (iArr == null) {
            this.ranges = r0;
            int[] iArr2 = {i, i2};
            setSorted(true);
            return;
        }
        int length = iArr.length;
        int i3 = length - 1;
        if (iArr[i3] + 1 == i) {
            iArr[i3] = i2;
            return;
        }
        int[] iArr3 = new int[length + 2];
        System.arraycopy(iArr, 0, iArr3, 0, length);
        this.ranges = iArr3;
        if (iArr3[i3] >= i) {
            setSorted(false);
        }
        int[] iArr4 = this.ranges;
        iArr4[length] = i;
        iArr4[length + 1] = i2;
        if (this.sorted) {
            return;
        }
        sortRanges();
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public void compactRanges() {
        int i;
        int i2;
        int i3;
        int[] iArr = this.ranges;
        if (iArr == null || iArr.length <= 2 || isCompacted()) {
            return;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr2 = this.ranges;
            if (i4 >= iArr2.length) {
                if (i5 != iArr2.length) {
                    int[] iArr3 = new int[i5];
                    System.arraycopy(iArr2, 0, iArr3, 0, i5);
                    this.ranges = iArr3;
                }
                setCompacted();
                return;
            }
            if (i5 != i4) {
                int i6 = i4 + 1;
                iArr2[i5] = iArr2[i4];
                i = i6 + 1;
                iArr2[i5 + 1] = iArr2[i6];
            } else {
                i = i4 + 2;
            }
            int i7 = i5 + 1;
            int i8 = iArr2[i7];
            while (true) {
                int[] iArr4 = this.ranges;
                if (i < iArr4.length && (i2 = i8 + 1) >= (i3 = iArr4[i])) {
                    if (i2 == i3) {
                        i8 = iArr4[i + 1];
                        iArr4[i7] = i8;
                    } else {
                        int i9 = i + 1;
                        int i10 = iArr4[i9];
                        if (i8 < i10) {
                            if (i8 >= i10) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Token#compactRanges(): Internel Error: [");
                                stringBuffer.append(this.ranges[i5]);
                                stringBuffer.append(",");
                                stringBuffer.append(this.ranges[i7]);
                                stringBuffer.append("] [");
                                stringBuffer.append(this.ranges[i]);
                                stringBuffer.append(",");
                                stringBuffer.append(this.ranges[i9]);
                                stringBuffer.append(IteratorUtils.f104924b);
                                throw new RuntimeException(stringBuffer.toString());
                            }
                            iArr4[i7] = i10;
                            i += 2;
                            i8 = i10;
                        }
                    }
                    i += 2;
                }
            }
            i5 += 2;
            i4 = i;
        }
    }

    public void dumpRanges() {
        PrintStream printStream;
        String str;
        System.err.print("RANGE: ");
        if (this.ranges == null) {
            printStream = System.err;
            str = " NULL";
        } else {
            for (int i = 0; i < this.ranges.length; i += 2) {
                PrintStream printStream2 = System.err;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(IteratorUtils.f104923a);
                stringBuffer.append(this.ranges[i]);
                stringBuffer.append(",");
                stringBuffer.append(this.ranges[i + 1]);
                stringBuffer.append("] ");
                printStream2.print(stringBuffer.toString());
            }
            printStream = System.err;
            str = "";
        }
        printStream.println(str);
    }

    public synchronized RangeToken getCaseInsensitiveToken() {
        RangeToken rangeToken = this.icaseCache;
        if (rangeToken != null) {
            return rangeToken;
        }
        RangeToken createRange = this.type == 4 ? Token.createRange() : Token.createNRange();
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.ranges;
            if (i2 >= iArr.length) {
                break;
            }
            for (int i3 = iArr[i2]; i3 <= this.ranges[i2 + 1]; i3++) {
                if (i3 > 65535) {
                    createRange.addRange(i3, i3);
                } else {
                    char upperCase = Character.toUpperCase((char) i3);
                    createRange.addRange(upperCase, upperCase);
                }
            }
            i2 += 2;
        }
        RangeToken createRange2 = this.type == 4 ? Token.createRange() : Token.createNRange();
        while (true) {
            int[] iArr2 = createRange.ranges;
            if (i >= iArr2.length) {
                createRange2.mergeRanges(createRange);
                createRange2.mergeRanges(this);
                createRange2.compactRanges();
                this.icaseCache = createRange2;
                return createRange2;
            }
            for (int i4 = iArr2[i]; i4 <= createRange.ranges[i + 1]; i4++) {
                if (i4 > 65535) {
                    createRange2.addRange(i4, i4);
                } else {
                    char lowerCase = Character.toLowerCase((char) i4);
                    createRange2.addRange(lowerCase, lowerCase);
                }
            }
            i += 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c4, code lost:
    
        r13 = r12.ranges;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c7, code lost:
    
        if (r2 < r13.length) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d1, code lost:
    
        r3 = r4 + 1;
        r5 = r2 + 1;
        r0[r4] = r13[r2];
        r4 = r3 + 1;
        r2 = r5 + 1;
        r0[r3] = r13[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
    
        r13 = new int[r4];
        r12.ranges = r13;
        java.lang.System.arraycopy(r0, 0, r13, 0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d0, code lost:
    
        return;
     */
    @Override // org.apache.xerces.impl.xpath.regex.Token
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intersectRanges(org.apache.xerces.impl.xpath.regex.Token r13) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.RangeToken.intersectRanges(org.apache.xerces.impl.xpath.regex.Token):void");
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public boolean match(int i) {
        if (this.map == null) {
            createMap();
        }
        if (this.type == 4) {
            if (i < 256) {
                return (this.map[i / 32] & (1 << (i & 31))) != 0;
            }
            int i2 = this.nonMapIndex;
            while (true) {
                int[] iArr = this.ranges;
                if (i2 >= iArr.length) {
                    return false;
                }
                if (iArr[i2] <= i && i <= iArr[i2 + 1]) {
                    return true;
                }
                i2 += 2;
            }
        } else {
            if (i < 256) {
                return (this.map[i / 32] & (1 << (i & 31))) == 0;
            }
            int i3 = this.nonMapIndex;
            while (true) {
                int[] iArr2 = this.ranges;
                if (i3 >= iArr2.length) {
                    return true;
                }
                if (iArr2[i3] <= i && i <= iArr2[i3 + 1]) {
                    return false;
                }
                i3 += 2;
            }
        }
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public void mergeRanges(Token token) {
        RangeToken rangeToken = (RangeToken) token;
        sortRanges();
        rangeToken.sortRanges();
        if (rangeToken.ranges == null) {
            return;
        }
        this.icaseCache = null;
        setSorted(true);
        int[] iArr = this.ranges;
        int i = 0;
        if (iArr == null) {
            int[] iArr2 = new int[rangeToken.ranges.length];
            this.ranges = iArr2;
            int[] iArr3 = rangeToken.ranges;
            System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
            return;
        }
        int[] iArr4 = new int[iArr.length + rangeToken.ranges.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr5 = this.ranges;
            if (i >= iArr5.length && i2 >= rangeToken.ranges.length) {
                this.ranges = iArr4;
                return;
            }
            if (i >= iArr5.length) {
                int i4 = i3 + 1;
                int[] iArr6 = rangeToken.ranges;
                int i5 = i2 + 1;
                iArr4[i3] = iArr6[i2];
                i3 = i4 + 1;
                i2 = i5 + 1;
                iArr4[i4] = iArr6[i5];
            } else {
                int[] iArr7 = rangeToken.ranges;
                if (i2 >= iArr7.length) {
                    int i6 = i3 + 1;
                    int i7 = i + 1;
                    iArr4[i3] = iArr5[i];
                    i3 = i6 + 1;
                    i = i7 + 1;
                    iArr4[i6] = iArr5[i7];
                } else {
                    int i8 = iArr7[i2];
                    int i9 = iArr5[i];
                    if (i8 < i9 || (i8 == i9 && iArr7[i2 + 1] < iArr5[i + 1])) {
                        int i10 = i3 + 1;
                        int i11 = i2 + 1;
                        iArr4[i3] = i8;
                        i3 = i10 + 1;
                        iArr4[i10] = iArr7[i11];
                        i2 = i11 + 1;
                    } else {
                        int i12 = i3 + 1;
                        int i13 = i + 1;
                        iArr4[i3] = i9;
                        i3 = i12 + 1;
                        iArr4[i12] = iArr5[i13];
                        i = i13 + 1;
                    }
                }
            }
        }
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public void sortRanges() {
        int[] iArr;
        if (isSorted() || (iArr = this.ranges) == null) {
            return;
        }
        for (int length = iArr.length - 4; length >= 0; length -= 2) {
            int i = 0;
            while (i <= length) {
                int[] iArr2 = this.ranges;
                int i2 = iArr2[i];
                int i3 = i + 2;
                int i4 = iArr2[i3];
                if (i2 > i4 || (i2 == i4 && iArr2[i + 1] > iArr2[i + 3])) {
                    iArr2[i3] = i2;
                    iArr2[i] = i4;
                    int i5 = i + 3;
                    int i6 = iArr2[i5];
                    int i7 = i + 1;
                    iArr2[i5] = iArr2[i7];
                    iArr2[i7] = i6;
                }
                i = i3;
            }
        }
        setSorted(true);
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public void subtractRanges(Token token) {
        if (token.type == 5) {
            intersectRanges(token);
            return;
        }
        RangeToken rangeToken = (RangeToken) token;
        if (rangeToken.ranges == null || this.ranges == null) {
            return;
        }
        this.icaseCache = null;
        sortRanges();
        compactRanges();
        rangeToken.sortRanges();
        rangeToken.compactRanges();
        int[] iArr = new int[this.ranges.length + rangeToken.ranges.length];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.ranges;
            if (i >= iArr2.length) {
                break;
            }
            int[] iArr3 = rangeToken.ranges;
            if (i2 >= iArr3.length) {
                break;
            }
            int i4 = iArr2[i];
            int i5 = i + 1;
            int i6 = iArr2[i5];
            int i7 = iArr3[i2];
            int i8 = i2 + 1;
            int i9 = iArr3[i8];
            if (i6 < i7) {
                int i10 = i3 + 1;
                iArr[i3] = i4;
                i3 = i10 + 1;
                iArr[i10] = iArr2[i5];
                i = i5 + 1;
            } else {
                if (i6 >= i7 && i4 <= i9) {
                    if (i7 > i4 || i6 > i9) {
                        if (i7 <= i4) {
                            iArr2[i] = i9 + 1;
                        } else if (i6 <= i9) {
                            int i11 = i3 + 1;
                            iArr[i3] = i4;
                            i3 = i11 + 1;
                            iArr[i11] = i7 - 1;
                        } else {
                            int i12 = i3 + 1;
                            iArr[i3] = i4;
                            i3 = i12 + 1;
                            iArr[i12] = i7 - 1;
                            iArr2[i] = i9 + 1;
                        }
                    }
                    i += 2;
                } else if (i9 >= i4) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Token#subtractRanges(): Internal Error: [");
                    stringBuffer.append(this.ranges[i]);
                    stringBuffer.append(",");
                    stringBuffer.append(this.ranges[i5]);
                    stringBuffer.append("] - [");
                    stringBuffer.append(rangeToken.ranges[i2]);
                    stringBuffer.append(",");
                    stringBuffer.append(rangeToken.ranges[i8]);
                    stringBuffer.append(IteratorUtils.f104924b);
                    throw new RuntimeException(stringBuffer.toString());
                }
                i2 += 2;
            }
        }
        while (true) {
            int[] iArr4 = this.ranges;
            if (i >= iArr4.length) {
                int[] iArr5 = new int[i3];
                this.ranges = iArr5;
                System.arraycopy(iArr, 0, iArr5, 0, i3);
                return;
            } else {
                int i13 = i3 + 1;
                int i14 = i + 1;
                iArr[i3] = iArr4[i];
                i3 = i13 + 1;
                i = i14 + 1;
                iArr[i13] = iArr4[i14];
            }
        }
    }

    @Override // org.apache.xerces.impl.xpath.regex.Token
    public String toString(int i) {
        StringBuffer stringBuffer;
        String escapeCharInCharClass;
        String escapeCharInCharClass2;
        int i2 = 0;
        if (this.type == 4) {
            if (this == Token.token_dot) {
                return ".";
            }
            if (this == Token.token_0to9) {
                return "\\d";
            }
            if (this == Token.token_wordchars) {
                return "\\w";
            }
            if (this == Token.token_spaces) {
                return "\\s";
            }
            stringBuffer = new StringBuffer();
            stringBuffer.append('[');
            while (i2 < this.ranges.length) {
                if ((i & 1024) != 0 && i2 > 0) {
                    stringBuffer.append(',');
                }
                int[] iArr = this.ranges;
                int i3 = iArr[i2];
                int i4 = i2 + 1;
                if (i3 == iArr[i4]) {
                    escapeCharInCharClass2 = escapeCharInCharClass(i3);
                } else {
                    stringBuffer.append(escapeCharInCharClass(i3));
                    stringBuffer.append('-');
                    escapeCharInCharClass2 = escapeCharInCharClass(this.ranges[i4]);
                }
                stringBuffer.append(escapeCharInCharClass2);
                i2 += 2;
            }
        } else {
            if (this == Token.token_not_0to9) {
                return "\\D";
            }
            if (this == Token.token_not_wordchars) {
                return "\\W";
            }
            if (this == Token.token_not_spaces) {
                return "\\S";
            }
            stringBuffer = new StringBuffer();
            stringBuffer.append("[^");
            while (i2 < this.ranges.length) {
                if ((i & 1024) != 0 && i2 > 0) {
                    stringBuffer.append(',');
                }
                int[] iArr2 = this.ranges;
                int i5 = iArr2[i2];
                int i6 = i2 + 1;
                if (i5 == iArr2[i6]) {
                    escapeCharInCharClass = escapeCharInCharClass(i5);
                } else {
                    stringBuffer.append(escapeCharInCharClass(i5));
                    stringBuffer.append('-');
                    escapeCharInCharClass = escapeCharInCharClass(this.ranges[i6]);
                }
                stringBuffer.append(escapeCharInCharClass);
                i2 += 2;
            }
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }
}
