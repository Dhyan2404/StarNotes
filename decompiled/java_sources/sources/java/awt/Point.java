package java.awt;

import java.awt.geom.Point2D;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class Point extends Point2D implements Serializable {
    private static final long serialVersionUID = -5276940640259749850L;

    /* renamed from: x */
    public int f97730x;

    /* renamed from: y */
    public int f97731y;

    public Point() {
        this(0, 0);
    }

    @Override // java.awt.geom.Point2D
    public boolean equals(Object obj) {
        if (!(obj instanceof Point)) {
            return super.equals(obj);
        }
        Point point = (Point) obj;
        return this.f97730x == point.f97730x && this.f97731y == point.f97731y;
    }

    public Point getLocation() {
        return new Point(this.f97730x, this.f97731y);
    }

    @Override // java.awt.geom.Point2D
    public double getX() {
        return this.f97730x;
    }

    @Override // java.awt.geom.Point2D
    public double getY() {
        return this.f97731y;
    }

    public void move(int i, int i2) {
        this.f97730x = i;
        this.f97731y = i2;
    }

    public void setLocation(Point point) {
        setLocation(point.f97730x, point.f97731y);
    }

    public String toString() {
        return getClass().getName() + "[x=" + this.f97730x + ",y=" + this.f97731y + IteratorUtils.f104924b;
    }

    public void translate(int i, int i2) {
        this.f97730x += i;
        this.f97731y += i2;
    }

    public Point(Point point) {
        this(point.f97730x, point.f97731y);
    }

    public void setLocation(int i, int i2) {
        move(i, i2);
    }

    public Point(int i, int i2) {
        this.f97730x = i;
        this.f97731y = i2;
    }

    @Override // java.awt.geom.Point2D
    public void setLocation(double d, double d2) {
        this.f97730x = (int) Math.floor(d + 0.5d);
        this.f97731y = (int) Math.floor(d2 + 0.5d);
    }
}
