package java.awt.image;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.Image;
import java.awt.ImageCapabilities;
import java.awt.Transparency;

/* loaded from: classes5.dex */
public abstract class VolatileImage extends Image implements Transparency {
    public static final int IMAGE_INCOMPATIBLE = 2;
    public static final int IMAGE_OK = 0;
    public static final int IMAGE_RESTORED = 1;
    protected int transparency = 3;

    public abstract boolean contentsLost();

    public abstract Graphics2D createGraphics();

    public abstract ImageCapabilities getCapabilities();

    @Override // java.awt.Image
    public Graphics getGraphics() {
        return createGraphics();
    }

    public abstract int getHeight();

    public abstract BufferedImage getSnapshot();

    @Override // java.awt.Image
    public ImageProducer getSource() {
        return getSnapshot().getSource();
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return this.transparency;
    }

    public abstract int getWidth();

    public abstract int validate(GraphicsConfiguration graphicsConfiguration);
}
