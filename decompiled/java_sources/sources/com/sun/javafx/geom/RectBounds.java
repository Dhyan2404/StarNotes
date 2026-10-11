package com.sun.javafx.geom;

import com.google.android.material.motion.MotionUtils;
import com.sun.javafx.geom.BaseBounds;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes9.dex */
public final class RectBounds extends BaseBounds {
    private float maxX;
    private float maxY;
    private float minX;
    private float minY;

    public RectBounds() {
        this.minY = 0.0f;
        this.minX = 0.0f;
        this.maxY = -1.0f;
        this.maxX = -1.0f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void add(float f, float f2, float f3) {
        if (f3 == 0.0f) {
            unionWith(f, f2, f, f2);
            return;
        }
        throw new UnsupportedOperationException("Unknown BoundsType");
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean contains(Point2D point2D) {
        if (point2D == null || isEmpty()) {
            return false;
        }
        float f = point2D.f64054x;
        if (f < this.minX || f > this.maxX) {
            return false;
        }
        float f2 = point2D.f64055y;
        return f2 >= this.minY && f2 <= this.maxY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds copy() {
        return new RectBounds(this.minX, this.minY, this.maxX, this.maxY);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(Rectangle rectangle) {
        int i;
        if (rectangle.width >= 0 && (i = rectangle.height) >= 0) {
            setBounds(rectangle.f64056x, rectangle.f64057y, r2 + r0, r6 + i);
            return this;
        }
        return makeEmpty();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f3 == 0.0f && f6 == 0.0f) {
            setBoundsAndSort(f, f2, f3, f4, f5, f6);
            return this;
        }
        BoxBounds boxBounds = new BoxBounds();
        boxBounds.setBoundsAndSort(f, f2, f3, f4, f5, f6);
        return boxBounds;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithPadding(float f, float f2, float f3) {
        if (f3 == 0.0f) {
            grow(f, f2);
            return this;
        }
        BoxBounds boxBounds = new BoxBounds(this.minX, this.minY, 0.0f, this.maxX, this.maxY, 0.0f);
        boxBounds.grow(f, f2, f3);
        return boxBounds;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithUnion(BaseBounds baseBounds) {
        if (baseBounds.getBoundsType() == BaseBounds.BoundsType.RECTANGLE) {
            unionWith((RectBounds) baseBounds);
            return this;
        }
        if (baseBounds.getBoundsType() != BaseBounds.BoundsType.BOX) {
            throw new UnsupportedOperationException("Unknown BoundsType");
        }
        BoxBounds boxBounds = new BoxBounds((BoxBounds) baseBounds);
        boxBounds.unionWith(this);
        return boxBounds;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean disjoint(float f, float f2, float f3, float f4) {
        return isEmpty() || f3 + f < this.minX || f4 + f2 < this.minY || f > this.maxX || f2 > this.maxY;
    }

    public boolean equals(Object obj) {
        if (obj == null || RectBounds.class != obj.getClass()) {
            return false;
        }
        RectBounds rectBounds = (RectBounds) obj;
        return this.minX == rectBounds.getMinX() && this.minY == rectBounds.getMinY() && this.maxX == rectBounds.getMaxX() && this.maxY == rectBounds.getMaxY();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public RectBounds flattenInto(RectBounds rectBounds) {
        if (rectBounds == null) {
            rectBounds = new RectBounds();
        }
        if (isEmpty()) {
            return rectBounds.makeEmpty();
        }
        rectBounds.setBounds(this.minX, this.minY, this.maxX, this.maxY);
        return rectBounds;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds.BoundsType getBoundsType() {
        return BaseBounds.BoundsType.RECTANGLE;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getDepth() {
        return 0.0f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getHeight() {
        return this.maxY - this.minY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec2f getMax(Vec2f vec2f) {
        if (vec2f == null) {
            vec2f = new Vec2f();
        }
        vec2f.f64058x = this.maxX;
        vec2f.f64059y = this.maxY;
        return vec2f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMaxX() {
        return this.maxX;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMaxY() {
        return this.maxY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMaxZ() {
        return 0.0f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec2f getMin(Vec2f vec2f) {
        if (vec2f == null) {
            vec2f = new Vec2f();
        }
        vec2f.f64058x = this.minX;
        vec2f.f64059y = this.minY;
        return vec2f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMinX() {
        return this.minX;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMinY() {
        return this.minY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getMinZ() {
        return 0.0f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getWidth() {
        return this.maxX - this.minX;
    }

    public void grow(float f, float f2) {
        this.minX -= f;
        this.maxX += f;
        this.minY -= f2;
        this.maxY += f2;
    }

    public int hashCode() {
        return ((((((StandardNames.XS_NORMALIZED_STRING + Float.floatToIntBits(this.minX)) * 79) + Float.floatToIntBits(this.minY)) * 79) + Float.floatToIntBits(this.maxX)) * 79) + Float.floatToIntBits(this.maxY);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void intersectWith(BaseBounds baseBounds) {
        if (isEmpty()) {
            return;
        }
        if (baseBounds.isEmpty()) {
            makeEmpty();
            return;
        }
        this.minX = Math.max(this.minX, baseBounds.getMinX());
        this.minY = Math.max(this.minY, baseBounds.getMinY());
        this.maxX = Math.min(this.maxX, baseBounds.getMaxX());
        this.maxY = Math.min(this.maxY, baseBounds.getMaxY());
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean intersects(float f, float f2, float f3, float f4) {
        return !isEmpty() && f3 + f >= this.minX && f4 + f2 >= this.minY && f <= this.maxX && f2 <= this.maxY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean is2D() {
        return true;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean isEmpty() {
        return this.maxX < this.minX || this.maxY < this.minY;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void roundOut() {
        this.minX = (float) Math.floor(this.minX);
        this.minY = (float) Math.floor(this.minY);
        this.maxX = (float) Math.ceil(this.maxX);
        this.maxY = (float) Math.ceil(this.maxY);
    }

    public final void setBounds(RectBounds rectBounds) {
        this.minX = rectBounds.getMinX();
        this.minY = rectBounds.getMinY();
        this.maxX = rectBounds.getMaxX();
        this.maxY = rectBounds.getMaxY();
    }

    public void setBoundsAndSort(float f, float f2, float f3, float f4) {
        setBounds(f, f2, f3, f4);
        sortMinMax();
    }

    public void setMaxX(float f) {
        this.maxX = f;
    }

    public void setMaxY(float f) {
        this.maxY = f;
    }

    public void setMinX(float f) {
        this.minX = f;
    }

    public void setMinY(float f) {
        this.minY = f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void sortMinMax() {
        float f = this.minX;
        float f2 = this.maxX;
        if (f > f2) {
            this.maxX = f;
            this.minX = f2;
        }
        float f3 = this.minY;
        float f4 = this.maxY;
        if (f3 > f4) {
            this.maxY = f3;
            this.minY = f4;
        }
    }

    public String toString() {
        return "RectBounds { minX:" + this.minX + ", minY:" + this.minY + ", maxX:" + this.maxX + ", maxY:" + this.maxY + "} (w:" + (this.maxX - this.minX) + ", h:" + (this.maxY - this.minY) + MotionUtils.f31762d;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void translate(float f, float f2, float f3) {
        setMinX(getMinX() + f);
        setMinY(getMinY() + f2);
        setMaxX(getMaxX() + f);
        setMaxY(getMaxY() + f2);
    }

    public void unionWith(RectBounds rectBounds) {
        if (rectBounds.isEmpty()) {
            return;
        }
        if (isEmpty()) {
            setBounds(rectBounds);
            return;
        }
        this.minX = Math.min(this.minX, rectBounds.getMinX());
        this.minY = Math.min(this.minY, rectBounds.getMinY());
        this.maxX = Math.max(this.maxX, rectBounds.getMaxX());
        this.maxY = Math.max(this.maxY, rectBounds.getMaxY());
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public RectBounds makeEmpty() {
        this.minY = 0.0f;
        this.minX = 0.0f;
        this.maxY = -1.0f;
        this.maxX = -1.0f;
        return this;
    }

    public void add(float f, float f2) {
        unionWith(f, f2, f, f2);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean contains(float f, float f2) {
        return !isEmpty() && f >= this.minX && f <= this.maxX && f2 >= this.minY && f2 <= this.maxY;
    }

    public boolean disjoint(RectBounds rectBounds) {
        return rectBounds == null || rectBounds.isEmpty() || isEmpty() || rectBounds.getMaxX() < this.minX || rectBounds.getMaxY() < this.minY || rectBounds.getMinX() > this.maxX || rectBounds.getMinY() > this.maxY;
    }

    public boolean intersects(BaseBounds baseBounds) {
        return baseBounds != null && !baseBounds.isEmpty() && !isEmpty() && baseBounds.getMaxX() >= this.minX && baseBounds.getMaxY() >= this.minY && baseBounds.getMaxZ() >= getMinZ() && baseBounds.getMinX() <= this.maxX && baseBounds.getMinY() <= this.maxY && baseBounds.getMinZ() <= getMaxZ();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void setBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f3 == 0.0f && f6 == 0.0f) {
            setBounds(f, f2, f4, f5);
            sortMinMax();
            return;
        }
        throw new UnsupportedOperationException("Unknown BoundsType");
    }

    public RectBounds(float f, float f2, float f3, float f4) {
        setBounds(f, f2, f3, f4);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void add(Point2D point2D) {
        add(point2D.f64054x, point2D.f64055y);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(BaseBounds baseBounds) {
        if (baseBounds.isEmpty()) {
            return makeEmpty();
        }
        if (baseBounds.getBoundsType() == BaseBounds.BoundsType.RECTANGLE) {
            RectBounds rectBounds = (RectBounds) baseBounds;
            this.minX = rectBounds.getMinX();
            this.minY = rectBounds.getMinY();
            this.maxX = rectBounds.getMaxX();
            this.maxY = rectBounds.getMaxY();
            return this;
        }
        if (baseBounds.getBoundsType() == BaseBounds.BoundsType.BOX) {
            return new BoxBounds((BoxBounds) baseBounds);
        }
        throw new UnsupportedOperationException("Unknown BoundsType");
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec3f getMax(Vec3f vec3f) {
        if (vec3f == null) {
            vec3f = new Vec3f();
        }
        vec3f.f64060x = this.maxX;
        vec3f.f64061y = this.maxY;
        vec3f.f64062z = 0.0f;
        return vec3f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec3f getMin(Vec3f vec3f) {
        if (vec3f == null) {
            vec3f = new Vec3f();
        }
        vec3f.f64060x = this.minX;
        vec3f.f64061y = this.minY;
        vec3f.f64062z = 0.0f;
        return vec3f;
    }

    public boolean contains(RectBounds rectBounds) {
        return !isEmpty() && !rectBounds.isEmpty() && this.minX <= rectBounds.minX && this.maxX >= rectBounds.maxX && this.minY <= rectBounds.minY && this.maxY >= rectBounds.maxY;
    }

    public final void setBounds(float f, float f2, float f3, float f4) {
        this.minX = f;
        this.minY = f2;
        this.maxX = f3;
        this.maxY = f4;
    }

    public RectBounds(RectBounds rectBounds) {
        setBounds(rectBounds);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void setBoundsAndSort(Point2D point2D, Point2D point2D2) {
        setBoundsAndSort(point2D.f64054x, point2D.f64055y, point2D2.f64054x, point2D2.f64055y);
    }

    public RectBounds(Rectangle rectangle) {
        setBounds(rectangle.f64056x, rectangle.f64057y, r0 + rectangle.width, r2 + rectangle.height);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void intersectWith(Rectangle rectangle) {
        float f = rectangle.f64056x;
        float f2 = rectangle.f64057y;
        intersectWith(f, f2, rectangle.width + f, rectangle.height + f2);
    }

    public void unionWith(float f, float f2, float f3, float f4) {
        if (f3 < f || f4 < f2) {
            return;
        }
        if (isEmpty()) {
            setBounds(f, f2, f3, f4);
            return;
        }
        this.minX = Math.min(this.minX, f);
        this.minY = Math.min(this.minY, f2);
        this.maxX = Math.max(this.maxX, f3);
        this.maxY = Math.max(this.maxY, f4);
    }

    public void intersectWith(float f, float f2, float f3, float f4) {
        if (isEmpty()) {
            return;
        }
        if (f3 >= f && f4 >= f2) {
            this.minX = Math.max(this.minX, f);
            this.minY = Math.max(this.minY, f2);
            this.maxX = Math.min(this.maxX, f3);
            this.maxY = Math.min(this.maxY, f4);
            return;
        }
        makeEmpty();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f4 < f || f5 < f2 || f6 < f3) {
            return makeEmpty();
        }
        if (f3 == 0.0f && f6 == 0.0f) {
            this.minX = f;
            this.minY = f2;
            this.maxX = f4;
            this.maxY = f5;
            return this;
        }
        return new BoxBounds(f, f2, f3, f4, f5, f6);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void intersectWith(float f, float f2, float f3, float f4, float f5, float f6) {
        if (isEmpty()) {
            return;
        }
        if (f4 >= f && f5 >= f2 && f6 >= f3) {
            this.minX = Math.max(this.minX, f);
            this.minY = Math.max(this.minY, f2);
            this.maxX = Math.min(this.maxX, f4);
            this.maxY = Math.min(this.maxY, f5);
            return;
        }
        makeEmpty();
    }
}
