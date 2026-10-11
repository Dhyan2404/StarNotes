package sun.text;

import java.text.CharacterIterator;

/* loaded from: classes16.dex */
final class CharacterIteratorCodePointIterator extends CodePointIterator {
    private CharacterIterator iter;

    public CharacterIteratorCodePointIterator(CharacterIterator characterIterator) {
        this.iter = characterIterator;
    }

    @Override // sun.text.CodePointIterator
    public int charIndex() {
        return this.iter.getIndex();
    }

    @Override // sun.text.CodePointIterator
    public int next() {
        char current = this.iter.current();
        if (current == 65535) {
            return -1;
        }
        char next = this.iter.next();
        if (!Character.isHighSurrogate(current) || next == 65535 || !Character.isLowSurrogate(next)) {
            return current;
        }
        this.iter.next();
        return Character.toCodePoint(current, next);
    }

    @Override // sun.text.CodePointIterator
    public int prev() {
        char previous = this.iter.previous();
        if (previous == 65535) {
            return -1;
        }
        if (Character.isLowSurrogate(previous)) {
            char previous2 = this.iter.previous();
            if (Character.isHighSurrogate(previous2)) {
                return Character.toCodePoint(previous2, previous);
            }
            this.iter.next();
        }
        return previous;
    }

    @Override // sun.text.CodePointIterator
    public void setToLimit() {
        CharacterIterator characterIterator = this.iter;
        characterIterator.setIndex(characterIterator.getEndIndex());
    }

    @Override // sun.text.CodePointIterator
    public void setToStart() {
        CharacterIterator characterIterator = this.iter;
        characterIterator.setIndex(characterIterator.getBeginIndex());
    }
}
