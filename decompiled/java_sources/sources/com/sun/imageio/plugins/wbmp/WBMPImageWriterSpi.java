package com.sun.imageio.plugins.wbmp;

import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.SampleModel;
import java.util.Locale;
import javax.imageio.IIOException;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class WBMPImageWriterSpi extends ImageWriterSpi {
    private boolean registered;
    private static String[] readerSpiNames = {"com.sun.imageio.plugins.wbmp.WBMPImageReaderSpi"};
    private static String[] formatNames = {"wbmp", "WBMP"};
    private static String[] entensions = {"wbmp"};
    private static String[] mimeType = {Downsampler.f15031g};

    public WBMPImageWriterSpi() {
        super(JPEG.vendor, "1.0", formatNames, entensions, mimeType, "com.sun.imageio.plugins.wbmp.WBMPImageWriter", new Class[]{ImageOutputStream.class}, readerSpiNames, true, null, null, null, null, true, null, null, null, null);
        this.registered = false;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        return (sampleModel instanceof MultiPixelPackedSampleModel) && sampleModel.getSampleSize(0) == 1;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) throws IIOException {
        return new WBMPImageWriter(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard WBMP Image Writer";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.registered) {
            return;
        }
        this.registered = true;
    }
}
