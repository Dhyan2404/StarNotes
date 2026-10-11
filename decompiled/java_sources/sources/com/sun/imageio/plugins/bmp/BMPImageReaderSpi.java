package com.sun.imageio.plugins.bmp;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.io.IOException;
import java.util.Locale;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class BMPImageReaderSpi extends ImageReaderSpi {
    private boolean registered;
    private static String[] writerSpiNames = {"com.sun.imageio.plugins.bmp.BMPImageWriterSpi"};
    private static String[] formatNames = {FileTypeConstant.BMP, "BMP"};
    private static String[] entensions = {FileTypeConstant.BMP};
    private static String[] mimeType = {"image/bmp"};

    public BMPImageReaderSpi() {
        super(JPEG.vendor, "1.0", formatNames, entensions, mimeType, "com.sun.imageio.plugins.bmp.BMPImageReader", new Class[]{ImageInputStream.class}, writerSpiNames, false, null, null, null, null, true, BMPMetadata.nativeMetadataFormatName, "com.sun.imageio.plugins.bmp.BMPMetadataFormat", null, null);
        this.registered = false;
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public boolean canDecodeInput(Object obj) throws IOException {
        if (!(obj instanceof ImageInputStream)) {
            return false;
        }
        ImageInputStream imageInputStream = (ImageInputStream) obj;
        byte[] bArr = new byte[2];
        imageInputStream.mark();
        imageInputStream.readFully(bArr);
        imageInputStream.reset();
        return bArr[0] == 66 && bArr[1] == 77;
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public ImageReader createReaderInstance(Object obj) throws IIOException {
        return new BMPImageReader(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard BMP Image Reader";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.registered) {
            return;
        }
        this.registered = true;
    }
}
