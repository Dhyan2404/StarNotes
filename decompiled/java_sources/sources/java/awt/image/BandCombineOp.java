package java.awt.image;

import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.Arrays;
import sun.awt.image.ImagingLib;

/* loaded from: classes5.dex */
public class BandCombineOp implements RasterOp {
    RenderingHints hints;
    float[][] matrix;
    int ncols;
    int nrows;

    public BandCombineOp(float[][] fArr, RenderingHints renderingHints) {
        this.nrows = 0;
        this.ncols = 0;
        int length = fArr.length;
        this.nrows = length;
        this.ncols = fArr[0].length;
        this.matrix = new float[length];
        for (int i = 0; i < this.nrows; i++) {
            int i2 = this.ncols;
            float[] fArr2 = fArr[i];
            if (i2 > fArr2.length) {
                throw new IndexOutOfBoundsException("row " + i + " too short");
            }
            this.matrix[i] = Arrays.copyOf(fArr2, i2);
        }
        this.hints = renderingHints;
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        int numBands = raster.getNumBands();
        int i = this.ncols;
        if (i == numBands || i == numBands + 1) {
            if (raster.getNumBands() == this.nrows) {
                return raster.createCompatibleWritableRaster();
            }
            throw new IllegalArgumentException("Don't know how to create a  compatible Raster with " + this.nrows + " bands.");
        }
        throw new IllegalArgumentException("Number of columns in the matrix (" + this.ncols + ") must be equal to the number of bands ([+1]) in src (" + numBands + ").");
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        WritableRaster writableRaster2;
        Raster raster2 = raster;
        int numBands = raster.getNumBands();
        int i = this.ncols;
        if (i != numBands && i != numBands + 1) {
            throw new IllegalArgumentException("Number of columns in the matrix (" + this.ncols + ") must be equal to the number of bands ([+1]) in src (" + numBands + ").");
        }
        if (writableRaster == null) {
            writableRaster2 = createCompatibleDestRaster(raster);
        } else {
            if (this.nrows != writableRaster.getNumBands()) {
                throw new IllegalArgumentException("Number of rows in the matrix (" + this.nrows + ") must be equal to the number of bands ([+1]) in dst (" + numBands + ").");
            }
            writableRaster2 = writableRaster;
        }
        if (ImagingLib.filter(this, raster2, writableRaster2) != null) {
            return writableRaster2;
        }
        int[] iArr = new int[writableRaster2.getNumBands()];
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        int minX2 = writableRaster2.getMinX();
        int minY2 = writableRaster2.getMinY();
        int[] iArr2 = null;
        if (this.ncols == numBands) {
            int i2 = 0;
            while (i2 < raster.getHeight()) {
                int i3 = minX;
                int i4 = minX2;
                int i5 = 0;
                while (i5 < raster.getWidth()) {
                    iArr2 = raster2.getPixel(i3, minY, iArr2);
                    int i6 = 0;
                    while (i6 < this.nrows) {
                        int i7 = minX;
                        int i8 = 0;
                        float f = 0.0f;
                        while (i8 < this.ncols) {
                            f += this.matrix[i6][i8] * iArr2[i8];
                            i8++;
                            minX2 = minX2;
                        }
                        iArr[i6] = (int) f;
                        i6++;
                        minX = i7;
                    }
                    writableRaster2.setPixel(i4, minY2, iArr);
                    i5++;
                    i3++;
                    i4++;
                }
                i2++;
                minY++;
                minY2++;
            }
        } else {
            int i9 = 0;
            while (i9 < raster.getHeight()) {
                int i10 = minX;
                int i11 = minX2;
                int i12 = 0;
                while (i12 < raster.getWidth()) {
                    iArr2 = raster2.getPixel(i10, minY, iArr2);
                    for (int i13 = 0; i13 < this.nrows; i13++) {
                        float f2 = 0.0f;
                        for (int i14 = 0; i14 < numBands; i14++) {
                            f2 += this.matrix[i13][i14] * iArr2[i14];
                        }
                        iArr[i13] = (int) (f2 + this.matrix[i13][numBands]);
                    }
                    writableRaster2.setPixel(i11, minY2, iArr);
                    i12++;
                    i10++;
                    i11++;
                    raster2 = raster;
                }
                i9++;
                minY++;
                minY2++;
                raster2 = raster;
            }
        }
        return writableRaster2;
    }

    @Override // java.awt.image.RasterOp
    public final Rectangle2D getBounds2D(Raster raster) {
        return raster.getBounds();
    }

    public final float[][] getMatrix() {
        float[][] fArr = new float[this.nrows];
        for (int i = 0; i < this.nrows; i++) {
            fArr[i] = Arrays.copyOf(this.matrix[i], this.ncols);
        }
        return fArr;
    }

    @Override // java.awt.image.RasterOp
    public final Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            point2D2 = new Point2D.Float();
        }
        point2D2.setLocation(point2D.getX(), point2D.getY());
        return point2D2;
    }

    @Override // java.awt.image.RasterOp
    public final RenderingHints getRenderingHints() {
        return this.hints;
    }
}
