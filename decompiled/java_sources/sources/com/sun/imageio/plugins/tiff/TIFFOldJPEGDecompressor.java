package com.sun.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes9.dex */
public class TIFFOldJPEGDecompressor extends TIFFJPEGDecompressor {
    private static final int DHT = 196;
    private static final int DQT = 219;
    private static final int DRI = 221;
    private static final int SOF0 = 192;
    private static final int SOS = 218;
    private boolean isInitialized = false;
    private Long JPEGStreamOffset = null;
    private int SOFPosition = -1;
    private byte[] SOSMarker = null;
    private int subsamplingX = 2;
    private int subsamplingY = 2;

    private synchronized void initialize() throws IOException {
        int i;
        char c;
        if (this.isInitialized) {
            return;
        }
        TIFFImageMetadata tIFFImageMetadata = (TIFFImageMetadata) this.metadata;
        TIFFField tIFFField = tIFFImageMetadata.getTIFFField(513);
        TIFFField tIFFField2 = tIFFImageMetadata.getTIFFField(324);
        if (tIFFField2 == null && (tIFFField2 = tIFFImageMetadata.getTIFFField(273)) == null) {
            tIFFField2 = tIFFField;
        }
        long[] asLongs = tIFFField2.getAsLongs();
        if (!(asLongs.length > 1)) {
            this.stream.seek(this.offset);
            this.stream.mark();
            if (this.stream.read() == 255 && this.stream.read() == 216) {
                this.JPEGStreamOffset = Long.valueOf(this.offset);
                ((TIFFImageReader) this.reader).forwardWarningMessage("SOI marker detected at start of strip or tile.");
                this.isInitialized = true;
                return;
            }
            this.stream.reset();
            if (tIFFField != null) {
                long asLong = tIFFField.getAsLong(0);
                TIFFField tIFFField3 = tIFFImageMetadata.getTIFFField(514);
                if (tIFFField3 == null) {
                    this.JPEGStreamOffset = Long.valueOf(asLong);
                    ((TIFFImageReader) this.reader).forwardWarningMessage("JPEGInterchangeFormatLength field is missing");
                    this.isInitialized = true;
                    return;
                } else {
                    long asLong2 = tIFFField3.getAsLong(0);
                    long j = asLongs[0];
                    if (asLong < j && asLong2 + asLong > j) {
                        this.JPEGStreamOffset = Long.valueOf(asLong);
                        this.isInitialized = true;
                        return;
                    }
                }
            }
        }
        TIFFField tIFFField4 = tIFFImageMetadata.getTIFFField(530);
        if (tIFFField4 != null) {
            this.subsamplingX = tIFFField4.getAsChars()[0];
            this.subsamplingY = tIFFField4.getAsChars()[1];
        }
        if (tIFFField != null) {
            long asLong3 = tIFFField.getAsLong(0);
            TIFFField tIFFField5 = tIFFImageMetadata.getTIFFField(514);
            if (tIFFField5 != null) {
                long asLong4 = tIFFField5.getAsLong(0);
                if (asLong4 >= 2) {
                    long j2 = asLong3 + asLong4;
                    if (j2 <= asLongs[0]) {
                        this.stream.mark();
                        this.stream.seek(j2 - 2);
                        if (this.stream.read() == 255 && this.stream.read() == 217) {
                            this.tables = new byte[(int) (asLong4 - 2)];
                        } else {
                            this.tables = new byte[(int) asLong4];
                        }
                        this.stream.reset();
                        this.stream.mark();
                        this.stream.seek(asLong3);
                        this.stream.readFully(this.tables);
                        this.stream.reset();
                        ((TIFFImageReader) this.reader).forwardWarningMessage("Incorrect JPEG interchange format: using JPEGInterchangeFormat offset to derive tables.");
                    }
                }
                ((TIFFImageReader) this.reader).forwardWarningMessage("JPEGInterchangeFormat+JPEGInterchangeFormatLength > offset to first strip or tile.");
            }
        }
        if (this.tables == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            long length = this.stream.length();
            byteArrayOutputStream.write(255);
            byteArrayOutputStream.write(216);
            TIFFField tIFFField6 = tIFFImageMetadata.getTIFFField(519);
            if (tIFFField6 == null) {
                throw new IIOException("JPEGQTables field missing!");
            }
            long[] asLongs2 = tIFFField6.getAsLongs();
            for (int i2 = 0; i2 < asLongs2.length; i2++) {
                byteArrayOutputStream.write(255);
                byteArrayOutputStream.write(219);
                byteArrayOutputStream.write(0);
                byteArrayOutputStream.write(67);
                byteArrayOutputStream.write(i2);
                byte[] bArr = new byte[64];
                if (length != -1 && asLongs2[i2] > length) {
                    throw new IIOException("JPEGQTables offset for index " + i2 + " is not in the stream!");
                }
                this.stream.seek(asLongs2[i2]);
                this.stream.readFully(bArr);
                byteArrayOutputStream.write(bArr);
            }
            int i3 = 0;
            for (int i4 = 2; i3 < i4; i4 = 2) {
                int i5 = i3 == 0 ? 520 : 521;
                TIFFField tIFFField7 = tIFFImageMetadata.getTIFFField(i5);
                String str = i5 == 520 ? "JPEGDCTables" : "JPEGACTables";
                if (tIFFField7 == null) {
                    throw new IIOException(str + " field missing!");
                }
                long[] asLongs3 = tIFFField7.getAsLongs();
                for (int i6 = 0; i6 < asLongs3.length; i6++) {
                    byteArrayOutputStream.write(255);
                    byteArrayOutputStream.write(196);
                    byte[] bArr2 = new byte[16];
                    if (length != -1 && asLongs3[i6] > length) {
                        throw new IIOException(str + " offset for index " + i6 + " is not in the stream!");
                    }
                    this.stream.seek(asLongs3[i6]);
                    this.stream.readFully(bArr2);
                    int i7 = 0;
                    for (int i8 = 0; i8 < 16; i8++) {
                        i7 += bArr2[i8] & 255;
                    }
                    char c2 = (char) (i7 + 19);
                    byteArrayOutputStream.write((c2 >>> '\b') & 255);
                    byteArrayOutputStream.write(c2 & 255);
                    byteArrayOutputStream.write((i3 << 4) | i6);
                    byteArrayOutputStream.write(bArr2);
                    byte[] bArr3 = new byte[i7];
                    this.stream.readFully(bArr3);
                    byteArrayOutputStream.write(bArr3);
                }
                i3++;
            }
            byteArrayOutputStream.write(-1);
            byteArrayOutputStream.write(-64);
            short s = (short) ((this.samplesPerPixel * 3) + 8);
            byteArrayOutputStream.write((byte) ((s >>> 8) & 255));
            byteArrayOutputStream.write((byte) (s & 255));
            byteArrayOutputStream.write(8);
            short s2 = (short) this.srcHeight;
            byteArrayOutputStream.write((byte) ((s2 >>> 8) & 255));
            byteArrayOutputStream.write((byte) (s2 & 255));
            short s3 = (short) this.srcWidth;
            byteArrayOutputStream.write((byte) ((s3 >>> 8) & 255));
            byteArrayOutputStream.write((byte) (s3 & 255));
            byteArrayOutputStream.write((byte) this.samplesPerPixel);
            if (this.samplesPerPixel == 1) {
                byteArrayOutputStream.write(1);
                byteArrayOutputStream.write(17);
                byteArrayOutputStream.write(0);
            } else {
                int i9 = 0;
                while (i9 < 3) {
                    int i10 = i9 + 1;
                    byteArrayOutputStream.write((byte) i10);
                    byteArrayOutputStream.write(i9 != 0 ? (byte) 17 : (byte) (((this.subsamplingX & 15) << 4) | (this.subsamplingY & 15)));
                    byteArrayOutputStream.write((byte) i9);
                    i9 = i10;
                }
            }
            TIFFField tIFFField8 = tIFFImageMetadata.getTIFFField(515);
            if (tIFFField8 != null && (c = tIFFField8.getAsChars()[0]) != 0) {
                byteArrayOutputStream.write(-1);
                byteArrayOutputStream.write(-35);
                byteArrayOutputStream.write((byte) 0);
                byteArrayOutputStream.write((byte) 4);
                byteArrayOutputStream.write((byte) ((c >>> '\b') & 255));
                byteArrayOutputStream.write((byte) (c & 255));
            }
            this.tables = byteArrayOutputStream.toByteArray();
        }
        int length2 = this.tables.length - 1;
        int i11 = 0;
        while (true) {
            if (i11 >= length2) {
                break;
            }
            byte[] bArr4 = this.tables;
            if ((bArr4[i11] & 255) == 255 && (bArr4[i11 + 1] & 255) == 192) {
                this.SOFPosition = i11;
                break;
            }
            i11++;
        }
        if (this.SOFPosition == -1) {
            byte[] bArr5 = this.tables;
            byte[] bArr6 = new byte[bArr5.length + 10 + (this.samplesPerPixel * 3)];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            byte[] bArr7 = this.tables;
            int length3 = bArr7.length;
            this.SOFPosition = bArr7.length;
            this.tables = bArr6;
            int i12 = length3 + 1;
            bArr6[length3] = -1;
            int i13 = i12 + 1;
            bArr6[i12] = -64;
            int i14 = this.samplesPerPixel;
            short s4 = (short) ((i14 * 3) + 8);
            int i15 = i13 + 1;
            bArr6[i13] = (byte) ((s4 >>> 8) & 255);
            int i16 = i15 + 1;
            bArr6[i15] = (byte) (s4 & 255);
            int i17 = i16 + 1;
            bArr6[i16] = 8;
            short s5 = (short) this.srcHeight;
            int i18 = i17 + 1;
            bArr6[i17] = (byte) ((s5 >>> 8) & 255);
            int i19 = i18 + 1;
            bArr6[i18] = (byte) (s5 & 255);
            short s6 = (short) this.srcWidth;
            int i20 = i19 + 1;
            bArr6[i19] = (byte) ((s6 >>> 8) & 255);
            int i21 = i20 + 1;
            bArr6[i20] = (byte) (s6 & 255);
            int i22 = i21 + 1;
            bArr6[i21] = (byte) i14;
            if (i14 == 1) {
                int i23 = i22 + 1;
                bArr6[i22] = 1;
                bArr6[i23] = 17;
                bArr6[i23 + 1] = 0;
            } else {
                int i24 = 0;
                while (i24 < 3) {
                    byte[] bArr8 = this.tables;
                    int i25 = i22 + 1;
                    int i26 = i24 + 1;
                    bArr8[i22] = (byte) i26;
                    int i27 = i25 + 1;
                    bArr8[i25] = i24 != 0 ? (byte) 17 : (byte) (((this.subsamplingX & 15) << 4) | (this.subsamplingY & 15));
                    bArr8[i27] = (byte) i24;
                    i22 = i27 + 1;
                    i24 = i26;
                }
            }
        }
        this.stream.mark();
        this.stream.seek(asLongs[0]);
        if (this.stream.read() == 255 && this.stream.read() == 218) {
            int read = (this.stream.read() << 8) | this.stream.read();
            byte[] bArr9 = new byte[read + 2];
            this.SOSMarker = bArr9;
            bArr9[0] = -1;
            bArr9[1] = ExifInterface.f7156F1;
            bArr9[2] = (byte) ((65280 & read) >> 8);
            bArr9[3] = (byte) (read & 255);
            this.stream.readFully(bArr9, 4, read - 2);
        } else {
            int i28 = this.samplesPerPixel;
            byte[] bArr10 = new byte[(i28 * 2) + 8];
            this.SOSMarker = bArr10;
            bArr10[0] = -1;
            bArr10[1] = ExifInterface.f7156F1;
            short s7 = (short) ((i28 * 2) + 6);
            bArr10[2] = (byte) ((s7 >>> 8) & 255);
            bArr10[3] = (byte) (s7 & 255);
            bArr10[4] = (byte) i28;
            int i29 = 5;
            if (i28 == 1) {
                bArr10[5] = 1;
                bArr10[6] = 0;
                i = 7;
            } else {
                int i30 = 0;
                while (i30 < 3) {
                    byte[] bArr11 = this.SOSMarker;
                    int i31 = i29 + 1;
                    int i32 = i30 + 1;
                    bArr11[i29] = (byte) i32;
                    i29 = i31 + 1;
                    bArr11[i31] = (byte) (i30 | (i30 << 4));
                    i30 = i32;
                }
                i = i29;
            }
            byte[] bArr12 = this.SOSMarker;
            int i33 = i + 1;
            bArr12[i] = 0;
            bArr12[i33] = 63;
            bArr12[i33 + 1] = 0;
        }
        this.stream.reset();
        this.isInitialized = true;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFJPEGDecompressor, com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        initialize();
        Long l = this.JPEGStreamOffset;
        if (l != null) {
            this.stream.seek(l.longValue());
            this.JPEGReader.setInput(this.stream, false, true);
        } else {
            byte[] bArr2 = this.tables;
            int length = bArr2.length;
            byte[] bArr3 = new byte[this.SOSMarker.length + length + this.byteCount + 2];
            System.arraycopy(bArr2, 0, bArr3, 0, length);
            short s = (short) this.srcHeight;
            int i4 = this.SOFPosition;
            bArr3[i4 + 5] = (byte) ((s >>> 8) & 255);
            bArr3[i4 + 6] = (byte) (s & 255);
            short s2 = (short) this.srcWidth;
            bArr3[i4 + 7] = (byte) ((s2 >>> 8) & 255);
            bArr3[i4 + 8] = (byte) (s2 & 255);
            this.stream.seek(this.offset);
            byte[] bArr4 = new byte[2];
            this.stream.readFully(bArr4);
            if ((bArr4[0] & 255) != 255 || (bArr4[1] & 255) != 218) {
                byte[] bArr5 = this.SOSMarker;
                System.arraycopy(bArr5, 0, bArr3, length, bArr5.length);
                length += this.SOSMarker.length;
            }
            int i5 = length + 1;
            bArr3[length] = bArr4[0];
            int i6 = i5 + 1;
            bArr3[i5] = bArr4[1];
            this.stream.readFully(bArr3, i6, this.byteCount - 2);
            int i7 = i6 + (this.byteCount - 2);
            int i8 = i7 + 1;
            bArr3[i7] = -1;
            bArr3[i8] = ExifInterface.f7165I1;
            this.JPEGReader.setInput(new MemoryCacheImageInputStream(new ByteArrayInputStream(bArr3, 0, i8 + 1)), true, true);
        }
        this.JPEGParam.setDestination(this.rawImage);
        this.JPEGReader.read(0, this.JPEGParam);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFJPEGDecompressor
    public void finalize() throws Throwable {
        super.finalize();
        this.JPEGReader.dispose();
    }
}
