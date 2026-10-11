package org.apache.poi.xslf.util;

import java.awt.Graphics2D;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.draw.EmbeddedExtractor;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.util.PPTX2PNG;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public class EMFHandler extends MFProxy {
    private ImageRenderer imgr = null;

    /* renamed from: is */
    private InputStream f111813is;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f111813is;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f111813is = null;
            }
        }
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void draw(Graphics2D graphics2D) {
        Dimension2D size = getSize();
        this.imgr.drawImage(graphics2D, new Rectangle2D.Double(0.0d, 0.0d, size.getWidth(), size.getHeight()));
    }

    public String getContentType() {
        return PictureData.PictureType.EMF.contentType;
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public Iterable<EmbeddedExtractor.EmbeddedPart> getEmbeddings(int i) {
        ImageRenderer imageRenderer = this.imgr;
        return imageRenderer instanceof EmbeddedExtractor ? ((EmbeddedExtractor) imageRenderer).getEmbeddings() : Collections.emptyList();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public GenericRecord getRoot() {
        return this.imgr.getGenericRecord();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public Dimension2D getSize() {
        return this.imgr.getDimension();
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public String getTitle() {
        return "";
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void parse(File file) throws IOException {
        InputStream openStream = file.toURI().toURL().openStream();
        this.f111813is = openStream;
        parse(openStream);
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void setDefaultCharset(Charset charset) {
        this.imgr.setDefaultCharset(charset);
    }

    @Override // org.apache.poi.xslf.util.MFProxy
    public void parse(InputStream inputStream) throws IOException {
        ImageRenderer imageRenderer = DrawPictureShape.getImageRenderer(null, getContentType());
        this.imgr = imageRenderer;
        if (!(imageRenderer instanceof BitmapImageRenderer)) {
            imageRenderer.loadImage(inputStream, getContentType());
            if (this.ignoreParse) {
                try {
                    this.imgr.getDimension();
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        throw new PPTX2PNG.NoScratchpadException();
    }
}
