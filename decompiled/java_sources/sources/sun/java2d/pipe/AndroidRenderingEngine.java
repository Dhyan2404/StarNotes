package sun.java2d.pipe;

import java.awt.BasicStroke;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import sun.awt.geom.PathConsumer2D;

/* loaded from: classes16.dex */
public class AndroidRenderingEngine extends RenderingEngine {
    @Override // sun.java2d.pipe.RenderingEngine
    public Shape createStrokedShape(Shape shape, float f, int i, int i2, float f2, float[] fArr, float f3) {
        GeneralPath generalPath = new GeneralPath(shape);
        AffineTransform affineTransform = new AffineTransform();
        double d = -f;
        affineTransform.translate(d, d);
        generalPath.append(affineTransform.createTransformedShape(shape), true);
        double d2 = f * 2.0f;
        affineTransform.translate(d2, d2);
        generalPath.append(affineTransform.createTransformedShape(shape), true);
        return generalPath;
    }

    @Override // sun.java2d.pipe.RenderingEngine
    public AATileGenerator getAATileGenerator(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, Region region, int[] iArr) {
        return null;
    }

    @Override // sun.java2d.pipe.RenderingEngine
    public float getMinimumAAPenSize() {
        return 0.2f;
    }

    @Override // sun.java2d.pipe.RenderingEngine
    public void strokeTo(Shape shape, AffineTransform affineTransform, BasicStroke basicStroke, boolean z, boolean z2, boolean z3, PathConsumer2D pathConsumer2D) {
    }

    @Override // sun.java2d.pipe.RenderingEngine
    public AATileGenerator getAATileGenerator(Shape shape, AffineTransform affineTransform, Region region, BasicStroke basicStroke, boolean z, boolean z2, int[] iArr) {
        return null;
    }
}
