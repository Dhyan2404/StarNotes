package java.awt.font;

import java.text.CharacterIterator;

/* loaded from: classes5.dex */
class CharArrayIterator implements CharacterIterator {
    private int begin;
    private char[] chars;
    private int pos;

    public CharArrayIterator(char[] cArr) {
        reset(cArr, 0);
    }

    @Override // java.text.CharacterIterator
    public Object clone() {
        CharArrayIterator charArrayIterator = new CharArrayIterator(this.chars, this.begin);
        charArrayIterator.pos = this.pos;
        return charArrayIterator;
    }

    @Override // java.text.CharacterIterator
    public char current() {
        int i = this.pos;
        if (i < 0) {
            return (char) 65535;
        }
        char[] cArr = this.chars;
        if (i < cArr.length) {
            return cArr[i];
        }
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public char first() {
        this.pos = 0;
        return current();
    }

    @Override // java.text.CharacterIterator
    public int getBeginIndex() {
        return this.begin;
    }

    @Override // java.text.CharacterIterator
    public int getEndIndex() {
        return this.begin + this.chars.length;
    }

    @Override // java.text.CharacterIterator
    public int getIndex() {
        return this.begin + this.pos;
    }

    @Override // java.text.CharacterIterator
    public char last() {
        if (this.chars.length > 0) {
            this.pos = r0.length - 1;
        } else {
            this.pos = 0;
        }
        return current();
    }

    @Override // java.text.CharacterIterator
    public char next() {
        int i = this.pos;
        char[] cArr = this.chars;
        if (i >= cArr.length - 1) {
            this.pos = cArr.length;
            return (char) 65535;
        }
        int i2 = i + 1;
        this.pos = i2;
        return cArr[i2];
    }

    @Override // java.text.CharacterIterator
    public char previous() {
        int i = this.pos;
        if (i <= 0) {
            this.pos = 0;
            return (char) 65535;
        }
        int i2 = i - 1;
        this.pos = i2;
        return this.chars[i2];
    }

    public void reset(char[] cArr) {
        reset(cArr, 0);
    }

    @Override // java.text.CharacterIterator
    public char setIndex(int i) {
        int i2 = i - this.begin;
        if (i2 < 0 || i2 > this.chars.length) {
            throw new IllegalArgumentException("Invalid index");
        }
        this.pos = i2;
        return current();
    }

    public void reset(char[] cArr, int i) {
        this.chars = cArr;
        this.begin = i;
        this.pos = 0;
    }

    public CharArrayIterator(char[] cArr, int i) {
        reset(cArr, i);
    }
}
