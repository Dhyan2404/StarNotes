package sun.java2d;

import java.awt.AlphaComposite;
import java.awt.Composite;
import java.awt.CompositeContext;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import sun.java2d.loops.XORComposite;

/* loaded from: classes16.dex */
public class SunCompositeContext implements CompositeContext {
    Composite composite;
    ColorModel dstCM;
    ColorModel srcCM;

    public SunCompositeContext(AlphaComposite alphaComposite, ColorModel colorModel, ColorModel colorModel2) {
        if (colorModel == null) {
            throw new NullPointerException("Source color model cannot be null");
        }
        if (colorModel2 != null) {
            this.srcCM = colorModel;
            this.dstCM = colorModel2;
            this.composite = alphaComposite;
            return;
        }
        throw new NullPointerException("Destination color model cannot be null");
    }

    @Override // java.awt.CompositeContext
    public void compose(Raster raster, Raster raster2, WritableRaster writableRaster) {
    }

    @Override // java.awt.CompositeContext
    public void dispose() {
    }

    public SunCompositeContext(XORComposite xORComposite, ColorModel colorModel, ColorModel colorModel2) {
        if (colorModel == null) {
            throw new NullPointerException("Source color model cannot be null");
        }
        if (colorModel2 != null) {
            this.srcCM = colorModel;
            this.dstCM = colorModel2;
            this.composite = xORComposite;
            return;
        }
        throw new NullPointerException("Destination color model cannot be null");
    }
}
