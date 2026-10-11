package sun.java2d.loops;

import java.awt.Color;
import java.awt.Composite;
import java.awt.CompositeContext;
import java.awt.RenderingHints;
import java.awt.image.ColorModel;
import sun.java2d.SunCompositeContext;
import sun.java2d.SurfaceData;

/* loaded from: classes16.dex */
public final class XORComposite implements Composite {
    int alphaMask;
    Color xorColor;
    int xorPixel;

    public XORComposite(Color color, SurfaceData surfaceData) {
        this.xorColor = color;
        SurfaceType surfaceType = surfaceData.getSurfaceType();
        this.xorPixel = surfaceData.pixelFor(color.getRGB());
        this.alphaMask = surfaceType.getAlphaMask();
    }

    @Override // java.awt.Composite
    public CompositeContext createContext(ColorModel colorModel, ColorModel colorModel2, RenderingHints renderingHints) {
        return new SunCompositeContext(this, colorModel, colorModel2);
    }

    public int getAlphaMask() {
        return this.alphaMask;
    }

    public Color getXorColor() {
        return this.xorColor;
    }

    public int getXorPixel() {
        return this.xorPixel;
    }
}
