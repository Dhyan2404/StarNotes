package sun.java2d.pipe;

import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public interface PixelFillPipe {
    void fillArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6);

    void fillOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4);

    void fillPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i);

    void fillRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4);

    void fillRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6);
}
