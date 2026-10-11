package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public abstract class TIFFCompressor {
    protected int compressionTagValue;
    protected String compressionType;
    protected boolean isCompressionLossless;
    protected IIOMetadata metadata;
    protected ImageOutputStream stream;
    protected ImageWriter writer;

    public TIFFCompressor(String str, int i, boolean z) {
        if (str == null) {
            throw new NullPointerException("compressionType == null");
        }
        if (i < 1) {
            throw new IllegalArgumentException("compressionTagValue < 1");
        }
        this.compressionType = str;
        String[] strArr = TIFFImageWriter.compressionTypes;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (strArr[i2].equals(str)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            this.compressionTagValue = TIFFImageWriter.compressionNumbers[i2];
            this.isCompressionLossless = TIFFImageWriter.isCompressionLossless[i2];
        } else {
            this.compressionTagValue = i;
            this.isCompressionLossless = z;
        }
    }

    public abstract int encode(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4) throws IOException;

    public int getCompressionTagValue() {
        return this.compressionTagValue;
    }

    public String getCompressionType() {
        return this.compressionType;
    }

    public IIOMetadata getMetadata() {
        return this.metadata;
    }

    public ImageOutputStream getStream() {
        return this.stream;
    }

    public ImageWriter getWriter() {
        return this.writer;
    }

    public boolean isCompressionLossless() {
        return this.isCompressionLossless;
    }

    public void setMetadata(IIOMetadata iIOMetadata) {
        this.metadata = iIOMetadata;
    }

    public void setStream(ImageOutputStream imageOutputStream) {
        this.stream = imageOutputStream;
    }

    public void setWriter(ImageWriter imageWriter) {
        this.writer = imageWriter;
    }
}
