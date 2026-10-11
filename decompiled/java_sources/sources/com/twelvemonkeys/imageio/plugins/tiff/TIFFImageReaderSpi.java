package com.twelvemonkeys.imageio.plugins.tiff;

import com.sunia.HTREnginev2.d7n;
import com.twelvemonkeys.imageio.spi.ImageReaderSpiBase;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Locale;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public class TIFFImageReaderSpi extends ImageReaderSpiBase {
    public TIFFImageReaderSpi() {
        super(new d7n());
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public boolean canDecodeInput(Object obj) throws IOException {
        if (!(obj instanceof ImageInputStream)) {
            return false;
        }
        ImageInputStream imageInputStream = (ImageInputStream) obj;
        imageInputStream.mark();
        try {
            byte[] bArr = new byte[2];
            imageInputStream.readFully(bArr);
            ByteOrder byteOrder = imageInputStream.getByteOrder();
            try {
                byte b = bArr[0];
                if (b == 73 && bArr[1] == 73) {
                    imageInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
                } else {
                    if (b != 77 || bArr[1] != 77) {
                        return false;
                    }
                    imageInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
                }
                return imageInputStream.readUnsignedShort() == 42;
            } finally {
                imageInputStream.setByteOrder(byteOrder);
            }
        } finally {
            imageInputStream.reset();
        }
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Aldus/Adobe Tagged Image File Format (TIFF) image reader";
    }

    @Override // javax.imageio.spi.IIOServiceProvider, javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
        try {
            ImageReaderSpi imageReaderSpi = (ImageReaderSpi) serviceRegistry.getServiceProviderByClass(com.sun.imageio.plugins.tiff.TIFFImageReaderSpi.class);
            if (imageReaderSpi == null || imageReaderSpi.getVendorName() == null || !imageReaderSpi.getVendorName().startsWith("Apple")) {
                return;
            }
            serviceRegistry.setOrdering(cls, this, imageReaderSpi);
        } catch (ClassNotFoundException unused) {
        }
    }

    @Override // javax.imageio.spi.ImageReaderSpi
    public TIFFImageReader createReaderInstance(Object obj) {
        return new TIFFImageReader(this);
    }
}
