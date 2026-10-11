package sun.font;

/* loaded from: classes16.dex */
public final class FontRunIterator {
    static final int DONE = -1;
    static final int LEAD_LIMIT = 56320;
    static final int LEAD_START = 55296;
    static final int LEAD_SURROGATE_SHIFT = 10;
    static final int SURROGATE_OFFSET = -56613888;
    static final int SURROGATE_START = 65536;
    static final int TAIL_LIMIT = 57344;
    static final int TAIL_START = 56320;
    CompositeFont font;
    int limit;
    CompositeGlyphMapper mapper;
    int pos;
    int slot = -1;
    int start;
    char[] text;

    public PhysicalFont getFont() {
        int i = this.slot;
        if (i == -1) {
            return null;
        }
        return this.font.getSlotFont(i);
    }

    public int getGlyphMask() {
        return this.slot << 24;
    }

    public int getPos() {
        return this.pos;
    }

    public void init(CompositeFont compositeFont, char[] cArr, int i, int i2) {
        if (compositeFont == null || cArr == null || i < 0 || i2 < i || i2 > cArr.length) {
            throw new IllegalArgumentException();
        }
        this.font = compositeFont;
        this.text = cArr;
        this.start = i;
        this.limit = i2;
        this.mapper = (CompositeGlyphMapper) compositeFont.getMapper();
        this.slot = -1;
        this.pos = i;
    }

    public boolean next(int i, int i2) {
        int nextCodePoint;
        if (this.pos == i2) {
            return false;
        }
        int charToGlyph = this.mapper.charToGlyph(nextCodePoint(i2)) & (-16777216);
        this.slot = charToGlyph >>> 24;
        do {
            nextCodePoint = nextCodePoint(i2);
            if (nextCodePoint == -1) {
                break;
            }
        } while ((this.mapper.charToGlyph(nextCodePoint) & (-16777216)) == charToGlyph);
        pushback(nextCodePoint);
        return true;
    }

    public int nextCodePoint() {
        return nextCodePoint(this.limit);
    }

    public void pushback(int i) {
        if (i >= 0) {
            if (i >= 65536) {
                this.pos -= 2;
            } else {
                this.pos--;
            }
        }
    }

    public int nextCodePoint(int i) {
        char c;
        int i2 = this.pos;
        if (i2 >= i) {
            return -1;
        }
        char[] cArr = this.text;
        int i3 = i2 + 1;
        this.pos = i3;
        char c2 = cArr[i2];
        if (c2 < 55296 || c2 >= 56320 || i3 >= i || (c = cArr[i3]) < 56320 || c >= 57344) {
            return c2;
        }
        this.pos = i3 + 1;
        return (c2 << '\n') + c + SURROGATE_OFFSET;
    }

    public boolean next() {
        return next(0, this.limit);
    }
}
