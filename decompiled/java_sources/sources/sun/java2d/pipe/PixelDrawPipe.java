package sun.java2d.pipe;

import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public interface PixelDrawPipe {
    void drawArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6);

    void drawLine(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4);

    void drawOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4);

    void drawPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i);

    void drawPolyline(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i);

    void drawRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4);

    void drawRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6);
}
