package com.onyx.poi.latex;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import com.alibaba.fastjson.JSON;
import com.onyx.common.util.FileUtils;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.AndroidImage;
import com.trans.android.BufferedImageWrapper;
import io.nano.tex.LaTeX;
import io.nano.tex.TeXRender;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.latex.Latex;
import org.apache.poi.latex.LatexRender;

/* loaded from: classes9.dex */
public class AndroidLatexRender extends LatexRender implements Closeable {

    /* renamed from: e */
    public Rectangle2D f62947e = new Rectangle2D.Double();

    /* renamed from: f */
    public TeXRender f62948f;

    @Override // org.apache.poi.latex.LatexRender, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        TeXRender teXRender = this.f62948f;
        if (teXRender != null) {
            teXRender.release();
            this.f62948f = null;
        }
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    /* renamed from: f */
    public final float m52143f(Rectangle2D rectangle2D) {
        if (rectangle2D == null || rectangle2D.isEmpty()) {
            return 1.0f;
        }
        return (float) Math.min(rectangle2D.getWidth() / this.f62947e.getWidth(), rectangle2D.getHeight() / this.f62947e.getHeight());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return this.f62947e;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        loadImage(FileUtils.readContentFromStream(inputStream), (Rectangle2D) null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        if (this.f62948f == null) {
            return false;
        }
        return drawImage(graphics2D, m52143f(rectangle2D));
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        loadImage(new String(bArr), (Rectangle2D) null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        loadImage(new String(bArr), rectangle2D);
    }

    @Override // org.apache.poi.latex.LatexRender
    public boolean drawImage(Graphics2D graphics2D, float f) {
        TeXRender teXRender = this.f62948f;
        if (teXRender == null) {
            return false;
        }
        teXRender.setTextSize(this.latex.fontSize * f);
        if (graphics2D instanceof AndroidGraphics2D) {
            Canvas canvas = ((AndroidGraphics2D) graphics2D).getCanvas();
            io.nano.tex.Graphics2D graphics2D2 = new io.nano.tex.Graphics2D();
            graphics2D2.setCanvas(canvas);
            TeXRender teXRender2 = this.f62948f;
            Insets insets = this.latex.insets;
            teXRender2.draw(graphics2D2, (int) (insets.left * f), (int) (insets.top * f));
        } else {
            Insets insets2 = this.latex.insets;
            Bitmap createBitmap = Bitmap.createBitmap(this.f62948f.getWidth() + ((int) ((insets2.left + insets2.right) * f)), this.f62948f.getHeight() + ((int) ((insets2.top + insets2.bottom) * f)), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            io.nano.tex.Graphics2D graphics2D3 = new io.nano.tex.Graphics2D();
            graphics2D3.setCanvas(canvas2);
            TeXRender teXRender3 = this.f62948f;
            Insets insets3 = this.latex.insets;
            teXRender3.draw(graphics2D3, (int) (insets3.left * f), (int) (insets3.top * f));
            graphics2D.drawImage(new BufferedImageWrapper(new AndroidImage(createBitmap)), null, null);
        }
        this.f62948f.release();
        this.f62948f = null;
        return true;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        loadImage(FileUtils.readContentFromStream(inputStream), rectangle2D);
    }

    @Override // org.apache.poi.latex.LatexRender
    public void loadImage(String str, Rectangle2D rectangle2D) {
        loadImage((Latex) JSON.parseObject(str, Latex.class), rectangle2D);
    }

    @Override // org.apache.poi.latex.LatexRender
    public void loadImage(Latex latex, Rectangle2D rectangle2D) {
        try {
            this.latex = latex;
            Color color = latex.foreground;
            this.f62948f = LaTeX.instance().parse(latex.content, latex.fontSize, color == null ? 0 : color.getRGB());
            Insets insets = latex.insets;
            this.f62947e.setRect(0.0d, 0.0d, r13.getWidth() + insets.left + insets.right, this.f62948f.getHeight() + insets.top + insets.bottom);
        } catch (Exception e) {
            LatexRender.LOG.atError().withThrowable(e).log();
        }
    }
}
