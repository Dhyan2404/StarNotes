package com.trans.android.util;

import android.graphics.Matrix;
import java.awt.geom.AffineTransform;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;

/* loaded from: classes10.dex */
public class RotaryUtils {
    public static final int ROTATE_0 = 0;
    public static final int ROTATE_180 = 180;
    public static final int ROTATE_270 = 270;
    public static final int ROTATE_90 = 90;

    public static double getAngle(Matrix matrix) {
        matrix.getValues(new float[9]);
        return new Rotation(r0[0], r0[1], r0[3], r0[4], true).getAngle();
    }

    public static long getDegree(Matrix matrix) {
        matrix.getValues(new float[9]);
        return Math.round((new Rotation(r0[0], r0[1], r0[3], r0[4], true).getAngle() * 180.0d) / 3.141592653589793d);
    }

    public static boolean isHorizontal(long j) {
        return (j / 90) % 2 == 1;
    }

    public static boolean isInitialDegree(long j) {
        return (j / 90) % 2 == 1;
    }

    public static boolean nonRotate(Matrix matrix) {
        return getDegree(matrix) == 90;
    }

    public static boolean nonRotate(AffineTransform affineTransform) {
        return getDegree(affineTransform) == 90;
    }

    public static double getAngle(AffineTransform affineTransform) {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        double d = dArr[0];
        double d2 = dArr[1];
        return new Rotation(d, d2, d2, dArr[3], true).getAngle();
    }

    public static long getDegree(AffineTransform affineTransform) {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        double d = dArr[0];
        double d2 = dArr[1];
        return Math.round((new Rotation(d, d2, d2, dArr[3], true).getAngle() * 180.0d) / 3.141592653589793d);
    }

    public static double getDegree(double d, double d2) {
        double degrees = Math.toDegrees(Math.atan2(d, d2));
        return degrees >= -90.0d ? degrees - 90.0d : degrees + 270.0d;
    }
}
