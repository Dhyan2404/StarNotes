package com.sunia.calculatorv2.ink.graphics;

import java.util.Iterator;

/* loaded from: classes10.dex */
public class BoundBox {
    public static final BoundBox EMPTY = new BoundBox(Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public BoundBox(float f, float f2, float f3, float f4) {
        this.left = f;
        this.right = f2;
        this.top = f3;
        this.bottom = f4;
    }

    public static BoundBox intersect(BoundBox boundBox, BoundBox boundBox2) {
        return new BoundBox(Math.max(boundBox.getLeft(), boundBox2.getLeft()), Math.min(boundBox.getRight(), boundBox2.getRight()), Math.max(boundBox.getTop(), boundBox2.getTop()), Math.min(boundBox.getBottom(), boundBox2.getBottom()));
    }

    public static boolean isContain(BoundBox boundBox, BoundBox boundBox2) {
        return boundBox.getLeft() <= boundBox2.getLeft() && boundBox2.getRight() <= boundBox.getRight() && boundBox.getTop() <= boundBox2.getTop() && boundBox2.getBottom() <= boundBox.getBottom();
    }

    public static boolean isIntersect(BoundBox boundBox, BoundBox boundBox2) {
        return boundBox.getLeft() <= boundBox2.getRight() && boundBox2.getLeft() <= boundBox.getRight() && boundBox.getTop() <= boundBox2.getBottom() && boundBox2.getTop() <= boundBox.getBottom();
    }

    public static BoundBox union(BoundBox boundBox, BoundBox boundBox2) {
        return new BoundBox(Math.min(boundBox.getLeft(), boundBox2.getLeft()), Math.max(boundBox.getRight(), boundBox2.getRight()), Math.min(boundBox.getTop(), boundBox2.getTop()), Math.max(boundBox.getBottom(), boundBox2.getBottom()));
    }

    public boolean contains(float f, float f2) {
        return f >= this.left && f <= this.right && f2 >= this.top && f2 <= this.bottom;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BoundBox) {
            BoundBox boundBox = (BoundBox) obj;
            if (boundBox.left == this.left && boundBox.right == this.right && boundBox.top == this.top && boundBox.bottom == this.bottom) {
                return true;
            }
        }
        return false;
    }

    public float getArea() {
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return 0.0f;
        }
        return width * height;
    }

    public float getBottom() {
        return this.bottom;
    }

    public float getCenterX() {
        return (this.left + this.right) * 0.5f;
    }

    public float getCenterY() {
        return (this.top + this.bottom) * 0.5f;
    }

    public float getHeight() {
        return (this.bottom - this.top) + 1.0E-18f;
    }

    public float getLeft() {
        return this.left;
    }

    public float getRight() {
        return this.right;
    }

    public float getSquaredDiagonal() {
        float width = getWidth();
        float height = getHeight();
        return (width * width) + (height * height);
    }

    public float getTop() {
        return this.top;
    }

    public float getWidth() {
        return (this.right - this.left) + 1.0E-18f;
    }

    public int hashCode() {
        return ((((((Float.floatToIntBits(this.left) + 511) * 73) + Float.floatToIntBits(this.right)) * 73) + Float.floatToIntBits(this.top)) * 73) + Float.floatToIntBits(this.bottom);
    }

    public boolean isNonempty() {
        return this.left <= this.right && this.top <= this.bottom;
    }

    public BoundBox scale(float f) {
        return new BoundBox(this.left * f, this.right * f, this.top * f, this.bottom * f);
    }

    public String toString() {
        return this.left + "," + this.right + "," + this.top + "," + this.bottom;
    }

    public BoundBox translate(float f, float f2) {
        return (f == 0.0f && f2 == 0.0f) ? this : new BoundBox(this.left + f, this.right + f, this.top + f2, this.bottom + f2);
    }

    public static BoundBox union(Iterator<? extends BoundBox> it2) {
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        float f3 = -3.4028235E38f;
        float f4 = Float.MAX_VALUE;
        while (it2.hasNext()) {
            BoundBox next = it2.next();
            float f5 = next.left;
            if (f5 < f) {
                f = f5;
            }
            float f6 = next.top;
            if (f6 < f4) {
                f4 = f6;
            }
            float f7 = next.right;
            if (f7 > f2) {
                f2 = f7;
            }
            float f8 = next.bottom;
            if (f8 > f3) {
                f3 = f8;
            }
        }
        return new BoundBox(f, f2, f4, f3);
    }
}
