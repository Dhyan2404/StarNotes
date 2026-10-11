package sun.java2d.pipe;

import com.google.android.material.motion.MotionUtils;
import java.awt.BasicStroke;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Path2D;
import java.awt.geom.RoundRectangle2D;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.FillSpans;

/* loaded from: classes16.dex */
public class LoopPipe implements PixelDrawPipe, PixelFillPipe, ParallelogramPipe, ShapeDrawPipe, LoopBasedPipe {
    static final RenderingEngine RenderEngine = RenderingEngine.getInstance();

    private static void fillSpans(SunGraphics2D sunGraphics2D, SpanIterator spanIterator) {
        if (sunGraphics2D.clipState == 2) {
            spanIterator = sunGraphics2D.clipRegion.filter(spanIterator);
        } else {
            FillSpans fillSpans = sunGraphics2D.loops.fillSpansLoop;
            if (fillSpans != null) {
                fillSpans.FillSpans(sunGraphics2D, sunGraphics2D.getSurfaceData(), spanIterator);
                return;
            }
        }
        int[] iArr = new int[4];
        SurfaceData surfaceData = sunGraphics2D.getSurfaceData();
        while (spanIterator.nextSpan(iArr)) {
            int i = iArr[0];
            int i2 = iArr[1];
            sunGraphics2D.loops.fillRectLoop.FillRect(sunGraphics2D, surfaceData, i, i2, iArr[2] - i, iArr[3] - i2);
        }
    }

    public static ShapeSpanIterator getFillSSI(SunGraphics2D sunGraphics2D) {
        return new ShapeSpanIterator((sunGraphics2D.stroke instanceof BasicStroke) && sunGraphics2D.strokeHint != 2);
    }

    public static ShapeSpanIterator getStrokeSpans(SunGraphics2D sunGraphics2D, Shape shape) {
        ShapeSpanIterator shapeSpanIterator = new ShapeSpanIterator(false);
        try {
            shapeSpanIterator.setOutputArea(sunGraphics2D.getCompClip());
            shapeSpanIterator.setRule(1);
            RenderEngine.strokeTo(shape, sunGraphics2D.transform, (BasicStroke) sunGraphics2D.stroke, sunGraphics2D.strokeState <= 1, sunGraphics2D.strokeHint != 2, false, shapeSpanIterator);
            return shapeSpanIterator;
        } catch (Throwable th) {
            shapeSpanIterator.dispose();
            throw new InternalError("Unable to Stroke shape (" + th.getMessage() + MotionUtils.f31762d, th);
        }
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void draw(SunGraphics2D sunGraphics2D, Shape shape) {
        Path2D.Float r5;
        int i;
        int i2;
        int i3 = sunGraphics2D.strokeState;
        if (i3 != 0) {
            if (i3 == 3) {
                fill(sunGraphics2D, sunGraphics2D.stroke.createStrokedShape(shape));
                return;
            }
            ShapeSpanIterator strokeSpans = getStrokeSpans(sunGraphics2D, shape);
            try {
                fillSpans(sunGraphics2D, strokeSpans);
                return;
            } finally {
                strokeSpans.dispose();
            }
        }
        if (sunGraphics2D.transformState <= 1) {
            Path2D.Float r8 = shape instanceof Path2D.Float ? (Path2D.Float) shape : new Path2D.Float(shape);
            i = sunGraphics2D.transX;
            r5 = r8;
            i2 = sunGraphics2D.transY;
        } else {
            r5 = new Path2D.Float(shape, sunGraphics2D.transform);
            i = 0;
            i2 = 0;
        }
        sunGraphics2D.loops.drawPathLoop.DrawPath(sunGraphics2D, sunGraphics2D.getSurfaceData(), i, i2, r5);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        sunGraphics2D.shapepipe.draw(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 0));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawLine(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        int i5 = sunGraphics2D.transX;
        int i6 = sunGraphics2D.transY;
        sunGraphics2D.loops.drawLineLoop.DrawLine(sunGraphics2D, sunGraphics2D.getSurfaceData(), i + i5, i2 + i6, i3 + i5, i4 + i6);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        sunGraphics2D.shapepipe.draw(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void drawParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
        sunGraphics2D.loops.drawParallelogramLoop.DrawParallelogram(sunGraphics2D, sunGraphics2D.getSurfaceData(), d5, d6, d7, d8, d9, d10, d11, d12);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        sunGraphics2D.loops.drawPolygonsLoop.DrawPolygons(sunGraphics2D, sunGraphics2D.getSurfaceData(), iArr, iArr2, new int[]{i}, 1, sunGraphics2D.transX, sunGraphics2D.transY, true);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolyline(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        sunGraphics2D.loops.drawPolygonsLoop.DrawPolygons(sunGraphics2D, sunGraphics2D.getSurfaceData(), iArr, iArr2, new int[]{i}, 1, sunGraphics2D.transX, sunGraphics2D.transY, false);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        sunGraphics2D.loops.drawRectLoop.DrawRect(sunGraphics2D, sunGraphics2D.getSurfaceData(), i + sunGraphics2D.transX, i2 + sunGraphics2D.transY, i3, i4);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        sunGraphics2D.shapepipe.draw(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void fill(SunGraphics2D sunGraphics2D, Shape shape) {
        Path2D.Float r5;
        int i;
        int i2;
        if (sunGraphics2D.strokeState != 0) {
            ShapeSpanIterator fillSSI = getFillSSI(sunGraphics2D);
            try {
                fillSSI.setOutputArea(sunGraphics2D.getCompClip());
                fillSSI.appendPath(shape.getPathIterator(sunGraphics2D.transformState == 0 ? null : sunGraphics2D.transform));
                fillSpans(sunGraphics2D, fillSSI);
                return;
            } finally {
                fillSSI.dispose();
            }
        }
        if (sunGraphics2D.transformState <= 1) {
            Path2D.Float r8 = shape instanceof Path2D.Float ? (Path2D.Float) shape : new Path2D.Float(shape);
            i = sunGraphics2D.transX;
            r5 = r8;
            i2 = sunGraphics2D.transY;
        } else {
            r5 = new Path2D.Float(shape, sunGraphics2D.transform);
            i = 0;
            i2 = 0;
        }
        sunGraphics2D.loops.fillPathLoop.FillPath(sunGraphics2D, sunGraphics2D.getSurfaceData(), i, i2, r5);
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        sunGraphics2D.shapepipe.fill(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 2));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        sunGraphics2D.shapepipe.fill(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void fillParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        sunGraphics2D.loops.fillParallelogramLoop.FillParallelogram(sunGraphics2D, sunGraphics2D.getSurfaceData(), d5, d6, d7, d8, d9, d10);
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        ShapeSpanIterator fillSSI = getFillSSI(sunGraphics2D);
        try {
            fillSSI.setOutputArea(sunGraphics2D.getCompClip());
            fillSSI.appendPoly(iArr, iArr2, i, sunGraphics2D.transX, sunGraphics2D.transY);
            fillSpans(sunGraphics2D, fillSSI);
        } finally {
            fillSSI.dispose();
        }
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        sunGraphics2D.loops.fillRectLoop.FillRect(sunGraphics2D, sunGraphics2D.getSurfaceData(), i + sunGraphics2D.transX, i2 + sunGraphics2D.transY, i3, i4);
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        sunGraphics2D.shapepipe.fill(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }
}
