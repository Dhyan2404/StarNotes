package org.apache.poi.util;

import java.awt.geom.Dimension2D;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public class Dimension2DDouble extends Dimension2D {
    double height;
    double width;

    public Dimension2DDouble() {
        this.width = 0.0d;
        this.height = 0.0d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dimension2DDouble)) {
            return false;
        }
        Dimension2DDouble dimension2DDouble = (Dimension2DDouble) obj;
        return this.width == dimension2DDouble.width && this.height == dimension2DDouble.height;
    }

    @Override // java.awt.geom.Dimension2D
    public double getHeight() {
        return this.height;
    }

    @Override // java.awt.geom.Dimension2D
    public double getWidth() {
        return this.width;
    }

    public int hashCode() {
        double d = this.width;
        double d2 = this.height + d;
        return (int) Math.ceil(((d2 * (1.0d + d2)) / 2.0d) + d);
    }

    @Override // java.awt.geom.Dimension2D
    public void setSize(double d, double d2) {
        this.width = d;
        this.height = d2;
    }

    public String toString() {
        return "Dimension2DDouble[" + this.width + ", " + this.height + IteratorUtils.f104924b;
    }

    public Dimension2DDouble(double d, double d2) {
        this.width = d;
        this.height = d2;
    }
}
