package java.awt.font;

import java.text.AttributedCharacterIterator;
import java.text.BreakIterator;

/* loaded from: classes5.dex */
public final class LineBreakMeasurer {
    private BreakIterator breakIter;
    private CharArrayIterator charIter;
    private int limit;
    private TextMeasurer measurer;
    private int pos;
    private int start;

    public LineBreakMeasurer(AttributedCharacterIterator attributedCharacterIterator, FontRenderContext fontRenderContext) {
        this(attributedCharacterIterator, BreakIterator.getLineInstance(), fontRenderContext);
    }

    public void deleteChar(AttributedCharacterIterator attributedCharacterIterator, int i) {
        this.measurer.deleteChar(attributedCharacterIterator, i);
        this.limit = attributedCharacterIterator.getEndIndex();
        int beginIndex = attributedCharacterIterator.getBeginIndex();
        this.start = beginIndex;
        this.pos = beginIndex;
        this.charIter.reset(this.measurer.getChars(), this.start);
        this.breakIter.setText(this.charIter);
    }

    public int getPosition() {
        return this.pos;
    }

    public void insertChar(AttributedCharacterIterator attributedCharacterIterator, int i) {
        this.measurer.insertChar(attributedCharacterIterator, i);
        this.limit = attributedCharacterIterator.getEndIndex();
        int beginIndex = attributedCharacterIterator.getBeginIndex();
        this.start = beginIndex;
        this.pos = beginIndex;
        this.charIter.reset(this.measurer.getChars(), attributedCharacterIterator.getBeginIndex());
        this.breakIter.setText(this.charIter);
    }

    public TextLayout nextLayout(float f) {
        return nextLayout(f, this.limit, false);
    }

    public int nextOffset(float f) {
        return nextOffset(f, this.limit, false);
    }

    public void setPosition(int i) {
        if (i < this.start || i > this.limit) {
            throw new IllegalArgumentException("position is out of range");
        }
        this.pos = i;
    }

    public LineBreakMeasurer(AttributedCharacterIterator attributedCharacterIterator, BreakIterator breakIterator, FontRenderContext fontRenderContext) {
        if (attributedCharacterIterator.getEndIndex() - attributedCharacterIterator.getBeginIndex() >= 1) {
            this.breakIter = breakIterator;
            this.measurer = new TextMeasurer(attributedCharacterIterator, fontRenderContext);
            this.limit = attributedCharacterIterator.getEndIndex();
            int beginIndex = attributedCharacterIterator.getBeginIndex();
            this.start = beginIndex;
            this.pos = beginIndex;
            CharArrayIterator charArrayIterator = new CharArrayIterator(this.measurer.getChars(), this.start);
            this.charIter = charArrayIterator;
            this.breakIter.setText(charArrayIterator);
            return;
        }
        throw new IllegalArgumentException("Text must contain at least one character.");
    }

    public TextLayout nextLayout(float f, int i, boolean z) {
        int nextOffset;
        int i2;
        if (this.pos >= this.limit || (nextOffset = nextOffset(f, i, z)) == (i2 = this.pos)) {
            return null;
        }
        TextLayout layout = this.measurer.getLayout(i2, nextOffset);
        this.pos = nextOffset;
        return layout;
    }

    public int nextOffset(float f, int i, boolean z) {
        int i2 = this.pos;
        if (i2 < this.limit) {
            if (i > i2) {
                int lineBreakIndex = this.measurer.getLineBreakIndex(i2, f);
                i2 = this.limit;
                if (lineBreakIndex != i2 && (!Character.isWhitespace(this.measurer.getChars()[lineBreakIndex - this.start]) || ((i2 = this.breakIter.following(lineBreakIndex)) == this.limit && !Character.isWhitespace(this.measurer.getChars()[this.limit - 1])))) {
                    int i3 = lineBreakIndex + 1;
                    if (i3 == this.limit) {
                        this.breakIter.last();
                        i2 = this.breakIter.previous();
                    } else {
                        i2 = this.breakIter.preceding(i3);
                    }
                    int i4 = this.pos;
                    if (i2 <= i4) {
                        i2 = z ? i4 : Math.max(i4 + 1, lineBreakIndex);
                    }
                }
            } else {
                throw new IllegalArgumentException("offsetLimit must be after current position");
            }
        }
        return i2 > i ? i : i2;
    }
}
