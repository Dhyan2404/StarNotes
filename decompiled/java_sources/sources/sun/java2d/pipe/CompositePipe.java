package sun.java2d.pipe;

import java.awt.Rectangle;
import java.awt.Shape;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public interface CompositePipe {
    void endSequence(Object obj);

    boolean needTile(Object obj, int i, int i2, int i3, int i4);

    void renderPathTile(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6);

    void skipTile(Object obj, int i, int i2);

    Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr);
}
