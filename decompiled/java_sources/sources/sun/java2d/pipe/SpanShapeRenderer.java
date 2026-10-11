package sun.java2d.pipe;

import java.awt.BasicStroke;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.Rectangle2D;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public abstract class SpanShapeRenderer implements ShapeDrawPipe {
    public static final int NON_RECTILINEAR_TRANSFORM_MASK = 48;
    static final RenderingEngine RenderEngine = RenderingEngine.getInstance();

    /* loaded from: classes16.dex */
    public static class Composite extends SpanShapeRenderer {
        CompositePipe comppipe;

        public Composite(CompositePipe compositePipe) {
            this.comppipe = compositePipe;
        }

        @Override // sun.java2d.pipe.SpanShapeRenderer
        public void endSequence(Object obj) {
            this.comppipe.endSequence(obj);
        }

        @Override // sun.java2d.pipe.SpanShapeRenderer
        public void renderBox(Object obj, int i, int i2, int i3, int i4) {
            this.comppipe.renderPathTile(obj, null, 0, i3, i, i2, i3, i4);
        }

        @Override // sun.java2d.pipe.SpanShapeRenderer
        public Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr) {
            return this.comppipe.startSequence(sunGraphics2D, shape, rectangle, iArr);
        }
    }

    /* loaded from: classes16.dex */
    public static class Simple extends SpanShapeRenderer implements LoopBasedPipe {
        @Override // sun.java2d.pipe.SpanShapeRenderer
        public void endSequence(Object obj) {
        }

        @Override // sun.java2d.pipe.SpanShapeRenderer
        public void renderBox(Object obj, int i, int i2, int i3, int i4) {
            SunGraphics2D sunGraphics2D = (SunGraphics2D) obj;
            sunGraphics2D.loops.fillRectLoop.FillRect(sunGraphics2D, sunGraphics2D.getSurfaceData(), i, i2, i3, i4);
        }

        @Override // sun.java2d.pipe.SpanShapeRenderer
        public Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr) {
            return sunGraphics2D;
        }
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void draw(SunGraphics2D sunGraphics2D, Shape shape) {
        Stroke stroke = sunGraphics2D.stroke;
        if (!(stroke instanceof BasicStroke)) {
            fill(sunGraphics2D, stroke.createStrokedShape(shape));
            return;
        }
        ShapeSpanIterator strokeSpans = LoopPipe.getStrokeSpans(sunGraphics2D, shape);
        try {
            renderSpans(sunGraphics2D, sunGraphics2D.getCompClip(), shape, strokeSpans);
        } finally {
            strokeSpans.dispose();
        }
    }

    public abstract void endSequence(Object obj);

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void fill(SunGraphics2D sunGraphics2D, Shape shape) {
        if ((shape instanceof Rectangle2D) && (sunGraphics2D.transform.getType() & 48) == 0) {
            renderRect(sunGraphics2D, (Rectangle2D) shape);
            return;
        }
        Region compClip = sunGraphics2D.getCompClip();
        ShapeSpanIterator fillSSI = LoopPipe.getFillSSI(sunGraphics2D);
        try {
            fillSSI.setOutputArea(compClip);
            fillSSI.appendPath(shape.getPathIterator(sunGraphics2D.transform));
            renderSpans(sunGraphics2D, compClip, shape, fillSSI);
        } finally {
            fillSSI.dispose();
        }
    }

    public abstract void renderBox(Object obj, int i, int i2, int i3, int i4);

    public void renderRect(SunGraphics2D sunGraphics2D, Rectangle2D rectangle2D) {
        double height = rectangle2D.getHeight();
        double[] dArr = {rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), height};
        double d = dArr[2];
        double d2 = dArr[0];
        double d3 = d + d2;
        dArr[2] = d3;
        double d4 = dArr[1];
        double d5 = height + d4;
        dArr[3] = d5;
        if (d3 <= d2 || d5 <= d4) {
            return;
        }
        sunGraphics2D.transform.transform(dArr, 0, dArr, 0, 2);
        double d6 = dArr[2];
        double d7 = dArr[0];
        if (d6 < d7) {
            dArr[2] = d7;
            dArr[0] = d6;
        }
        double d8 = dArr[3];
        double d9 = dArr[1];
        if (d8 < d9) {
            dArr[3] = d9;
            dArr[1] = d8;
        }
        int[] iArr = {(int) dArr[0], (int) dArr[1], (int) dArr[2], (int) dArr[3]};
        int i = iArr[0];
        int i2 = iArr[1];
        Rectangle rectangle = new Rectangle(i, i2, iArr[2] - i, iArr[3] - i2);
        Region compClip = sunGraphics2D.getCompClip();
        compClip.clipBoxToBounds(iArr);
        if (iArr[0] >= iArr[2] || iArr[1] >= iArr[3]) {
            return;
        }
        Object startSequence = startSequence(sunGraphics2D, rectangle2D, rectangle, iArr);
        if (compClip.isRectangular()) {
            int i3 = iArr[0];
            int i4 = iArr[1];
            renderBox(startSequence, i3, i4, iArr[2] - i3, iArr[3] - i4);
        } else {
            SpanIterator spanIterator = compClip.getSpanIterator(iArr);
            while (spanIterator.nextSpan(iArr)) {
                int i5 = iArr[0];
                int i6 = iArr[1];
                renderBox(startSequence, i5, i6, iArr[2] - i5, iArr[3] - i6);
            }
        }
        endSequence(startSequence);
    }

    public void renderSpans(SunGraphics2D sunGraphics2D, Region region, Shape shape, ShapeSpanIterator shapeSpanIterator) {
        int i;
        int i2;
        int[] iArr = new int[4];
        Object obj = null;
        try {
            shapeSpanIterator.getPathBox(iArr);
            int i3 = iArr[0];
            int i4 = iArr[1];
            Rectangle rectangle = new Rectangle(i3, i4, iArr[2] - i3, iArr[3] - i4);
            region.clipBoxToBounds(iArr);
            int i5 = iArr[0];
            int i6 = iArr[2];
            if (i5 < i6 && (i = iArr[1]) < (i2 = iArr[3])) {
                shapeSpanIterator.intersectClipBox(i5, i, i6, i2);
                obj = startSequence(sunGraphics2D, shape, rectangle, iArr);
                spanClipLoop(obj, shapeSpanIterator, region, iArr);
            }
        } finally {
            if (obj != null) {
                endSequence(obj);
            }
        }
    }

    public void spanClipLoop(Object obj, SpanIterator spanIterator, Region region, int[] iArr) {
        if (!region.isRectangular()) {
            spanIterator = region.filter(spanIterator);
        }
        while (spanIterator.nextSpan(iArr)) {
            int i = iArr[0];
            int i2 = iArr[1];
            renderBox(obj, i, i2, iArr[2] - i, iArr[3] - i2);
        }
    }

    public abstract Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr);
}
