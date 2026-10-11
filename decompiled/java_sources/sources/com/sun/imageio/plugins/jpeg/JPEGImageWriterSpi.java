package com.sun.imageio.plugins.jpeg;

import java.awt.image.SampleModel;
import java.util.Locale;
import javax.imageio.IIOException;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class JPEGImageWriterSpi extends ImageWriterSpi {
    private static String[] readerSpiNames = {"com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi"};

    public JPEGImageWriterSpi() {
        super(JPEG.vendor, JPEG.version, JPEG.names, JPEG.suffixes, JPEG.MIMETypes, "com.sun.imageio.plugins.jpeg.JPEGImageWriter", new Class[]{ImageOutputStream.class}, readerSpiNames, true, JPEG.nativeStreamMetadataFormatName, JPEG.nativeStreamMetadataFormatClassName, null, null, true, "javax_imageio_jpeg_image_1.0", JPEG.nativeImageMetadataFormatClassName, null, null);
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        if (imageTypeSpecifier.getColorModel().hasAlpha()) {
            return false;
        }
        int[] sampleSize = sampleModel.getSampleSize();
        int i = sampleSize[0];
        for (int i2 = 1; i2 < sampleSize.length; i2++) {
            int i3 = sampleSize[i2];
            if (i3 > i) {
                i = i3;
            }
        }
        return i >= 1 && i <= 8;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) throws IIOException {
        return new JPEGImageWriter(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard JPEG Image Writer";
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean isFormatLossless() {
        return false;
    }
}
