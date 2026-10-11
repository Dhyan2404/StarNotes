package com.sun.javafx.geom;

import com.sun.javafx.geom.BaseBounds;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes9.dex */
public class BoxBounds extends BaseBounds {
    private float maxX;
    private float maxY;
    private float maxZ;
    private float minX;
    private float minY;
    private float minZ;

    public BoxBounds() {
        this.minZ = 0.0f;
        this.minY = 0.0f;
        this.minX = 0.0f;
        this.maxZ = -1.0f;
        this.maxY = -1.0f;
        this.maxX = -1.0f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void add(float f, float f2, float f3) {
        unionWith(f, f2, f3, f, f2, f3);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean contains(Point2D point2D) {
        if (point2D == null || isEmpty()) {
            return false;
        }
        return contains(point2D.f64054x, point2D.f64055y, 0.0f);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds copy() {
        return new BoxBounds(this.minX, this.minY, this.minZ, this.maxX, this.maxY, this.maxZ);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(Rectangle rectangle) {
        int i;
        if (rectangle.width >= 0 && (i = rectangle.height) >= 0) {
            setBounds(rectangle.f64056x, rectangle.f64057y, 0.0f, r2 + r0, r11 + i, 0.0f);
            return this;
        }
        return makeEmpty();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6) {
        setBoundsAndSort(f, f2, f3, f4, f5, f6);
        return this;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithPadding(float f, float f2, float f3) {
        grow(f, f2, f3);
        return this;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithUnion(BaseBounds baseBounds) {
        if (baseBounds.getBoundsType() != BaseBounds.BoundsType.RECTANGLE && baseBounds.getBoundsType() != BaseBounds.BoundsType.BOX) {
            throw new UnsupportedOperationException("Unknown BoundsType");
        }
        unionWith(baseBounds);
        return this;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean disjoint(float f, float f2, float f3, float f4) {
        return disjoint(f, f2, 0.0f, f3, f4, 0.0f);
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BoxBounds boxBounds = (BoxBounds) obj;
        return this.minX == boxBounds.getMinX() && this.minY == boxBounds.getMinY() && this.minZ == boxBounds.getMinZ() && this.maxX == boxBounds.getMaxX() && this.maxY == boxBounds.getMaxY() && this.maxZ == boxBounds.getMaxZ();
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
        return BaseBounds.BoundsType.BOX;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getDepth() {
        return this.maxZ - this.minZ;
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
        return this.maxZ;
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
        return this.minZ;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public float getWidth() {
        return this.maxX - this.minX;
    }

    public void grow(float f, float f2, float f3) {
        this.minX -= f;
        this.maxX += f;
        this.minY -= f2;
        this.maxY += f2;
        this.minZ -= f3;
        this.maxZ += f3;
    }

    public int hashCode() {
        return ((((((((((StandardNames.XS_NORMALIZED_STRING + Float.floatToIntBits(this.minX)) * 79) + Float.floatToIntBits(this.minY)) * 79) + Float.floatToIntBits(this.minZ)) * 79) + Float.floatToIntBits(this.maxX)) * 79) + Float.floatToIntBits(this.maxY)) * 79) + Float.floatToIntBits(this.maxZ);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void intersectWith(Rectangle rectangle) {
        float f = rectangle.f64056x;
        float f2 = rectangle.f64057y;
        intersectWith(f, f2, 0.0f, f + rectangle.width, f2 + rectangle.height, 0.0f);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean intersects(float f, float f2, float f3, float f4) {
        return intersects(f, f2, 0.0f, f3, f4, 0.0f);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean is2D() {
        return false;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean isEmpty() {
        return this.maxX < this.minX || this.maxY < this.minY || this.maxZ < this.minZ;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void roundOut() {
        this.minX = (float) Math.floor(this.minX);
        this.minY = (float) Math.floor(this.minY);
        this.minZ = (float) Math.floor(this.minZ);
        this.maxX = (float) Math.ceil(this.maxX);
        this.maxY = (float) Math.ceil(this.maxY);
        this.maxZ = (float) Math.ceil(this.maxZ);
    }

    public final void setBounds(BaseBounds baseBounds) {
        this.minX = baseBounds.getMinX();
        this.minY = baseBounds.getMinY();
        this.minZ = baseBounds.getMinZ();
        this.maxX = baseBounds.getMaxX();
        this.maxY = baseBounds.getMaxY();
        this.maxZ = baseBounds.getMaxZ();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void setBoundsAndSort(float f, float f2, float f3, float f4, float f5, float f6) {
        setBounds(f, f2, f3, f4, f5, f6);
        sortMinMax();
    }

    public void setMaxX(float f) {
        this.maxX = f;
    }

    public void setMaxY(float f) {
        this.maxY = f;
    }

    public void setMaxZ(float f) {
        this.maxZ = f;
    }

    public void setMinX(float f) {
        this.minX = f;
    }

    public void setMinY(float f) {
        this.minY = f;
    }

    public void setMinZ(float f) {
        this.minZ = f;
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
        float f5 = this.minZ;
        float f6 = this.maxZ;
        if (f5 > f6) {
            this.maxZ = f5;
            this.minZ = f6;
        }
    }

    public String toString() {
        return "BoxBounds { minX:" + this.minX + ", minY:" + this.minY + ", minZ:" + this.minZ + ", maxX:" + this.maxX + ", maxY:" + this.maxY + ", maxZ:" + this.maxZ + "}";
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void translate(float f, float f2, float f3) {
        setMinX(getMinX() + f);
        setMinY(getMinY() + f2);
        setMaxX(getMaxX() + f);
        setMaxY(getMaxY() + f2);
    }

    public void unionWith(BaseBounds baseBounds) {
        if (baseBounds.isEmpty()) {
            return;
        }
        if (isEmpty()) {
            setBounds(baseBounds);
            return;
        }
        this.minX = Math.min(this.minX, baseBounds.getMinX());
        this.minY = Math.min(this.minY, baseBounds.getMinY());
        this.minZ = Math.min(this.minZ, baseBounds.getMinZ());
        this.maxX = Math.max(this.maxX, baseBounds.getMaxX());
        this.maxY = Math.max(this.maxY, baseBounds.getMaxY());
        this.maxZ = Math.max(this.maxZ, baseBounds.getMaxZ());
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void add(Point2D point2D) {
        add(point2D.f64054x, point2D.f64055y, 0.0f);
    }

    public boolean disjoint(float f, float f2, float f3, float f4, float f5, float f6) {
        return isEmpty() || f4 + f < this.minX || f5 + f2 < this.minY || f6 + f3 < this.minZ || f > this.maxX || f2 > this.maxY || f3 > this.maxZ;
    }

    public boolean intersects(float f, float f2, float f3, float f4, float f5, float f6) {
        return !isEmpty() && f4 + f >= this.minX && f5 + f2 >= this.minY && f6 + f3 >= this.minZ && f <= this.maxX && f2 <= this.maxY && f3 <= this.maxZ;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BoxBounds makeEmpty() {
        this.minZ = 0.0f;
        this.minY = 0.0f;
        this.minX = 0.0f;
        this.maxZ = -1.0f;
        this.maxY = -1.0f;
        this.maxX = -1.0f;
        return this;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public boolean contains(float f, float f2) {
        if (isEmpty()) {
            return false;
        }
        return contains(f, f2, 0.0f);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void setBoundsAndSort(Point2D point2D, Point2D point2D2) {
        setBoundsAndSort(point2D.f64054x, point2D.f64055y, 0.0f, point2D2.f64054x, point2D2.f64055y, 0.0f);
    }

    public BoxBounds(float f, float f2, float f3, float f4, float f5, float f6) {
        setBounds(f, f2, f3, f4, f5, f6);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(BaseBounds baseBounds) {
        if (baseBounds.isEmpty()) {
            return makeEmpty();
        }
        if (baseBounds.getBoundsType() != BaseBounds.BoundsType.RECTANGLE && baseBounds.getBoundsType() != BaseBounds.BoundsType.BOX) {
            throw new UnsupportedOperationException("Unknown BoundsType");
        }
        this.minX = baseBounds.getMinX();
        this.minY = baseBounds.getMinY();
        this.minZ = baseBounds.getMinZ();
        this.maxX = baseBounds.getMaxX();
        this.maxY = baseBounds.getMaxY();
        this.maxZ = baseBounds.getMaxZ();
        return this;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec3f getMax(Vec3f vec3f) {
        if (vec3f == null) {
            vec3f = new Vec3f();
        }
        vec3f.f64060x = this.maxX;
        vec3f.f64061y = this.maxY;
        vec3f.f64062z = this.maxZ;
        return vec3f;
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public Vec3f getMin(Vec3f vec3f) {
        if (vec3f == null) {
            vec3f = new Vec3f();
        }
        vec3f.f64060x = this.minX;
        vec3f.f64061y = this.minY;
        vec3f.f64062z = this.minZ;
        return vec3f;
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
        this.minZ = Math.max(this.minZ, baseBounds.getMinZ());
        this.maxX = Math.min(this.maxX, baseBounds.getMaxX());
        this.maxY = Math.min(this.maxY, baseBounds.getMaxY());
        this.maxZ = Math.min(this.maxZ, baseBounds.getMaxZ());
    }

    public boolean intersects(BaseBounds baseBounds) {
        return baseBounds != null && !baseBounds.isEmpty() && !isEmpty() && baseBounds.getMaxX() >= this.minX && baseBounds.getMaxY() >= this.minY && baseBounds.getMaxZ() >= this.minZ && baseBounds.getMinX() <= this.maxX && baseBounds.getMinY() <= this.maxY && baseBounds.getMinZ() <= this.maxZ;
    }

    public boolean contains(float f, float f2, float f3) {
        return !isEmpty() && f >= this.minX && f <= this.maxX && f2 >= this.minY && f2 <= this.maxY && f3 >= this.minZ && f3 <= this.maxZ;
    }

    public BoxBounds(BoxBounds boxBounds) {
        setBounds(boxBounds);
    }

    public boolean contains(float f, float f2, float f3, float f4, float f5, float f6) {
        return !isEmpty() && contains(f, f2, f3) && contains(f + f4, f2 + f5, f3 + f6);
    }

    public final void setBounds(float f, float f2, float f3, float f4, float f5, float f6) {
        this.minX = f;
        this.minY = f2;
        this.minZ = f3;
        this.maxX = f4;
        this.maxY = f5;
        this.maxZ = f6;
    }

    public void unionWith(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f4 < f || f5 < f2 || f6 < f3) {
            return;
        }
        if (isEmpty()) {
            setBounds(f, f2, f3, f4, f5, f6);
            return;
        }
        this.minX = Math.min(this.minX, f);
        this.minY = Math.min(this.minY, f2);
        this.minZ = Math.min(this.minZ, f3);
        this.maxX = Math.max(this.maxX, f4);
        this.maxY = Math.max(this.maxY, f5);
        this.maxZ = Math.max(this.maxZ, f6);
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public void intersectWith(float f, float f2, float f3, float f4, float f5, float f6) {
        if (isEmpty()) {
            return;
        }
        if (f4 >= f && f5 >= f2 && f6 >= f3) {
            this.minX = Math.max(this.minX, f);
            this.minY = Math.max(this.minY, f2);
            this.minZ = Math.max(this.minZ, f3);
            this.maxX = Math.min(this.maxX, f4);
            this.maxY = Math.min(this.maxY, f5);
            this.maxZ = Math.min(this.maxZ, f6);
            return;
        }
        makeEmpty();
    }

    @Override // com.sun.javafx.geom.BaseBounds
    public BaseBounds deriveWithNewBounds(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f4 >= f && f5 >= f2 && f6 >= f3) {
            this.minX = f;
            this.minY = f2;
            this.minZ = f3;
            this.maxX = f4;
            this.maxY = f5;
            this.maxZ = f6;
            return this;
        }
        return makeEmpty();
    }
}
