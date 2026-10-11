package sun.font;

import java.awt.font.GlyphJustificationInfo;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public abstract class ExtendedTextLabel extends TextLabel implements TextLineComponent {
    @Override // sun.font.TextLineComponent
    public abstract TextLineComponent applyJustificationDeltas(float[] fArr, int i, boolean[] zArr);

    @Override // sun.font.TextLineComponent
    public abstract boolean caretAtOffsetIsValid(int i);

    @Override // sun.font.TextLineComponent
    public abstract float getAdvanceBetween(int i, int i2);

    @Override // sun.font.TextLineComponent
    public abstract float getCharAdvance(int i);

    @Override // sun.font.TextLineComponent
    public Rectangle2D getCharVisualBounds(int i) {
        return getCharVisualBounds(i, 0.0f, 0.0f);
    }

    public abstract Rectangle2D getCharVisualBounds(int i, float f, float f2);

    @Override // sun.font.TextLineComponent
    public abstract float getCharX(int i);

    @Override // sun.font.TextLineComponent
    public abstract float getCharY(int i);

    @Override // sun.font.TextLineComponent
    public abstract CoreMetrics getCoreMetrics();

    @Override // sun.font.TextLineComponent
    public abstract void getJustificationInfos(GlyphJustificationInfo[] glyphJustificationInfoArr, int i, int i2, int i3);

    @Override // sun.font.TextLineComponent
    public abstract int getLineBreakIndex(int i, float f);

    @Override // sun.font.TextLineComponent
    public abstract int getNumCharacters();

    @Override // sun.font.TextLineComponent
    public abstract int getNumJustificationInfos();

    @Override // sun.font.TextLineComponent
    public abstract TextLineComponent getSubset(int i, int i2, int i3);

    public abstract int logicalToVisual(int i);

    public abstract int visualToLogical(int i);
}
