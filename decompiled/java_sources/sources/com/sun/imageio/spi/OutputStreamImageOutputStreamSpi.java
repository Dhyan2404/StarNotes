package com.sun.imageio.spi;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Locale;
import javax.imageio.spi.ImageOutputStreamSpi;
import javax.imageio.stream.FileCacheImageOutputStream;
import javax.imageio.stream.ImageOutputStream;
import javax.imageio.stream.MemoryCacheImageOutputStream;

/* loaded from: classes9.dex */
public class OutputStreamImageOutputStreamSpi extends ImageOutputStreamSpi {
    private static final Class<?> outputClass = OutputStream.class;
    private static final String vendorName = "Oracle Corporation";
    private static final String version = "1.0";

    public OutputStreamImageOutputStreamSpi() {
        super("Oracle Corporation", "1.0", outputClass);
    }

    @Override // javax.imageio.spi.ImageOutputStreamSpi
    public boolean canUseCacheFile() {
        return true;
    }

    @Override // javax.imageio.spi.ImageOutputStreamSpi
    public ImageOutputStream createOutputStreamInstance(Object obj, boolean z, File file) throws IOException {
        if (!(obj instanceof OutputStream)) {
            throw new IllegalArgumentException();
        }
        OutputStream outputStream = (OutputStream) obj;
        return z ? new FileCacheImageOutputStream(outputStream, file) : new MemoryCacheImageOutputStream(outputStream);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Service provider that instantiates an OutputStreamImageOutputStream from an OutputStream";
    }

    @Override // javax.imageio.spi.ImageOutputStreamSpi
    public boolean needsCacheFile() {
        return false;
    }
}
