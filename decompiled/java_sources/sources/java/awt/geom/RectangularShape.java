package java.awt.geom;

import java.awt.InternalError;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Rectangle2D;

/* loaded from: classes5.dex */
public abstract class RectangularShape implements Shape, Cloneable {
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return contains(point2D.getX(), point2D.getY());
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        double width = getWidth();
        double height = getHeight();
        if (width < 0.0d || height < 0.0d) {
            return new Rectangle();
        }
        double x = getX();
        double y = getY();
        double floor = Math.floor(x);
        double floor2 = Math.floor(y);
        return new Rectangle((int) floor, (int) floor2, (int) (Math.ceil(x + width) - floor), (int) (Math.ceil(y + height) - floor2));
    }

    public double getCenterX() {
        return getX() + (getWidth() / 2.0d);
    }

    public double getCenterY() {
        return getY() + (getHeight() / 2.0d);
    }

    public Rectangle2D getFrame() {
        return new Rectangle2D.Double(getX(), getY(), getWidth(), getHeight());
    }

    public abstract double getHeight();

    public double getMaxX() {
        return getX() + getWidth();
    }

    public double getMaxY() {
        return getY() + getHeight();
    }

    public double getMinX() {
        return getX();
    }

    public double getMinY() {
        return getY();
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new FlatteningPathIterator(getPathIterator(affineTransform), d);
    }

    public abstract double getWidth();

    public abstract double getX();

    public abstract double getY();

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return intersects(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public abstract boolean isEmpty();

    public abstract void setFrame(double d, double d2, double d3, double d4);

    public void setFrame(Point2D point2D, Dimension2D dimension2D) {
        setFrame(point2D.getX(), point2D.getY(), dimension2D.getWidth(), dimension2D.getHeight());
    }

    public void setFrameFromCenter(double d, double d2, double d3, double d4) {
        double abs = Math.abs(d3 - d);
        double abs2 = Math.abs(d4 - d2);
        setFrame(d - abs, d2 - abs2, abs * 2.0d, abs2 * 2.0d);
    }

    public void setFrameFromDiagonal(double d, double d2, double d3, double d4) {
        if (d3 < d) {
            d = d3;
            d3 = d;
        }
        if (d4 < d2) {
            d2 = d4;
            d4 = d2;
        }
        setFrame(d, d2, d3 - d, d4 - d2);
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return contains(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public void setFrame(Rectangle2D rectangle2D) {
        setFrame(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public void setFrameFromDiagonal(Point2D point2D, Point2D point2D2) {
        setFrameFromDiagonal(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY());
    }

    public void setFrameFromCenter(Point2D point2D, Point2D point2D2) {
        setFrameFromCenter(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY());
    }
}
