package sun.text;

/* loaded from: classes16.dex */
final class CharArrayCodePointIterator extends CodePointIterator {
    private int index;
    private int limit;
    private int start;
    private char[] text;

    public CharArrayCodePointIterator(char[] cArr) {
        this.text = cArr;
        this.limit = cArr.length;
    }

    @Override // sun.text.CodePointIterator
    public int charIndex() {
        return this.index;
    }

    @Override // sun.text.CodePointIterator
    public int next() {
        int i;
        int i2 = this.index;
        if (i2 >= this.limit) {
            return -1;
        }
        char[] cArr = this.text;
        this.index = i2 + 1;
        char c = cArr[i2];
        if (Character.isHighSurrogate(c) && (i = this.index) < this.limit) {
            char c2 = this.text[i];
            if (Character.isLowSurrogate(c2)) {
                this.index++;
                return Character.toCodePoint(c, c2);
            }
        }
        return c;
    }

    @Override // sun.text.CodePointIterator
    public int prev() {
        int i;
        int i2 = this.index;
        if (i2 <= this.start) {
            return -1;
        }
        char[] cArr = this.text;
        int i3 = i2 - 1;
        this.index = i3;
        char c = cArr[i3];
        if (Character.isLowSurrogate(c) && (i = this.index) > this.start) {
            char c2 = this.text[i - 1];
            if (Character.isHighSurrogate(c2)) {
                this.index--;
                return Character.toCodePoint(c2, c);
            }
        }
        return c;
    }

    @Override // sun.text.CodePointIterator
    public void setToLimit() {
        this.index = this.limit;
    }

    @Override // sun.text.CodePointIterator
    public void setToStart() {
        this.index = this.start;
    }

    public CharArrayCodePointIterator(char[] cArr, int i, int i2) {
        if (i >= 0 && i2 >= i && i2 <= cArr.length) {
            this.text = cArr;
            this.index = i;
            this.start = i;
            this.limit = i2;
            return;
        }
        throw new IllegalArgumentException();
    }
}
