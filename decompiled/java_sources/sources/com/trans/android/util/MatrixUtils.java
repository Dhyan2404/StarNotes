package com.trans.android.util;

import android.graphics.Matrix;
import java.awt.geom.AffineTransform;

/* loaded from: classes10.dex */
public class MatrixUtils {
    public static AffineTransform convertMatrixToTransform(Matrix matrix) {
        float[] matrixValues = getMatrixValues(matrix);
        return new AffineTransform(new double[]{matrixValues[0], matrixValues[3], matrixValues[1], matrixValues[4], matrixValues[2], matrixValues[5]});
    }

    public static Matrix convertTransformToMatrix(AffineTransform affineTransform) {
        Matrix matrix = new Matrix();
        matrix.setValues(toMatrixValues(affineTransform));
        return matrix;
    }

    public static float[] getMatrixValues(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return fArr;
    }

    public static double getScaleX(AffineTransform affineTransform) {
        if ((affineTransform.getState() & 4) != 0) {
            long degree = RotaryUtils.getDegree(affineTransform);
            AffineTransform affineTransform2 = new AffineTransform(affineTransform);
            affineTransform2.rotate(Math.toRadians(90 - degree));
            affineTransform = affineTransform2;
        }
        return affineTransform.getScaleX();
    }

    public static float[] toMatrixValues(AffineTransform affineTransform) {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        return new float[]{(float) dArr[0], (float) dArr[2], (float) dArr[4], (float) dArr[1], (float) dArr[3], (float) dArr[5], 0.0f, 0.0f, 1.0f};
    }
}
