package com.twelvemonkeys.imageio;

import com.twelvemonkeys.imageio.util.IIOUtil;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public abstract class ImageWriterBase extends ImageWriter {
    protected ImageOutputStream imageOutput;

    public ImageWriterBase(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
    }

    public static BufferedImage fakeAOI(BufferedImage bufferedImage, ImageWriteParam imageWriteParam) {
        return IIOUtil.fakeAOI(bufferedImage, getSourceRegion(imageWriteParam, bufferedImage.getWidth(), bufferedImage.getHeight()));
    }

    public static Image fakeSubsampling(Image image, ImageWriteParam imageWriteParam) {
        return IIOUtil.fakeSubsampling(image, imageWriteParam);
    }

    public static Rectangle getSourceRegion(ImageWriteParam imageWriteParam, int i, int i2) {
        return IIOUtil.getSourceRegion(imageWriteParam, i, i2);
    }

    public void assertOutput() {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null");
        }
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return null;
    }

    public String getFormatName() throws IOException {
        return getOriginatingProvider().getFormatNames()[0];
    }

    @Override // javax.imageio.ImageWriter
    public void reset() {
        super.reset();
        resetMembers();
    }

    public void resetMembers() {
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        resetMembers();
        super.setOutput(obj);
        if (obj instanceof ImageOutputStream) {
            this.imageOutput = (ImageOutputStream) obj;
        } else {
            this.imageOutput = null;
        }
    }
}
