package com.sun.imageio.spi;

import java.io.File;
import java.util.Locale;
import javax.imageio.spi.ImageOutputStreamSpi;
import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class FileImageOutputStreamSpi extends ImageOutputStreamSpi {
    private static final Class<?> outputClass = File.class;
    private static final String vendorName = "Oracle Corporation";
    private static final String version = "1.0";

    public FileImageOutputStreamSpi() {
        super("Oracle Corporation", "1.0", outputClass);
    }

    @Override // javax.imageio.spi.ImageOutputStreamSpi
    public ImageOutputStream createOutputStreamInstance(Object obj, boolean z, File file) {
        if (!(obj instanceof File)) {
            throw new IllegalArgumentException();
        }
        try {
            return new FileImageOutputStream((File) obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Service provider that instantiates a FileImageOutputStream from a File";
    }
}
