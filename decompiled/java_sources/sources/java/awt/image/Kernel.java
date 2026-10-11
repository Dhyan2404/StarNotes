package java.awt.image;

import java.awt.InternalError;

/* loaded from: classes5.dex */
public class Kernel implements Cloneable {
    private float[] data;
    private int height;
    private int width;
    private int xOrigin;
    private int yOrigin;

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public Kernel(int i, int i2, float[] fArr) {
        this.width = i;
        this.height = i2;
        this.xOrigin = (i - 1) >> 1;
        this.yOrigin = (i2 - 1) >> 1;
        int i3 = i * i2;
        if (fArr.length >= i3) {
            float[] fArr2 = new float[i3];
            this.data = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, i3);
        } else {
            throw new IllegalArgumentException("Data array too small (is " + fArr.length + " and should be " + i3);
        }
    }

    private static void initIDs() {
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public final int getHeight() {
        return this.height;
    }

    public final float[] getKernelData(float[] fArr) {
        if (fArr == null) {
            fArr = new float[this.data.length];
        } else if (fArr.length < this.data.length) {
            throw new IllegalArgumentException("Data array too small (should be " + this.data.length + " but is " + fArr.length + " )");
        }
        float[] fArr2 = this.data;
        System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
        return fArr;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getXOrigin() {
        return this.xOrigin;
    }

    public final int getYOrigin() {
        return this.yOrigin;
    }
}
