package com.trans.android;

import com.onyx.common.util.CloseUtils;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.awt.image.renderable.RenderContext;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes10.dex */
public class BufferedImageWrapper extends BufferedImage implements Closeable {
    private AndroidImage androidImage;
    private RenderContext renderContext;

    public BufferedImageWrapper(AndroidImage androidImage) {
        super(androidImage.getWidth(), androidImage.getHeight(), androidImage.getType());
        this.androidImage = androidImage;
    }

    public void clearAndroidImage() {
        this.androidImage = null;
    }

    @Override // java.awt.image.BufferedImage, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        CloseUtils.close(this.androidImage);
        this.androidImage = null;
        this.renderContext = null;
    }

    public void finalize() throws Throwable {
        close();
    }

    public AndroidImage getAndroidImage() {
        return this.androidImage;
    }

    @Override // java.awt.image.BufferedImage, java.awt.image.RenderedImage
    public ColorModel getColorModel() {
        return this.androidImage.getColorModel();
    }

    @Override // java.awt.image.BufferedImage, java.awt.image.RenderedImage
    public Raster getData() {
        return this.androidImage.getData();
    }

    @Override // java.awt.image.BufferedImage
    public WritableRaster getRaster() {
        return (WritableRaster) this.androidImage.getData();
    }

    public RenderContext getRenderContext() {
        return this.renderContext;
    }

    @Override // java.awt.image.BufferedImage
    public int getType() {
        return this.androidImage.getType();
    }

    public BufferedImageWrapper setRenderContext(RenderContext renderContext) {
        this.renderContext = renderContext;
        return this;
    }
}
