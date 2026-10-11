package org.apache.xerces.xni;

/* loaded from: classes13.dex */
public class XMLString {

    /* renamed from: ch */
    public char[] f113585ch;
    public int length;
    public int offset;

    public XMLString() {
    }

    public void clear() {
        this.f113585ch = null;
        this.offset = 0;
        this.length = -1;
    }

    public boolean equals(String str) {
        if (str != null && this.length == str.length()) {
            for (int i = 0; i < this.length; i++) {
                if (this.f113585ch[this.offset + i] != str.charAt(i)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void setValues(XMLString xMLString) {
        setValues(xMLString.f113585ch, xMLString.offset, xMLString.length);
    }

    public String toString() {
        int i = this.length;
        return i > 0 ? new String(this.f113585ch, this.offset, i) : "";
    }

    public XMLString(XMLString xMLString) {
        setValues(xMLString);
    }

    public boolean equals(char[] cArr, int i, int i2) {
        if (cArr != null && this.length == i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (this.f113585ch[this.offset + i3] != cArr[i + i3]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void setValues(char[] cArr, int i, int i2) {
        this.f113585ch = cArr;
        this.offset = i;
        this.length = i2;
    }

    public XMLString(char[] cArr, int i, int i2) {
        setValues(cArr, i, i2);
    }
}
