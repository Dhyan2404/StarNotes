package org.apache.poi.sl.draw;

import java.awt.AlphaComposite;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.Paint;
import java.awt.PaintContext;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.IllegalPathStateException;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.util.Hashtable;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class PathGradientPaint implements Paint {
    public final int capStyle;
    public final Color[] colors;
    public final float[] fractions;
    public final int joinStyle;
    public final int transparency;

    /* loaded from: classes12.dex */
    public class PathGradientContext implements PaintContext {
        final Rectangle deviceBounds;
        final int gradientSteps;
        final RenderingHints hints;
        final PaintContext pCtx;
        WritableRaster raster;
        protected final Shape shape;
        final Rectangle2D userBounds;
        protected final AffineTransform xform;

        public PathGradientContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
            Shape shape = (Shape) renderingHints.get(Drawable.GRADIENT_SHAPE);
            this.shape = shape;
            if (shape == null) {
                throw new IllegalPathStateException("PathGradientPaint needs a shape to be set via the rendering hint Drawable.GRADIANT_SHAPE.");
            }
            this.deviceBounds = rectangle;
            this.userBounds = rectangle2D;
            this.xform = affineTransform;
            this.hints = renderingHints;
            int gradientSteps = getGradientSteps(shape);
            this.gradientSteps = gradientSteps;
            LinearGradientPaint linearGradientPaint = new LinearGradientPaint(new Point2D.Double(0.0d, 0.0d), new Point2D.Double(gradientSteps, 0.0d), PathGradientPaint.this.fractions, PathGradientPaint.this.colors, MultipleGradientPaint.CycleMethod.NO_CYCLE, MultipleGradientPaint.ColorSpaceType.SRGB, new AffineTransform());
            Rectangle rectangle2 = new Rectangle(0, 0, gradientSteps, 1);
            this.pCtx = linearGradientPaint.createContext(colorModel, rectangle2, rectangle2, new AffineTransform(), renderingHints);
        }

        public WritableRaster createRaster() {
            WritableRaster writableRaster = this.raster;
            if (writableRaster != null) {
                return writableRaster;
            }
            ColorModel colorModel = getColorModel();
            this.raster = colorModel.createCompatibleWritableRaster((int) this.deviceBounds.getWidth(), (int) this.deviceBounds.getHeight());
            Graphics2D createGraphics = new BufferedImage(colorModel, this.raster, false, (Hashtable<?, ?>) null).createGraphics();
            createGraphics.setRenderingHints(this.hints);
            createGraphics.translate(-this.deviceBounds.getX(), -this.deviceBounds.getY());
            createGraphics.transform(this.xform);
            Raster raster = this.pCtx.getRaster(0, 0, this.gradientSteps, 1);
            int numComponents = colorModel.getNumComponents();
            int[] iArr = new int[numComponents];
            for (int i = this.gradientSteps - 1; i >= 0; i--) {
                raster.getPixel((this.gradientSteps - i) - 1, 0, iArr);
                Color color = new Color(iArr[0], iArr[1], iArr[2]);
                if (numComponents == 4) {
                    createGraphics.setComposite(AlphaComposite.getInstance(2, iArr[3] / 255.0f));
                }
                PathGradientPaint pathGradientPaint = PathGradientPaint.this;
                createGraphics.setStroke(new BasicStroke(i + 1.0f, pathGradientPaint.capStyle, pathGradientPaint.joinStyle));
                createGraphics.setColor(color);
                if (i == this.gradientSteps - 1) {
                    createGraphics.fill(this.shape);
                }
                createGraphics.draw(this.shape);
            }
            createGraphics.dispose();
            return this.raster;
        }

        @Override // java.awt.PaintContext
        public void dispose() {
        }

        @Override // java.awt.PaintContext
        public ColorModel getColorModel() {
            return this.pCtx.getColorModel();
        }

        public int getGradientSteps(Shape shape) {
            Rectangle bounds = shape.getBounds();
            int max = (int) (Math.max(bounds.getWidth(), bounds.getHeight()) / 2.0d);
            int i = 1;
            while (i < max - 1) {
                int i2 = ((max - i) / 2) + i;
                PathGradientPaint pathGradientPaint = PathGradientPaint.this;
                if (new Area(new BasicStroke(i2, pathGradientPaint.capStyle, pathGradientPaint.joinStyle).createStrokedShape(shape)).isSingular()) {
                    max = i2;
                } else {
                    i = i2;
                }
            }
            return Math.max(max, 1);
        }

        @Override // java.awt.PaintContext
        public Raster getRaster(int i, int i2, int i3, int i4) {
            ColorModel colorModel = getColorModel();
            this.raster = createRaster();
            WritableRaster createCompatibleWritableRaster = colorModel.createCompatibleWritableRaster(i3, i4);
            Rectangle2D.Double r10 = new Rectangle2D.Double(i, i2, i3, i4);
            if (!r10.intersects(this.deviceBounds)) {
                return createCompatibleWritableRaster;
            }
            Rectangle2D.Double r12 = new Rectangle2D.Double();
            Rectangle2D.intersect(r10, this.deviceBounds, r12);
            int x = (int) (r12.getX() - this.deviceBounds.getX());
            int y = (int) (r12.getY() - this.deviceBounds.getY());
            int width = (int) r12.getWidth();
            int height = (int) r12.getHeight();
            createCompatibleWritableRaster.setDataElements((int) (r12.getX() - r10.getX()), (int) (r12.getY() - r10.getY()), width, height, this.raster.getDataElements(x, y, width, height, null));
            return createCompatibleWritableRaster;
        }
    }

    public PathGradientPaint(float[] fArr, Color[] colorArr) {
        this(fArr, colorArr, 1, 1);
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return this.transparency;
    }

    private PathGradientPaint(float[] fArr, Color[] colorArr, int i, int i2) {
        this.colors = (Color[]) colorArr.clone();
        this.fractions = (float[]) fArr.clone();
        this.capStyle = i;
        this.joinStyle = i2;
        boolean z = true;
        for (Color color : colorArr) {
            if (color != null) {
                z = z && color.getAlpha() == 255;
            }
        }
        this.transparency = z ? 1 : 3;
    }

    @Override // java.awt.Paint
    public PathGradientContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        return new PathGradientContext(colorModel, rectangle, rectangle2D, affineTransform, renderingHints);
    }
}
