package sun.java2d.pipe;

import java.awt.Shape;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public interface ShapeDrawPipe {
    void draw(SunGraphics2D sunGraphics2D, Shape shape);

    void fill(SunGraphics2D sunGraphics2D, Shape shape);
}
