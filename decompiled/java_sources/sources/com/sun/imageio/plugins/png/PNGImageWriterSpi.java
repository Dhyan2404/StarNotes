package com.sun.imageio.plugins.png;

import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.SampleModel;
import java.util.Locale;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class PNGImageWriterSpi extends ImageWriterSpi {
    private static final String vendorName = "Oracle Corporation";
    private static final String version = "1.0";
    private static final String writerClassName = "com.sun.imageio.plugins.png.PNGImageWriter";
    private static final String[] names = {"png", "PNG"};
    private static final String[] suffixes = {"png"};
    private static final String[] MIMETypes = {"image/png", "image/x-png"};
    private static final String[] readerSpiNames = {"com.sun.imageio.plugins.png.PNGImageReaderSpi"};

    public PNGImageWriterSpi() {
        super("Oracle Corporation", "1.0", names, suffixes, MIMETypes, writerClassName, new Class[]{ImageOutputStream.class}, readerSpiNames, false, null, null, null, null, true, PNGMetadata.nativeMetadataFormatName, "com.sun.imageio.plugins.png.PNGMetadataFormat", null, null);
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        int numBands;
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        ColorModel colorModel = imageTypeSpecifier.getColorModel();
        int[] sampleSize = sampleModel.getSampleSize();
        int i = sampleSize[0];
        for (int i2 = 1; i2 < sampleSize.length; i2++) {
            int i3 = sampleSize[i2];
            if (i3 > i) {
                i = i3;
            }
        }
        if (i < 1 || i > 16 || (numBands = sampleModel.getNumBands()) < 1 || numBands > 4) {
            return false;
        }
        boolean hasAlpha = colorModel.hasAlpha();
        if (colorModel instanceof IndexColorModel) {
            return true;
        }
        if ((numBands == 1 || numBands == 3) && hasAlpha) {
            return false;
        }
        return !(numBands == 2 || numBands == 4) || hasAlpha;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) {
        return new PNGImageWriter(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard PNG image writer";
    }
}
