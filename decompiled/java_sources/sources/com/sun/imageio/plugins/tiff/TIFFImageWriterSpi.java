package com.sun.imageio.plugins.tiff;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.util.Locale;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageOutputStream;
import org.apache.poi.openxml4j.opc.ContentTypes;

/* loaded from: classes9.dex */
public class TIFFImageWriterSpi extends ImageWriterSpi {
    private boolean registered;

    public TIFFImageWriterSpi() {
        super(JPEG.vendor, "1.0", new String[]{FileTypeConstant.TIF, "TIF", "tiff", "TIFF"}, new String[]{FileTypeConstant.TIF, "tiff"}, new String[]{ContentTypes.IMAGE_TIFF}, "com.sun.imageio.plugins.tiff.TIFFImageWriter", new Class[]{ImageOutputStream.class}, new String[]{"com.sun.imageio.plugins.tiff.TIFFImageReaderSpi"}, false, "javax_imageio_tiff_stream_1.0", "com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormat", null, null, false, TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME, "com.sun.imageio.plugins.tiff.TIFFImageMetadataFormat", null, null);
        this.registered = false;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        return true;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) {
        return new TIFFImageWriter(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard TIFF image writer";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.registered) {
            return;
        }
        this.registered = true;
    }
}
