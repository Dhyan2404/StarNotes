package org.apache.poi.sl.draw.geom;

import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.util.BezierUtils;

/* loaded from: classes12.dex */
public class OutlineDecoration {
    private List<float[]> coordsList;
    private Outline outline;
    private List<Integer> types;

    public OutlineDecoration(Outline outline) {
        this.outline = outline;
    }

    private float[][] convert(float[] fArr, Point2D.Float r8) {
        int i = r8 == null ? 0 : 1;
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, (fArr.length / 2) + i, 2);
        if (r8 != null) {
            float[] fArr3 = fArr2[0];
            fArr3[0] = r8.f97777x;
            fArr3[1] = r8.f97778y;
        }
        for (int i2 = i; i2 < fArr2.length; i2++) {
            for (int i3 = 0; i3 < 2; i3++) {
                fArr2[i2][i3] = fArr[((i2 - i) * 2) + i3];
            }
        }
        return fArr2;
    }

    private Rectangle2D getHeadDecorationAnchor() {
        initCoords();
        Point2D.Float r3 = null;
        for (int i = 0; i < this.types.size(); i++) {
            float[] fArr = this.coordsList.get(i);
            int intValue = this.types.get(i).intValue();
            if (intValue != 0 && intValue != 1) {
                if (intValue == 2) {
                    float[] fArr2 = new float[4];
                    System.arraycopy(fArr, 0, fArr2, 0, 4);
                    return getHeadAnchor(convert(fArr2, r3));
                }
                if (intValue == 3) {
                    return getHeadAnchor(convert(fArr, r3));
                }
            } else if (r3 == null) {
                r3 = new Point2D.Float(fArr[0], fArr[1]);
            } else if (Float.compare(r3.f97777x, fArr[0]) != 0 || Float.compare(r3.f97778y, fArr[1]) != 0) {
                return new Rectangle2D.Double(r3.getX(), r3.getY(), fArr[0] - r3.getX(), fArr[1] - r3.getY());
            }
        }
        return null;
    }

    private Rectangle2D getTailDecorationAnchor() {
        initCoords();
        Point2D.Float r3 = null;
        for (int size = this.types.size() - 1; size >= 0; size--) {
            float[] fArr = this.coordsList.get(size);
            int intValue = this.types.get(size).intValue();
            if (intValue != 0 && intValue != 1) {
                if (intValue == 2) {
                    float[] fArr2 = new float[4];
                    System.arraycopy(fArr, 0, fArr2, 0, 4);
                    return getTailAnchor(fArr2);
                }
                if (intValue == 3) {
                    return getTailAnchor(fArr);
                }
            } else if (r3 == null) {
                r3 = new Point2D.Float(fArr[0], fArr[1]);
            } else if (Float.compare(r3.f97777x, fArr[0]) != 0 || Float.compare(r3.f97778y, fArr[1]) != 0) {
                return new Rectangle2D.Double(fArr[0], fArr[1], r3.getX() - fArr[0], r3.getY() - fArr[1]);
            }
        }
        return null;
    }

    private void initCoords() {
        if (this.types == null || this.coordsList == null) {
            this.types = new ArrayList();
            this.coordsList = new ArrayList();
            PathIterator pathIterator = this.outline.getOutline().getPathIterator(null);
            while (!pathIterator.isDone()) {
                float[] fArr = new float[6];
                this.types.add(Integer.valueOf(pathIterator.currentSegment(fArr)));
                this.coordsList.add(fArr);
                pathIterator.next();
            }
        }
    }

    public Rectangle2D getHeadAnchor(float[][] fArr) {
        float[][] bezierCoords = BezierUtils.bezierCoords(fArr, 20);
        float[] fArr2 = bezierCoords[0];
        float f = fArr2[0];
        float f2 = fArr2[1];
        float[] fArr3 = bezierCoords[4];
        return new Rectangle2D.Double(f, f2, fArr3[0] - f, fArr3[1] - f2);
    }

    public double[] getHeadDecoration() {
        Rectangle2D headDecorationAnchor = getHeadDecorationAnchor();
        if (headDecorationAnchor == null) {
            return null;
        }
        return new double[]{headDecorationAnchor.getX(), headDecorationAnchor.getY(), Math.atan2(headDecorationAnchor.getHeight(), headDecorationAnchor.getWidth())};
    }

    public Rectangle2D getTailAnchor(float[] fArr) {
        float[][] bezierCoords = BezierUtils.bezierCoords(fArr, 2, 20);
        float[] fArr2 = bezierCoords[16];
        float f = fArr2[0];
        float f2 = fArr2[1];
        float[] fArr3 = bezierCoords[20];
        return new Rectangle2D.Double(f, f2, fArr3[0] - f, fArr3[1] - f2);
    }

    public double[] getTailDecoration() {
        Rectangle2D tailDecorationAnchor = getTailDecorationAnchor();
        if (tailDecorationAnchor == null) {
            return null;
        }
        return new double[]{tailDecorationAnchor.getMaxX(), tailDecorationAnchor.getMaxY(), Math.atan2(tailDecorationAnchor.getHeight(), tailDecorationAnchor.getWidth())};
    }
}
