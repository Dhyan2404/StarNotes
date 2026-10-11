package com.sun.imageio.plugins.tiff;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes9.dex */
public class TIFFJPEGDecompressor extends TIFFDecompressor {
    protected static final int EOI = 217;
    protected static final int SOI = 216;
    protected ImageReadParam JPEGParam;
    protected ImageReader JPEGReader = null;
    protected boolean hasJPEGTables = false;
    protected byte[] tables = null;
    private byte[] data = new byte[0];

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void beginDecoding() {
        if (this.JPEGReader == null) {
            Iterator<ImageReader> imageReadersByFormatName = ImageIO.getImageReadersByFormatName("jpeg");
            if (!imageReadersByFormatName.hasNext()) {
                throw new IllegalStateException("No JPEG readers found!");
            }
            ImageReader next = imageReadersByFormatName.next();
            this.JPEGReader = next;
            this.JPEGParam = next.getDefaultReadParam();
        }
        TIFFField tIFFField = ((TIFFImageMetadata) this.metadata).getTIFFField(347);
        if (tIFFField == null) {
            this.hasJPEGTables = false;
        } else {
            this.hasJPEGTables = true;
            this.tables = tIFFField.getAsBytes();
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        Object obj;
        this.stream.seek(this.offset);
        if (this.hasJPEGTables) {
            byte[] bArr2 = this.tables;
            int length = bArr2.length + this.byteCount;
            if (this.data.length < length) {
                this.data = new byte[length];
            }
            int length2 = bArr2.length;
            int length3 = bArr2.length - 2;
            while (true) {
                if (length3 <= 0) {
                    break;
                }
                byte[] bArr3 = this.tables;
                if ((bArr3[length3] & 255) == 255 && (bArr3[length3 + 1] & 255) == 217) {
                    length2 = length3;
                    break;
                }
                length3--;
            }
            System.arraycopy(this.tables, 0, this.data, 0, length2);
            byte read = (byte) this.stream.read();
            byte read2 = (byte) this.stream.read();
            if ((read & 255) != 255 || (read2 & 255) != 216) {
                byte[] bArr4 = this.data;
                int i4 = length2 + 1;
                bArr4[length2] = read;
                length2 = i4 + 1;
                bArr4[i4] = read2;
            }
            this.stream.readFully(this.data, length2, this.byteCount - 2);
            obj = new MemoryCacheImageInputStream(new ByteArrayInputStream(this.data));
        } else {
            obj = this.stream;
        }
        this.JPEGReader.setInput(obj, false, true);
        this.JPEGParam.setDestination(this.rawImage);
        this.JPEGReader.read(0, this.JPEGParam);
    }

    public void finalize() throws Throwable {
        super.finalize();
        this.JPEGReader.dispose();
    }
}
