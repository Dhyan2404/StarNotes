package org.apache.xerces.util;

import org.apache.xerces.xni.XMLString;

/* loaded from: classes13.dex */
public class XMLStringBuffer extends XMLString {
    public static final int DEFAULT_SIZE = 32;

    public XMLStringBuffer() {
        this(32);
    }

    public void append(char c) {
        int i = this.length;
        int i2 = i + 1;
        char[] cArr = this.f113585ch;
        if (i2 > cArr.length) {
            int length = cArr.length * 2;
            if (length < cArr.length + 32) {
                length = cArr.length + 32;
            }
            char[] cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.f113585ch = cArr2;
        }
        char[] cArr3 = this.f113585ch;
        int i3 = this.length;
        cArr3[i3] = c;
        this.length = i3 + 1;
    }

    @Override // org.apache.xerces.xni.XMLString
    public void clear() {
        this.offset = 0;
        this.length = 0;
    }

    public XMLStringBuffer(char c) {
        this(1);
        append(c);
    }

    public void append(String str) {
        int length = str.length();
        int i = this.length;
        int i2 = i + length;
        char[] cArr = this.f113585ch;
        if (i2 > cArr.length) {
            int length2 = cArr.length * 2;
            if (length2 < i + length + 32) {
                length2 = cArr.length + length + 32;
            }
            char[] cArr2 = new char[length2];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.f113585ch = cArr2;
        }
        str.getChars(0, length, this.f113585ch, this.length);
        this.length += length;
    }

    public XMLStringBuffer(int i) {
        this.f113585ch = new char[i];
    }

    public void append(XMLString xMLString) {
        append(xMLString.f113585ch, xMLString.offset, xMLString.length);
    }

    public XMLStringBuffer(String str) {
        this(str.length());
        append(str);
    }

    public void append(char[] cArr, int i, int i2) {
        int i3 = this.length;
        int i4 = i3 + i2;
        char[] cArr2 = this.f113585ch;
        if (i4 > cArr2.length) {
            int length = cArr2.length * 2;
            if (length < i3 + i2 + 32) {
                length = cArr2.length + i2 + 32;
            }
            char[] cArr3 = new char[length];
            System.arraycopy(cArr2, 0, cArr3, 0, i3);
            this.f113585ch = cArr3;
        }
        System.arraycopy(cArr, i, this.f113585ch, this.length, i2);
        this.length += i2;
    }

    public XMLStringBuffer(XMLString xMLString) {
        this(xMLString.length);
        append(xMLString);
    }

    public XMLStringBuffer(char[] cArr, int i, int i2) {
        this(i2);
        append(cArr, i, i2);
    }
}
