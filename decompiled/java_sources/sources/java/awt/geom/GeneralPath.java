package java.awt.geom;

import java.awt.Shape;
import java.awt.geom.Path2D;

/* loaded from: classes5.dex */
public final class GeneralPath extends Path2D.Float {
    private static final long serialVersionUID = -8327096662768731142L;

    public GeneralPath() {
        super(1, 20);
    }

    public GeneralPath(int i) {
        super(i, 20);
    }

    public GeneralPath(int i, int i2) {
        super(i, i2);
    }

    public GeneralPath(Shape shape) {
        super(shape, (AffineTransform) null);
    }

    public GeneralPath(int i, byte[] bArr, int i2, float[] fArr, int i3) {
        this.windingRule = i;
        this.pointTypes = bArr;
        this.numTypes = i2;
        this.floatCoords = fArr;
        this.numCoords = i3;
    }
}
