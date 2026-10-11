package com.sun.imageio.plugins.tiff;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.io.IOException;
import java.util.Locale;
import javax.imageio.ImageReader;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;
import org.apache.poi.openxml4j.opc.ContentTypes;

/* loaded from: classes9.dex */
public class TIFFImageReaderSpi extends ImageReaderSpi {
    private boolean registered;

    public TIFFImageReaderSpi() {
        super(JPEG.vendor, "1.0", new String[]{FileTypeConstant.TIF, "TIF", "tiff", "TIFF"}, new String[]{FileTypeConstant.TIF, "tiff"}, new String[]{ContentTypes.IMAGE_TIFF}, "com.sun.imageio.plugins.tiff.TIFFImageReader", new Class[]{ImageInputStream.class}, new String[]{"com.sun.imageio.plugins.tiff.TIFFImageWriterSpi"}, false, "javax_imageio_tiff_stream_1.0", "com.sun.imageio.plugins.tiff.TIFFStreamMetadataFormat", null, null, true, TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME, "com.sun.imageio.plugins.tiff.TIFFImageMetadataFormat", null, null);
        this.registered = false;
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public boolean canDecodeInput(Object obj) throws IOException {
        if (!(obj instanceof ImageInputStream)) {
            return false;
        }
        ImageInputStream imageInputStream = (ImageInputStream) obj;
        byte[] bArr = new byte[4];
        imageInputStream.mark();
        imageInputStream.readFully(bArr);
        imageInputStream.reset();
        byte b = bArr[0];
        return (b == 73 && bArr[1] == 73 && bArr[2] == 42 && bArr[3] == 0) || (b == 77 && bArr[1] == 77 && bArr[2] == 0 && bArr[3] == 42);
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public ImageReader createReaderInstance(Object obj) {
        return new TIFFImageReader(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard TIFF image reader";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.registered) {
            return;
        }
        this.registered = true;
    }
}
