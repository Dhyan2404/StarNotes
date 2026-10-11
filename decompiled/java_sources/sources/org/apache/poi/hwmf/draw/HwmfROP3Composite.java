package org.apache.poi.hwmf.draw;

import java.awt.Color;
import java.awt.Composite;
import java.awt.CompositeContext;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.util.ArrayDeque;
import java.util.Deque;
import org.apache.poi.hwmf.record.HwmfTernaryRasterOp;

/* loaded from: classes12.dex */
public class HwmfROP3Composite implements Composite {
    private final int background;
    private final int foreground;
    private final boolean hasPattern;
    private final byte[] mask;
    private final int mask_height;
    private final int mask_width;
    private final HwmfTernaryRasterOp rop3;
    private final Point2D startPnt;

    /* loaded from: classes12.dex */
    public class Rop3Context implements CompositeContext {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Deque<int[]> stack;

        private Rop3Context() {
            this.stack = new ArrayDeque();
        }

        private void fillPattern(int[] iArr, int i, int i2, int i3, int i4, int i5) {
            if (iArr != null) {
                int i6 = ((i3 + i) + i5) % HwmfROP3Composite.this.mask_height;
                if (i6 < 0) {
                    i6 += HwmfROP3Composite.this.mask_height;
                }
                int i7 = i6 * HwmfROP3Composite.this.mask_width;
                for (int i8 = 0; i8 < iArr.length; i8++) {
                    int i9 = ((i2 + i8) + i4) % HwmfROP3Composite.this.mask_width;
                    if (i9 < 0) {
                        i9 += HwmfROP3Composite.this.mask_width;
                    }
                    iArr[i8] = HwmfROP3Composite.this.mask[i9 + i7] == 0 ? HwmfROP3Composite.this.background : HwmfROP3Composite.this.foreground;
                }
            }
        }

        @Override // java.awt.CompositeContext
        public void compose(Raster raster, Raster raster2, WritableRaster writableRaster) {
            int min = Math.min(raster.getWidth(), raster2.getWidth());
            int min2 = Math.min(raster.getHeight(), raster2.getHeight());
            int x = (int) HwmfROP3Composite.this.startPnt.getX();
            int y = (int) HwmfROP3Composite.this.startPnt.getY();
            int sampleModelTranslateY = raster2.getSampleModelTranslateY();
            int sampleModelTranslateX = raster2.getSampleModelTranslateX();
            int[] iArr = new int[min];
            int[] iArr2 = new int[min];
            int[] iArr3 = HwmfROP3Composite.this.hasPattern ? new int[min] : null;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= min2) {
                    return;
                }
                raster2.getDataElements(0, i2, min, 1, iArr2);
                raster.getDataElements(0, i2, min, 1, iArr);
                int[] iArr4 = iArr3;
                int[] iArr5 = iArr2;
                int[] iArr6 = iArr;
                fillPattern(iArr3, i2, x, y, sampleModelTranslateX, sampleModelTranslateY);
                HwmfROP3Composite.this.rop3.process(this.stack, iArr5, iArr6, iArr4);
                iArr2 = iArr5;
                writableRaster.setDataElements(0, i2, min, 1, this.stack.pop());
                i = i2 + 1;
                iArr = iArr6;
                y = y;
                x = x;
                iArr3 = iArr4;
            }
        }

        @Override // java.awt.CompositeContext
        public void dispose() {
        }
    }

    public HwmfROP3Composite(AffineTransform affineTransform, Shape shape, HwmfTernaryRasterOp hwmfTernaryRasterOp, BufferedImage bufferedImage, Color color, Color color2) {
        this.rop3 = hwmfTernaryRasterOp;
        if (bufferedImage == null) {
            this.mask_width = 1;
            this.mask_height = 1;
            this.mask = new byte[]{1};
        } else {
            int width = bufferedImage.getWidth();
            this.mask_width = width;
            int height = bufferedImage.getHeight();
            this.mask_height = height;
            byte[] bArr = new byte[width * height];
            this.mask = bArr;
            bufferedImage.getRaster().getDataElements(0, 0, width, height, bArr);
        }
        this.background = color.getRGB();
        this.foreground = color2.getRGB();
        Rectangle2D bounds2D = affineTransform.createTransformedShape(shape.getBounds2D()).getBounds2D();
        this.startPnt = new Point2D.Double(bounds2D.getMinX(), bounds2D.getMinY());
        this.hasPattern = hwmfTernaryRasterOp.calcCmd().contains("P");
    }

    @Override // java.awt.Composite
    public CompositeContext createContext(ColorModel colorModel, ColorModel colorModel2, RenderingHints renderingHints) {
        return new Rop3Context();
    }
}
