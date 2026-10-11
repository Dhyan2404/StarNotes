package sun.text;

/* loaded from: classes16.dex */
final class CharSequenceCodePointIterator extends CodePointIterator {
    private int index;
    private CharSequence text;

    public CharSequenceCodePointIterator(CharSequence charSequence) {
        this.text = charSequence;
    }

    @Override // sun.text.CodePointIterator
    public int charIndex() {
        return this.index;
    }

    @Override // sun.text.CodePointIterator
    public int next() {
        if (this.index >= this.text.length()) {
            return -1;
        }
        CharSequence charSequence = this.text;
        int i = this.index;
        this.index = i + 1;
        char charAt = charSequence.charAt(i);
        if (Character.isHighSurrogate(charAt) && this.index < this.text.length()) {
            char charAt2 = this.text.charAt(this.index + 1);
            if (Character.isLowSurrogate(charAt2)) {
                this.index++;
                return Character.toCodePoint(charAt, charAt2);
            }
        }
        return charAt;
    }

    @Override // sun.text.CodePointIterator
    public int prev() {
        int i;
        int i2 = this.index;
        if (i2 <= 0) {
            return -1;
        }
        CharSequence charSequence = this.text;
        int i3 = i2 - 1;
        this.index = i3;
        char charAt = charSequence.charAt(i3);
        if (Character.isLowSurrogate(charAt) && (i = this.index) > 0) {
            char charAt2 = this.text.charAt(i - 1);
            if (Character.isHighSurrogate(charAt2)) {
                this.index--;
                return Character.toCodePoint(charAt2, charAt);
            }
        }
        return charAt;
    }

    @Override // sun.text.CodePointIterator
    public void setToLimit() {
        this.index = this.text.length();
    }

    @Override // sun.text.CodePointIterator
    public void setToStart() {
        this.index = 0;
    }
}
