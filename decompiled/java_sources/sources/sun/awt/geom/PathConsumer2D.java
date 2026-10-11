package sun.awt.geom;

/* loaded from: classes16.dex */
public interface PathConsumer2D {
    void closePath();

    void curveTo(float f, float f2, float f3, float f4, float f5, float f6);

    long getNativeConsumer();

    void lineTo(float f, float f2);

    void moveTo(float f, float f2);

    void pathDone();

    void quadTo(float f, float f2, float f3, float f4);
}
