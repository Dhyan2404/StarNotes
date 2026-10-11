package sun.font;

import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphJustificationInfo;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public interface TextLineComponent {
    public static final int LEFT_TO_RIGHT = 0;
    public static final int RIGHT_TO_LEFT = 1;
    public static final int UNCHANGED = 2;

    TextLineComponent applyJustificationDeltas(float[] fArr, int i, boolean[] zArr);

    boolean caretAtOffsetIsValid(int i);

    void draw(Graphics2D graphics2D, float f, float f2);

    float getAdvance();

    float getAdvanceBetween(int i, int i2);

    AffineTransform getBaselineTransform();

    float getCharAdvance(int i);

    Rectangle2D getCharVisualBounds(int i);

    float getCharX(int i);

    float getCharY(int i);

    CoreMetrics getCoreMetrics();

    Rectangle2D getItalicBounds();

    void getJustificationInfos(GlyphJustificationInfo[] glyphJustificationInfoArr, int i, int i2, int i3);

    int getLineBreakIndex(int i, float f);

    Rectangle2D getLogicalBounds();

    int getNumCharacters();

    int getNumJustificationInfos();

    Shape getOutline(float f, float f2);

    Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2);

    TextLineComponent getSubset(int i, int i2, int i3);

    Rectangle2D getVisualBounds();

    boolean isSimple();
}
