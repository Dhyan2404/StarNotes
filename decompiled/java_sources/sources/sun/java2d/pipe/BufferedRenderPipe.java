package sun.java2d.pipe;

import java.awt.Polygon;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Arc2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Path2D;
import java.awt.geom.RoundRectangle2D;
import sun.java2d.SunGraphics2D;
import sun.java2d.loops.ProcessPath;

/* loaded from: classes16.dex */
public abstract class BufferedRenderPipe implements PixelDrawPipe, PixelFillPipe, ShapeDrawPipe, ParallelogramPipe {
    static final int BYTES_PER_POLY_POINT = 8;
    static final int BYTES_PER_SCANLINE = 12;
    static final int BYTES_PER_SPAN = 16;
    protected RenderBuffer buf;

    /* renamed from: rq */
    protected RenderQueue f116387rq;
    ParallelogramPipe aapgrampipe = new AAParallelogramPipe();
    private BufferedDrawHandler drawHandler = new BufferedDrawHandler();

    /* loaded from: classes16.dex */
    public class AAParallelogramPipe implements ParallelogramPipe {
        private AAParallelogramPipe() {
        }

        @Override // sun.java2d.pipe.ParallelogramPipe
        public void drawParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
            BufferedRenderPipe.this.f116387rq.lock();
            try {
                BufferedRenderPipe.this.validateContextAA(sunGraphics2D);
                BufferedRenderPipe.this.f116387rq.ensureCapacity(36);
                BufferedRenderPipe.this.buf.putInt(16);
                BufferedRenderPipe.this.buf.putFloat((float) d5);
                BufferedRenderPipe.this.buf.putFloat((float) d6);
                BufferedRenderPipe.this.buf.putFloat((float) d7);
                BufferedRenderPipe.this.buf.putFloat((float) d8);
                BufferedRenderPipe.this.buf.putFloat((float) d9);
                BufferedRenderPipe.this.buf.putFloat((float) d10);
                BufferedRenderPipe.this.buf.putFloat((float) d11);
                BufferedRenderPipe.this.buf.putFloat((float) d12);
            } finally {
                BufferedRenderPipe.this.f116387rq.unlock();
            }
        }

        @Override // sun.java2d.pipe.ParallelogramPipe
        public void fillParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
            BufferedRenderPipe.this.f116387rq.lock();
            try {
                BufferedRenderPipe.this.validateContextAA(sunGraphics2D);
                BufferedRenderPipe.this.f116387rq.ensureCapacity(28);
                BufferedRenderPipe.this.buf.putInt(23);
                BufferedRenderPipe.this.buf.putFloat((float) d5);
                BufferedRenderPipe.this.buf.putFloat((float) d6);
                BufferedRenderPipe.this.buf.putFloat((float) d7);
                BufferedRenderPipe.this.buf.putFloat((float) d8);
                BufferedRenderPipe.this.buf.putFloat((float) d9);
                BufferedRenderPipe.this.buf.putFloat((float) d10);
            } finally {
                BufferedRenderPipe.this.f116387rq.unlock();
            }
        }
    }

    /* loaded from: classes16.dex */
    public class BufferedDrawHandler extends ProcessPath.DrawHandler {
        private int remainingScanlines;
        private int scanlineCount;
        private int scanlineCountIndex;

        public BufferedDrawHandler() {
            super(0, 0, 0, 0);
        }

        private void resetFillPath() {
            BufferedRenderPipe.this.buf.putInt(14);
            this.scanlineCountIndex = BufferedRenderPipe.this.buf.position();
            BufferedRenderPipe.this.buf.putInt(0);
            this.scanlineCount = 0;
            this.remainingScanlines = BufferedRenderPipe.this.buf.remaining() / 12;
        }

        private void updateScanlineCount() {
            BufferedRenderPipe.this.buf.putInt(this.scanlineCountIndex, this.scanlineCount);
        }

        @Override // sun.java2d.loops.ProcessPath.DrawHandler
        public void drawLine(int i, int i2, int i3, int i4) {
            BufferedRenderPipe.this.f116387rq.ensureCapacity(20);
            BufferedRenderPipe.this.buf.putInt(10);
            BufferedRenderPipe.this.buf.putInt(i);
            BufferedRenderPipe.this.buf.putInt(i2);
            BufferedRenderPipe.this.buf.putInt(i3);
            BufferedRenderPipe.this.buf.putInt(i4);
        }

        @Override // sun.java2d.loops.ProcessPath.DrawHandler
        public void drawPixel(int i, int i2) {
            BufferedRenderPipe.this.f116387rq.ensureCapacity(12);
            BufferedRenderPipe.this.buf.putInt(13);
            BufferedRenderPipe.this.buf.putInt(i);
            BufferedRenderPipe.this.buf.putInt(i2);
        }

        @Override // sun.java2d.loops.ProcessPath.DrawHandler
        public void drawScanline(int i, int i2, int i3) {
            if (this.remainingScanlines == 0) {
                updateScanlineCount();
                BufferedRenderPipe.this.f116387rq.flushNow();
                resetFillPath();
            }
            BufferedRenderPipe.this.buf.putInt(i);
            BufferedRenderPipe.this.buf.putInt(i2);
            BufferedRenderPipe.this.buf.putInt(i3);
            this.scanlineCount++;
            this.remainingScanlines--;
        }

        public void endFillPath() {
            updateScanlineCount();
        }

        public void startFillPath() {
            BufferedRenderPipe.this.f116387rq.ensureCapacity(20);
            resetFillPath();
        }

        public void validate(SunGraphics2D sunGraphics2D) {
            Region compClip = sunGraphics2D.getCompClip();
            setBounds(compClip.getLoX(), compClip.getLoY(), compClip.getHiX(), compClip.getHiY(), sunGraphics2D.strokeHint);
        }
    }

    public BufferedRenderPipe(RenderQueue renderQueue) {
        this.f116387rq = renderQueue;
        this.buf = renderQueue.getBuffer();
    }

    private native int fillSpans(RenderQueue renderQueue, long j, int i, int i2, SpanIterator spanIterator, long j2, int i3, int i4);

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void draw(SunGraphics2D sunGraphics2D, Shape shape) {
        Path2D.Float r5;
        int i;
        int i2 = sunGraphics2D.strokeState;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 >= 3) {
                fill(sunGraphics2D, sunGraphics2D.stroke.createStrokedShape(shape));
                return;
            }
            ShapeSpanIterator strokeSpans = LoopPipe.getStrokeSpans(sunGraphics2D, shape);
            try {
                fillSpans(sunGraphics2D, strokeSpans, 0, 0);
                return;
            } finally {
                strokeSpans.dispose();
            }
        }
        if ((shape instanceof Polygon) && sunGraphics2D.transformState < 3) {
            Polygon polygon = (Polygon) shape;
            drawPolygon(sunGraphics2D, polygon.xpoints, polygon.ypoints, polygon.npoints);
            return;
        }
        if (sunGraphics2D.transformState <= 1) {
            r5 = shape instanceof Path2D.Float ? (Path2D.Float) shape : new Path2D.Float(shape);
            i3 = sunGraphics2D.transX;
            i = sunGraphics2D.transY;
        } else {
            r5 = new Path2D.Float(shape, sunGraphics2D.transform);
            i = 0;
        }
        drawPath(sunGraphics2D, r5, i3, i);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        draw(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 0));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawLine(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        int i5 = sunGraphics2D.transX;
        int i6 = sunGraphics2D.transY;
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(20);
            this.buf.putInt(10);
            this.buf.putInt(i + i5);
            this.buf.putInt(i2 + i6);
            this.buf.putInt(i3 + i5);
            this.buf.putInt(i4 + i6);
        } finally {
            this.f116387rq.unlock();
        }
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        draw(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void drawParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(36);
            this.buf.putInt(15);
            this.buf.putFloat((float) d5);
            this.buf.putFloat((float) d6);
            this.buf.putFloat((float) d7);
            this.buf.putFloat((float) d8);
            this.buf.putFloat((float) d9);
            this.buf.putFloat((float) d10);
            this.buf.putFloat((float) d11);
            this.buf.putFloat((float) d12);
        } finally {
            this.f116387rq.unlock();
        }
    }

    public void drawPath(SunGraphics2D sunGraphics2D, Path2D.Float r3, int i, int i2) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.drawHandler.validate(sunGraphics2D);
            ProcessPath.drawPath(this.drawHandler, r3, i, i2);
        } finally {
            this.f116387rq.unlock();
        }
    }

    public void drawPoly(final SunGraphics2D sunGraphics2D, final int[] iArr, final int[] iArr2, final int i, final boolean z) {
        if (iArr != null && iArr2 != null) {
            if (iArr.length < i || iArr2.length < i) {
                throw new ArrayIndexOutOfBoundsException("coordinate array");
            }
            if (i < 2) {
                return;
            }
            int i2 = 1;
            if (i == 2 && !z) {
                drawLine(sunGraphics2D, iArr[0], iArr2[0], iArr[1], iArr2[1]);
                return;
            }
            this.f116387rq.lock();
            try {
                validateContext(sunGraphics2D);
                int i3 = (i * 8) + 20;
                if (i3 <= this.buf.capacity()) {
                    if (i3 > this.buf.remaining()) {
                        this.f116387rq.flushNow();
                    }
                    this.buf.putInt(12);
                    this.buf.putInt(i);
                    RenderBuffer renderBuffer = this.buf;
                    if (!z) {
                        i2 = 0;
                    }
                    renderBuffer.putInt(i2);
                    this.buf.putInt(sunGraphics2D.transX);
                    this.buf.putInt(sunGraphics2D.transY);
                    this.buf.put(iArr, 0, i);
                    this.buf.put(iArr2, 0, i);
                } else {
                    this.f116387rq.flushAndInvokeNow(new Runnable() { // from class: sun.java2d.pipe.BufferedRenderPipe.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BufferedRenderPipe bufferedRenderPipe = BufferedRenderPipe.this;
                            int[] iArr3 = iArr;
                            int[] iArr4 = iArr2;
                            int i4 = i;
                            boolean z2 = z;
                            SunGraphics2D sunGraphics2D2 = sunGraphics2D;
                            bufferedRenderPipe.drawPoly(iArr3, iArr4, i4, z2, sunGraphics2D2.transX, sunGraphics2D2.transY);
                        }
                    });
                }
                return;
            } finally {
                this.f116387rq.unlock();
            }
        }
        throw new NullPointerException("coordinate array");
    }

    public abstract void drawPoly(int[] iArr, int[] iArr2, int i, boolean z, int i2, int i3);

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        drawPoly(sunGraphics2D, iArr, iArr2, i, true);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolyline(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        drawPoly(sunGraphics2D, iArr, iArr2, i, false);
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(20);
            this.buf.putInt(11);
            this.buf.putInt(i + sunGraphics2D.transX);
            this.buf.putInt(i2 + sunGraphics2D.transY);
            this.buf.putInt(i3);
            this.buf.putInt(i4);
        } finally {
            this.f116387rq.unlock();
        }
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        draw(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void fill(SunGraphics2D sunGraphics2D, Shape shape) {
        AffineTransform affineTransform;
        int i;
        Path2D.Float r10;
        int i2;
        int i3 = 0;
        if (sunGraphics2D.strokeState == 0) {
            if (sunGraphics2D.transformState <= 1) {
                r10 = shape instanceof Path2D.Float ? (Path2D.Float) shape : new Path2D.Float(shape);
                i3 = sunGraphics2D.transX;
                i2 = sunGraphics2D.transY;
            } else {
                r10 = new Path2D.Float(shape, sunGraphics2D.transform);
                i2 = 0;
            }
            fillPath(sunGraphics2D, r10, i3, i2);
            return;
        }
        if (sunGraphics2D.transformState <= 1) {
            i3 = sunGraphics2D.transX;
            i = sunGraphics2D.transY;
            affineTransform = null;
        } else {
            affineTransform = sunGraphics2D.transform;
            i = 0;
        }
        ShapeSpanIterator fillSSI = LoopPipe.getFillSSI(sunGraphics2D);
        try {
            Region compClip = sunGraphics2D.getCompClip();
            fillSSI.setOutputAreaXYXY(compClip.getLoX() - i3, compClip.getLoY() - i, compClip.getHiX() - i3, compClip.getHiY() - i);
            fillSSI.appendPath(shape.getPathIterator(affineTransform));
            fillSpans(sunGraphics2D, fillSSI, i3, i);
        } finally {
            fillSSI.dispose();
        }
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        fill(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 2));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        fill(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void fillParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(28);
            this.buf.putInt(22);
            this.buf.putFloat((float) d5);
            this.buf.putFloat((float) d6);
            this.buf.putFloat((float) d7);
            this.buf.putFloat((float) d8);
            this.buf.putFloat((float) d9);
            this.buf.putFloat((float) d10);
        } finally {
            this.f116387rq.unlock();
        }
    }

    public void fillPath(SunGraphics2D sunGraphics2D, Path2D.Float r3, int i, int i2) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.drawHandler.validate(sunGraphics2D);
            this.drawHandler.startFillPath();
            ProcessPath.fillPath(this.drawHandler, r3, i, i2);
            this.drawHandler.endFillPath();
        } finally {
            this.f116387rq.unlock();
        }
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        fill(sunGraphics2D, new Polygon(iArr, iArr2, i));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(20);
            this.buf.putInt(20);
            this.buf.putInt(i + sunGraphics2D.transX);
            this.buf.putInt(i2 + sunGraphics2D.transY);
            this.buf.putInt(i3);
            this.buf.putInt(i4);
        } finally {
            this.f116387rq.unlock();
        }
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        fill(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    public void fillSpans(SunGraphics2D sunGraphics2D, SpanIterator spanIterator, int i, int i2) {
        this.f116387rq.lock();
        try {
            validateContext(sunGraphics2D);
            this.f116387rq.ensureCapacity(24);
            this.buf.position(fillSpans(this.f116387rq, this.buf.getAddress(), this.buf.position(), this.buf.capacity(), spanIterator, spanIterator.getNativeIterator(), i, i2));
        } finally {
            this.f116387rq.unlock();
        }
    }

    public ParallelogramPipe getAAParallelogramPipe() {
        return this.aapgrampipe;
    }

    public abstract void validateContext(SunGraphics2D sunGraphics2D);

    public abstract void validateContextAA(SunGraphics2D sunGraphics2D);
}
