package java.awt;

import java.awt.RenderingHints;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ImageObserver;
import java.awt.image.RenderedImage;
import java.awt.image.renderable.RenderableImage;
import java.text.AttributedCharacterIterator;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class Graphics2D extends Graphics {
    public abstract void addRenderingHints(Map<?, ?> map);

    @Override // java.awt.Graphics
    public abstract void clearRect(int i, int i2, int i3, int i4);

    public abstract void clip(Shape shape);

    @Override // java.awt.Graphics
    public abstract void clipRect(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void copyArea(int i, int i2, int i3, int i4, int i5, int i6);

    @Override // java.awt.Graphics
    public abstract Graphics create();

    @Override // java.awt.Graphics
    public abstract void dispose();

    public abstract void draw(Shape shape);

    @Override // java.awt.Graphics
    public void draw3DRect(int i, int i2, int i3, int i4, boolean z) {
        Paint paint = getPaint();
        Color color = getColor();
        Color brighter = color.brighter();
        Color darker = color.darker();
        setColor(z ? brighter : darker);
        fillRect(i, i2, 1, i4 + 1);
        int i5 = i + 1;
        fillRect(i5, i2, i3 - 1, 1);
        if (z) {
            brighter = darker;
        }
        setColor(brighter);
        fillRect(i5, i2 + i4, i3, 1);
        fillRect(i + i3, i2, 1, i4);
        setPaint(paint);
    }

    @Override // java.awt.Graphics
    public abstract void drawArc(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void drawGlyphVector(GlyphVector glyphVector, float f, float f2);

    public abstract void drawImage(BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, int i, int i2);

    @Override // java.awt.Graphics
    public abstract boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, AffineTransform affineTransform, ImageObserver imageObserver);

    @Override // java.awt.Graphics
    public abstract void drawLine(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void drawOval(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void drawPolygon(int[] iArr, int[] iArr2, int i);

    @Override // java.awt.Graphics
    public abstract void drawPolyline(int[] iArr, int[] iArr2, int i);

    public abstract void drawRenderableImage(RenderableImage renderableImage, AffineTransform affineTransform);

    public abstract void drawRenderedImage(RenderedImage renderedImage, AffineTransform affineTransform);

    @Override // java.awt.Graphics
    public abstract void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void drawString(String str, float f, float f2);

    @Override // java.awt.Graphics
    public abstract void drawString(String str, int i, int i2);

    public abstract void drawString(AttributedCharacterIterator attributedCharacterIterator, float f, float f2);

    @Override // java.awt.Graphics
    public abstract void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2);

    public abstract void fill(Shape shape);

    @Override // java.awt.Graphics
    public void fill3DRect(int i, int i2, int i3, int i4, boolean z) {
        Paint paint = getPaint();
        Color color = getColor();
        Color brighter = color.brighter();
        Color darker = color.darker();
        if (!z) {
            setColor(darker);
        } else if (paint != color) {
            setColor(color);
        }
        int i5 = i + 1;
        int i6 = i3 - 2;
        fillRect(i5, i2 + 1, i6, i4 - 2);
        setColor(z ? brighter : darker);
        fillRect(i, i2, 1, i4);
        fillRect(i5, i2, i6, 1);
        if (z) {
            brighter = darker;
        }
        setColor(brighter);
        fillRect(i5, (i2 + i4) - 1, i3 - 1, 1);
        fillRect((i + i3) - 1, i2, 1, i4 - 1);
        setPaint(paint);
    }

    @Override // java.awt.Graphics
    public abstract void fillArc(int i, int i2, int i3, int i4, int i5, int i6);

    @Override // java.awt.Graphics
    public abstract void fillOval(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void fillPolygon(int[] iArr, int[] iArr2, int i);

    @Override // java.awt.Graphics
    public abstract void fillRect(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract Color getBackground();

    @Override // java.awt.Graphics
    public abstract Shape getClip();

    @Override // java.awt.Graphics
    public abstract Rectangle getClipBounds();

    @Override // java.awt.Graphics
    public abstract Color getColor();

    public abstract Composite getComposite();

    public abstract GraphicsConfiguration getDeviceConfiguration();

    @Override // java.awt.Graphics
    public abstract Font getFont();

    @Override // java.awt.Graphics
    public abstract FontMetrics getFontMetrics(Font font);

    public abstract FontRenderContext getFontRenderContext();

    public abstract Paint getPaint();

    public abstract Object getRenderingHint(RenderingHints.Key key);

    public abstract RenderingHints getRenderingHints();

    public abstract Stroke getStroke();

    public abstract AffineTransform getTransform();

    public abstract boolean hit(Rectangle rectangle, Shape shape, boolean z);

    public abstract void rotate(double d);

    public abstract void rotate(double d, double d2, double d3);

    public abstract void scale(double d, double d2);

    public abstract void setBackground(Color color);

    @Override // java.awt.Graphics
    public abstract void setClip(int i, int i2, int i3, int i4);

    @Override // java.awt.Graphics
    public abstract void setClip(Shape shape);

    @Override // java.awt.Graphics
    public abstract void setColor(Color color);

    public abstract void setComposite(Composite composite);

    @Override // java.awt.Graphics
    public abstract void setFont(Font font);

    public abstract void setPaint(Paint paint);

    @Override // java.awt.Graphics
    public abstract void setPaintMode();

    public abstract void setRenderingHint(RenderingHints.Key key, Object obj);

    public abstract void setRenderingHints(Map<?, ?> map);

    public abstract void setStroke(Stroke stroke);

    public abstract void setTransform(AffineTransform affineTransform);

    @Override // java.awt.Graphics
    public abstract void setXORMode(Color color);

    public abstract void shear(double d, double d2);

    public abstract void transform(AffineTransform affineTransform);

    public abstract void translate(double d, double d2);

    @Override // java.awt.Graphics
    public abstract void translate(int i, int i2);
}
