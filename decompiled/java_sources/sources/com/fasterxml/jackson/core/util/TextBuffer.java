package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.io.NumberInput;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class TextBuffer {

    /* renamed from: l */
    public static final char[] f21350l = new char[0];

    /* renamed from: m */
    public static final int f21351m = 1000;

    /* renamed from: n */
    public static final int f21352n = 262144;

    /* renamed from: a */
    public final BufferRecycler f21353a;

    /* renamed from: b */
    public char[] f21354b;

    /* renamed from: c */
    public int f21355c;

    /* renamed from: d */
    public int f21356d;

    /* renamed from: e */
    public ArrayList<char[]> f21357e;

    /* renamed from: f */
    public boolean f21358f;

    /* renamed from: g */
    public int f21359g;

    /* renamed from: h */
    public char[] f21360h;

    /* renamed from: i */
    public int f21361i;

    /* renamed from: j */
    public String f21362j;

    /* renamed from: k */
    public char[] f21363k;

    public TextBuffer(BufferRecycler bufferRecycler) {
        this.f21353a = bufferRecycler;
    }

    /* renamed from: a */
    public final char[] m17306a(int i) {
        BufferRecycler bufferRecycler = this.f21353a;
        return bufferRecycler != null ? bufferRecycler.allocCharBuffer(2, i) : new char[Math.max(i, 1000)];
    }

    public void append(char c) {
        if (this.f21355c >= 0) {
            m17311f(16);
        }
        this.f21362j = null;
        this.f21363k = null;
        char[] cArr = this.f21360h;
        if (this.f21361i >= cArr.length) {
            m17309d(1);
            cArr = this.f21360h;
        }
        int i = this.f21361i;
        this.f21361i = i + 1;
        cArr[i] = c;
    }

    /* renamed from: b */
    public final char[] m17307b(int i) {
        return new char[i];
    }

    /* renamed from: c */
    public final void m17308c() {
        this.f21358f = false;
        this.f21357e.clear();
        this.f21359g = 0;
        this.f21361i = 0;
    }

    public char[] contentsAsArray() {
        char[] cArr = this.f21363k;
        if (cArr != null) {
            return cArr;
        }
        char[] m17310e = m17310e();
        this.f21363k = m17310e;
        return m17310e;
    }

    public BigDecimal contentsAsDecimal() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this.f21363k;
        if (cArr3 != null) {
            return NumberInput.parseBigDecimal(cArr3);
        }
        int i = this.f21355c;
        return (i < 0 || (cArr2 = this.f21354b) == null) ? (this.f21359g != 0 || (cArr = this.f21360h) == null) ? NumberInput.parseBigDecimal(contentsAsArray()) : NumberInput.parseBigDecimal(cArr, 0, this.f21361i) : NumberInput.parseBigDecimal(cArr2, i, this.f21356d);
    }

    public double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public String contentsAsString() {
        if (this.f21362j == null) {
            char[] cArr = this.f21363k;
            if (cArr != null) {
                this.f21362j = new String(cArr);
            } else {
                int i = this.f21355c;
                if (i >= 0) {
                    int i2 = this.f21356d;
                    if (i2 < 1) {
                        this.f21362j = "";
                        return "";
                    }
                    this.f21362j = new String(this.f21354b, i, i2);
                } else {
                    int i3 = this.f21359g;
                    int i4 = this.f21361i;
                    if (i3 == 0) {
                        this.f21362j = i4 != 0 ? new String(this.f21360h, 0, i4) : "";
                    } else {
                        StringBuilder sb = new StringBuilder(i3 + i4);
                        ArrayList<char[]> arrayList = this.f21357e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i5 = 0; i5 < size; i5++) {
                                char[] cArr2 = this.f21357e.get(i5);
                                sb.append(cArr2, 0, cArr2.length);
                            }
                        }
                        sb.append(this.f21360h, 0, this.f21361i);
                        this.f21362j = sb.toString();
                    }
                }
            }
        }
        return this.f21362j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        if (r3 > 262144) goto L7;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17309d(int r3) {
        /*
            r2 = this;
            java.util.ArrayList<char[]> r3 = r2.f21357e
            if (r3 != 0) goto Lb
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r2.f21357e = r3
        Lb:
            char[] r3 = r2.f21360h
            r0 = 1
            r2.f21358f = r0
            java.util.ArrayList<char[]> r0 = r2.f21357e
            r0.add(r3)
            int r0 = r2.f21359g
            int r1 = r3.length
            int r0 = r0 + r1
            r2.f21359g = r0
            r0 = 0
            r2.f21361i = r0
            int r3 = r3.length
            int r0 = r3 >> 1
            int r3 = r3 + r0
            r0 = 1000(0x3e8, float:1.401E-42)
            if (r3 >= r0) goto L28
        L26:
            r3 = r0
            goto L2d
        L28:
            r0 = 262144(0x40000, float:3.67342E-40)
            if (r3 <= r0) goto L2d
            goto L26
        L2d:
            char[] r3 = r2.m17307b(r3)
            r2.f21360h = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.m17309d(int):void");
    }

    /* renamed from: e */
    public final char[] m17310e() {
        int i;
        String str = this.f21362j;
        if (str != null) {
            return str.toCharArray();
        }
        int i2 = this.f21355c;
        if (i2 >= 0) {
            int i3 = this.f21356d;
            return i3 < 1 ? f21350l : i2 == 0 ? Arrays.copyOf(this.f21354b, i3) : Arrays.copyOfRange(this.f21354b, i2, i3 + i2);
        }
        int size = size();
        if (size < 1) {
            return f21350l;
        }
        char[] m17307b = m17307b(size);
        ArrayList<char[]> arrayList = this.f21357e;
        if (arrayList != null) {
            int size2 = arrayList.size();
            i = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                char[] cArr = this.f21357e.get(i4);
                int length = cArr.length;
                System.arraycopy(cArr, 0, m17307b, i, length);
                i += length;
            }
        } else {
            i = 0;
        }
        System.arraycopy(this.f21360h, 0, m17307b, i, this.f21361i);
        return m17307b;
    }

    public char[] emptyAndGetCurrentSegment() {
        this.f21355c = -1;
        this.f21361i = 0;
        this.f21356d = 0;
        this.f21354b = null;
        this.f21362j = null;
        this.f21363k = null;
        if (this.f21358f) {
            m17308c();
        }
        char[] cArr = this.f21360h;
        if (cArr != null) {
            return cArr;
        }
        char[] m17306a = m17306a(0);
        this.f21360h = m17306a;
        return m17306a;
    }

    public void ensureNotShared() {
        if (this.f21355c >= 0) {
            m17311f(16);
        }
    }

    public char[] expandCurrentSegment() {
        char[] cArr = this.f21360h;
        int length = cArr.length;
        int i = (length >> 1) + length;
        if (i > 262144) {
            i = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i);
        this.f21360h = copyOf;
        return copyOf;
    }

    /* renamed from: f */
    public final void m17311f(int i) {
        int i2 = this.f21356d;
        this.f21356d = 0;
        char[] cArr = this.f21354b;
        this.f21354b = null;
        int i3 = this.f21355c;
        this.f21355c = -1;
        int i4 = i + i2;
        char[] cArr2 = this.f21360h;
        if (cArr2 == null || i4 > cArr2.length) {
            this.f21360h = m17306a(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this.f21360h, 0, i2);
        }
        this.f21359g = 0;
        this.f21361i = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r0 > 262144) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] finishCurrentSegment() {
        /*
            r2 = this;
            java.util.ArrayList<char[]> r0 = r2.f21357e
            if (r0 != 0) goto Lb
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.f21357e = r0
        Lb:
            r0 = 1
            r2.f21358f = r0
            java.util.ArrayList<char[]> r0 = r2.f21357e
            char[] r1 = r2.f21360h
            r0.add(r1)
            char[] r0 = r2.f21360h
            int r0 = r0.length
            int r1 = r2.f21359g
            int r1 = r1 + r0
            r2.f21359g = r1
            r1 = 0
            r2.f21361i = r1
            int r1 = r0 >> 1
            int r0 = r0 + r1
            r1 = 1000(0x3e8, float:1.401E-42)
            if (r0 >= r1) goto L29
        L27:
            r0 = r1
            goto L2e
        L29:
            r1 = 262144(0x40000, float:3.67342E-40)
            if (r0 <= r1) goto L2e
            goto L27
        L2e:
            char[] r0 = r2.m17307b(r0)
            r2.f21360h = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.finishCurrentSegment():char[]");
    }

    public char[] getCurrentSegment() {
        if (this.f21355c >= 0) {
            m17311f(1);
        } else {
            char[] cArr = this.f21360h;
            if (cArr == null) {
                this.f21360h = m17306a(0);
            } else if (this.f21361i >= cArr.length) {
                m17309d(1);
            }
        }
        return this.f21360h;
    }

    public int getCurrentSegmentSize() {
        return this.f21361i;
    }

    public char[] getTextBuffer() {
        if (this.f21355c >= 0) {
            return this.f21354b;
        }
        char[] cArr = this.f21363k;
        if (cArr != null) {
            return cArr;
        }
        String str = this.f21362j;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this.f21363k = charArray;
            return charArray;
        }
        if (this.f21358f) {
            return contentsAsArray();
        }
        char[] cArr2 = this.f21360h;
        return cArr2 == null ? f21350l : cArr2;
    }

    public int getTextOffset() {
        int i = this.f21355c;
        if (i >= 0) {
            return i;
        }
        return 0;
    }

    public boolean hasTextAsCharacters() {
        return this.f21355c >= 0 || this.f21363k != null || this.f21362j == null;
    }

    public void releaseBuffers() {
        if (this.f21353a == null) {
            resetWithEmpty();
        } else if (this.f21360h != null) {
            resetWithEmpty();
            char[] cArr = this.f21360h;
            this.f21360h = null;
            this.f21353a.releaseCharBuffer(2, cArr);
        }
    }

    public void resetWithCopy(char[] cArr, int i, int i2) {
        this.f21354b = null;
        this.f21355c = -1;
        this.f21356d = 0;
        this.f21362j = null;
        this.f21363k = null;
        if (this.f21358f) {
            m17308c();
        } else if (this.f21360h == null) {
            this.f21360h = m17306a(i2);
        }
        this.f21359g = 0;
        this.f21361i = 0;
        append(cArr, i, i2);
    }

    public void resetWithEmpty() {
        this.f21355c = -1;
        this.f21361i = 0;
        this.f21356d = 0;
        this.f21354b = null;
        this.f21362j = null;
        this.f21363k = null;
        if (this.f21358f) {
            m17308c();
        }
    }

    public void resetWithShared(char[] cArr, int i, int i2) {
        this.f21362j = null;
        this.f21363k = null;
        this.f21354b = cArr;
        this.f21355c = i;
        this.f21356d = i2;
        if (this.f21358f) {
            m17308c();
        }
    }

    public void resetWithString(String str) {
        this.f21354b = null;
        this.f21355c = -1;
        this.f21356d = 0;
        this.f21362j = str;
        this.f21363k = null;
        if (this.f21358f) {
            m17308c();
        }
        this.f21361i = 0;
    }

    public String setCurrentAndReturn(int i) {
        this.f21361i = i;
        if (this.f21359g > 0) {
            return contentsAsString();
        }
        String str = i == 0 ? "" : new String(this.f21360h, 0, i);
        this.f21362j = str;
        return str;
    }

    public void setCurrentLength(int i) {
        this.f21361i = i;
    }

    public int size() {
        if (this.f21355c >= 0) {
            return this.f21356d;
        }
        char[] cArr = this.f21363k;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this.f21362j;
        return str != null ? str.length() : this.f21359g + this.f21361i;
    }

    public String toString() {
        return contentsAsString();
    }

    public char[] expandCurrentSegment(int i) {
        char[] cArr = this.f21360h;
        if (cArr.length >= i) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, i);
        this.f21360h = copyOf;
        return copyOf;
    }

    public void append(char[] cArr, int i, int i2) {
        if (this.f21355c >= 0) {
            m17311f(i2);
        }
        this.f21362j = null;
        this.f21363k = null;
        char[] cArr2 = this.f21360h;
        int length = cArr2.length;
        int i3 = this.f21361i;
        int i4 = length - i3;
        if (i4 >= i2) {
            System.arraycopy(cArr, i, cArr2, i3, i2);
            this.f21361i += i2;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(cArr, i, cArr2, i3, i4);
            i += i4;
            i2 -= i4;
        }
        do {
            m17309d(i2);
            int min = Math.min(this.f21360h.length, i2);
            System.arraycopy(cArr, i, this.f21360h, 0, min);
            this.f21361i += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    public void append(String str, int i, int i2) {
        if (this.f21355c >= 0) {
            m17311f(i2);
        }
        this.f21362j = null;
        this.f21363k = null;
        char[] cArr = this.f21360h;
        int length = cArr.length;
        int i3 = this.f21361i;
        int i4 = length - i3;
        if (i4 >= i2) {
            str.getChars(i, i + i2, cArr, i3);
            this.f21361i += i2;
            return;
        }
        if (i4 > 0) {
            int i5 = i + i4;
            str.getChars(i, i5, cArr, i3);
            i2 -= i4;
            i = i5;
        }
        while (true) {
            m17309d(i2);
            int min = Math.min(this.f21360h.length, i2);
            int i6 = i + min;
            str.getChars(i, i6, this.f21360h, 0);
            this.f21361i += min;
            i2 -= min;
            if (i2 <= 0) {
                return;
            } else {
                i = i6;
            }
        }
    }
}
