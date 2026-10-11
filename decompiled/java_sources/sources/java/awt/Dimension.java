package java.awt;

import java.awt.geom.Dimension2D;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class Dimension extends Dimension2D implements Serializable {
    private static final long serialVersionUID = 4723952579491349524L;
    public int height;
    public int width;

    public Dimension() {
        this(0, 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dimension)) {
            return false;
        }
        Dimension dimension = (Dimension) obj;
        return this.width == dimension.width && this.height == dimension.height;
    }

    @Override // java.awt.geom.Dimension2D
    public double getHeight() {
        return this.height;
    }

    public Dimension getSize() {
        return new Dimension(this.width, this.height);
    }

    @Override // java.awt.geom.Dimension2D
    public double getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i = this.width;
        int i2 = this.height + i;
        return ((i2 * (i2 + 1)) / 2) + i;
    }

    @Override // java.awt.geom.Dimension2D
    public void setSize(double d, double d2) {
        this.width = (int) Math.ceil(d);
        this.height = (int) Math.ceil(d2);
    }

    public String toString() {
        return getClass().getName() + "[width=" + this.width + ",height=" + this.height + IteratorUtils.f104924b;
    }

    public Dimension(Dimension dimension) {
        this(dimension.width, dimension.height);
    }

    public Dimension(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public void setSize(Dimension dimension) {
        setSize(dimension.width, dimension.height);
    }

    public void setSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }
}
