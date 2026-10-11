package sun.text;

import java.text.CharacterIterator;

/* loaded from: classes16.dex */
public abstract class CodePointIterator {
    public static final int DONE = -1;

    public static CodePointIterator create(char[] cArr) {
        return new CharArrayCodePointIterator(cArr);
    }

    public abstract int charIndex();

    public abstract int next();

    public abstract int prev();

    public abstract void setToLimit();

    public abstract void setToStart();

    public static CodePointIterator create(char[] cArr, int i, int i2) {
        return new CharArrayCodePointIterator(cArr, i, i2);
    }

    public static CodePointIterator create(CharSequence charSequence) {
        return new CharSequenceCodePointIterator(charSequence);
    }

    public static CodePointIterator create(CharacterIterator characterIterator) {
        return new CharacterIteratorCodePointIterator(characterIterator);
    }
}
