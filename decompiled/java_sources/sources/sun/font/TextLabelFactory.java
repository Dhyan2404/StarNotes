package sun.font;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.text.Bidi;

/* loaded from: classes16.dex */
public final class TextLabelFactory {
    private final Bidi bidi;
    private final int flags;
    private final FontRenderContext frc;
    private Bidi lineBidi;
    private int lineLimit;
    private int lineStart = 0;
    private final char[] text;

    public TextLabelFactory(FontRenderContext fontRenderContext, char[] cArr, Bidi bidi, int i) {
        this.frc = fontRenderContext;
        this.text = (char[]) cArr.clone();
        this.bidi = bidi;
        this.flags = i;
        this.lineBidi = bidi;
        this.lineLimit = cArr.length;
    }

    public ExtendedTextLabel createExtended(Font font, CoreMetrics coreMetrics, Decoration decoration, int i, int i2) {
        int i3;
        if (i >= i2 || i < (i3 = this.lineStart) || i2 > this.lineLimit) {
            throw new IllegalArgumentException("bad start: " + i + " or limit: " + i2);
        }
        Bidi bidi = this.lineBidi;
        boolean z = false;
        int levelAt = bidi == null ? 0 : bidi.getLevelAt(i - i3);
        Bidi bidi2 = this.lineBidi;
        if (bidi2 != null && !bidi2.baseIsLeftToRight()) {
            z = true;
        }
        int i4 = this.flags & (-10);
        if ((levelAt & 1) != 0) {
            i4 |= 1;
        }
        if (true & z) {
            i4 |= 8;
        }
        int i5 = i4;
        int i6 = this.lineStart;
        return new ExtendedTextSourceLabel(new StandardTextSource(this.text, i, i2 - i, i6, this.lineLimit - i6, levelAt, i5, font, this.frc, coreMetrics), decoration);
    }

    public TextLabel createSimple(Font font, CoreMetrics coreMetrics, int i, int i2) {
        int i3;
        if (i >= i2 || i < (i3 = this.lineStart) || i2 > this.lineLimit) {
            throw new IllegalArgumentException("bad start: " + i + " or limit: " + i2);
        }
        Bidi bidi = this.lineBidi;
        boolean z = false;
        int levelAt = bidi == null ? 0 : bidi.getLevelAt(i - i3);
        Bidi bidi2 = this.lineBidi;
        if (bidi2 != null && !bidi2.baseIsLeftToRight()) {
            z = true;
        }
        int i4 = this.flags & (-10);
        if ((levelAt & 1) != 0) {
            i4 |= 1;
        }
        if (true & z) {
            i4 |= 8;
        }
        int i5 = i4;
        int i6 = this.lineStart;
        return new TextSourceLabel(new StandardTextSource(this.text, i, i2 - i, i6, this.lineLimit - i6, levelAt, i5, font, this.frc, coreMetrics));
    }

    public FontRenderContext getFontRenderContext() {
        return this.frc;
    }

    public Bidi getLineBidi() {
        return this.lineBidi;
    }

    public void setLineContext(int i, int i2) {
        this.lineStart = i;
        this.lineLimit = i2;
        Bidi bidi = this.bidi;
        if (bidi != null) {
            this.lineBidi = bidi.createLineBidi(i, i2);
        }
    }
}
