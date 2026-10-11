package com.sun.imageio.plugins.wbmp;

import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.sun.imageio.plugins.common.ReaderUtil;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.io.IOException;
import java.util.Locale;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class WBMPImageReaderSpi extends ImageReaderSpi {
    private static final int MAX_WBMP_HEIGHT = 768;
    private static final int MAX_WBMP_WIDTH = 1024;
    private boolean registered;
    private static String[] writerSpiNames = {"com.sun.imageio.plugins.wbmp.WBMPImageWriterSpi"};
    private static String[] formatNames = {"wbmp", "WBMP"};
    private static String[] entensions = {"wbmp"};
    private static String[] mimeType = {Downsampler.f15031g};

    public WBMPImageReaderSpi() {
        super(JPEG.vendor, "1.0", formatNames, entensions, mimeType, "com.sun.imageio.plugins.wbmp.WBMPImageReader", new Class[]{ImageInputStream.class}, writerSpiNames, true, null, null, null, null, true, "javax_imageio_wbmp_1.0", "com.sun.imageio.plugins.wbmp.WBMPMetadataFormat", null, null);
        this.registered = false;
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public boolean canDecodeInput(Object obj) throws IOException {
        if (!(obj instanceof ImageInputStream)) {
            return false;
        }
        ImageInputStream imageInputStream = (ImageInputStream) obj;
        imageInputStream.mark();
        try {
            byte readByte = imageInputStream.readByte();
            byte readByte2 = imageInputStream.readByte();
            if (readByte == 0 && readByte2 == 0) {
                int readMultiByteInteger = ReaderUtil.readMultiByteInteger(imageInputStream);
                int readMultiByteInteger2 = ReaderUtil.readMultiByteInteger(imageInputStream);
                if (readMultiByteInteger > 0 && readMultiByteInteger2 > 0) {
                    long length = imageInputStream.length();
                    if (length != -1) {
                        return length - imageInputStream.getStreamPosition() == ((long) ((readMultiByteInteger / 8) + (readMultiByteInteger % 8 == 0 ? 0 : 1))) * ((long) readMultiByteInteger2);
                    }
                    if (readMultiByteInteger < 1024 && readMultiByteInteger2 < 768) {
                        r0 = true;
                    }
                    return r0;
                }
                return false;
            }
            return false;
        } finally {
            imageInputStream.reset();
        }
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public ImageReader createReaderInstance(Object obj) throws IIOException {
        return new WBMPImageReader(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Standard WBMP Image Reader";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        if (this.registered) {
            return;
        }
        this.registered = true;
    }
}
