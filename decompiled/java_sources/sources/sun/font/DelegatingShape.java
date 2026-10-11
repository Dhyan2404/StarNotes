package sun.font;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public final class DelegatingShape implements Shape {
    Shape delegate;

    public DelegatingShape(Shape shape) {
        this.delegate = shape;
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        return this.delegate.contains(d, d2);
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        return this.delegate.getBounds();
    }

    @Override // java.awt.Shape
    public Rectangle2D getBounds2D() {
        return this.delegate.getBounds2D();
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return this.delegate.getPathIterator(affineTransform);
    }

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        return this.delegate.intersects(d, d2, d3, d4);
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return this.delegate.contains(point2D);
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return this.delegate.getPathIterator(affineTransform, d);
    }

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return this.delegate.intersects(rectangle2D);
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        return this.delegate.contains(d, d2, d3, d4);
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return this.delegate.contains(rectangle2D);
    }
}
