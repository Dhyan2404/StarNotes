package sun.java2d.pipe;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.awt.geom.RoundRectangle2D;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class PixelToShapeConverter implements PixelDrawPipe, PixelFillPipe {
    ShapeDrawPipe outpipe;

    public PixelToShapeConverter(ShapeDrawPipe shapeDrawPipe) {
        this.outpipe = shapeDrawPipe;
    }

    private Shape makePoly(int[] iArr, int[] iArr2, int i, boolean z) {
        GeneralPath generalPath = new GeneralPath(0);
        if (i > 0) {
            generalPath.moveTo(iArr[0], iArr2[0]);
            for (int i2 = 1; i2 < i; i2++) {
                generalPath.lineTo(iArr[i2], iArr2[i2]);
            }
            if (z) {
                generalPath.closePath();
            }
        }
        return generalPath;
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        this.outpipe.draw(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 0));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawLine(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.outpipe.draw(sunGraphics2D, new Line2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.outpipe.draw(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        this.outpipe.draw(sunGraphics2D, makePoly(iArr, iArr2, i, true));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawPolyline(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        this.outpipe.draw(sunGraphics2D, makePoly(iArr, iArr2, i, false));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.outpipe.draw(sunGraphics2D, new Rectangle(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.PixelDrawPipe
    public void drawRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        this.outpipe.draw(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillArc(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        this.outpipe.fill(sunGraphics2D, new Arc2D.Float(i, i2, i3, i4, i5, i6, 2));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillOval(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.outpipe.fill(sunGraphics2D, new Ellipse2D.Float(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillPolygon(SunGraphics2D sunGraphics2D, int[] iArr, int[] iArr2, int i) {
        this.outpipe.fill(sunGraphics2D, makePoly(iArr, iArr2, i, true));
    }

    public void fillRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4) {
        this.outpipe.fill(sunGraphics2D, new Rectangle(i, i2, i3, i4));
    }

    @Override // sun.java2d.pipe.PixelFillPipe
    public void fillRoundRect(SunGraphics2D sunGraphics2D, int i, int i2, int i3, int i4, int i5, int i6) {
        this.outpipe.fill(sunGraphics2D, new RoundRectangle2D.Float(i, i2, i3, i4, i5, i6));
    }
}
