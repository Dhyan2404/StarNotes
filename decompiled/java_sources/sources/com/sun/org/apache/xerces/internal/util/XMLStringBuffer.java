package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.XMLString;

/* loaded from: classes10.dex */
public class XMLStringBuffer extends XMLString {
    public static final int DEFAULT_SIZE = 32;

    public XMLStringBuffer() {
        this(32);
    }

    public void append(char c) {
        int i = this.length;
        int i2 = i + 1;
        char[] cArr = this.f64120ch;
        if (i2 > cArr.length) {
            int length = cArr.length * 2;
            if (length < cArr.length + 32) {
                length = cArr.length + 32;
            }
            char[] cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.f64120ch = cArr2;
        }
        char[] cArr3 = this.f64120ch;
        int i3 = this.length;
        cArr3[i3] = c;
        this.length = i3 + 1;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLString
    public void clear() {
        this.offset = 0;
        this.length = 0;
    }

    public XMLStringBuffer(int i) {
        this.f64120ch = new char[i];
    }

    public XMLStringBuffer(char c) {
        this(1);
        append(c);
    }

    public XMLStringBuffer(String str) {
        this(str.length());
        append(str);
    }

    public XMLStringBuffer(char[] cArr, int i, int i2) {
        this(i2);
        append(cArr, i, i2);
    }

    public XMLStringBuffer(XMLString xMLString) {
        this(xMLString.length);
        append(xMLString);
    }

    public void append(String str) {
        int length = str.length();
        int i = this.length;
        int i2 = i + length;
        char[] cArr = this.f64120ch;
        if (i2 > cArr.length) {
            int length2 = cArr.length * 2;
            if (length2 < cArr.length + length + 32) {
                length2 = cArr.length + length + 32;
            }
            char[] cArr2 = new char[length2];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.f64120ch = cArr2;
        }
        str.getChars(0, length, this.f64120ch, this.length);
        this.length += length;
    }

    public void append(char[] cArr, int i, int i2) {
        int i3 = this.length;
        int i4 = i3 + i2;
        char[] cArr2 = this.f64120ch;
        if (i4 > cArr2.length) {
            int length = cArr2.length * 2;
            if (length < cArr2.length + i2 + 32) {
                length = cArr2.length + i2 + 32;
            }
            char[] cArr3 = new char[length];
            System.arraycopy(cArr2, 0, cArr3, 0, i3);
            this.f64120ch = cArr3;
        }
        if (cArr == null || i2 <= 0) {
            return;
        }
        System.arraycopy(cArr, i, this.f64120ch, this.length, i2);
        this.length += i2;
    }

    public void append(XMLString xMLString) {
        append(xMLString.f64120ch, xMLString.offset, xMLString.length);
    }
}
