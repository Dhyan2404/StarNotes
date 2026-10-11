package com.sun.imageio.plugins.bmp;

import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.sun.imageio.plugins.common.I18N;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.event.IIOReadProgressListener;
import javax.imageio.event.IIOReadUpdateListener;
import javax.imageio.event.IIOReadWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class BMPImageReader extends ImageReader implements BMPConstants {
    private static final int VERSION_2_1_BIT = 0;
    private static final int VERSION_2_24_BIT = 3;
    private static final int VERSION_2_4_BIT = 1;
    private static final int VERSION_2_8_BIT = 2;
    private static final int VERSION_3_1_BIT = 4;
    private static final int VERSION_3_24_BIT = 7;
    private static final int VERSION_3_4_BIT = 5;
    private static final int VERSION_3_8_BIT = 6;
    private static final int VERSION_3_EXT_16_BIT = 13;
    private static final int VERSION_3_EXT_1_BIT = 10;
    private static final int VERSION_3_EXT_24_BIT = 14;
    private static final int VERSION_3_EXT_32_BIT = 15;
    private static final int VERSION_3_EXT_4_BIT = 11;
    private static final int VERSION_3_EXT_8_BIT = 12;
    private static final int VERSION_3_EXT_EMBEDDED = 23;
    private static final int VERSION_3_NT_16_BIT = 8;
    private static final int VERSION_3_NT_32_BIT = 9;
    private static final int VERSION_3_XP_EMBEDDED = 22;
    private static final int VERSION_4_16_BIT = 19;
    private static final int VERSION_4_1_BIT = 16;
    private static final int VERSION_4_24_BIT = 20;
    private static final int VERSION_4_32_BIT = 21;
    private static final int VERSION_4_4_BIT = 17;
    private static final int VERSION_4_8_BIT = 18;
    private static final int VERSION_4_XP_EMBEDDED = 24;
    private static final int VERSION_5_XP_EMBEDDED = 25;
    private static Boolean isLinkedProfileDisabled;
    private static Boolean isWindowsPlatform;
    private int alphaMask;

    /* renamed from: bi */
    private BufferedImage f64031bi;
    private long bitmapFileSize;
    private long bitmapOffset;
    private long bitmapStart;
    private int bitsPerPixel;
    private int blueMask;
    private ColorModel colorModel;
    private long compression;
    private int[] destBands;
    private Rectangle destinationRegion;
    private boolean gotHeader;
    private int greenMask;
    private int height;
    private ImageInputStream iis;
    private long imageSize;
    private int imageType;
    private boolean isBottomUp;
    private BMPMetadata metadata;
    private boolean noTransform;
    private int numBands;
    private ColorModel originalColorModel;
    private SampleModel originalSampleModel;
    private byte[] palette;
    private int redMask;
    private SampleModel sampleModel;
    private int scaleX;
    private int scaleY;
    private boolean seleBand;
    private int[] sourceBands;
    private Rectangle sourceRegion;
    private int width;

    /* loaded from: classes9.dex */
    public class EmbeddedProgressAdapter implements IIOReadProgressListener {
        private EmbeddedProgressAdapter() {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void imageComplete(ImageReader imageReader) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void imageProgress(ImageReader imageReader, float f) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void imageStarted(ImageReader imageReader, int i) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void readAborted(ImageReader imageReader) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void sequenceComplete(ImageReader imageReader) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void sequenceStarted(ImageReader imageReader, int i) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void thumbnailComplete(ImageReader imageReader) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void thumbnailProgress(ImageReader imageReader, float f) {
        }

        @Override // javax.imageio.event.IIOReadProgressListener
        public void thumbnailStarted(ImageReader imageReader, int i, int i2) {
        }
    }

    public BMPImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.iis = null;
        this.gotHeader = false;
        this.noTransform = true;
        this.seleBand = false;
    }

    private void checkIndex(int i) {
        if (i != 0) {
            throw new IndexOutOfBoundsException(I18N.getString("BMPImageReader0"));
        }
    }

    private boolean copyRLE4ScanlineToDst(int i, byte[] bArr, byte[] bArr2) throws IOException {
        int i2;
        Rectangle rectangle = this.sourceRegion;
        int i3 = rectangle.f97733y;
        if (i < i3 || i >= rectangle.height + i3) {
            return false;
        }
        boolean z = true;
        if (this.noTransform) {
            int i4 = ((this.width + 1) >> 1) * i;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i2 = this.width;
                if (i5 >= (i2 >> 1)) {
                    break;
                }
                int i7 = i6 + 1;
                bArr2[i4] = (byte) ((bArr[i6] << 4) | bArr[i7]);
                i5++;
                i4++;
                i6 = i7 + 1;
            }
            if ((i2 & 1) == 1) {
                bArr2[i4] = (byte) (bArr2[i4] | (bArr[i2 - 1] << 4));
            }
            processImageUpdate(this.f64031bi, 0, i, this.destinationRegion.width, 1, 1, 1, new int[]{0});
        } else if ((i - i3) % this.scaleY == 0) {
            int scanlineStride = ((MultiPixelPackedSampleModel) this.sampleModel).getScanlineStride();
            Rectangle rectangle2 = this.sourceRegion;
            int i8 = (i - rectangle2.f97733y) / this.scaleY;
            Rectangle rectangle3 = this.destinationRegion;
            int i9 = i8 + rectangle3.f97733y;
            int i10 = rectangle3.f97732x;
            int i11 = (scanlineStride * i9) + (i10 >> 1);
            int i12 = (1 - (i10 & 1)) << 2;
            int i13 = rectangle2.f97732x;
            while (true) {
                Rectangle rectangle4 = this.sourceRegion;
                if (i13 >= rectangle4.f97732x + rectangle4.width) {
                    break;
                }
                bArr2[i11] = (byte) (bArr2[i11] | (bArr[i13] << i12));
                int i14 = i12 + 4;
                if (i14 == 4) {
                    i11++;
                }
                i12 = i14 & 7;
                i13 += this.scaleX;
            }
            processImageUpdate(this.f64031bi, 0, i9, this.destinationRegion.width, 1, 1, 1, new int[]{0});
        } else {
            z = false;
        }
        for (int i15 = 0; i15 < this.width; i15++) {
            bArr[i15] = 0;
        }
        return z;
    }

    private boolean copyRLE8ScanlineToDst(int i, byte[] bArr, byte[] bArr2) {
        Rectangle rectangle = this.sourceRegion;
        int i2 = rectangle.f97733y;
        if (i < i2 || i >= rectangle.height + i2) {
            return false;
        }
        boolean z = true;
        if (this.noTransform) {
            int i3 = this.width * i;
            int i4 = 0;
            while (i4 < this.width) {
                bArr2[i3] = bArr[i4];
                i4++;
                i3++;
            }
            processImageUpdate(this.f64031bi, 0, i, this.destinationRegion.width, 1, 1, 1, new int[]{0});
        } else if ((i - i2) % this.scaleY == 0) {
            int scanlineStride = ((ComponentSampleModel) this.sampleModel).getScanlineStride();
            Rectangle rectangle2 = this.sourceRegion;
            int i5 = (i - rectangle2.f97733y) / this.scaleY;
            Rectangle rectangle3 = this.destinationRegion;
            int i6 = rectangle3.f97733y + i5;
            int i7 = (scanlineStride * i6) + rectangle3.f97732x;
            int i8 = rectangle2.f97732x;
            while (true) {
                Rectangle rectangle4 = this.sourceRegion;
                if (i8 >= rectangle4.f97732x + rectangle4.width) {
                    break;
                }
                bArr2[i7] = bArr[i8];
                i8 += this.scaleX;
                i7++;
            }
            processImageUpdate(this.f64031bi, 0, i6, this.destinationRegion.width, 1, 1, 1, new int[]{0});
        } else {
            z = false;
        }
        for (int i9 = 0; i9 < this.width; i9++) {
            bArr[i9] = 0;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x00e2, code lost:
    
        if (abortRequested() != false) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void decodeRLE4(int r18, int r19, byte[] r20, byte[] r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.bmp.BMPImageReader.decodeRLE4(int, int, byte[], byte[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c5, code lost:
    
        if (abortRequested() != false) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void decodeRLE8(int r12, int r13, byte[] r14, byte[] r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.bmp.BMPImageReader.decodeRLE8(int, int, byte[], byte[]):void");
    }

    private static boolean isLinkedProfileAllowed() {
        if (isLinkedProfileDisabled == null) {
            isLinkedProfileDisabled = (Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: com.sun.imageio.plugins.bmp.BMPImageReader.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedAction
                public Boolean run() {
                    return Boolean.valueOf(Boolean.getBoolean("sun.imageio.plugins.bmp.disableLinkedProfiles"));
                }
            });
        }
        return !isLinkedProfileDisabled.booleanValue();
    }

    private static boolean isUncOrDevicePath(byte[] bArr) {
        if (isWindowsPlatform == null) {
            isWindowsPlatform = (Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: com.sun.imageio.plugins.bmp.BMPImageReader.5
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedAction
                public Boolean run() {
                    String property = System.getProperty("os.name");
                    return Boolean.valueOf(property != null && property.toLowerCase().startsWith("win"));
                }
            });
        }
        if (!isWindowsPlatform.booleanValue()) {
            return false;
        }
        if (bArr[0] == 47) {
            bArr[0] = UTF8JsonGenerator.f21291k;
        }
        if (bArr[1] == 47) {
            bArr[1] = UTF8JsonGenerator.f21291k;
        }
        if (bArr[3] == 47) {
            bArr[3] = UTF8JsonGenerator.f21291k;
        }
        if (bArr[0] != 92 || bArr[1] != 92) {
            return false;
        }
        if (bArr[2] != 63 || bArr[3] != 92) {
            return true;
        }
        byte b = bArr[4];
        if (b != 85 && b != 117) {
            return false;
        }
        byte b2 = bArr[5];
        if (b2 != 78 && b2 != 110) {
            return false;
        }
        byte b3 = bArr[6];
        return b3 == 67 || b3 == 99;
    }

    private void read16Bit(short[] sArr) throws IOException {
        int i = this.width;
        int i2 = (i * 2) % 4;
        if (i2 != 0) {
            i2 = 4 - i2;
        }
        int i3 = i2;
        int i4 = i + (i3 / 2);
        int i5 = 0;
        if (this.noTransform) {
            int i6 = this.isBottomUp ? (this.height - 1) * i : 0;
            int i7 = 0;
            while (i7 < this.height) {
                this.iis.readFully(sArr, i6, this.width);
                this.iis.skipBytes(i3);
                int i8 = i6 + (this.isBottomUp ? -this.width : this.width);
                processImageUpdate(this.f64031bi, 0, i7, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i7 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i7++;
                i6 = i8;
            }
            return;
        }
        short[] sArr2 = new short[i4];
        int scanlineStride = ((SinglePixelPackedSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes((((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY))) * i4) << 1);
        } else {
            this.iis.skipBytes((this.sourceRegion.f97733y * i4) << 1);
        }
        int i9 = ((this.scaleY - 1) * i4) << 1;
        Rectangle rectangle = this.destinationRegion;
        int i10 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i10 += (rectangle.height - 1) * scanlineStride;
        }
        int i11 = i10 + rectangle.f97732x;
        int i12 = this.sourceRegion.f97733y;
        int i13 = 0;
        while (i13 < this.destinationRegion.height) {
            this.iis.readFully(sArr2, i5, i4);
            int i14 = this.sourceRegion.f97732x;
            int i15 = i5;
            while (i15 < this.destinationRegion.width) {
                sArr[i11 + i15] = sArr2[i14];
                i15++;
                i14 += this.scaleX;
            }
            int i16 = i11 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i9);
            int[] iArr = {i5};
            int i17 = i13;
            int i18 = i9;
            processImageUpdate(this.f64031bi, 0, i13, this.destinationRegion.width, 1, 1, 1, iArr);
            processImageProgress((i17 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i13 = i17 + 1;
            i11 = i16;
            i9 = i18;
            i5 = 0;
        }
    }

    private void read1Bit(byte[] bArr) throws IOException {
        Rectangle rectangle;
        int i = (this.width + 7) / 8;
        int i2 = i % 4;
        if (i2 != 0) {
            i2 = 4 - i2;
        }
        int i3 = i2;
        int i4 = i + i3;
        if (this.noTransform) {
            int i5 = this.isBottomUp ? (this.height - 1) * i : 0;
            int i6 = 0;
            while (i6 < this.height) {
                this.iis.readFully(bArr, i5, i);
                this.iis.skipBytes(i3);
                int i7 = i5 + (this.isBottomUp ? -i : i);
                processImageUpdate(this.f64031bi, 0, i6, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i6 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i6++;
                i5 = i7;
            }
            return;
        }
        byte[] bArr2 = new byte[i4];
        int scanlineStride = ((MultiPixelPackedSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes(((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY))) * i4);
        } else {
            this.iis.skipBytes(this.sourceRegion.f97733y * i4);
        }
        int i8 = i4 * (this.scaleY - 1);
        Rectangle rectangle2 = this.destinationRegion;
        int i9 = rectangle2.width;
        int[] iArr = new int[i9];
        int[] iArr2 = new int[i9];
        int[] iArr3 = new int[i9];
        int[] iArr4 = new int[i9];
        int i10 = rectangle2.f97732x;
        int i11 = this.sourceRegion.f97732x;
        int i12 = 0;
        while (true) {
            rectangle = this.destinationRegion;
            if (i10 >= rectangle.f97732x + rectangle.width) {
                break;
            }
            iArr3[i12] = i11 >> 3;
            iArr[i12] = 7 - (i11 & 7);
            iArr4[i12] = i10 >> 3;
            iArr2[i12] = 7 - (i10 & 7);
            i10++;
            i12++;
            i11 += this.scaleX;
        }
        int i13 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i13 += (rectangle.height - 1) * scanlineStride;
        }
        int i14 = this.sourceRegion.f97733y;
        int i15 = 0;
        while (i15 < this.destinationRegion.height) {
            this.iis.read(bArr2, 0, i4);
            for (int i16 = 0; i16 < this.destinationRegion.width; i16++) {
                int i17 = (bArr2[iArr3[i16]] >> iArr[i16]) & 1;
                int i18 = iArr4[i16] + i13;
                bArr[i18] = (byte) ((i17 << iArr2[i16]) | bArr[i18]);
            }
            int i19 = i13 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i8);
            int[] iArr5 = iArr4;
            int[] iArr6 = iArr3;
            int[] iArr7 = iArr2;
            int[] iArr8 = iArr;
            int i20 = i8;
            processImageUpdate(this.f64031bi, 0, i15, this.destinationRegion.width, 1, 1, 1, new int[]{0});
            processImageProgress((i15 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i15++;
            i13 = i19;
            iArr2 = iArr7;
            iArr = iArr8;
            i8 = i20;
            iArr3 = iArr6;
            iArr4 = iArr5;
        }
    }

    private void read24Bit(byte[] bArr) throws IOException {
        int i = this.width;
        int i2 = (i * 3) % 4;
        if (i2 != 0) {
            i2 = 4 - i2;
        }
        int i3 = i2;
        int i4 = i * 3;
        int i5 = i4 + i3;
        int i6 = 0;
        if (this.noTransform) {
            int i7 = this.isBottomUp ? (this.height - 1) * i * 3 : 0;
            int i8 = 0;
            while (i8 < this.height) {
                this.iis.readFully(bArr, i7, i4);
                this.iis.skipBytes(i3);
                int i9 = i7 + (this.isBottomUp ? -i4 : i4);
                processImageUpdate(this.f64031bi, 0, i8, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i8 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i8++;
                i7 = i9;
            }
            return;
        }
        byte[] bArr2 = new byte[i5];
        int scanlineStride = ((ComponentSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes(((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY))) * i5);
        } else {
            this.iis.skipBytes(this.sourceRegion.f97733y * i5);
        }
        int i10 = i5 * (this.scaleY - 1);
        Rectangle rectangle = this.destinationRegion;
        int i11 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i11 += (rectangle.height - 1) * scanlineStride;
        }
        int i12 = i11 + (rectangle.f97732x * 3);
        int i13 = this.sourceRegion.f97733y;
        int i14 = 0;
        while (i14 < this.destinationRegion.height) {
            this.iis.read(bArr2, i6, i5);
            int i15 = this.sourceRegion.f97732x * 3;
            int i16 = i6;
            while (i16 < this.destinationRegion.width) {
                int i17 = (i16 * 3) + i12;
                int i18 = i6;
                while (true) {
                    int[] iArr = this.destBands;
                    if (i18 < iArr.length) {
                        bArr[iArr[i18] + i17] = bArr2[this.sourceBands[i18] + i15];
                        i18++;
                    }
                }
                i16++;
                i15 += this.scaleX * 3;
            }
            int i19 = i12 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i10);
            int[] iArr2 = {i6};
            int i20 = i14;
            int i21 = i10;
            processImageUpdate(this.f64031bi, 0, i14, this.destinationRegion.width, 1, 1, 1, iArr2);
            processImageProgress((i20 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i14 = i20 + 1;
            i12 = i19;
            i10 = i21;
            i6 = 0;
        }
    }

    private void read32Bit(int[] iArr) throws IOException {
        int i = 0;
        if (this.noTransform) {
            int i2 = this.isBottomUp ? (this.height - 1) * this.width : 0;
            int i3 = 0;
            while (i3 < this.height) {
                this.iis.readFully(iArr, i2, this.width);
                int i4 = i2 + (this.isBottomUp ? -this.width : this.width);
                processImageUpdate(this.f64031bi, 0, i3, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i3 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i3++;
                i2 = i4;
            }
            return;
        }
        int[] iArr2 = new int[this.width];
        int scanlineStride = ((SinglePixelPackedSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes((this.width * ((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY)))) << 2);
        } else {
            this.iis.skipBytes((this.width * this.sourceRegion.f97733y) << 2);
        }
        int i5 = (this.width * (this.scaleY - 1)) << 2;
        Rectangle rectangle = this.destinationRegion;
        int i6 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i6 += (rectangle.height - 1) * scanlineStride;
        }
        int i7 = i6 + rectangle.f97732x;
        int i8 = this.sourceRegion.f97733y;
        int i9 = 0;
        while (i9 < this.destinationRegion.height) {
            this.iis.readFully(iArr2, i, this.width);
            int i10 = this.sourceRegion.f97732x;
            int i11 = i;
            while (i11 < this.destinationRegion.width) {
                iArr[i7 + i11] = iArr2[i10];
                i11++;
                i10 += this.scaleX;
            }
            int i12 = i7 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i5);
            int[] iArr3 = {i};
            int i13 = i9;
            processImageUpdate(this.f64031bi, 0, i9, this.destinationRegion.width, 1, 1, 1, iArr3);
            processImageProgress((i13 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i9 = i13 + 1;
            i7 = i12;
            i = 0;
        }
    }

    private void read4Bit(byte[] bArr) throws IOException {
        Rectangle rectangle;
        int i = (this.width + 1) / 2;
        int i2 = i % 4;
        if (i2 != 0) {
            i2 = 4 - i2;
        }
        int i3 = i2;
        int i4 = i + i3;
        if (this.noTransform) {
            int i5 = this.isBottomUp ? (this.height - 1) * i : 0;
            int i6 = 0;
            while (i6 < this.height) {
                this.iis.readFully(bArr, i5, i);
                this.iis.skipBytes(i3);
                int i7 = i5 + (this.isBottomUp ? -i : i);
                processImageUpdate(this.f64031bi, 0, i6, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i6 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i6++;
                i5 = i7;
            }
            return;
        }
        byte[] bArr2 = new byte[i4];
        int scanlineStride = ((MultiPixelPackedSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes(((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY))) * i4);
        } else {
            this.iis.skipBytes(this.sourceRegion.f97733y * i4);
        }
        int i8 = i4 * (this.scaleY - 1);
        Rectangle rectangle2 = this.destinationRegion;
        int i9 = rectangle2.width;
        int[] iArr = new int[i9];
        int[] iArr2 = new int[i9];
        int[] iArr3 = new int[i9];
        int[] iArr4 = new int[i9];
        int i10 = rectangle2.f97732x;
        int i11 = this.sourceRegion.f97732x;
        int i12 = 0;
        while (true) {
            rectangle = this.destinationRegion;
            if (i10 >= rectangle.f97732x + rectangle.width) {
                break;
            }
            iArr3[i12] = i11 >> 1;
            iArr[i12] = (1 - (i11 & 1)) << 2;
            iArr4[i12] = i10 >> 1;
            iArr2[i12] = (1 - (i10 & 1)) << 2;
            i10++;
            i12++;
            i11 += this.scaleX;
        }
        int i13 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i13 += (rectangle.height - 1) * scanlineStride;
        }
        int i14 = this.sourceRegion.f97733y;
        int i15 = 0;
        while (i15 < this.destinationRegion.height) {
            this.iis.read(bArr2, 0, i4);
            for (int i16 = 0; i16 < this.destinationRegion.width; i16++) {
                int i17 = (bArr2[iArr3[i16]] >> iArr[i16]) & 15;
                int i18 = iArr4[i16] + i13;
                bArr[i18] = (byte) ((i17 << iArr2[i16]) | bArr[i18]);
            }
            int i19 = i13 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i8);
            int[] iArr5 = iArr4;
            int[] iArr6 = iArr3;
            int[] iArr7 = iArr2;
            int[] iArr8 = iArr;
            int i20 = i8;
            processImageUpdate(this.f64031bi, 0, i15, this.destinationRegion.width, 1, 1, 1, new int[]{0});
            processImageProgress((i15 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i15++;
            i13 = i19;
            iArr2 = iArr7;
            iArr = iArr8;
            i8 = i20;
            iArr3 = iArr6;
            iArr4 = iArr5;
        }
    }

    private void read8Bit(byte[] bArr) throws IOException {
        int i = this.width;
        int i2 = i % 4;
        if (i2 != 0) {
            i2 = 4 - i2;
        }
        int i3 = i2;
        int i4 = i + i3;
        int i5 = 0;
        if (this.noTransform) {
            int i6 = this.isBottomUp ? (this.height - 1) * i : 0;
            int i7 = 0;
            while (i7 < this.height) {
                this.iis.readFully(bArr, i6, this.width);
                this.iis.skipBytes(i3);
                int i8 = i6 + (this.isBottomUp ? -this.width : this.width);
                processImageUpdate(this.f64031bi, 0, i7, this.destinationRegion.width, 1, 1, 1, new int[]{0});
                processImageProgress((i7 * 100.0f) / this.destinationRegion.height);
                if (abortRequested()) {
                    return;
                }
                i7++;
                i6 = i8;
            }
            return;
        }
        byte[] bArr2 = new byte[i4];
        int scanlineStride = ((ComponentSampleModel) this.sampleModel).getScanlineStride();
        if (this.isBottomUp) {
            this.iis.skipBytes(((this.height - 1) - (this.sourceRegion.f97733y + ((this.destinationRegion.height - 1) * this.scaleY))) * i4);
        } else {
            this.iis.skipBytes(this.sourceRegion.f97733y * i4);
        }
        int i9 = i4 * (this.scaleY - 1);
        Rectangle rectangle = this.destinationRegion;
        int i10 = rectangle.f97733y * scanlineStride;
        if (this.isBottomUp) {
            i10 += (rectangle.height - 1) * scanlineStride;
        }
        int i11 = i10 + rectangle.f97732x;
        int i12 = this.sourceRegion.f97733y;
        int i13 = 0;
        while (i13 < this.destinationRegion.height) {
            this.iis.read(bArr2, i5, i4);
            int i14 = this.sourceRegion.f97732x;
            int i15 = i5;
            while (i15 < this.destinationRegion.width) {
                bArr[i11 + i15] = bArr2[i14];
                i15++;
                i14 += this.scaleX;
            }
            int i16 = i11 + (this.isBottomUp ? -scanlineStride : scanlineStride);
            this.iis.skipBytes(i9);
            int[] iArr = {i5};
            int i17 = i13;
            int i18 = i9;
            processImageUpdate(this.f64031bi, 0, i13, this.destinationRegion.width, 1, 1, 1, iArr);
            processImageProgress((i17 * 100.0f) / this.destinationRegion.height);
            if (abortRequested()) {
                return;
            }
            i13 = i17 + 1;
            i11 = i16;
            i9 = i18;
            i5 = 0;
        }
    }

    private BufferedImage readEmbedded(int i, BufferedImage bufferedImage, ImageReadParam imageReadParam) throws IOException {
        String str;
        if (i == 4) {
            str = "JPEG";
        } else {
            if (i != 5) {
                throw new IOException("Unexpected compression type: " + i);
            }
            str = "PNG";
        }
        ImageReader next = ImageIO.getImageReadersByFormatName(str).next();
        if (next == null) {
            throw new RuntimeException(I18N.getString("BMPImageReader4") + " " + str);
        }
        byte[] bArr = new byte[(int) this.imageSize];
        this.iis.read(bArr);
        next.setInput(ImageIO.createImageInputStream(new ByteArrayInputStream(bArr)));
        if (bufferedImage == null) {
            ImageTypeSpecifier next2 = next.getImageTypes(0).next();
            Rectangle rectangle = this.destinationRegion;
            bufferedImage = next2.createBufferedImage(rectangle.f97732x + rectangle.width, rectangle.f97733y + rectangle.height);
        }
        next.addIIOReadProgressListener(new EmbeddedProgressAdapter() { // from class: com.sun.imageio.plugins.bmp.BMPImageReader.1
            @Override // com.sun.imageio.plugins.bmp.BMPImageReader.EmbeddedProgressAdapter, javax.imageio.event.IIOReadProgressListener
            public void imageProgress(ImageReader imageReader, float f) {
                BMPImageReader.this.processImageProgress(f);
            }
        });
        next.addIIOReadUpdateListener(new IIOReadUpdateListener() { // from class: com.sun.imageio.plugins.bmp.BMPImageReader.2
            @Override // javax.imageio.event.IIOReadUpdateListener
            public void imageUpdate(ImageReader imageReader, BufferedImage bufferedImage2, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
                BMPImageReader.this.processImageUpdate(bufferedImage2, i2, i3, i4, i5, i6, i7, iArr);
            }

            @Override // javax.imageio.event.IIOReadUpdateListener
            public void passComplete(ImageReader imageReader, BufferedImage bufferedImage2) {
                BMPImageReader.this.processPassComplete(bufferedImage2);
            }

            @Override // javax.imageio.event.IIOReadUpdateListener
            public void passStarted(ImageReader imageReader, BufferedImage bufferedImage2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
                BMPImageReader.this.processPassStarted(bufferedImage2, i2, i3, i4, i5, i6, i7, i8, iArr);
            }

            @Override // javax.imageio.event.IIOReadUpdateListener
            public void thumbnailPassComplete(ImageReader imageReader, BufferedImage bufferedImage2) {
            }

            @Override // javax.imageio.event.IIOReadUpdateListener
            public void thumbnailPassStarted(ImageReader imageReader, BufferedImage bufferedImage2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
            }

            @Override // javax.imageio.event.IIOReadUpdateListener
            public void thumbnailUpdate(ImageReader imageReader, BufferedImage bufferedImage2, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
            }
        });
        next.addIIOReadWarningListener(new IIOReadWarningListener() { // from class: com.sun.imageio.plugins.bmp.BMPImageReader.3
            @Override // javax.imageio.event.IIOReadWarningListener
            public void warningOccurred(ImageReader imageReader, String str2) {
                BMPImageReader.this.processWarningOccurred(str2);
            }
        });
        ImageReadParam defaultReadParam = next.getDefaultReadParam();
        defaultReadParam.setDestination(bufferedImage);
        defaultReadParam.setDestinationBands(imageReadParam.getDestinationBands());
        defaultReadParam.setDestinationOffset(imageReadParam.getDestinationOffset());
        defaultReadParam.setSourceBands(imageReadParam.getSourceBands());
        defaultReadParam.setSourceRegion(imageReadParam.getSourceRegion());
        defaultReadParam.setSourceSubsampling(imageReadParam.getSourceXSubsampling(), imageReadParam.getSourceYSubsampling(), imageReadParam.getSubsamplingXOffset(), imageReadParam.getSubsamplingYOffset());
        next.read(0, defaultReadParam);
        return bufferedImage;
    }

    private void readRLE4(byte[] bArr) throws IOException {
        int i = (int) this.imageSize;
        if (i == 0) {
            i = (int) (this.bitmapFileSize - this.bitmapOffset);
        }
        int i2 = this.width % 4;
        int i3 = i2 != 0 ? 4 - i2 : 0;
        byte[] bArr2 = new byte[i];
        this.iis.readFully(bArr2, 0, i);
        decodeRLE4(i, i3, bArr2, bArr);
    }

    private void readRLE8(byte[] bArr) throws IOException {
        int i = (int) this.imageSize;
        if (i == 0) {
            i = (int) (this.bitmapFileSize - this.bitmapOffset);
        }
        int i2 = this.width % 4;
        int i3 = i2 != 0 ? 4 - i2 : 0;
        byte[] bArr2 = new byte[i];
        this.iis.readFully(bArr2, 0, i);
        decodeRLE8(i, i3, bArr2, bArr);
    }

    private void resetHeaderInfo() {
        this.gotHeader = false;
        this.f64031bi = null;
        this.originalSampleModel = null;
        this.sampleModel = null;
        this.originalColorModel = null;
        this.colorModel = null;
    }

    @Override // javax.imageio.ImageReader
    public boolean canReadRaster() {
        return true;
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return new ImageReadParam();
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IOException {
        checkIndex(i);
        try {
            readHeader();
            return this.height;
        } catch (IllegalArgumentException e) {
            throw new IIOException(I18N.getString("BMPImageReader6"), e);
        }
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        checkIndex(i);
        if (this.metadata == null) {
            try {
                readHeader();
            } catch (IllegalArgumentException e) {
                throw new IIOException(I18N.getString("BMPImageReader6"), e);
            }
        }
        return this.metadata;
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException {
        checkIndex(i);
        try {
            readHeader();
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new ImageTypeSpecifier(this.originalColorModel, this.originalSampleModel));
            return arrayList.iterator();
        } catch (IllegalArgumentException e) {
            throw new IIOException(I18N.getString("BMPImageReader6"), e);
        }
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        if (this.iis == null) {
            throw new IllegalStateException(I18N.getString("GetNumImages0"));
        }
        if (this.seekForwardOnly && z) {
            throw new IllegalStateException(I18N.getString("GetNumImages1"));
        }
        return 1;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IOException {
        return null;
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IOException {
        checkIndex(i);
        try {
            readHeader();
            return this.width;
        } catch (IllegalArgumentException e) {
            throw new IIOException(I18N.getString("BMPImageReader6"), e);
        }
    }

    @Override // javax.imageio.ImageReader
    public boolean isRandomAccessEasy(int i) throws IOException {
        checkIndex(i);
        try {
            readHeader();
            return this.metadata.compression == 0;
        } catch (IllegalArgumentException e) {
            throw new IIOException(I18N.getString("BMPImageReader6"), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020c  */
    @Override // javax.imageio.ImageReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.awt.image.BufferedImage read(int r8, javax.imageio.ImageReadParam r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.bmp.BMPImageReader.read(int, javax.imageio.ImageReadParam):java.awt.image.BufferedImage");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:11|(1:13)(1:263)|14|(3:16|(1:18)(1:(1:117)(1:(1:119)(1:(1:121)(2:122|123))))|19)(2:124|(2:126|(2:151|(3:153|(1:155)(2:157|(1:159)(2:160|(1:162)(2:163|(1:165)(2:166|(1:168)(2:169|(1:171)(2:172|173))))))|156)(2:174|175))(2:131|(2:133|(1:138)(2:136|137))(5:139|(1:141)(2:146|(1:148)(2:149|150))|142|(1:144)|145)))(2:176|(15:231|(1:233)|234|(1:262)(3:238|(1:240)(1:(1:243)(2:244|(1:246)(2:247|(2:249|(1:251))(2:252|(1:254)(2:255|(2:257|(1:259))(2:260|261))))))|241)|21|22|(1:24)(1:115)|25|(5:102|103|104|(1:113)(1:110)|111)|29|30|(2:32|(10:36|(2:38|(1:64)(4:42|(1:44)(2:47|(5:49|(1:51)(1:57)|52|(1:54)(1:56)|55)(3:58|(2:59|(1:61)(1:62))|63))|45|46))|65|(3:67|(2:68|(1:70)(1:71))|72)(1:100)|73|(6:92|(1:94)|95|(1:97)|98|99)(6:79|(1:81)|82|(2:85|83)|86|87)|88|(1:90)(1:91)|45|46))|101|45|46)(2:180|(24:(1:187)(2:228|(1:230))|188|(1:190)(1:227)|191|(1:193)|194|(1:(1:224)(1:(1:226)))(3:198|(1:200)(2:203|(1:205)(2:206|(1:208)(1:(2:210|(1:212))(2:213|(1:215)(2:216|(2:218|(1:220))(2:221|222))))))|201)|202|22|(0)(0)|25|(1:27)|102|103|104|(1:106)|113|111|29|30|(0)|101|45|46)(2:184|185))))|20|21|22|(0)(0)|25|(0)|102|103|104|(0)|113|111|29|30|(0)|101|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0531, code lost:
    
        r2 = java.awt.color.ColorSpace.getInstance(1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0509 A[Catch: Exception -> 0x0531, TryCatch #0 {Exception -> 0x0531, blocks: (B:104:0x0502, B:106:0x0509, B:108:0x050f, B:110:0x0515, B:113:0x0527), top: B:103:0x0502 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x053d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readHeader() throws java.io.IOException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 1783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.bmp.BMPImageReader.readHeader():void");
    }

    @Override // javax.imageio.ImageReader
    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        return read(i, imageReadParam).getData();
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        super.reset();
        this.iis = null;
        resetHeaderInfo();
    }

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        super.setInput(obj, z, z2);
        ImageInputStream imageInputStream = (ImageInputStream) obj;
        this.iis = imageInputStream;
        if (imageInputStream != null) {
            imageInputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        }
        resetHeaderInfo();
    }
}
