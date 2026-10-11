package com.sun.org.apache.xerces.internal.xni;

/* loaded from: classes10.dex */
public class XMLString {

    /* renamed from: ch */
    public char[] f64120ch;
    public int length;
    public int offset;

    public XMLString() {
    }

    public void clear() {
        this.f64120ch = null;
        this.offset = 0;
        this.length = -1;
    }

    public boolean equals(char[] cArr, int i, int i2) {
        if (cArr == null || this.length != i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f64120ch[this.offset + i3] != cArr[i + i3]) {
                return false;
            }
        }
        return true;
    }

    public void setValues(char[] cArr, int i, int i2) {
        this.f64120ch = cArr;
        this.offset = i;
        this.length = i2;
    }

    public String toString() {
        int i = this.length;
        return i > 0 ? new String(this.f64120ch, this.offset, i) : "";
    }

    public XMLString(char[] cArr, int i, int i2) {
        setValues(cArr, i, i2);
    }

    public boolean equals(String str) {
        if (str == null || this.length != str.length()) {
            return false;
        }
        for (int i = 0; i < this.length; i++) {
            if (this.f64120ch[this.offset + i] != str.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public XMLString(XMLString xMLString) {
        setValues(xMLString);
    }

    public void setValues(XMLString xMLString) {
        setValues(xMLString.f64120ch, xMLString.offset, xMLString.length);
    }
}
