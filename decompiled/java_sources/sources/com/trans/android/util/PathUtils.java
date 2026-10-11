package com.trans.android.util;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.PathIterator;

/* loaded from: classes10.dex */
public class PathUtils {
    private PathUtils() {
        throw new UnsupportedOperationException();
    }

    public static Path getTextPath(Paint paint, String str) {
        return getTextPath(paint, str, 0.0f, 0.0f);
    }

    private static boolean isValidCoords(float[] fArr) {
        for (float f : fArr) {
            if (Float.isNaN(f)) {
                return false;
            }
        }
        return true;
    }

    public static Path toAndroidPath(Shape shape) {
        return toAndroidPath(shape, null);
    }

    public static Shape toJavaShape(Path path) {
        return toJavePath(path);
    }

    public static GeneralPath toJavePath(Path path) {
        return toJavePath(path, 0.0f, 0.0f);
    }

    public static Path getTextPath(Paint paint, String str, float f, float f2) {
        Path path = new Path();
        paint.getTextPath(str, 0, str.length(), f, f2, path);
        return path;
    }

    public static Path toAndroidPath(Shape shape, AffineTransform affineTransform) {
        PathIterator pathIterator = shape.getPathIterator(affineTransform);
        Path path = new Path();
        float[] fArr = new float[6];
        while (!pathIterator.isDone()) {
            if (pathIterator.getWindingRule() == 0) {
                path.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.setFillType(Path.FillType.WINDING);
            }
            int currentSegment = pathIterator.currentSegment(fArr);
            if (!isValidCoords(fArr)) {
                pathIterator.next();
            } else {
                if (currentSegment == 0) {
                    path.moveTo(fArr[0], fArr[1]);
                } else if (currentSegment == 1) {
                    path.lineTo(fArr[0], fArr[1]);
                } else if (currentSegment == 2) {
                    path.quadTo(fArr[0], fArr[1], fArr[2], fArr[3]);
                } else if (currentSegment == 3) {
                    path.cubicTo(fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
                } else if (currentSegment == 4) {
                    path.close();
                }
                pathIterator.next();
            }
        }
        return path;
    }

    public static GeneralPath toJavePath(Path path, float f, float f2) {
        GeneralPath generalPath = new GeneralPath();
        float[] fArr = new float[2];
        PathMeasure pathMeasure = new PathMeasure(path, true);
        int i = 0;
        do {
            float length = pathMeasure.getLength();
            float f3 = 0.0f;
            while (f3 < length) {
                pathMeasure.getPosTan(f3, fArr, null);
                if (f3 == 0.0f) {
                    generalPath.moveTo(fArr[0], fArr[1]);
                } else {
                    generalPath.lineTo(fArr[0], fArr[1]);
                }
                f3 += 1.0f;
                i++;
            }
        } while (pathMeasure.nextContour());
        if (i > 0) {
            generalPath.closePath();
        }
        if (f != 0.0f || f2 != 0.0f) {
            AffineTransform affineTransform = new AffineTransform();
            affineTransform.translate(f, f2);
            generalPath.transform(affineTransform);
        }
        return generalPath;
    }
}
