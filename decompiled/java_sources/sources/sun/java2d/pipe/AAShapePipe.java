package sun.java2d.pipe;

import java.awt.BasicStroke;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.Rectangle2D;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class AAShapePipe implements ShapeDrawPipe, ParallelogramPipe {
    static RenderingEngine renderengine = RenderingEngine.getInstance();
    private static byte[] theTile;
    CompositePipe outpipe;

    public AAShapePipe(CompositePipe compositePipe) {
        this.outpipe = compositePipe;
    }

    private static Rectangle2D computeBBox(double d, double d2, double d3, double d4) {
        double d5;
        double d6;
        double d7;
        double d8;
        double d9 = d3 - d;
        if (d9 < 0.0d) {
            d6 = -d9;
            d5 = d + d9;
        } else {
            d5 = d;
            d6 = d9;
        }
        double d10 = d4 - d2;
        if (d10 < 0.0d) {
            d8 = -d10;
            d7 = d2 + d10;
        } else {
            d7 = d2;
            d8 = d10;
        }
        return new Rectangle2D.Double(d5, d7, d6, d8);
    }

    private static synchronized void dropAlphaTile(byte[] bArr) {
        synchronized (AAShapePipe.class) {
            theTile = bArr;
        }
    }

    private static synchronized byte[] getAlphaTile(int i) {
        byte[] bArr;
        synchronized (AAShapePipe.class) {
            bArr = theTile;
            if (bArr != null && bArr.length >= i) {
                theTile = null;
            }
            bArr = new byte[i];
        }
        return bArr;
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void draw(SunGraphics2D sunGraphics2D, Shape shape) {
        BasicStroke basicStroke;
        Stroke stroke = sunGraphics2D.stroke;
        if (stroke instanceof BasicStroke) {
            basicStroke = (BasicStroke) stroke;
        } else {
            shape = stroke.createStrokedShape(shape);
            basicStroke = null;
        }
        renderPath(sunGraphics2D, shape, basicStroke);
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void drawParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
        int[] iArr = new int[4];
        AATileGenerator aATileGenerator = renderengine.getAATileGenerator(d5, d6, d7, d8, d9, d10, d11, d12, sunGraphics2D.getCompClip(), iArr);
        if (aATileGenerator == null) {
            return;
        }
        renderTiles(sunGraphics2D, computeBBox(d, d2, d3, d4), aATileGenerator, iArr);
    }

    @Override // sun.java2d.pipe.ShapeDrawPipe
    public void fill(SunGraphics2D sunGraphics2D, Shape shape) {
        renderPath(sunGraphics2D, shape, null);
    }

    @Override // sun.java2d.pipe.ParallelogramPipe
    public void fillParallelogram(SunGraphics2D sunGraphics2D, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        int[] iArr = new int[4];
        AATileGenerator aATileGenerator = renderengine.getAATileGenerator(d5, d6, d7, d8, d9, d10, 0.0d, 0.0d, sunGraphics2D.getCompClip(), iArr);
        if (aATileGenerator == null) {
            return;
        }
        renderTiles(sunGraphics2D, computeBBox(d, d2, d3, d4), aATileGenerator, iArr);
    }

    public void renderPath(SunGraphics2D sunGraphics2D, Shape shape, BasicStroke basicStroke) {
        boolean z = (basicStroke == null || sunGraphics2D.strokeHint == 2) ? false : true;
        int[] iArr = new int[4];
        AATileGenerator aATileGenerator = renderengine.getAATileGenerator(shape, sunGraphics2D.transform, sunGraphics2D.getCompClip(), basicStroke, sunGraphics2D.strokeState <= 1, z, iArr);
        if (aATileGenerator == null) {
            return;
        }
        renderTiles(sunGraphics2D, shape, aATileGenerator, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderTiles(sun.java2d.SunGraphics2D r22, java.awt.Shape r23, sun.java2d.pipe.AATileGenerator r24, int[] r25) {
        /*
            r21 = this;
            r1 = r21
            r0 = r25
            sun.java2d.pipe.CompositePipe r3 = r1.outpipe     // Catch: java.lang.Throwable -> La9
            java.awt.Rectangle r4 = new java.awt.Rectangle     // Catch: java.lang.Throwable -> La9
            r5 = 0
            r6 = r0[r5]     // Catch: java.lang.Throwable -> La9
            r7 = 1
            r8 = r0[r7]     // Catch: java.lang.Throwable -> La9
            r9 = 2
            r10 = r0[r9]     // Catch: java.lang.Throwable -> La9
            int r10 = r10 - r6
            r11 = 3
            r12 = r0[r11]     // Catch: java.lang.Throwable -> La9
            int r12 = r12 - r8
            r4.<init>(r6, r8, r10, r12)     // Catch: java.lang.Throwable -> La9
            r6 = r22
            r8 = r23
            java.lang.Object r3 = r3.startSequence(r6, r8, r4, r0)     // Catch: java.lang.Throwable -> La9
            int r4 = r24.getTileWidth()     // Catch: java.lang.Throwable -> La5
            int r6 = r24.getTileHeight()     // Catch: java.lang.Throwable -> La5
            int r8 = r4 * r6
            byte[] r8 = getAlphaTile(r8)     // Catch: java.lang.Throwable -> La5
            r7 = r0[r7]     // Catch: java.lang.Throwable -> La1
        L31:
            r10 = r0[r11]     // Catch: java.lang.Throwable -> La1
            if (r7 >= r10) goto L8f
            r10 = r0[r5]     // Catch: java.lang.Throwable -> La1
        L37:
            r12 = r0[r9]     // Catch: java.lang.Throwable -> La1
            if (r10 >= r12) goto L8b
            int r12 = r12 - r10
            int r19 = java.lang.Math.min(r4, r12)     // Catch: java.lang.Throwable -> La1
            r12 = r0[r11]     // Catch: java.lang.Throwable -> La1
            int r12 = r12 - r7
            int r20 = java.lang.Math.min(r6, r12)     // Catch: java.lang.Throwable -> La1
            int r15 = r24.getTypicalAlpha()     // Catch: java.lang.Throwable -> La1
            if (r15 == 0) goto L7d
            sun.java2d.pipe.CompositePipe r12 = r1.outpipe     // Catch: java.lang.Throwable -> La1
            r13 = r3
            r14 = r10
            r2 = r15
            r15 = r7
            r16 = r19
            r17 = r20
            boolean r12 = r12.needTile(r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> La1
            if (r12 != 0) goto L5e
            goto L7d
        L5e:
            r12 = 255(0xff, float:3.57E-43)
            if (r2 != r12) goto L69
            r24.nextTile()     // Catch: java.lang.Throwable -> La1
            r2 = r24
            r14 = 0
            goto L6f
        L69:
            r2 = r24
            r2.getAlpha(r8, r5, r4)     // Catch: java.lang.Throwable -> L89
            r14 = r8
        L6f:
            sun.java2d.pipe.CompositePipe r12 = r1.outpipe     // Catch: java.lang.Throwable -> L89
            r15 = 0
            r13 = r3
            r16 = r4
            r17 = r10
            r18 = r7
            r12.renderPathTile(r13, r14, r15, r16, r17, r18, r19, r20)     // Catch: java.lang.Throwable -> L89
            goto L87
        L7d:
            r2 = r24
            r24.nextTile()     // Catch: java.lang.Throwable -> L89
            sun.java2d.pipe.CompositePipe r12 = r1.outpipe     // Catch: java.lang.Throwable -> L89
            r12.skipTile(r3, r10, r7)     // Catch: java.lang.Throwable -> L89
        L87:
            int r10 = r10 + r4
            goto L37
        L89:
            r0 = move-exception
            goto Lae
        L8b:
            r2 = r24
            int r7 = r7 + r6
            goto L31
        L8f:
            r2 = r24
            r24.dispose()
            if (r3 == 0) goto L9b
            sun.java2d.pipe.CompositePipe r0 = r1.outpipe
            r0.endSequence(r3)
        L9b:
            if (r8 == 0) goto La0
            dropAlphaTile(r8)
        La0:
            return
        La1:
            r0 = move-exception
            r2 = r24
            goto Lae
        La5:
            r0 = move-exception
            r2 = r24
            goto Lad
        La9:
            r0 = move-exception
            r2 = r24
            r3 = 0
        Lad:
            r8 = 0
        Lae:
            r24.dispose()
            if (r3 == 0) goto Lb8
            sun.java2d.pipe.CompositePipe r1 = r1.outpipe
            r1.endSequence(r3)
        Lb8:
            if (r8 == 0) goto Lbd
            dropAlphaTile(r8)
        Lbd:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.pipe.AAShapePipe.renderTiles(sun.java2d.SunGraphics2D, java.awt.Shape, sun.java2d.pipe.AATileGenerator, int[]):void");
    }
}
