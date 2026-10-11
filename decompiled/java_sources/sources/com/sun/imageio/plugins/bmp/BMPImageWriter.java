package com.sun.imageio.plugins.bmp;

import com.sun.imageio.plugins.common.I18N;
import com.sun.imageio.plugins.common.ImageUtil;
import java.awt.Rectangle;
import java.awt.image.BandedSampleModel;
import java.awt.image.ColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferInt;
import java.awt.image.DataBufferShort;
import java.awt.image.DataBufferUShort;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Iterator;
import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.event.IIOWriteProgressListener;
import javax.imageio.event.IIOWriteWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.bmp.BMPImageWriteParam;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class BMPImageWriter extends ImageWriter implements BMPConstants {
    private int[] bitMasks;
    private int[] bitPos;
    private byte[] bpixels;
    private int compImageSize;
    private int compressionType;
    private ByteArrayOutputStream embedded_stream;

    /* renamed from: h */
    private int f64032h;
    private int[] ipixels;
    private boolean isTopDown;
    private short[] spixels;
    private ImageOutputStream stream;
    private int version;

    /* renamed from: w */
    private int f64033w;

    /* loaded from: classes9.dex */
    public class IIOWriteProgressAdapter implements IIOWriteProgressListener {
        private IIOWriteProgressAdapter() {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void imageComplete(ImageWriter imageWriter) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void imageProgress(ImageWriter imageWriter, float f) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void imageStarted(ImageWriter imageWriter, int i) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void thumbnailComplete(ImageWriter imageWriter) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void thumbnailProgress(ImageWriter imageWriter, float f) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void thumbnailStarted(ImageWriter imageWriter, int i, int i2) {
        }

        @Override // javax.imageio.event.IIOWriteProgressListener
        public void writeAborted(ImageWriter imageWriter) {
        }
    }

    public BMPImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.stream = null;
        this.embedded_stream = null;
        this.compImageSize = 0;
    }

    private void encodeRLE4(byte[] bArr, int i) throws IOException {
        int i2;
        int i3;
        int i4;
        byte[] bArr2 = new byte[256];
        byte b = bArr[0];
        byte b2 = bArr[1];
        int i5 = 2;
        int i6 = 1;
        int i7 = 2;
        int i8 = -1;
        while (true) {
            int i9 = i - 2;
            if (i6 >= i9) {
                return;
            }
            int i10 = i6 + 1;
            byte b3 = bArr[i10];
            i6 = i10 + 1;
            byte b4 = bArr[i6];
            if (b3 == b) {
                if (i8 >= 4) {
                    this.stream.writeByte(0);
                    int i11 = i8 - 1;
                    this.stream.writeByte(i11);
                    incCompImageSize(i5);
                    int i12 = 0;
                    while (true) {
                        i4 = i8 - 2;
                        if (i12 >= i4) {
                            break;
                        }
                        this.stream.writeByte((byte) ((bArr2[i12] << 4) | bArr2[i12 + 1]));
                        incCompImageSize(1);
                        i12 += 2;
                    }
                    if (!isEven(i11)) {
                        this.stream.writeByte((bArr2[i4] << 4) | 0);
                        incCompImageSize(1);
                    }
                    if (!isEven((int) Math.ceil(i11 / 2))) {
                        this.stream.writeByte(0);
                        incCompImageSize(1);
                    }
                } else if (i8 > -1) {
                    this.stream.writeByte(2);
                    this.stream.writeByte((bArr2[0] << 4) | bArr2[1]);
                    incCompImageSize(2);
                }
                if (b4 == b2) {
                    i7 += 2;
                    if (i7 == 256) {
                        this.stream.writeByte(i7 - 1);
                        this.stream.writeByte((b << 4) | b2);
                        incCompImageSize(2);
                        if (i6 < i - 1) {
                            i6++;
                            i7 = 2;
                            i8 = -1;
                            byte b5 = b2;
                            b2 = bArr[i6];
                            b = b5;
                        } else {
                            this.stream.writeByte(1);
                            this.stream.writeByte((b2 << 4) | 0);
                            incCompImageSize(2);
                            i7 = -1;
                        }
                    }
                    i8 = -1;
                } else {
                    this.stream.writeByte(i7 + 1);
                    this.stream.writeByte((b << 4) | b2);
                    incCompImageSize(2);
                    if (i6 < i - 1) {
                        i6++;
                        b2 = bArr[i6];
                        b = b4;
                        i7 = 2;
                        i8 = -1;
                    } else {
                        this.stream.writeByte(1);
                        this.stream.writeByte((b4 << 4) | 0);
                        incCompImageSize(2);
                        b = b4;
                        i7 = -1;
                        i8 = -1;
                    }
                }
            } else {
                if (i7 > i5) {
                    this.stream.writeByte(i7);
                    this.stream.writeByte((b << 4) | b2);
                    incCompImageSize(i5);
                } else if (i8 < 0) {
                    int i13 = i8 + 1;
                    bArr2[i13] = b;
                    int i14 = i13 + 1;
                    bArr2[i14] = b2;
                    int i15 = i14 + 1;
                    bArr2[i15] = b3;
                    i8 = i15 + 1;
                    bArr2[i8] = b4;
                } else if (i8 < 253) {
                    int i16 = i8 + 1;
                    bArr2[i16] = b3;
                    i8 = i16 + 1;
                    bArr2[i8] = b4;
                } else {
                    this.stream.writeByte(0);
                    this.stream.writeByte(i8 + 1);
                    incCompImageSize(2);
                    for (int i17 = 0; i17 < i8; i17 += 2) {
                        this.stream.writeByte((byte) ((bArr2[i17] << 4) | bArr2[i17 + 1]));
                        incCompImageSize(1);
                    }
                    this.stream.writeByte(0);
                    incCompImageSize(1);
                    i8 = -1;
                }
                b = b3;
                b2 = b4;
                i7 = 2;
            }
            if (i6 >= i9) {
                int i18 = -1;
                if (i8 == -1) {
                    if (i7 >= 2) {
                        if (i6 == i9) {
                            i6++;
                            if (bArr[i6] == b) {
                                i7++;
                                this.stream.writeByte(i7);
                                this.stream.writeByte((b << 4) | b2);
                                i3 = 2;
                                incCompImageSize(2);
                            } else {
                                this.stream.writeByte(i7);
                                this.stream.writeByte((b << 4) | b2);
                                this.stream.writeByte(1);
                                this.stream.writeByte((bArr[i6] << 4) | 0);
                                byte b6 = bArr[i6];
                                incCompImageSize(4);
                                i2 = 2;
                                this.stream.writeByte(0);
                                this.stream.writeByte(0);
                                incCompImageSize(i2);
                                i5 = i2;
                            }
                        } else {
                            this.stream.writeByte(i7);
                            this.stream.writeByte((b << 4) | b2);
                            i3 = 2;
                            incCompImageSize(2);
                        }
                        i2 = i3;
                        this.stream.writeByte(0);
                        this.stream.writeByte(0);
                        incCompImageSize(i2);
                        i5 = i2;
                    } else {
                        i18 = -1;
                    }
                }
                if (i8 > i18) {
                    if (i6 == i9) {
                        i8++;
                        i6++;
                        bArr2[i8] = bArr[i6];
                    }
                    if (i8 >= 2) {
                        this.stream.writeByte(0);
                        int i19 = i8 + 1;
                        this.stream.writeByte(i19);
                        incCompImageSize(2);
                        for (int i20 = 0; i20 < i8; i20 += 2) {
                            this.stream.writeByte((byte) ((bArr2[i20] << 4) | bArr2[i20 + 1]));
                            incCompImageSize(1);
                        }
                        if (!isEven(i19)) {
                            this.stream.writeByte((bArr2[i8] << 4) | 0);
                            incCompImageSize(1);
                        }
                        if (!isEven((int) Math.ceil(i19 / 2))) {
                            this.stream.writeByte(0);
                            incCompImageSize(1);
                        }
                    } else {
                        if (i8 == 0) {
                            i2 = 2;
                            this.stream.writeByte(1);
                            this.stream.writeByte((bArr2[0] << 4) | 0);
                            incCompImageSize(2);
                        } else if (i8 == 1) {
                            i2 = 2;
                            this.stream.writeByte(2);
                            this.stream.writeByte((bArr2[0] << 4) | bArr2[1]);
                            incCompImageSize(2);
                        }
                        this.stream.writeByte(0);
                        this.stream.writeByte(0);
                        incCompImageSize(i2);
                        i5 = i2;
                    }
                }
                i2 = 2;
                this.stream.writeByte(0);
                this.stream.writeByte(0);
                incCompImageSize(i2);
                i5 = i2;
            } else {
                i5 = 2;
            }
        }
    }

    private void encodeRLE8(byte[] bArr, int i) throws IOException {
        byte b = bArr[0];
        byte[] bArr2 = new byte[256];
        int i2 = 0;
        int i3 = 1;
        int i4 = -1;
        while (true) {
            int i5 = i - 1;
            if (i2 >= i5) {
                return;
            }
            i2++;
            byte b2 = bArr[i2];
            if (b2 == b) {
                if (i4 >= 3) {
                    this.stream.writeByte(0);
                    this.stream.writeByte(i4);
                    incCompImageSize(2);
                    for (int i6 = 0; i6 < i4; i6++) {
                        this.stream.writeByte(bArr2[i6]);
                        incCompImageSize(1);
                    }
                    if (!isEven(i4)) {
                        this.stream.writeByte(0);
                        incCompImageSize(1);
                    }
                } else if (i4 > -1) {
                    for (int i7 = 0; i7 < i4; i7++) {
                        this.stream.writeByte(1);
                        this.stream.writeByte(bArr2[i7]);
                        incCompImageSize(2);
                    }
                }
                i3++;
                if (i3 == 256) {
                    this.stream.writeByte(i3 - 1);
                    this.stream.writeByte(b);
                    incCompImageSize(2);
                    i3 = 1;
                }
                i4 = -1;
            } else {
                if (i3 > 1) {
                    this.stream.writeByte(i3);
                    this.stream.writeByte(b);
                    incCompImageSize(2);
                } else if (i4 < 0) {
                    int i8 = i4 + 1;
                    bArr2[i8] = b;
                    i4 = i8 + 1;
                    bArr2[i4] = b2;
                } else if (i4 < 254) {
                    i4++;
                    bArr2[i4] = b2;
                } else {
                    this.stream.writeByte(0);
                    this.stream.writeByte(i4 + 1);
                    incCompImageSize(2);
                    for (int i9 = 0; i9 <= i4; i9++) {
                        this.stream.writeByte(bArr2[i9]);
                        incCompImageSize(1);
                    }
                    this.stream.writeByte(0);
                    incCompImageSize(1);
                    i4 = -1;
                }
                i3 = 1;
                b = b2;
            }
            if (i2 == i5) {
                if (i4 == -1) {
                    this.stream.writeByte(i3);
                    this.stream.writeByte(b);
                    incCompImageSize(2);
                    i3 = 1;
                } else if (i4 >= 2) {
                    this.stream.writeByte(0);
                    int i10 = i4 + 1;
                    this.stream.writeByte(i10);
                    incCompImageSize(2);
                    for (int i11 = 0; i11 <= i4; i11++) {
                        this.stream.writeByte(bArr2[i11]);
                        incCompImageSize(1);
                    }
                    if (!isEven(i10)) {
                        this.stream.writeByte(0);
                        incCompImageSize(1);
                    }
                } else if (i4 > -1) {
                    for (int i12 = 0; i12 <= i4; i12++) {
                        this.stream.writeByte(1);
                        this.stream.writeByte(bArr2[i12]);
                        incCompImageSize(2);
                    }
                }
                this.stream.writeByte(0);
                this.stream.writeByte(0);
                incCompImageSize(2);
            }
        }
    }

    private int firstLowBit(int i) {
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    private synchronized void incCompImageSize(int i) {
        this.compImageSize += i;
    }

    private boolean isEven(int i) {
        return i % 2 == 0;
    }

    private int roundBpp(int i) {
        if (i <= 8) {
            return 8;
        }
        if (i <= 16) {
            return 16;
        }
        return i <= 24 ? 24 : 32;
    }

    private void writeEmbedded(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        String str = this.compressionType == 4 ? "jpeg" : "png";
        Iterator<ImageWriter> imageWritersByFormatName = ImageIO.getImageWritersByFormatName(str);
        ImageWriter next = imageWritersByFormatName.hasNext() ? imageWritersByFormatName.next() : null;
        if (next == null) {
            throw new RuntimeException(I18N.getString("BMPImageWrite5") + " " + str);
        }
        if (this.embedded_stream == null) {
            throw new RuntimeException("No stream for writing embedded image!");
        }
        next.addIIOWriteProgressListener(new IIOWriteProgressAdapter() { // from class: com.sun.imageio.plugins.bmp.BMPImageWriter.1
            @Override // com.sun.imageio.plugins.bmp.BMPImageWriter.IIOWriteProgressAdapter, javax.imageio.event.IIOWriteProgressListener
            public void imageProgress(ImageWriter imageWriter, float f) {
                BMPImageWriter.this.processImageProgress(f);
            }
        });
        next.addIIOWriteWarningListener(new IIOWriteWarningListener() { // from class: com.sun.imageio.plugins.bmp.BMPImageWriter.2
            @Override // javax.imageio.event.IIOWriteWarningListener
            public void warningOccurred(ImageWriter imageWriter, int i, String str2) {
                BMPImageWriter.this.processWarningOccurred(i, str2);
            }
        });
        next.setOutput(ImageIO.createImageOutputStream(this.embedded_stream));
        ImageWriteParam defaultWriteParam = next.getDefaultWriteParam();
        defaultWriteParam.setDestinationOffset(imageWriteParam.getDestinationOffset());
        defaultWriteParam.setSourceBands(imageWriteParam.getSourceBands());
        defaultWriteParam.setSourceRegion(imageWriteParam.getSourceRegion());
        defaultWriteParam.setSourceSubsampling(imageWriteParam.getSourceXSubsampling(), imageWriteParam.getSourceYSubsampling(), imageWriteParam.getSubsamplingXOffset(), imageWriteParam.getSubsamplingYOffset());
        next.write(null, iIOImage, defaultWriteParam);
    }

    private void writeFileHeader(int i, int i2) throws IOException {
        this.stream.writeByte(66);
        this.stream.writeByte(77);
        this.stream.writeInt(i);
        this.stream.writeInt(0);
        this.stream.writeInt(i2);
    }

    private void writeInfoHeader(int i, int i2) throws IOException {
        this.stream.writeInt(i);
        this.stream.writeInt(this.f64033w);
        this.stream.writeInt(this.isTopDown ? -this.f64032h : this.f64032h);
        this.stream.writeShort(1);
        this.stream.writeShort(i2);
    }

    private void writePixels(int i, int i2, int i3, int[] iArr, int i4, int i5, IndexColorModel indexColorModel) throws IOException {
        if (i3 == 1) {
            int i6 = i;
            int i7 = 0;
            int i8 = 0;
            while (i7 < i2 / 8) {
                byte[] bArr = this.bpixels;
                int i9 = i6 + 1;
                int i10 = i9 + 1;
                int i11 = (iArr[i6] << 7) | (iArr[i9] << 6);
                int i12 = i10 + 1;
                int i13 = i11 | (iArr[i10] << 5);
                int i14 = i12 + 1;
                int i15 = i13 | (iArr[i12] << 4);
                int i16 = i14 + 1;
                int i17 = i15 | (iArr[i14] << 3);
                int i18 = i16 + 1;
                int i19 = i17 | (iArr[i16] << 2);
                int i20 = i18 + 1;
                bArr[i8] = (byte) (i19 | (iArr[i18] << 1) | iArr[i20]);
                i7++;
                i8++;
                i6 = i20 + 1;
            }
            int i21 = i2 % 8;
            if (i21 > 0) {
                int i22 = 0;
                int i23 = 0;
                while (i22 < i21) {
                    i23 |= iArr[i6] << (7 - i22);
                    i22++;
                    i6++;
                }
                this.bpixels[i8] = (byte) i23;
            }
            this.stream.write(this.bpixels, 0, (i2 + 7) / 8);
        } else if (i3 != 4) {
            if (i3 != 8) {
                if (i3 == 16) {
                    if (this.spixels == null) {
                        this.spixels = new short[i2 / i5];
                    }
                    int i24 = 0;
                    int i25 = 0;
                    while (i24 < i2) {
                        short[] sArr = this.spixels;
                        sArr[i25] = 0;
                        if (this.compressionType == 0) {
                            sArr[i25] = (short) (((iArr[i24] & 31) << 10) | ((iArr[i24 + 1] & 31) << 5) | (iArr[i24 + 2] & 31));
                            i24 += 3;
                        } else {
                            int i26 = 0;
                            while (i26 < i5) {
                                short[] sArr2 = this.spixels;
                                sArr2[i25] = (short) (sArr2[i25] | ((iArr[i24] << this.bitPos[i26]) & this.bitMasks[i26]));
                                i26++;
                                i24++;
                            }
                        }
                        i25++;
                    }
                    ImageOutputStream imageOutputStream = this.stream;
                    short[] sArr3 = this.spixels;
                    imageOutputStream.writeShorts(sArr3, 0, sArr3.length);
                } else if (i3 != 24) {
                    if (i3 == 32) {
                        if (this.ipixels == null) {
                            this.ipixels = new int[i2 / i5];
                        }
                        if (i5 == 3) {
                            int i27 = 0;
                            int i28 = 0;
                            while (i27 < i2) {
                                int[] iArr2 = this.ipixels;
                                iArr2[i28] = 0;
                                if (this.compressionType == 0) {
                                    iArr2[i28] = ((iArr[i27 + 2] & 255) << 16) | ((iArr[i27 + 1] & 255) << 8) | (iArr[i27] & 255);
                                    i27 += 3;
                                } else {
                                    int i29 = 0;
                                    while (i29 < i5) {
                                        int[] iArr3 = this.ipixels;
                                        iArr3[i28] = iArr3[i28] | ((iArr[i27] << this.bitPos[i29]) & this.bitMasks[i29]);
                                        i29++;
                                        i27++;
                                    }
                                }
                                i28++;
                            }
                        } else {
                            for (int i30 = 0; i30 < i2; i30++) {
                                if (indexColorModel != null) {
                                    this.ipixels[i30] = indexColorModel.getRGB(iArr[i30]);
                                } else {
                                    int[] iArr4 = this.ipixels;
                                    int i31 = iArr[i30];
                                    iArr4[i30] = i31 | (i31 << 16) | (i31 << 8);
                                }
                            }
                        }
                        ImageOutputStream imageOutputStream2 = this.stream;
                        int[] iArr5 = this.ipixels;
                        imageOutputStream2.writeInts(iArr5, 0, iArr5.length);
                    }
                } else if (i5 == 3) {
                    int i32 = i;
                    int i33 = 0;
                    int i34 = 0;
                    while (i33 < i2) {
                        byte[] bArr2 = this.bpixels;
                        int i35 = i34 + 1;
                        bArr2[i34] = (byte) iArr[i32 + 2];
                        int i36 = i35 + 1;
                        bArr2[i35] = (byte) iArr[i32 + 1];
                        bArr2[i36] = (byte) iArr[i32];
                        i32 += 3;
                        i33 += 3;
                        i34 = i36 + 1;
                    }
                    this.stream.write(this.bpixels, 0, i2);
                } else {
                    int mapSize = indexColorModel.getMapSize();
                    byte[] bArr3 = new byte[mapSize];
                    byte[] bArr4 = new byte[mapSize];
                    byte[] bArr5 = new byte[mapSize];
                    indexColorModel.getReds(bArr3);
                    indexColorModel.getGreens(bArr4);
                    indexColorModel.getBlues(bArr5);
                    int i37 = i;
                    int i38 = 0;
                    int i39 = 0;
                    while (i38 < i2) {
                        int i40 = iArr[i37];
                        byte[] bArr6 = this.bpixels;
                        int i41 = i39 + 1;
                        bArr6[i39] = bArr5[i40];
                        int i42 = i41 + 1;
                        bArr6[i41] = bArr4[i40];
                        bArr6[i42] = bArr5[i40];
                        i37++;
                        i38++;
                        i39 = i42 + 1;
                    }
                    this.stream.write(this.bpixels, 0, i2 * 3);
                }
            } else if (this.compressionType == 1) {
                int i43 = i;
                int i44 = 0;
                while (i44 < i2) {
                    this.bpixels[i44] = (byte) iArr[i43];
                    i44++;
                    i43++;
                }
                encodeRLE8(this.bpixels, i2);
            } else {
                int i45 = i;
                int i46 = 0;
                while (i46 < i2) {
                    this.bpixels[i46] = (byte) iArr[i45];
                    i46++;
                    i45++;
                }
                this.stream.write(this.bpixels, 0, i2);
            }
        } else if (this.compressionType == 2) {
            byte[] bArr7 = new byte[i2];
            int i47 = i;
            int i48 = 0;
            while (i48 < i2) {
                bArr7[i48] = (byte) iArr[i47];
                i48++;
                i47++;
            }
            encodeRLE4(bArr7, i2);
        } else {
            int i49 = i;
            int i50 = 0;
            int i51 = 0;
            while (i50 < i2 / 2) {
                int i52 = i49 + 1;
                this.bpixels[i51] = (byte) ((iArr[i49] << 4) | iArr[i52]);
                i50++;
                i49 = i52 + 1;
                i51++;
            }
            if (i2 % 2 == 1) {
                this.bpixels[i51] = (byte) (iArr[i49] << 4);
            }
            this.stream.write(this.bpixels, 0, (i2 + 1) / 2);
        }
        int i53 = this.compressionType;
        if (i53 == 0 || i53 == 3) {
            for (int i54 = 0; i54 < i4; i54++) {
                this.stream.writeByte(0);
            }
        }
    }

    private void writeSize(int i, int i2) throws IOException {
        this.stream.skipBytes(i2);
        this.stream.writeInt(i);
    }

    public boolean canEncodeImage(int i, ColorModel colorModel, SampleModel sampleModel) {
        return canEncodeImage(i, new ImageTypeSpecifier(colorModel, sampleModel));
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteRasters() {
        return true;
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        BMPMetadata bMPMetadata = new BMPMetadata();
        bMPMetadata.bmpVersion = BMPConstants.VERSION_3;
        bMPMetadata.compression = getPreferredCompressionType(imageTypeSpecifier);
        if (imageWriteParam != null && imageWriteParam.getCompressionMode() == 2) {
            bMPMetadata.compression = BMPCompressionTypes.getType(imageWriteParam.getCompressionType());
        }
        bMPMetadata.bitsPerPixel = (short) imageTypeSpecifier.getColorModel().getPixelSize();
        return bMPMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new BMPImageWriteParam();
    }

    public int getPreferredCompressionType(ColorModel colorModel, SampleModel sampleModel) {
        return getPreferredCompressionType(new ImageTypeSpecifier(colorModel, sampleModel));
    }

    @Override // javax.imageio.ImageWriter
    public void reset() {
        super.reset();
        this.stream = null;
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        super.setOutput(obj);
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageOutputStream)) {
                throw new IllegalArgumentException(I18N.getString("BMPImageWriter0"));
            }
            ImageOutputStream imageOutputStream = (ImageOutputStream) obj;
            this.stream = imageOutputStream;
            imageOutputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        }
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        SampleModel sampleModel;
        ColorModel colorModel;
        Rectangle intersection;
        RenderedImage renderedImage;
        Raster raster;
        int i;
        boolean z;
        ColorModel colorModel2;
        int[] iArr;
        boolean z2;
        int i2;
        int[] iArr2;
        boolean z3;
        int i3;
        boolean z4;
        int i4;
        byte[] bArr;
        int i5;
        byte[] bArr2;
        byte[] bArr3;
        boolean z5;
        IndexColorModel indexColorModel;
        byte[] bArr4;
        boolean z6;
        int i6;
        boolean z7;
        int i7;
        int i8;
        int i9;
        int i10;
        RenderedImage renderedImage2;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr3;
        int i15;
        int i16;
        int offset;
        char c;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        if (this.stream == null) {
            throw new IllegalStateException(I18N.getString("BMPImageWriter7"));
        }
        if (iIOImage == null) {
            throw new IllegalArgumentException(I18N.getString("BMPImageWriter8"));
        }
        clearAbortRequest();
        processImageStarted(0);
        if (abortRequested()) {
            processWriteAborted();
            return;
        }
        ImageWriteParam defaultWriteParam = imageWriteParam == null ? getDefaultWriteParam() : imageWriteParam;
        BMPImageWriteParam bMPImageWriteParam = (BMPImageWriteParam) defaultWriteParam;
        boolean hasRaster = iIOImage.hasRaster();
        Rectangle sourceRegion = defaultWriteParam.getSourceRegion();
        this.compImageSize = 0;
        if (hasRaster) {
            Raster raster2 = iIOImage.getRaster();
            sampleModel = raster2.getSampleModel();
            colorModel = ImageUtil.createColorModel(null, sampleModel);
            intersection = sourceRegion == null ? raster2.getBounds() : sourceRegion.intersection(raster2.getBounds());
            raster = raster2;
            renderedImage = null;
        } else {
            RenderedImage renderedImage3 = iIOImage.getRenderedImage();
            sampleModel = renderedImage3.getSampleModel();
            colorModel = renderedImage3.getColorModel();
            Rectangle rectangle = new Rectangle(renderedImage3.getMinX(), renderedImage3.getMinY(), renderedImage3.getWidth(), renderedImage3.getHeight());
            if (sourceRegion == null) {
                renderedImage = renderedImage3;
                intersection = rectangle;
            } else {
                intersection = sourceRegion.intersection(rectangle);
                renderedImage = renderedImage3;
            }
            raster = null;
        }
        IIOMetadata metadata = iIOImage.getMetadata();
        BMPMetadata bMPMetadata = (metadata == null || !(metadata instanceof BMPMetadata)) ? (BMPMetadata) getDefaultImageMetadata(new ImageTypeSpecifier(colorModel, sampleModel), defaultWriteParam) : (BMPMetadata) metadata;
        if (intersection.isEmpty()) {
            throw new RuntimeException(I18N.getString("BMPImageWrite0"));
        }
        int sourceXSubsampling = defaultWriteParam.getSourceXSubsampling();
        int sourceYSubsampling = defaultWriteParam.getSourceYSubsampling();
        int subsamplingXOffset = defaultWriteParam.getSubsamplingXOffset();
        int subsamplingYOffset = defaultWriteParam.getSubsamplingYOffset();
        int dataType = sampleModel.getDataType();
        intersection.translate(subsamplingXOffset, subsamplingYOffset);
        int i22 = intersection.width - subsamplingXOffset;
        intersection.width = i22;
        int i23 = intersection.height - subsamplingYOffset;
        intersection.height = i23;
        int i24 = intersection.f97732x;
        Raster raster3 = raster;
        int i25 = i24 / sourceXSubsampling;
        ColorModel colorModel3 = colorModel;
        int i26 = intersection.f97733y;
        int i27 = i26 / sourceYSubsampling;
        RenderedImage renderedImage4 = renderedImage;
        this.f64033w = ((i22 + sourceXSubsampling) - 1) / sourceXSubsampling;
        this.f64032h = ((i23 + sourceYSubsampling) - 1) / sourceYSubsampling;
        int i28 = i24 % sourceXSubsampling;
        int i29 = i26 % sourceYSubsampling;
        boolean equals = new Rectangle(i25, i27, this.f64033w, this.f64032h).equals(intersection);
        int[] sourceBands = defaultWriteParam.getSourceBands();
        int numBands = sampleModel.getNumBands();
        if (sourceBands != null) {
            sampleModel = sampleModel.createSubsetSampleModel(sourceBands);
            iArr = sourceBands;
            i = sampleModel.getNumBands();
            colorModel2 = null;
            z = false;
        } else {
            int[] iArr4 = new int[numBands];
            for (int i30 = 0; i30 < numBands; i30++) {
                iArr4[i30] = i30;
            }
            i = numBands;
            z = true;
            colorModel2 = colorModel3;
            iArr = iArr4;
        }
        if (sampleModel instanceof ComponentSampleModel) {
            iArr2 = ((ComponentSampleModel) sampleModel).getBandOffsets();
            if (sampleModel instanceof BandedSampleModel) {
                i2 = i28;
                z2 = hasRaster;
                z3 = false;
            } else {
                boolean z8 = true;
                int i31 = 0;
                while (i31 < iArr2.length) {
                    boolean z9 = hasRaster;
                    z8 &= iArr2[i31] == (iArr2.length - i31) + (-1);
                    i31++;
                    hasRaster = z9;
                }
                z2 = hasRaster;
                z3 = z8;
                i2 = i28;
            }
        } else {
            z2 = hasRaster;
            if (sampleModel instanceof SinglePixelPackedSampleModel) {
                int[] bitOffsets = ((SinglePixelPackedSampleModel) sampleModel).getBitOffsets();
                int i32 = 0;
                z3 = true;
                while (i32 < bitOffsets.length - 1) {
                    int i33 = bitOffsets[i32];
                    i32++;
                    int i34 = i28;
                    z3 &= i33 > bitOffsets[i32];
                    i28 = i34;
                }
                i2 = i28;
                iArr2 = null;
            } else {
                i2 = i28;
                iArr2 = null;
                z3 = true;
            }
        }
        if (iArr2 == null) {
            iArr2 = new int[i];
            for (int i35 = 0; i35 < i; i35++) {
                iArr2[i35] = i35;
            }
        }
        int[] iArr5 = iArr2;
        boolean z10 = equals & z3;
        int[] sampleSize = sampleModel.getSampleSize();
        int i36 = this.f64033w * i;
        int compressionMode = bMPImageWriteParam.getCompressionMode();
        if (compressionMode == 1) {
            this.compressionType = getPreferredCompressionType(colorModel2, sampleModel);
        } else if (compressionMode == 2) {
            this.compressionType = BMPCompressionTypes.getType(bMPImageWriteParam.getCompressionType());
        } else if (compressionMode != 3) {
            this.compressionType = 0;
        } else {
            this.compressionType = bMPMetadata.compression;
        }
        if (!canEncodeImage(this.compressionType, colorModel2, sampleModel)) {
            throw new IOException("Image can not be encoded with compression type " + BMPCompressionTypes.getName(this.compressionType));
        }
        if (this.compressionType == 3) {
            int dataTypeSize = DataBuffer.getDataTypeSize(sampleModel.getDataType());
            if (dataTypeSize == 16 || dataTypeSize == 32) {
                z4 = z10;
                i18 = dataTypeSize;
            } else {
                i18 = 32;
                z4 = false;
            }
            int i37 = ((this.f64033w * i18) + 7) >> 3;
            byte[] bArr5 = new byte[3];
            byte[] bArr6 = new byte[3];
            byte[] bArr7 = new byte[3];
            byte[] bArr8 = new byte[3];
            if (i18 != 16) {
                i19 = 65280;
                i20 = 16711680;
                i21 = 255;
            } else {
                if (!(colorModel2 instanceof DirectColorModel)) {
                    throw new IOException("Image can not be encoded with compression type " + BMPCompressionTypes.getName(this.compressionType));
                }
                DirectColorModel directColorModel = (DirectColorModel) colorModel2;
                int redMask = directColorModel.getRedMask();
                int greenMask = directColorModel.getGreenMask();
                i21 = directColorModel.getBlueMask();
                i19 = greenMask;
                i20 = redMask;
            }
            int i38 = i19;
            bArr4 = bArr5;
            ColorModel colorModel4 = colorModel2;
            int i39 = i18;
            i3 = i;
            writeMaskToPalette(i20, 0, bArr5, bArr6, bArr7, bArr8);
            writeMaskToPalette(i38, 1, bArr4, bArr6, bArr7, bArr8);
            writeMaskToPalette(i21, 2, bArr4, bArr6, bArr7, bArr8);
            if (!z4) {
                this.bitMasks = r1;
                int[] iArr6 = {i20, i38, i21};
                this.bitPos = r1;
                int[] iArr7 = {firstLowBit(i20)};
                this.bitPos[1] = firstLowBit(i38);
                this.bitPos[2] = firstLowBit(i21);
            }
            indexColorModel = colorModel4 instanceof IndexColorModel ? (IndexColorModel) colorModel4 : null;
            i36 = i37;
            bArr3 = bArr6;
            bArr = bArr8;
            bArr2 = bArr7;
            i4 = i39;
            i5 = 3;
            z5 = true;
        } else {
            ColorModel colorModel5 = colorModel2;
            i3 = i;
            if (colorModel5 instanceof IndexColorModel) {
                IndexColorModel indexColorModel2 = (IndexColorModel) colorModel5;
                int mapSize = indexColorModel2.getMapSize();
                if (mapSize <= 2) {
                    i36 = (this.f64033w + 7) >> 3;
                    i7 = mapSize;
                    z7 = true;
                    z6 = true;
                    i6 = 1;
                } else if (mapSize <= 16) {
                    z6 = true;
                    i36 = (this.f64033w + 1) >> 1;
                    i7 = mapSize;
                    z7 = true;
                    i6 = 4;
                } else {
                    z6 = true;
                    if (mapSize <= 256) {
                        i6 = 8;
                        i7 = mapSize;
                        z7 = true;
                    } else {
                        i36 = this.f64033w * 3;
                        i6 = 24;
                        z7 = false;
                        i7 = 0;
                    }
                }
                if (z7 == z6) {
                    byte[] bArr9 = new byte[i7];
                    byte[] bArr10 = new byte[i7];
                    byte[] bArr11 = new byte[i7];
                    byte[] bArr12 = new byte[i7];
                    indexColorModel2.getAlphas(bArr12);
                    indexColorModel2.getReds(bArr9);
                    indexColorModel2.getGreens(bArr10);
                    indexColorModel2.getBlues(bArr11);
                    z4 = z10;
                    bArr4 = bArr9;
                    bArr3 = bArr10;
                    bArr = bArr12;
                    indexColorModel = indexColorModel2;
                    z5 = z7;
                    i5 = i7;
                    bArr2 = bArr11;
                    i4 = i6;
                } else {
                    z4 = z10;
                    indexColorModel = indexColorModel2;
                    i4 = i6;
                    bArr = null;
                    bArr3 = null;
                    bArr4 = null;
                    z5 = z7;
                    i5 = i7;
                    bArr2 = null;
                }
            } else if (i3 == 1) {
                int i40 = sampleSize[0];
                i36 = ((this.f64033w * i40) + 7) >> 3;
                byte[] bArr13 = new byte[256];
                byte[] bArr14 = new byte[256];
                byte[] bArr15 = new byte[256];
                byte[] bArr16 = new byte[256];
                int i41 = 0;
                for (int i42 = 256; i41 < i42; i42 = 256) {
                    byte b = (byte) i41;
                    bArr13[i41] = b;
                    bArr14[i41] = b;
                    bArr15[i41] = b;
                    bArr16[i41] = -1;
                    i41++;
                }
                z4 = z10;
                i4 = i40;
                bArr4 = bArr13;
                bArr3 = bArr14;
                bArr2 = bArr15;
                bArr = bArr16;
                i5 = 256;
                z5 = true;
                indexColorModel = null;
            } else {
                if ((sampleModel instanceof SinglePixelPackedSampleModel) && z) {
                    int i43 = 0;
                    for (int i44 : sampleModel.getSampleSize()) {
                        i43 += i44;
                    }
                    int roundBpp = roundBpp(i43);
                    if (roundBpp != DataBuffer.getDataTypeSize(sampleModel.getDataType())) {
                        z10 = false;
                    }
                    i36 = ((this.f64033w * roundBpp) + 7) >> 3;
                    z4 = z10;
                    i4 = roundBpp;
                } else {
                    z4 = z10;
                    i4 = 24;
                }
                bArr = null;
                i5 = 0;
                bArr2 = null;
                bArr3 = null;
                z5 = false;
                indexColorModel = null;
                bArr4 = null;
            }
        }
        int i45 = i36 % 4;
        if (i45 != 0) {
            i45 = 4 - i45;
        }
        IndexColorModel indexColorModel3 = indexColorModel;
        int i46 = (i5 * 4) + 54;
        int i47 = i45;
        int i48 = this.f64032h * (i36 + i45);
        int i49 = i27;
        int i50 = dataType;
        int i51 = i3;
        long streamPosition = this.stream.getStreamPosition();
        writeFileHeader(i48 + i46, i46);
        int i52 = this.compressionType;
        if (i52 == 0 || i52 == 3) {
            this.isTopDown = bMPImageWriteParam.isTopDown();
        } else {
            this.isTopDown = false;
        }
        writeInfoHeader(40, i4);
        this.stream.writeInt(this.compressionType);
        this.stream.writeInt(i48);
        this.stream.writeInt(0);
        this.stream.writeInt(0);
        this.stream.writeInt(0);
        this.stream.writeInt(i5);
        if (z5) {
            if (this.compressionType == 3) {
                int i53 = 0;
                for (int i54 = 3; i53 < i54; i54 = 3) {
                    this.stream.writeInt((bArr[i53] & 255) + ((bArr4[i53] & 255) * 256) + ((bArr3[i53] & 255) * 65536) + ((bArr2[i53] & 255) * 16777216));
                    i53++;
                }
            } else {
                for (int i55 = 0; i55 < i5; i55++) {
                    this.stream.writeByte(bArr2[i55]);
                    this.stream.writeByte(bArr3[i55]);
                    this.stream.writeByte(bArr4[i55]);
                    this.stream.writeByte(bArr[i55]);
                }
            }
        }
        int i56 = this.f64033w * i51;
        int[] iArr8 = new int[i56 * sourceXSubsampling];
        this.bpixels = new byte[i36];
        int i57 = this.compressionType;
        if (i57 == 4 || i57 == 5) {
            this.embedded_stream = new ByteArrayOutputStream();
            writeEmbedded(iIOImage, bMPImageWriteParam);
            this.embedded_stream.flush();
            int size = this.embedded_stream.size();
            long streamPosition2 = this.stream.getStreamPosition();
            this.stream.seek(streamPosition);
            writeSize(i46 + size, 2);
            this.stream.seek(streamPosition);
            writeSize(size, 34);
            this.stream.seek(streamPosition2);
            this.stream.write(this.embedded_stream.toByteArray());
            this.embedded_stream = null;
            processImageComplete();
            ImageOutputStream imageOutputStream = this.stream;
            imageOutputStream.flushBefore(imageOutputStream.getStreamPosition());
            return;
        }
        int i58 = iArr5[0];
        for (int i59 = 1; i59 < iArr5.length; i59++) {
            int i60 = iArr5[i59];
            if (i60 > i58) {
                i58 = i60;
            }
        }
        int i61 = i58 + 1;
        int[] iArr9 = new int[i61];
        if (z4 && z) {
            i36 /= DataBuffer.getDataTypeSize(i50) >> 3;
        }
        int i62 = i36;
        int i63 = 0;
        while (true) {
            int i64 = this.f64032h;
            if (i63 >= i64) {
                i8 = i46;
                i9 = 34;
                break;
            }
            int i65 = i49 + i63;
            if (this.isTopDown) {
                i10 = 1;
            } else {
                i10 = 1;
                i65 = ((i49 + i64) - i63) - 1;
            }
            Rectangle rectangle2 = new Rectangle((i25 * sourceXSubsampling) + i2, (i65 * sourceYSubsampling) + i29, ((this.f64033w - i10) * sourceXSubsampling) + i10, i10);
            RenderedImage renderedImage5 = renderedImage4;
            Raster data = !z2 ? renderedImage5.getData(rectangle2) : raster3;
            if (z4 && z) {
                SampleModel sampleModel2 = data.getSampleModel();
                int sampleModelTranslateX = rectangle2.f97732x - data.getSampleModelTranslateX();
                int sampleModelTranslateY = rectangle2.f97733y - data.getSampleModelTranslateY();
                int i66 = i63;
                if (sampleModel2 instanceof ComponentSampleModel) {
                    ComponentSampleModel componentSampleModel = (ComponentSampleModel) sampleModel2;
                    i8 = i46;
                    int offset2 = componentSampleModel.getOffset(sampleModelTranslateX, sampleModelTranslateY, 0);
                    renderedImage2 = renderedImage5;
                    for (int i67 = 1; i67 < componentSampleModel.getNumBands(); i67++) {
                        if (offset2 > componentSampleModel.getOffset(sampleModelTranslateX, sampleModelTranslateY, i67)) {
                            offset2 = componentSampleModel.getOffset(sampleModelTranslateX, sampleModelTranslateY, i67);
                        }
                    }
                    offset = offset2;
                } else {
                    renderedImage2 = renderedImage5;
                    i8 = i46;
                    offset = sampleModel2 instanceof MultiPixelPackedSampleModel ? ((MultiPixelPackedSampleModel) sampleModel2).getOffset(sampleModelTranslateX, sampleModelTranslateY) : sampleModel2 instanceof SinglePixelPackedSampleModel ? ((SinglePixelPackedSampleModel) sampleModel2).getOffset(sampleModelTranslateX, sampleModelTranslateY) : 0;
                }
                int i68 = this.compressionType;
                if (i68 == 0 || i68 == 3) {
                    if (i50 != 0) {
                        i11 = i50;
                        if (i11 == 1) {
                            c = 3;
                            this.stream.writeShorts(((DataBufferUShort) data.getDataBuffer()).getData(), offset, i62);
                        } else if (i11 != 2) {
                            c = 3;
                            if (i11 == 3) {
                                this.stream.writeInts(((DataBufferInt) data.getDataBuffer()).getData(), offset, i62);
                            }
                        } else {
                            c = 3;
                            this.stream.writeShorts(((DataBufferShort) data.getDataBuffer()).getData(), offset, i62);
                        }
                    } else {
                        i11 = i50;
                        c = 3;
                        this.stream.write(((DataBufferByte) data.getDataBuffer()).getData(), offset, i62);
                    }
                    i17 = i47;
                    for (int i69 = 0; i69 < i17; i69++) {
                        this.stream.writeByte(0);
                    }
                } else {
                    if (i68 == 2) {
                        byte[] bArr17 = this.bpixels;
                        if (bArr17 == null || bArr17.length < i56) {
                            this.bpixels = new byte[i56];
                        }
                        data.getPixels(rectangle2.f97732x, rectangle2.f97733y, rectangle2.width, rectangle2.height, iArr8);
                        for (int i70 = 0; i70 < i56; i70++) {
                            this.bpixels[i70] = (byte) iArr8[i70];
                        }
                        encodeRLE4(this.bpixels, i56);
                    } else if (i68 == 1) {
                        byte[] bArr18 = this.bpixels;
                        if (bArr18 == null || bArr18.length < i56) {
                            this.bpixels = new byte[i56];
                        }
                        data.getPixels(rectangle2.f97732x, rectangle2.f97733y, rectangle2.width, rectangle2.height, iArr8);
                        for (int i71 = 0; i71 < i56; i71++) {
                            this.bpixels[i71] = (byte) iArr8[i71];
                        }
                        encodeRLE8(this.bpixels, i56);
                    }
                    i17 = i47;
                    i11 = i50;
                    c = 3;
                }
                i14 = i62;
                iArr3 = iArr9;
                i12 = i61;
                i16 = i66;
                i15 = i49;
                i9 = 34;
                i13 = i17;
            } else {
                int i72 = i63;
                renderedImage2 = renderedImage5;
                i8 = i46;
                int i73 = i47;
                i11 = i50;
                data.getPixels(rectangle2.f97732x, rectangle2.f97733y, rectangle2.width, rectangle2.height, iArr8);
                if (sourceXSubsampling != 1 || i58 != i51 - 1) {
                    int i74 = 0;
                    int i75 = 0;
                    int i76 = 0;
                    while (i74 < this.f64033w) {
                        System.arraycopy(iArr8, i75, iArr9, 0, i61);
                        int i77 = i61;
                        int i78 = i51;
                        for (int i79 = 0; i79 < i78; i79++) {
                            iArr8[i76 + i79] = iArr9[iArr[i79]];
                        }
                        i74++;
                        i75 += sourceXSubsampling * i78;
                        i76 += i78;
                        i51 = i78;
                        i61 = i77;
                    }
                }
                i12 = i61;
                int i80 = i51;
                i13 = i73;
                i14 = i62;
                iArr3 = iArr9;
                i51 = i80;
                i15 = i49;
                i9 = 34;
                writePixels(0, i56, i4, iArr8, i13, i80, indexColorModel3);
                i16 = i72;
            }
            processImageProgress((i16 / this.f64032h) * 100.0f);
            if (abortRequested()) {
                break;
            }
            i63 = i16 + 1;
            i61 = i12;
            i50 = i11;
            i62 = i14;
            i49 = i15;
            i46 = i8;
            iArr9 = iArr3;
            i47 = i13;
            renderedImage4 = renderedImage2;
        }
        int i81 = this.compressionType;
        if (i81 == 2 || i81 == 1) {
            this.stream.writeByte(0);
            this.stream.writeByte(1);
            incCompImageSize(2);
            int i82 = this.compImageSize;
            long streamPosition3 = this.stream.getStreamPosition();
            this.stream.seek(streamPosition);
            writeSize(i82 + i8, 2);
            this.stream.seek(streamPosition);
            writeSize(i82, i9);
            this.stream.seek(streamPosition3);
        }
        if (abortRequested()) {
            processWriteAborted();
            return;
        }
        processImageComplete();
        ImageOutputStream imageOutputStream2 = this.stream;
        imageOutputStream2.flushBefore(imageOutputStream2.getStreamPosition());
    }

    public void writeMaskToPalette(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        bArr3[i2] = (byte) ((i >> 24) & 255);
        bArr2[i2] = (byte) ((i >> 16) & 255);
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr4[i2] = (byte) (i & 255);
    }

    public boolean canEncodeImage(int i, ImageTypeSpecifier imageTypeSpecifier) {
        boolean z;
        boolean z2;
        if (!getOriginatingProvider().canEncodeImage(imageTypeSpecifier)) {
            return false;
        }
        imageTypeSpecifier.getBufferedImageType();
        int pixelSize = imageTypeSpecifier.getColorModel().getPixelSize();
        int i2 = this.compressionType;
        if (i2 == 2 && pixelSize != 4) {
            return false;
        }
        if (i2 == 1 && pixelSize != 8) {
            return false;
        }
        if (pixelSize != 16) {
            return true;
        }
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        if (sampleModel instanceof SinglePixelPackedSampleModel) {
            int[] sampleSize = ((SinglePixelPackedSampleModel) sampleModel).getSampleSize();
            int i3 = 0;
            z = true;
            z2 = true;
            while (i3 < sampleSize.length) {
                int i4 = sampleSize[i3];
                z &= i4 == 5;
                z2 &= i4 == 5 || (i3 == 1 && i4 == 6);
                i3++;
            }
        } else {
            z = false;
            z2 = false;
        }
        int i5 = this.compressionType;
        return (i5 == 0 && z) || (i5 == 3 && z2);
    }

    public int getPreferredCompressionType(ImageTypeSpecifier imageTypeSpecifier) {
        return imageTypeSpecifier.getBufferedImageType() == 8 ? 3 : 0;
    }
}
