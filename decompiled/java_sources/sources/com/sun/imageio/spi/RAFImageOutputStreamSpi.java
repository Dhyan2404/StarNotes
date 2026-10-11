package com.sun.imageio.spi;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.Locale;
import javax.imageio.spi.ImageOutputStreamSpi;
import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class RAFImageOutputStreamSpi extends ImageOutputStreamSpi {
    private static final Class<?> outputClass = RandomAccessFile.class;
    private static final String vendorName = "Oracle Corporation";
    private static final String version = "1.0";

    public RAFImageOutputStreamSpi() {
        super("Oracle Corporation", "1.0", outputClass);
    }

    @Override // javax.imageio.spi.ImageOutputStreamSpi
    public ImageOutputStream createOutputStreamInstance(Object obj, boolean z, File file) {
        if (!(obj instanceof RandomAccessFile)) {
            throw new IllegalArgumentException("input not a RandomAccessFile!");
        }
        try {
            return new FileImageOutputStream((RandomAccessFile) obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Service provider that instantiates a FileImageOutputStream from a RandomAccessFile";
    }
}
