package java.awt;

import java.awt.font.FontRenderContext;
import java.awt.font.LineMetrics;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;
import java.text.CharacterIterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public abstract class FontMetrics implements Serializable {
    private static final FontRenderContext DEFAULT_FRC;
    private static final long serialVersionUID = 1681126225205050147L;
    protected Font font;

    static {
        Toolkit.loadLibraries();
        if (!GraphicsEnvironment.isHeadless()) {
            initIDs();
        }
        DEFAULT_FRC = new FontRenderContext((AffineTransform) null, false, false);
    }

    public FontMetrics(Font font) {
        this.font = font;
    }

    private static void initIDs() {
    }

    private FontRenderContext myFRC(Graphics graphics) {
        return graphics instanceof Graphics2D ? ((Graphics2D) graphics).getFontRenderContext() : DEFAULT_FRC;
    }

    public int bytesWidth(byte[] bArr, int i, int i2) {
        return stringWidth(new String(bArr, 0, i, i2));
    }

    public int charWidth(int i) {
        if (!Character.isValidCodePoint(i)) {
            i = 65535;
        }
        if (i < 256) {
            return getWidths()[i];
        }
        char[] cArr = new char[2];
        return charsWidth(cArr, 0, Character.toChars(i, cArr, 0));
    }

    public int charsWidth(char[] cArr, int i, int i2) {
        return stringWidth(new String(cArr, i, i2));
    }

    public int getAscent() {
        return this.font.getSize();
    }

    public int getDescent() {
        return 0;
    }

    public Font getFont() {
        return this.font;
    }

    public FontRenderContext getFontRenderContext() {
        return DEFAULT_FRC;
    }

    public int getHeight() {
        return getLeading() + getAscent() + getDescent();
    }

    public int getLeading() {
        return 0;
    }

    public LineMetrics getLineMetrics(String str, Graphics graphics) {
        return this.font.getLineMetrics(str, myFRC(graphics));
    }

    public int getMaxAdvance() {
        return -1;
    }

    public int getMaxAscent() {
        return getAscent();
    }

    public Rectangle2D getMaxCharBounds(Graphics graphics) {
        return this.font.getMaxCharBounds(myFRC(graphics));
    }

    @Deprecated
    public int getMaxDecent() {
        return getMaxDescent();
    }

    public int getMaxDescent() {
        return getDescent();
    }

    public Rectangle2D getStringBounds(String str, Graphics graphics) {
        return this.font.getStringBounds(str, myFRC(graphics));
    }

    public int[] getWidths() {
        int[] iArr = new int[256];
        for (char c = 0; c < 256; c = (char) (c + 1)) {
            iArr[c] = charWidth(c);
        }
        return iArr;
    }

    public boolean hasUniformLineMetrics() {
        return this.font.hasUniformLineMetrics();
    }

    public int stringWidth(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        return charsWidth(cArr, 0, length);
    }

    public String toString() {
        return getClass().getName() + "[font=" + getFont() + "ascent=" + getAscent() + ", descent=" + getDescent() + ", height=" + getHeight() + IteratorUtils.f104924b;
    }

    public LineMetrics getLineMetrics(String str, int i, int i2, Graphics graphics) {
        return this.font.getLineMetrics(str, i, i2, myFRC(graphics));
    }

    public Rectangle2D getStringBounds(String str, int i, int i2, Graphics graphics) {
        return this.font.getStringBounds(str, i, i2, myFRC(graphics));
    }

    public LineMetrics getLineMetrics(char[] cArr, int i, int i2, Graphics graphics) {
        return this.font.getLineMetrics(cArr, i, i2, myFRC(graphics));
    }

    public int charWidth(char c) {
        if (c < 256) {
            return getWidths()[c];
        }
        return charsWidth(new char[]{c}, 0, 1);
    }

    public Rectangle2D getStringBounds(char[] cArr, int i, int i2, Graphics graphics) {
        return this.font.getStringBounds(cArr, i, i2, myFRC(graphics));
    }

    public LineMetrics getLineMetrics(CharacterIterator characterIterator, int i, int i2, Graphics graphics) {
        return this.font.getLineMetrics(characterIterator, i, i2, myFRC(graphics));
    }

    public Rectangle2D getStringBounds(CharacterIterator characterIterator, int i, int i2, Graphics graphics) {
        return this.font.getStringBounds(characterIterator, i, i2, myFRC(graphics));
    }
}
