package java;

import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.ImageCapabilities;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.awt.image.VolatileImage;

/* loaded from: classes4.dex */
public class AndroidVolatileImage extends VolatileImage {

    /* renamed from: e */
    public GraphicsConfiguration f97718e;

    /* renamed from: f */
    public int f97719f;

    /* renamed from: g */
    public int f97720g;

    /* renamed from: h */
    public int f97721h;

    public AndroidVolatileImage(GraphicsConfiguration graphicsConfiguration, int i, int i2, int i3, ImageCapabilities imageCapabilities) {
        this.f97718e = graphicsConfiguration;
    }

    @Override // java.awt.image.VolatileImage
    public boolean contentsLost() {
        return false;
    }

    @Override // java.awt.image.VolatileImage
    public Graphics2D createGraphics() {
        return null;
    }

    @Override // java.awt.image.VolatileImage
    public ImageCapabilities getCapabilities() {
        return null;
    }

    @Override // java.awt.image.VolatileImage
    public int getHeight() {
        return this.f97720g;
    }

    @Override // java.awt.Image
    public Object getProperty(String str, ImageObserver imageObserver) {
        return null;
    }

    @Override // java.awt.image.VolatileImage
    public BufferedImage getSnapshot() {
        return null;
    }

    @Override // java.awt.image.VolatileImage
    public int getWidth() {
        return this.f97719f;
    }

    @Override // java.awt.image.VolatileImage
    public int validate(GraphicsConfiguration graphicsConfiguration) {
        return 0;
    }

    @Override // java.awt.Image
    public int getHeight(ImageObserver imageObserver) {
        return this.f97720g;
    }

    @Override // java.awt.Image
    public int getWidth(ImageObserver imageObserver) {
        return this.f97719f;
    }
}
