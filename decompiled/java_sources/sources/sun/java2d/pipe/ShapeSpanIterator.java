package sun.java2d.pipe;

import java.awt.Rectangle;
import java.awt.geom.PathIterator;
import sun.awt.geom.PathConsumer2D;

/* loaded from: classes16.dex */
public final class ShapeSpanIterator implements SpanIterator, PathConsumer2D {
    long pData;

    static {
        initIDs();
    }

    public ShapeSpanIterator(boolean z) {
        setNormalize(z);
    }

    public static void initIDs() {
    }

    private native void setNormalize(boolean z);

    public native void addSegment(int i, float[] fArr);

    public void appendPath(PathIterator pathIterator) {
        float[] fArr = new float[6];
        setRule(pathIterator.getWindingRule());
        while (!pathIterator.isDone()) {
            addSegment(pathIterator.currentSegment(fArr), fArr);
            pathIterator.next();
        }
        pathDone();
    }

    public native void appendPoly(int[] iArr, int[] iArr2, int i, int i2, int i3);

    @Override // sun.awt.geom.PathConsumer2D
    public native void closePath();

    @Override // sun.awt.geom.PathConsumer2D
    public native void curveTo(float f, float f2, float f3, float f4, float f5, float f6);

    public native void dispose();

    @Override // sun.awt.geom.PathConsumer2D
    public native long getNativeConsumer();

    @Override // sun.java2d.pipe.SpanIterator
    public native long getNativeIterator();

    @Override // sun.java2d.pipe.SpanIterator
    public native void getPathBox(int[] iArr);

    @Override // sun.java2d.pipe.SpanIterator
    public native void intersectClipBox(int i, int i2, int i3, int i4);

    @Override // sun.awt.geom.PathConsumer2D
    public native void lineTo(float f, float f2);

    @Override // sun.awt.geom.PathConsumer2D
    public native void moveTo(float f, float f2);

    @Override // sun.java2d.pipe.SpanIterator
    public native boolean nextSpan(int[] iArr);

    @Override // sun.awt.geom.PathConsumer2D
    public native void pathDone();

    @Override // sun.awt.geom.PathConsumer2D
    public native void quadTo(float f, float f2, float f3, float f4);

    public void setOutputArea(Rectangle rectangle) {
        setOutputAreaXYWH(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public void setOutputAreaXYWH(int i, int i2, int i3, int i4) {
        setOutputAreaXYXY(i, i2, Region.dimAdd(i, i3), Region.dimAdd(i2, i4));
    }

    public native void setOutputAreaXYXY(int i, int i2, int i3, int i4);

    public native void setRule(int i);

    @Override // sun.java2d.pipe.SpanIterator
    public native void skipDownTo(int i);

    public void setOutputArea(Region region) {
        setOutputAreaXYXY(region.lox, region.loy, region.hix, region.hiy);
    }
}
