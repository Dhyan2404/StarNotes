package com.twelvemonkeys.imageio.stream;

import java.io.File;
import java.io.IOException;
import java.util.Locale;
import javax.imageio.spi.ImageInputStreamSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public class ByteArrayImageInputStreamSpi extends ImageInputStreamSpi {
    public ByteArrayImageInputStreamSpi() {
        super("TwelveMonkeys", "1.0 BETA", byte[].class);
    }

    @Override // javax.imageio.spi.ImageInputStreamSpi
    public ImageInputStream createInputStreamInstance(Object obj, boolean z, File file) throws IOException {
        if (obj instanceof byte[]) {
            return new ByteArrayImageInputStream((byte[]) obj);
        }
        throw new IllegalArgumentException("Expected input of type byte[]: " + obj);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Service provider that instantiates an ImageInputStream from a byte array";
    }
}
