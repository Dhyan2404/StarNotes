package java.awt;

import java.AndroidVolatileImage;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.VolatileImage;
import java.util.Hashtable;

/* loaded from: classes4.dex */
public abstract class GraphicsConfiguration {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static BufferCapabilities defaultBufferCaps;
    private static ImageCapabilities defaultImageCaps;

    /* loaded from: classes4.dex */
    public static class DefaultBufferCapabilities extends BufferCapabilities {
        public DefaultBufferCapabilities(ImageCapabilities imageCapabilities) {
            super(imageCapabilities, imageCapabilities, null);
        }
    }

    public BufferedImage createCompatibleImage(int i, int i2) {
        ColorModel colorModel = getColorModel();
        return new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i, i2), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    public VolatileImage createCompatibleVolatileImage(int i, int i2) {
        try {
            return createCompatibleVolatileImage(i, i2, null, 1);
        } catch (AWTException unused) {
            return null;
        }
    }

    public abstract Rectangle getBounds();

    public BufferCapabilities getBufferCapabilities() {
        if (defaultBufferCaps == null) {
            defaultBufferCaps = new DefaultBufferCapabilities(getImageCapabilities());
        }
        return defaultBufferCaps;
    }

    public abstract ColorModel getColorModel();

    public abstract ColorModel getColorModel(int i);

    public abstract AffineTransform getDefaultTransform();

    public abstract GraphicsDevice getDevice();

    public ImageCapabilities getImageCapabilities() {
        if (defaultImageCaps == null) {
            defaultImageCaps = new ImageCapabilities(false);
        }
        return defaultImageCaps;
    }

    public abstract AffineTransform getNormalizingTransform();

    public boolean isTranslucencyCapable() {
        return false;
    }

    public VolatileImage createCompatibleVolatileImage(int i, int i2, int i3) {
        try {
            return createCompatibleVolatileImage(i, i2, null, i3);
        } catch (AWTException unused) {
            return null;
        }
    }

    public VolatileImage createCompatibleVolatileImage(int i, int i2, ImageCapabilities imageCapabilities) throws AWTException {
        return createCompatibleVolatileImage(i, i2, imageCapabilities, 1);
    }

    public VolatileImage createCompatibleVolatileImage(int i, int i2, ImageCapabilities imageCapabilities, int i3) throws AWTException {
        AndroidVolatileImage androidVolatileImage = new AndroidVolatileImage(this, i, i2, i3, imageCapabilities);
        if (imageCapabilities == null || !imageCapabilities.isAccelerated() || androidVolatileImage.getCapabilities().isAccelerated()) {
            return androidVolatileImage;
        }
        throw new AWTException("Supplied image capabilities could not be met by this graphics configuration.");
    }

    public BufferedImage createCompatibleImage(int i, int i2, int i3) {
        if (getColorModel().getTransparency() == i3) {
            return createCompatibleImage(i, i2);
        }
        ColorModel colorModel = getColorModel(i3);
        if (colorModel != null) {
            return new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i, i2), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        }
        throw new IllegalArgumentException("Unknown transparency: " + i3);
    }
}
