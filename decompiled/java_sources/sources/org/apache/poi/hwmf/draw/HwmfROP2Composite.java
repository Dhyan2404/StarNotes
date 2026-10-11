package org.apache.poi.hwmf.draw;

import java.awt.Composite;
import java.awt.CompositeContext;
import java.awt.RenderingHints;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import org.apache.poi.hwmf.record.HwmfBinaryRasterOp;

/* loaded from: classes12.dex */
public class HwmfROP2Composite implements Composite {

    /* renamed from: op */
    private final HwmfBinaryRasterOp f111435op;

    /* loaded from: classes12.dex */
    public static class ROP2Context implements CompositeContext {

        /* renamed from: op */
        private final HwmfBinaryRasterOp f111436op;

        public ROP2Context(HwmfBinaryRasterOp hwmfBinaryRasterOp) {
            this.f111436op = hwmfBinaryRasterOp;
        }

        @Override // java.awt.CompositeContext
        public void compose(Raster raster, Raster raster2, WritableRaster writableRaster) {
            int min = Math.min(raster.getWidth(), raster2.getWidth());
            int min2 = Math.min(raster.getHeight(), raster2.getHeight());
            int[] iArr = new int[min];
            int[] iArr2 = new int[min];
            for (int i = 0; i < min2; i++) {
                int i2 = i;
                raster.getDataElements(0, i2, min, 1, iArr);
                raster2.getDataElements(0, i2, min, 1, iArr2);
                this.f111436op.process(iArr, iArr2);
                writableRaster.setDataElements(0, i2, min, 1, iArr2);
            }
        }

        @Override // java.awt.CompositeContext
        public void dispose() {
        }
    }

    public HwmfROP2Composite(HwmfBinaryRasterOp hwmfBinaryRasterOp) {
        this.f111435op = hwmfBinaryRasterOp;
    }

    @Override // java.awt.Composite
    public CompositeContext createContext(ColorModel colorModel, ColorModel colorModel2, RenderingHints renderingHints) {
        return new ROP2Context(this.f111435op);
    }
}
