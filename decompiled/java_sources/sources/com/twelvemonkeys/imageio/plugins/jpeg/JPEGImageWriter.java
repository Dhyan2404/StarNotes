package com.twelvemonkeys.imageio.plugins.jpeg;

import com.twelvemonkeys.imageio.ImageWriterBase;
import com.twelvemonkeys.imageio.util.ProgressListenerBase;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.event.IIOWriteWarningListener;
import javax.imageio.metadata.IIOMetadata;

/* loaded from: classes10.dex */
public class JPEGImageWriter extends ImageWriterBase {

    /* renamed from: e */
    public final ImageWriter f94093e;

    /* renamed from: f */
    public final C16960b f94094f;

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageWriter$b */
    /* loaded from: classes10.dex */
    public class C16960b extends ProgressListenerBase implements IIOWriteWarningListener {
        public C16960b() {
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void imageComplete(ImageWriter imageWriter) {
            JPEGImageWriter.this.processImageComplete();
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void imageProgress(ImageWriter imageWriter, float f) {
            JPEGImageWriter.this.processImageProgress(f);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void imageStarted(ImageWriter imageWriter, int i) {
            JPEGImageWriter.this.processImageStarted(i);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void thumbnailComplete(ImageWriter imageWriter) {
            JPEGImageWriter.this.processThumbnailComplete();
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void thumbnailProgress(ImageWriter imageWriter, float f) {
            JPEGImageWriter.this.processThumbnailProgress(f);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void thumbnailStarted(ImageWriter imageWriter, int i, int i2) {
            JPEGImageWriter.this.processThumbnailStarted(i, i2);
        }

        @Override // javax.imageio.event.IIOWriteWarningListener
        public void warningOccurred(ImageWriter imageWriter, int i, String str) {
            JPEGImageWriter.this.processWarningOccurred(i, str);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOWriteProgressListener
        public void writeAborted(ImageWriter imageWriter) {
            JPEGImageWriter.this.processWriteAborted();
        }
    }

    public JPEGImageWriter(JPEGImageWriterSpi jPEGImageWriterSpi, ImageWriter imageWriter) {
        super(jPEGImageWriterSpi);
        this.f94093e = imageWriter;
        this.f94094f = new C16960b();
    }

    @Override // javax.imageio.ImageWriter
    public void abort() {
        super.abort();
        this.f94093e.abort();
    }

    @Override // javax.imageio.ImageWriter
    public boolean canInsertEmpty(int i) throws IOException {
        return this.f94093e.canInsertEmpty(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canInsertImage(int i) throws IOException {
        return this.f94093e.canInsertImage(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canRemoveImage(int i) throws IOException {
        return this.f94093e.canRemoveImage(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canReplaceImageMetadata(int i) throws IOException {
        return this.f94093e.canReplaceImageMetadata(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canReplacePixels(int i) throws IOException {
        return this.f94093e.canReplacePixels(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canReplaceStreamMetadata() throws IOException {
        return this.f94093e.canReplaceStreamMetadata();
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteEmpty() throws IOException {
        return this.f94093e.canWriteEmpty();
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteRasters() {
        return this.f94093e.canWriteRasters();
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteSequence() {
        return this.f94093e.canWriteSequence();
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        return this.f94093e.convertImageMetadata(iIOMetadata, imageTypeSpecifier, imageWriteParam);
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        return this.f94093e.convertStreamMetadata(iIOMetadata, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void dispose() {
        super.dispose();
        this.f94093e.dispose();
    }

    @Override // javax.imageio.ImageWriter
    public void endInsertEmpty() throws IOException {
        this.f94093e.endInsertEmpty();
    }

    @Override // javax.imageio.ImageWriter
    public void endReplacePixels() throws IOException {
        this.f94093e.endReplacePixels();
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteEmpty() throws IOException {
        this.f94093e.endWriteEmpty();
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteSequence() throws IOException {
        this.f94093e.endWriteSequence();
    }

    @Override // javax.imageio.ImageWriter
    public Locale[] getAvailableLocales() {
        return this.f94093e.getAvailableLocales();
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        return this.f94093e.getDefaultImageMetadata(imageTypeSpecifier, imageWriteParam);
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return this.f94093e.getDefaultStreamMetadata(imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return this.f94093e.getDefaultWriteParam();
    }

    @Override // javax.imageio.ImageWriter
    public Locale getLocale() {
        return this.f94093e.getLocale();
    }

    @Override // javax.imageio.ImageWriter
    public int getNumThumbnailsSupported(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        return this.f94093e.getNumThumbnailsSupported(imageTypeSpecifier, imageWriteParam, iIOMetadata, iIOMetadata2);
    }

    @Override // javax.imageio.ImageWriter
    public Object getOutput() {
        return this.f94093e.getOutput();
    }

    @Override // javax.imageio.ImageWriter
    public Dimension[] getPreferredThumbnailSizes(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        return this.f94093e.getPreferredThumbnailSizes(imageTypeSpecifier, imageWriteParam, iIOMetadata, iIOMetadata2);
    }

    /* renamed from: j */
    public final void m60553j() {
        this.f94093e.addIIOWriteProgressListener(this.f94094f);
        this.f94093e.addIIOWriteWarningListener(this.f94094f);
    }

    @Override // javax.imageio.ImageWriter
    public void prepareInsertEmpty(int i, ImageTypeSpecifier imageTypeSpecifier, int i2, int i3, IIOMetadata iIOMetadata, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.prepareInsertEmpty(i, imageTypeSpecifier, i2, i3, iIOMetadata, list, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void prepareReplacePixels(int i, Rectangle rectangle) throws IOException {
        this.f94093e.prepareReplacePixels(i, rectangle);
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteEmpty(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, int i, int i2, IIOMetadata iIOMetadata2, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.prepareWriteEmpty(iIOMetadata, imageTypeSpecifier, i, i2, iIOMetadata2, list, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        this.f94093e.prepareWriteSequence(iIOMetadata);
    }

    @Override // javax.imageio.ImageWriter
    public void removeImage(int i) throws IOException {
        this.f94093e.removeImage(i);
    }

    @Override // javax.imageio.ImageWriter
    public void replaceImageMetadata(int i, IIOMetadata iIOMetadata) throws IOException {
        this.f94093e.replaceImageMetadata(i, iIOMetadata);
    }

    @Override // javax.imageio.ImageWriter
    public void replacePixels(RenderedImage renderedImage, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.replacePixels(renderedImage, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void replaceStreamMetadata(IIOMetadata iIOMetadata) throws IOException {
        this.f94093e.replaceStreamMetadata(iIOMetadata);
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter
    public void reset() {
        super.reset();
        this.f94093e.reset();
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase
    public void resetMembers() {
        m60553j();
    }

    @Override // javax.imageio.ImageWriter
    public void setLocale(Locale locale) {
        this.f94093e.setLocale(locale);
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        super.setOutput(obj);
        this.f94093e.setOutput(obj);
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.write(iIOMetadata, iIOImage, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void writeInsert(int i, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.writeInsert(i, iIOImage, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.writeToSequence(iIOImage, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void replacePixels(Raster raster, ImageWriteParam imageWriteParam) throws IOException {
        this.f94093e.replacePixels(raster, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOImage iIOImage) throws IOException {
        this.f94093e.write(iIOImage);
    }

    @Override // javax.imageio.ImageWriter
    public void write(RenderedImage renderedImage) throws IOException {
        this.f94093e.write(renderedImage);
    }
}
