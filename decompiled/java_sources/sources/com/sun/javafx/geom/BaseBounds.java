package com.sun.javafx.geom;

/* loaded from: classes9.dex */
public abstract class BaseBounds {

    /* loaded from: classes9.dex */
    public enum BoundsType {
        RECTANGLE,
        BOX
    }

    public static BaseBounds getInstance(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f3 == 0.0f && f6 == 0.0f) {
            return getInstance(f, f2, f4, f5);
        }
        return new BoxBounds(f, f2, f3, f4, f5, f6);
    }

    public abstract void add(float f, float f2, float f3);

    public abstract void add(Point2D point2D);

    public abstract boolean contains(float f, float f2);

    public abstract boolean contains(Point2D point2D);

    public abstract BaseBounds copy();

    public abstract BaseBounds deriveWithNewBounds(float f, float f2, float f3, float f4, float f5, float f6);

    public abstract BaseBounds deriveWithNewBounds(BaseBounds baseBounds);

    public abstract BaseBounds deriveWithNewBounds(Rectangle rectangle);

    public abstract BaseBounds deriveWithNewBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6);

    public abstract BaseBounds deriveWithPadding(float f, float f2, float f3);

    public abstract BaseBounds deriveWithUnion(BaseBounds baseBounds);

    public abstract boolean disjoint(float f, float f2, float f3, float f4);

    public abstract RectBounds flattenInto(RectBounds rectBounds);

    public abstract BoundsType getBoundsType();

    public abstract float getDepth();

    public abstract float getHeight();

    public abstract Vec2f getMax(Vec2f vec2f);

    public abstract Vec3f getMax(Vec3f vec3f);

    public abstract float getMaxX();

    public abstract float getMaxY();

    public abstract float getMaxZ();

    public abstract Vec2f getMin(Vec2f vec2f);

    public abstract Vec3f getMin(Vec3f vec3f);

    public abstract float getMinX();

    public abstract float getMinY();

    public abstract float getMinZ();

    public abstract float getWidth();

    public abstract void intersectWith(float f, float f2, float f3, float f4, float f5, float f6);

    public abstract void intersectWith(BaseBounds baseBounds);

    public abstract void intersectWith(Rectangle rectangle);

    public abstract boolean intersects(float f, float f2, float f3, float f4);

    public abstract boolean is2D();

    public abstract boolean isEmpty();

    public abstract BaseBounds makeEmpty();

    public abstract void roundOut();

    public abstract void setBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6);

    public abstract void setBoundsAndSort(Point2D point2D, Point2D point2D2);

    public abstract void sortMinMax();

    public abstract void translate(float f, float f2, float f3);

    public static BaseBounds getInstance(float f, float f2, float f3, float f4) {
        return new RectBounds(f, f2, f3, f4);
    }
}
