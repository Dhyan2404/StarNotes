package java.awt;

import java.awt.image.ImageObserver;
import java.text.AttributedCharacterIterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public abstract class Graphics {
    public abstract void clearRect(int i, int i2, int i3, int i4);

    public abstract void clipRect(int i, int i2, int i3, int i4);

    public abstract void copyArea(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract Graphics create();

    public Graphics create(int i, int i2, int i3, int i4) {
        Graphics create = create();
        if (create == null) {
            return null;
        }
        create.translate(i, i2);
        create.clipRect(0, 0, i3, i4);
        return create;
    }

    public abstract void dispose();

    public void draw3DRect(int i, int i2, int i3, int i4, boolean z) {
        Color color = getColor();
        Color brighter = color.brighter();
        Color darker = color.darker();
        setColor(z ? brighter : darker);
        int i5 = i4 + i2;
        drawLine(i, i2, i, i5);
        int i6 = i + 1;
        int i7 = i + i3;
        drawLine(i6, i2, i7 - 1, i2);
        if (z) {
            brighter = darker;
        }
        setColor(brighter);
        drawLine(i6, i5, i7, i5);
        drawLine(i7, i2, i7, i5 - 1);
        setColor(color);
    }

    public abstract void drawArc(int i, int i2, int i3, int i4, int i5, int i6);

    public void drawBytes(byte[] bArr, int i, int i2, int i3, int i4) {
        drawString(new String(bArr, 0, i, i2), i3, i4);
    }

    public void drawChars(char[] cArr, int i, int i2, int i3, int i4) {
        drawString(new String(cArr, i, i2), i3, i4);
    }

    public abstract boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, int i, int i2, int i3, int i4, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, int i, int i2, Color color, ImageObserver imageObserver);

    public abstract boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver);

    public abstract void drawLine(int i, int i2, int i3, int i4);

    public abstract void drawOval(int i, int i2, int i3, int i4);

    public void drawPolygon(Polygon polygon) {
        drawPolygon(polygon.xpoints, polygon.ypoints, polygon.npoints);
    }

    public abstract void drawPolygon(int[] iArr, int[] iArr2, int i);

    public abstract void drawPolyline(int[] iArr, int[] iArr2, int i);

    public void drawRect(int i, int i2, int i3, int i4) {
        if (i3 < 0 || i4 < 0) {
            return;
        }
        if (i4 == 0 || i3 == 0) {
            drawLine(i, i2, i3 + i, i4 + i2);
            return;
        }
        int i5 = i3 + i;
        drawLine(i, i2, i5 - 1, i2);
        int i6 = i4 + i2;
        drawLine(i5, i2, i5, i6 - 1);
        drawLine(i5, i6, i + 1, i6);
        drawLine(i, i6, i, i2 + 1);
    }

    public abstract void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void drawString(String str, int i, int i2);

    public abstract void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2);

    public void fill3DRect(int i, int i2, int i3, int i4, boolean z) {
        Color color = getColor();
        Color brighter = color.brighter();
        Color darker = color.darker();
        if (!z) {
            setColor(darker);
        }
        int i5 = i + 1;
        fillRect(i5, i2 + 1, i3 - 2, i4 - 2);
        setColor(z ? brighter : darker);
        int i6 = i4 + i2;
        int i7 = i6 - 1;
        drawLine(i, i2, i, i7);
        int i8 = i + i3;
        drawLine(i5, i2, i8 - 2, i2);
        if (z) {
            brighter = darker;
        }
        setColor(brighter);
        int i9 = i8 - 1;
        drawLine(i5, i7, i9, i7);
        drawLine(i9, i2, i9, i6 - 2);
        setColor(color);
    }

    public abstract void fillArc(int i, int i2, int i3, int i4, int i5, int i6);

    public abstract void fillOval(int i, int i2, int i3, int i4);

    public void fillPolygon(Polygon polygon) {
        fillPolygon(polygon.xpoints, polygon.ypoints, polygon.npoints);
    }

    public abstract void fillPolygon(int[] iArr, int[] iArr2, int i);

    public abstract void fillRect(int i, int i2, int i3, int i4);

    public abstract void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6);

    public void finalize() {
        dispose();
    }

    public abstract Shape getClip();

    public abstract Rectangle getClipBounds();

    public Rectangle getClipBounds(Rectangle rectangle) {
        Rectangle clipBounds = getClipBounds();
        if (clipBounds != null) {
            rectangle.f97732x = clipBounds.f97732x;
            rectangle.f97733y = clipBounds.f97733y;
            rectangle.width = clipBounds.width;
            rectangle.height = clipBounds.height;
        } else if (rectangle == null) {
            throw new NullPointerException("null rectangle parameter");
        }
        return rectangle;
    }

    @Deprecated
    public Rectangle getClipRect() {
        return getClipBounds();
    }

    public abstract Color getColor();

    public abstract Font getFont();

    public FontMetrics getFontMetrics() {
        return getFontMetrics(getFont());
    }

    public abstract FontMetrics getFontMetrics(Font font);

    public boolean hitClip(int i, int i2, int i3, int i4) {
        Rectangle clipBounds = getClipBounds();
        if (clipBounds == null) {
            return true;
        }
        return clipBounds.intersects(i, i2, i3, i4);
    }

    public abstract void setClip(int i, int i2, int i3, int i4);

    public abstract void setClip(Shape shape);

    public abstract void setColor(Color color);

    public abstract void setFont(Font font);

    public abstract void setPaintMode();

    public abstract void setXORMode(Color color);

    public String toString() {
        return getClass().getName() + "[font=" + getFont() + ",color=" + getColor() + IteratorUtils.f104924b;
    }

    public abstract void translate(int i, int i2);
}
