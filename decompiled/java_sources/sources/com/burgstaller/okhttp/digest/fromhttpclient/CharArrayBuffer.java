package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes3.dex */
public final class CharArrayBuffer {

    /* renamed from: a */
    public char[] f15551a;

    /* renamed from: b */
    public int f15552b;

    public CharArrayBuffer(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Buffer capacity may not be negative");
        }
        this.f15551a = new char[i];
    }

    /* renamed from: a */
    public final void m9207a(int i) {
        char[] cArr = new char[Math.max(this.f15551a.length << 1, i)];
        System.arraycopy(this.f15551a, 0, cArr, 0, this.f15552b);
        this.f15551a = cArr;
    }

    public void append(char[] cArr, int i, int i2) {
        int i3;
        if (cArr != null) {
            if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > cArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 != 0) {
                int i4 = this.f15552b + i2;
                if (i4 > this.f15551a.length) {
                    m9207a(i4);
                }
                System.arraycopy(cArr, i, this.f15551a, this.f15552b, i2);
                this.f15552b = i4;
            }
        }
    }

    public char[] buffer() {
        return this.f15551a;
    }

    public int capacity() {
        return this.f15551a.length;
    }

    public char charAt(int i) {
        return this.f15551a[i];
    }

    public void clear() {
        this.f15552b = 0;
    }

    public void ensureCapacity(int i) {
        if (i > 0) {
            int length = this.f15551a.length;
            int i2 = this.f15552b;
            if (i > length - i2) {
                m9207a(i2 + i);
            }
        }
    }

    public int indexOf(int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = 0;
        }
        int i4 = this.f15552b;
        if (i3 > i4) {
            i3 = i4;
        }
        if (i2 > i3) {
            return -1;
        }
        while (i2 < i3) {
            if (this.f15551a[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.f15552b == 0;
    }

    public boolean isFull() {
        return this.f15552b == this.f15551a.length;
    }

    public int length() {
        return this.f15552b;
    }

    public void setLength(int i) {
        if (i < 0 || i > this.f15551a.length) {
            throw new IndexOutOfBoundsException();
        }
        this.f15552b = i;
    }

    public String substring(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 > this.f15552b) {
            throw new IndexOutOfBoundsException();
        }
        if (i <= i2) {
            return new String(this.f15551a, i, i2 - i);
        }
        throw new IndexOutOfBoundsException();
    }

    public String substringTrimmed(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 > this.f15552b) {
            throw new IndexOutOfBoundsException();
        }
        if (i > i2) {
            throw new IndexOutOfBoundsException();
        }
        while (i < i2 && HTTP.isWhitespace(this.f15551a[i])) {
            i++;
        }
        while (i2 > i && HTTP.isWhitespace(this.f15551a[i2 - 1])) {
            i2--;
        }
        return new String(this.f15551a, i, i2 - i);
    }

    public char[] toCharArray() {
        int i = this.f15552b;
        char[] cArr = new char[i];
        if (i > 0) {
            System.arraycopy(this.f15551a, 0, cArr, 0, i);
        }
        return cArr;
    }

    public String toString() {
        return new String(this.f15551a, 0, this.f15552b);
    }

    public int indexOf(int i) {
        return indexOf(i, 0, this.f15552b);
    }

    public void append(String str) {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        int i = this.f15552b + length;
        if (i > this.f15551a.length) {
            m9207a(i);
        }
        str.getChars(0, length, this.f15551a, this.f15552b);
        this.f15552b = i;
    }

    public void append(CharArrayBuffer charArrayBuffer, int i, int i2) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.f15551a, i, i2);
        }
    }

    public void append(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.f15551a, 0, charArrayBuffer.f15552b);
        }
    }

    public void append(char c) {
        int i = this.f15552b + 1;
        if (i > this.f15551a.length) {
            m9207a(i);
        }
        this.f15551a[this.f15552b] = c;
        this.f15552b = i;
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr != null) {
            if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 != 0) {
                int i4 = this.f15552b;
                int i5 = i2 + i4;
                if (i5 > this.f15551a.length) {
                    m9207a(i5);
                }
                while (i4 < i5) {
                    this.f15551a[i4] = (char) (bArr[i] & 255);
                    i++;
                    i4++;
                }
                this.f15552b = i5;
            }
        }
    }

    public void append(Object obj) {
        append(String.valueOf(obj));
    }
}
