package com.sun.imageio.plugins.png;

import java.awt.Point;
import java.awt.Rectangle;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferUShort;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.imageio.IIOException;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class PNGImageReader extends ImageReader {
    static final int IDAT_TYPE = 1229209940;
    static final int IEND_TYPE = 1229278788;
    static final int IHDR_TYPE = 1229472850;
    static final int PLTE_TYPE = 1347179589;
    static final int PNG_COLOR_GRAY = 0;
    static final int PNG_COLOR_GRAY_ALPHA = 4;
    static final int PNG_COLOR_PALETTE = 3;
    static final int PNG_COLOR_RGB = 2;
    static final int PNG_COLOR_RGB_ALPHA = 6;
    static final int PNG_FILTER_AVERAGE = 3;
    static final int PNG_FILTER_NONE = 0;
    static final int PNG_FILTER_PAETH = 4;
    static final int PNG_FILTER_SUB = 1;
    static final int PNG_FILTER_UP = 2;
    static final int bKGD_TYPE = 1649100612;
    static final int cHRM_TYPE = 1665684045;
    private static final boolean debug = true;
    static final int gAMA_TYPE = 1732332865;
    static final int hIST_TYPE = 1749635924;
    static final int iCCP_TYPE = 1766015824;
    static final int iTXt_TYPE = 1767135348;
    static final int pHYs_TYPE = 1883789683;
    static final int sBIT_TYPE = 1933723988;
    static final int sPLT_TYPE = 1934642260;
    static final int sRGB_TYPE = 1934772034;
    static final int tEXt_TYPE = 1950701684;
    static final int tIME_TYPE = 1950960965;
    static final int tRNS_TYPE = 1951551059;
    static final int zTXt_TYPE = 2052348020;
    int[] destinationBands;
    Point destinationOffset;
    boolean gotHeader;
    boolean gotMetadata;
    long imageStartPosition;
    ImageReadParam lastParam;
    PNGMetadata metadata;
    DataInputStream pixelStream;
    int pixelsDone;
    int[] sourceBands;
    int sourceMaxProgressivePass;
    int sourceMinProgressivePass;
    Rectangle sourceRegion;
    int sourceXSubsampling;
    int sourceYSubsampling;
    ImageInputStream stream;
    BufferedImage theImage;
    int totalPixels;
    static final int[] inputBandsForColorType = {1, -1, 3, 1, 2, -1, 4};
    static final int[] adam7XOffset = {0, 4, 0, 2, 0, 1, 0};
    static final int[] adam7YOffset = {0, 0, 4, 0, 2, 0, 1};
    static final int[] adam7XSubsampling = {8, 8, 4, 4, 2, 2, 1, 1};
    static final int[] adam7YSubsampling = {8, 8, 8, 4, 4, 2, 2, 1};
    private static final int[][] bandOffsets = {null, new int[]{0}, new int[]{0, 1}, new int[]{0, 1, 2}, new int[]{0, 1, 2, 3}};

    public PNGImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.stream = null;
        this.gotHeader = false;
        this.gotMetadata = false;
        this.lastParam = null;
        this.imageStartPosition = -1L;
        this.sourceRegion = null;
        this.sourceXSubsampling = -1;
        this.sourceYSubsampling = -1;
        this.sourceMinProgressivePass = 0;
        this.sourceMaxProgressivePass = 6;
        this.sourceBands = null;
        this.destinationBands = null;
        this.destinationOffset = new Point(0, 0);
        this.metadata = new PNGMetadata();
        this.pixelStream = null;
        this.theImage = null;
        this.pixelsDone = 0;
    }

    private WritableRaster createRaster(int i, int i2, int i3, int i4, int i5) {
        Point point = new Point(0, 0);
        return (i5 >= 8 || i3 != 1) ? i5 <= 8 ? Raster.createInterleavedRaster(new DataBufferByte(i2 * i4), i, i2, i4, i3, bandOffsets[i3], point) : Raster.createInterleavedRaster(new DataBufferUShort(i2 * i4), i, i2, i4, i3, bandOffsets[i3], point) : Raster.createPackedRaster(new DataBufferByte(i4 * i2), i, i2, i5, point);
    }

    private static void decodeAverageFilter(byte[] bArr, int i, byte[] bArr2, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5 + i;
            bArr[i6] = (byte) ((bArr[i6] & 255) + ((bArr2[i5 + i2] & 255) / 2));
        }
        for (int i7 = i4; i7 < i3; i7++) {
            int i8 = i7 + i;
            bArr[i8] = (byte) ((bArr[i8] & 255) + (((bArr[i8 - i4] & 255) + (bArr2[i7 + i2] & 255)) / 2));
        }
    }

    private void decodeImage() throws IOException, IIOException {
        PNGMetadata pNGMetadata = this.metadata;
        int i = pNGMetadata.IHDR_width;
        int i2 = pNGMetadata.IHDR_height;
        int i3 = 0;
        this.pixelsDone = 0;
        this.totalPixels = i * i2;
        if (pNGMetadata.IHDR_interlaceMethod == 0) {
            decodePass(0, 0, 0, 1, 1, i, i2);
            return;
        }
        while (i3 <= this.sourceMaxProgressivePass) {
            int i4 = adam7XOffset[i3];
            int i5 = adam7YOffset[i3];
            int[] iArr = adam7XSubsampling;
            int i6 = iArr[i3];
            int[] iArr2 = adam7YSubsampling;
            int i7 = iArr2[i3];
            int i8 = i3 + 1;
            int i9 = iArr[i8] - 1;
            int i10 = iArr2[i8] - 1;
            if (i3 >= this.sourceMinProgressivePass) {
                decodePass(i3, i4, i5, i6, i7, (i9 + i) / i6, (i10 + i2) / i7);
            } else {
                skipPass((i9 + i) / i6, (i10 + i2) / i7);
            }
            if (abortRequested()) {
                return;
            } else {
                i3 = i8;
            }
        }
    }

    private static void decodePaethFilter(byte[] bArr, int i, byte[] bArr2, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5 + i;
            bArr[i6] = (byte) ((bArr[i6] & 255) + (bArr2[i5 + i2] & 255));
        }
        for (int i7 = i4; i7 < i3; i7++) {
            int i8 = i7 + i;
            int i9 = i7 + i2;
            bArr[i8] = (byte) ((bArr[i8] & 255) + paethPredictor(bArr[i8 - i4] & 255, bArr2[i9] & 255, bArr2[i9 - i4] & 255));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x025a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void decodePass(int r47, int r48, int r49, int r50, int r51, int r52, int r53) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.png.PNGImageReader.decodePass(int, int, int, int, int, int, int):void");
    }

    private static void decodeSubFilter(byte[] bArr, int i, int i2, int i3) {
        for (int i4 = i3; i4 < i2; i4++) {
            int i5 = i4 + i;
            bArr[i5] = (byte) ((bArr[i5] & 255) + (bArr[i5 - i3] & 255));
        }
    }

    private static void decodeUpFilter(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 + i;
            bArr[i5] = (byte) ((bArr[i5] & 255) + (bArr2[i4 + i2] & 255));
        }
    }

    private static byte[] inflate(byte[] bArr) throws IOException {
        InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inflaterInputStream.read();
                if (read == -1) {
                    inflaterInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(read);
            } catch (Throwable th) {
                inflaterInputStream.close();
                throw th;
            }
        }
    }

    private static int paethPredictor(int i, int i2, int i3) {
        int i4 = (i + i2) - i3;
        int abs = Math.abs(i4 - i);
        int abs2 = Math.abs(i4 - i2);
        int abs3 = Math.abs(i4 - i3);
        return (abs > abs2 || abs > abs3) ? abs2 <= abs3 ? i2 : i3 : i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0040, code lost:
    
        if (r7 > 2) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parse_PLTE_chunk(int r7) throws java.io.IOException {
        /*
            r6 = this;
            com.sun.imageio.plugins.png.PNGMetadata r0 = r6.metadata
            boolean r1 = r0.PLTE_present
            if (r1 == 0) goto Lc
            java.lang.String r7 = "A PNG image may not contain more than one PLTE chunk.\nThe chunk wil be ignored."
            r6.processWarningOccurred(r7)
            return
        Lc:
            int r0 = r0.IHDR_colorType
            if (r0 == 0) goto L75
            r1 = 4
            if (r0 != r1) goto L14
            goto L75
        L14:
            byte[] r0 = new byte[r7]
            javax.imageio.stream.ImageInputStream r2 = r6.stream
            r2.readFully(r0)
            r2 = 3
            int r7 = r7 / r2
            com.sun.imageio.plugins.png.PNGMetadata r3 = r6.metadata
            int r4 = r3.IHDR_colorType
            r5 = 1
            if (r4 != r2) goto L34
            int r2 = r3.IHDR_bitDepth
            int r2 = r5 << r2
            if (r7 <= r2) goto L30
            java.lang.String r7 = "PLTE chunk contains too many entries for bit depth, ignoring extras."
            r6.processWarningOccurred(r7)
            r7 = r2
        L30:
            int r7 = java.lang.Math.min(r7, r2)
        L34:
            r2 = 16
            if (r7 <= r2) goto L3b
            r1 = 256(0x100, float:3.59E-43)
            goto L42
        L3b:
            if (r7 <= r1) goto L3f
        L3d:
            r1 = r2
            goto L42
        L3f:
            r2 = 2
            if (r7 <= r2) goto L3d
        L42:
            com.sun.imageio.plugins.png.PNGMetadata r2 = r6.metadata
            r2.PLTE_present = r5
            byte[] r3 = new byte[r1]
            r2.PLTE_red = r3
            byte[] r3 = new byte[r1]
            r2.PLTE_green = r3
            byte[] r1 = new byte[r1]
            r2.PLTE_blue = r1
            r1 = 0
            r2 = r1
        L54:
            if (r1 >= r7) goto L74
            com.sun.imageio.plugins.png.PNGMetadata r3 = r6.metadata
            byte[] r4 = r3.PLTE_red
            int r5 = r2 + 1
            r2 = r0[r2]
            r4[r1] = r2
            byte[] r2 = r3.PLTE_green
            int r4 = r5 + 1
            r5 = r0[r5]
            r2[r1] = r5
            byte[] r2 = r3.PLTE_blue
            int r3 = r4 + 1
            r4 = r0[r4]
            r2[r1] = r4
            int r1 = r1 + 1
            r2 = r3
            goto L54
        L74:
            return
        L75:
            java.lang.String r7 = "A PNG gray or gray alpha image cannot have a PLTE chunk.\nThe chunk wil be ignored."
            r6.processWarningOccurred(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.png.PNGImageReader.parse_PLTE_chunk(int):void");
    }

    private void parse_bKGD_chunk() throws IOException {
        PNGMetadata pNGMetadata = this.metadata;
        int i = pNGMetadata.IHDR_colorType;
        if (i == 3) {
            pNGMetadata.bKGD_colorType = 3;
            pNGMetadata.bKGD_index = this.stream.readUnsignedByte();
        } else if (i == 0 || i == 4) {
            pNGMetadata.bKGD_colorType = 0;
            pNGMetadata.bKGD_gray = this.stream.readUnsignedShort();
        } else {
            pNGMetadata.bKGD_colorType = 2;
            pNGMetadata.bKGD_red = this.stream.readUnsignedShort();
            this.metadata.bKGD_green = this.stream.readUnsignedShort();
            this.metadata.bKGD_blue = this.stream.readUnsignedShort();
        }
        this.metadata.bKGD_present = true;
    }

    private void parse_cHRM_chunk() throws IOException {
        this.metadata.cHRM_whitePointX = this.stream.readInt();
        this.metadata.cHRM_whitePointY = this.stream.readInt();
        this.metadata.cHRM_redX = this.stream.readInt();
        this.metadata.cHRM_redY = this.stream.readInt();
        this.metadata.cHRM_greenX = this.stream.readInt();
        this.metadata.cHRM_greenY = this.stream.readInt();
        this.metadata.cHRM_blueX = this.stream.readInt();
        this.metadata.cHRM_blueY = this.stream.readInt();
        this.metadata.cHRM_present = true;
    }

    private void parse_gAMA_chunk() throws IOException {
        int readInt = this.stream.readInt();
        PNGMetadata pNGMetadata = this.metadata;
        pNGMetadata.gAMA_gamma = readInt;
        pNGMetadata.gAMA_present = true;
    }

    private void parse_hIST_chunk(int i) throws IOException, IIOException {
        PNGMetadata pNGMetadata = this.metadata;
        if (!pNGMetadata.PLTE_present) {
            throw new IIOException("hIST chunk without prior PLTE chunk!");
        }
        char[] cArr = new char[i / 2];
        pNGMetadata.hIST_histogram = cArr;
        this.stream.readFully(cArr, 0, cArr.length);
        this.metadata.hIST_present = true;
    }

    private void parse_iCCP_chunk(int i) throws IOException {
        String readNullTerminatedString = readNullTerminatedString("ISO-8859-1", 80);
        int length = (i - readNullTerminatedString.length()) - 2;
        if (length <= 0) {
            throw new IIOException("iCCP chunk length is not proper");
        }
        PNGMetadata pNGMetadata = this.metadata;
        pNGMetadata.iCCP_profileName = readNullTerminatedString;
        pNGMetadata.iCCP_compressionMethod = this.stream.readUnsignedByte();
        byte[] bArr = new byte[length];
        this.stream.readFully(bArr);
        PNGMetadata pNGMetadata2 = this.metadata;
        pNGMetadata2.iCCP_compressedProfile = bArr;
        pNGMetadata2.iCCP_present = true;
    }

    private void parse_iTXt_chunk(int i) throws IOException {
        long streamPosition = this.stream.getStreamPosition();
        String readNullTerminatedString = readNullTerminatedString("ISO-8859-1", 80);
        this.metadata.iTXt_keyword.add(readNullTerminatedString);
        int readUnsignedByte = this.stream.readUnsignedByte();
        this.metadata.iTXt_compressionFlag.add(Boolean.valueOf(readUnsignedByte == 1));
        this.metadata.iTXt_compressionMethod.add(Integer.valueOf(this.stream.readUnsignedByte()));
        long j = streamPosition + i;
        this.metadata.iTXt_languageTag.add(readNullTerminatedString("UTF8", (int) (j - this.stream.getStreamPosition())));
        int streamPosition2 = (int) (j - this.stream.getStreamPosition());
        if (streamPosition2 < 0) {
            throw new IIOException("iTXt chunk length is not proper");
        }
        this.metadata.iTXt_translatedKeyword.add(readNullTerminatedString("UTF8", streamPosition2));
        int streamPosition3 = (int) (j - this.stream.getStreamPosition());
        if (streamPosition3 < 0) {
            throw new IIOException("iTXt chunk length is not proper");
        }
        byte[] bArr = new byte[streamPosition3];
        this.stream.readFully(bArr);
        this.metadata.iTXt_text.add(readUnsignedByte == 1 ? new String(inflate(bArr), "UTF8") : new String(bArr, "UTF8"));
        if (readNullTerminatedString.equals(PNGMetadata.tEXt_creationTimeKey)) {
            int size = this.metadata.iTXt_text.size() - 1;
            PNGMetadata pNGMetadata = this.metadata;
            pNGMetadata.decodeImageCreationTimeFromTextChunk(pNGMetadata.iTXt_text.listIterator(size));
        }
    }

    private void parse_pHYs_chunk() throws IOException {
        this.metadata.pHYs_pixelsPerUnitXAxis = this.stream.readInt();
        this.metadata.pHYs_pixelsPerUnitYAxis = this.stream.readInt();
        this.metadata.pHYs_unitSpecifier = this.stream.readUnsignedByte();
        this.metadata.pHYs_present = true;
    }

    private void parse_sBIT_chunk() throws IOException {
        PNGMetadata pNGMetadata = this.metadata;
        int i = pNGMetadata.IHDR_colorType;
        if (i == 0 || i == 4) {
            pNGMetadata.sBIT_grayBits = this.stream.readUnsignedByte();
        } else if (i == 2 || i == 3 || i == 6) {
            pNGMetadata.sBIT_redBits = this.stream.readUnsignedByte();
            this.metadata.sBIT_greenBits = this.stream.readUnsignedByte();
            this.metadata.sBIT_blueBits = this.stream.readUnsignedByte();
        }
        if (i == 4 || i == 6) {
            this.metadata.sBIT_alphaBits = this.stream.readUnsignedByte();
        }
        PNGMetadata pNGMetadata2 = this.metadata;
        pNGMetadata2.sBIT_colorType = i;
        pNGMetadata2.sBIT_present = true;
    }

    private void parse_sPLT_chunk(int i) throws IOException, IIOException {
        this.metadata.sPLT_paletteName = readNullTerminatedString("ISO-8859-1", 80);
        int length = i - (this.metadata.sPLT_paletteName.length() + 1);
        if (length <= 0) {
            throw new IIOException("sPLT chunk length is not proper");
        }
        int readUnsignedByte = this.stream.readUnsignedByte();
        PNGMetadata pNGMetadata = this.metadata;
        pNGMetadata.sPLT_sampleDepth = readUnsignedByte;
        int i2 = length / (((readUnsignedByte / 8) * 4) + 2);
        pNGMetadata.sPLT_red = new int[i2];
        pNGMetadata.sPLT_green = new int[i2];
        pNGMetadata.sPLT_blue = new int[i2];
        pNGMetadata.sPLT_alpha = new int[i2];
        pNGMetadata.sPLT_frequency = new int[i2];
        int i3 = 0;
        if (readUnsignedByte == 8) {
            while (i3 < i2) {
                this.metadata.sPLT_red[i3] = this.stream.readUnsignedByte();
                this.metadata.sPLT_green[i3] = this.stream.readUnsignedByte();
                this.metadata.sPLT_blue[i3] = this.stream.readUnsignedByte();
                this.metadata.sPLT_alpha[i3] = this.stream.readUnsignedByte();
                this.metadata.sPLT_frequency[i3] = this.stream.readUnsignedShort();
                i3++;
            }
        } else {
            if (readUnsignedByte != 16) {
                throw new IIOException("sPLT sample depth not 8 or 16!");
            }
            while (i3 < i2) {
                this.metadata.sPLT_red[i3] = this.stream.readUnsignedShort();
                this.metadata.sPLT_green[i3] = this.stream.readUnsignedShort();
                this.metadata.sPLT_blue[i3] = this.stream.readUnsignedShort();
                this.metadata.sPLT_alpha[i3] = this.stream.readUnsignedShort();
                this.metadata.sPLT_frequency[i3] = this.stream.readUnsignedShort();
                i3++;
            }
        }
        this.metadata.sPLT_present = true;
    }

    private void parse_sRGB_chunk() throws IOException {
        this.metadata.sRGB_renderingIntent = this.stream.readUnsignedByte();
        this.metadata.sRGB_present = true;
    }

    private void parse_tEXt_chunk(int i) throws IOException {
        String readNullTerminatedString = readNullTerminatedString("ISO-8859-1", 80);
        int length = (i - readNullTerminatedString.length()) - 1;
        if (length < 0) {
            throw new IIOException("tEXt chunk length is not proper");
        }
        this.metadata.tEXt_keyword.add(readNullTerminatedString);
        byte[] bArr = new byte[length];
        this.stream.readFully(bArr);
        this.metadata.tEXt_text.add(new String(bArr, "ISO-8859-1"));
        if (readNullTerminatedString.equals(PNGMetadata.tEXt_creationTimeKey)) {
            int size = this.metadata.tEXt_text.size() - 1;
            PNGMetadata pNGMetadata = this.metadata;
            pNGMetadata.decodeImageCreationTimeFromTextChunk(pNGMetadata.tEXt_text.listIterator(size));
        }
    }

    private void parse_tIME_chunk() throws IOException {
        this.metadata.tIME_year = this.stream.readUnsignedShort();
        this.metadata.tIME_month = this.stream.readUnsignedByte();
        this.metadata.tIME_day = this.stream.readUnsignedByte();
        this.metadata.tIME_hour = this.stream.readUnsignedByte();
        this.metadata.tIME_minute = this.stream.readUnsignedByte();
        this.metadata.tIME_second = this.stream.readUnsignedByte();
        this.metadata.tIME_present = true;
    }

    private void parse_tRNS_chunk(int i) throws IOException {
        PNGMetadata pNGMetadata = this.metadata;
        int i2 = pNGMetadata.IHDR_colorType;
        if (i2 == 3) {
            if (!pNGMetadata.PLTE_present) {
                processWarningOccurred("tRNS chunk without prior PLTE chunk, ignoring it.");
                return;
            }
            int length = pNGMetadata.PLTE_red.length;
            if (i <= length || length <= 0) {
                length = i;
            } else {
                processWarningOccurred("tRNS chunk has more entries than prior PLTE chunk, ignoring extras.");
            }
            PNGMetadata pNGMetadata2 = this.metadata;
            byte[] bArr = new byte[length];
            pNGMetadata2.tRNS_alpha = bArr;
            pNGMetadata2.tRNS_colorType = 3;
            this.stream.read(bArr, 0, length);
            this.stream.skipBytes(i - length);
        } else if (i2 == 0) {
            if (i != 2) {
                processWarningOccurred("tRNS chunk for gray image must have length 2, ignoring chunk.");
                this.stream.skipBytes(i);
                return;
            } else {
                pNGMetadata.tRNS_gray = this.stream.readUnsignedShort();
                this.metadata.tRNS_colorType = 0;
            }
        } else {
            if (i2 != 2) {
                processWarningOccurred("Gray+Alpha and RGBS images may not have a tRNS chunk, ignoring it.");
                return;
            }
            if (i != 6) {
                processWarningOccurred("tRNS chunk for RGB image must have length 6, ignoring chunk.");
                this.stream.skipBytes(i);
                return;
            }
            pNGMetadata.tRNS_red = this.stream.readUnsignedShort();
            this.metadata.tRNS_green = this.stream.readUnsignedShort();
            this.metadata.tRNS_blue = this.stream.readUnsignedShort();
            this.metadata.tRNS_colorType = 2;
        }
        this.metadata.tRNS_present = true;
    }

    private void parse_zTXt_chunk(int i) throws IOException {
        String readNullTerminatedString = readNullTerminatedString("ISO-8859-1", 80);
        int length = (i - readNullTerminatedString.length()) - 2;
        if (length < 0) {
            throw new IIOException("zTXt chunk length is not proper");
        }
        this.metadata.zTXt_keyword.add(readNullTerminatedString);
        this.metadata.zTXt_compressionMethod.add(Integer.valueOf(this.stream.readUnsignedByte()));
        byte[] bArr = new byte[length];
        this.stream.readFully(bArr);
        this.metadata.zTXt_text.add(new String(inflate(bArr), "ISO-8859-1"));
        if (readNullTerminatedString.equals(PNGMetadata.tEXt_creationTimeKey)) {
            int size = this.metadata.zTXt_text.size() - 1;
            PNGMetadata pNGMetadata = this.metadata;
            pNGMetadata.decodeImageCreationTimeFromTextChunk(pNGMetadata.zTXt_text.listIterator(size));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b3, code lost:
    
        if (r8 == 2) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b5, code lost:
    
        if (r8 == 3) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
    
        if (r8 == 4) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b9, code lost:
    
        if (r8 != 6) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c3, code lost:
    
        throw new javax.imageio.IIOException("Color type must be 0, 2, 3, 4, or 6!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e6, code lost:
    
        if (r13 != 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00e9, code lost:
    
        if (r3 == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00eb, code lost:
    
        if (r3 != 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f5, code lost:
    
        throw new javax.imageio.IIOException("Unknown interlace method (not 0 or 1)!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f6, code lost:
    
        r3 = r16.metadata;
        r3.IHDR_present = true;
        r3.IHDR_width = r9;
        r3.IHDR_height = r11;
        r3.IHDR_bitDepth = r1;
        r3.IHDR_colorType = r8;
        r3.IHDR_compressionMethod = r12;
        r3.IHDR_filterMethod = r13;
        r3.IHDR_interlaceMethod = r3;
        r16.gotHeader = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x010a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0112, code lost:
    
        throw new javax.imageio.IIOException("Unknown filter method (not 0)!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readHeader() throws javax.imageio.IIOException {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.png.PNGImageReader.readHeader():void");
    }

    private void readImage(ImageReadParam imageReadParam) throws IIOException {
        SequenceInputStream sequenceInputStream;
        Inflater inflater;
        readMetadata();
        PNGMetadata pNGMetadata = this.metadata;
        int i = pNGMetadata.IHDR_width;
        int i2 = pNGMetadata.IHDR_height;
        this.sourceXSubsampling = 1;
        this.sourceYSubsampling = 1;
        this.sourceMinProgressivePass = 0;
        this.sourceMaxProgressivePass = 6;
        Inflater inflater2 = null;
        this.sourceBands = null;
        this.destinationBands = null;
        this.destinationOffset = new Point(0, 0);
        if (imageReadParam != null) {
            this.sourceXSubsampling = imageReadParam.getSourceXSubsampling();
            this.sourceYSubsampling = imageReadParam.getSourceYSubsampling();
            this.sourceMinProgressivePass = Math.max(imageReadParam.getSourceMinProgressivePass(), 0);
            this.sourceMaxProgressivePass = Math.min(imageReadParam.getSourceMaxProgressivePass(), 6);
            this.sourceBands = imageReadParam.getSourceBands();
            this.destinationBands = imageReadParam.getDestinationBands();
            this.destinationOffset = imageReadParam.getDestinationOffset();
        }
        try {
            try {
                this.stream.seek(this.imageStartPosition);
                sequenceInputStream = new SequenceInputStream(new PNGImageDataEnumeration(this.stream));
                inflater = new Inflater();
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            this.pixelStream = new DataInputStream(new BufferedInputStream(new InflaterInputStream(sequenceInputStream, inflater)));
            this.theImage = ImageReader.getDestination(imageReadParam, getImageTypes(0), i, i2);
            Rectangle rectangle = new Rectangle(0, 0, 0, 0);
            Rectangle rectangle2 = new Rectangle(0, 0, 0, 0);
            this.sourceRegion = rectangle2;
            ImageReader.computeRegions(imageReadParam, i, i2, this.theImage, rectangle2, rectangle);
            this.destinationOffset.setLocation(rectangle.getLocation());
            int i3 = this.metadata.IHDR_colorType;
            int numBands = this.theImage.getSampleModel().getNumBands();
            int[] iArr = inputBandsForColorType;
            if (numBands == iArr[i3] + 1 && this.metadata.hasTransparentColor()) {
                ImageReader.checkReadParamBandSettings(imageReadParam, iArr[i3] + 1, this.theImage.getSampleModel().getNumBands());
            } else {
                ImageReader.checkReadParamBandSettings(imageReadParam, iArr[i3], this.theImage.getSampleModel().getNumBands());
            }
            clearAbortRequest();
            processImageStarted(0);
            if (abortRequested()) {
                processReadAborted();
            } else {
                decodeImage();
                if (abortRequested()) {
                    processReadAborted();
                } else {
                    processImageComplete();
                }
            }
            inflater.end();
        } catch (IOException e2) {
            e = e2;
            inflater2 = inflater;
            throw new IIOException("Error reading PNG image data", e);
        } catch (Throwable th2) {
            th = th2;
            inflater2 = inflater;
            if (inflater2 != null) {
                inflater2.end();
            }
            throw th;
        }
    }

    private void readMetadata() throws IIOException {
        int readInt;
        int readInt2;
        int readInt3;
        int i;
        if (this.gotMetadata) {
            return;
        }
        readHeader();
        int i2 = this.metadata.IHDR_colorType;
        if (this.ignoreMetadata && i2 != 3) {
            while (true) {
                try {
                    readInt3 = this.stream.readInt();
                    if (readInt3 < 0 || (i = readInt3 + 4) < 0) {
                        break;
                    }
                    int readInt4 = this.stream.readInt();
                    if (readInt4 == IDAT_TYPE) {
                        this.stream.skipBytes(-8);
                        this.imageStartPosition = this.stream.getStreamPosition();
                        this.gotMetadata = true;
                        return;
                    } else if (readInt4 == tRNS_TYPE) {
                        parse_tRNS_chunk(readInt3);
                        this.stream.skipBytes(4);
                    } else {
                        this.stream.skipBytes(i);
                    }
                } catch (IOException e) {
                    throw new IIOException("Error skipping PNG metadata", e);
                }
            }
            throw new IIOException("Invalid chunk length " + readInt3);
        }
        do {
            try {
                int readInt5 = this.stream.readInt();
                readInt = this.stream.readInt();
                if (readInt5 < 0) {
                    throw new IIOException("Invalid chunk length " + readInt5);
                }
                if (readInt != IEND_TYPE) {
                    try {
                        this.stream.mark();
                        ImageInputStream imageInputStream = this.stream;
                        imageInputStream.seek(imageInputStream.getStreamPosition() + readInt5);
                        readInt2 = this.stream.readInt();
                        this.stream.reset();
                    } catch (IOException unused) {
                        throw new IIOException("Invalid chunk length " + readInt5);
                    }
                } else {
                    readInt2 = -1;
                }
                switch (readInt) {
                    case IDAT_TYPE /* 1229209940 */:
                        if (this.imageStartPosition == -1) {
                            if (i2 == 3 && !this.metadata.PLTE_present) {
                                throw new IIOException("Required PLTE chunk missing");
                            }
                            this.imageStartPosition = this.stream.getStreamPosition() - 8;
                        }
                        this.stream.skipBytes(readInt5);
                        break;
                    case IEND_TYPE /* 1229278788 */:
                        this.stream.seek(this.imageStartPosition);
                        ImageInputStream imageInputStream2 = this.stream;
                        imageInputStream2.flushBefore(imageInputStream2.getStreamPosition());
                        this.gotMetadata = true;
                        return;
                    case PLTE_TYPE /* 1347179589 */:
                        parse_PLTE_chunk(readInt5);
                        break;
                    case bKGD_TYPE /* 1649100612 */:
                        parse_bKGD_chunk();
                        break;
                    case cHRM_TYPE /* 1665684045 */:
                        parse_cHRM_chunk();
                        break;
                    case gAMA_TYPE /* 1732332865 */:
                        parse_gAMA_chunk();
                        break;
                    case hIST_TYPE /* 1749635924 */:
                        parse_hIST_chunk(readInt5);
                        break;
                    case iCCP_TYPE /* 1766015824 */:
                        parse_iCCP_chunk(readInt5);
                        break;
                    case iTXt_TYPE /* 1767135348 */:
                        if (!this.ignoreMetadata) {
                            parse_iTXt_chunk(readInt5);
                            break;
                        } else {
                            this.stream.skipBytes(readInt5);
                            break;
                        }
                    case pHYs_TYPE /* 1883789683 */:
                        parse_pHYs_chunk();
                        break;
                    case sBIT_TYPE /* 1933723988 */:
                        parse_sBIT_chunk();
                        break;
                    case sPLT_TYPE /* 1934642260 */:
                        parse_sPLT_chunk(readInt5);
                        break;
                    case sRGB_TYPE /* 1934772034 */:
                        parse_sRGB_chunk();
                        break;
                    case tEXt_TYPE /* 1950701684 */:
                        parse_tEXt_chunk(readInt5);
                        break;
                    case tIME_TYPE /* 1950960965 */:
                        parse_tIME_chunk();
                        break;
                    case tRNS_TYPE /* 1951551059 */:
                        parse_tRNS_chunk(readInt5);
                        break;
                    case zTXt_TYPE /* 2052348020 */:
                        if (!this.ignoreMetadata) {
                            parse_zTXt_chunk(readInt5);
                            break;
                        } else {
                            this.stream.skipBytes(readInt5);
                            break;
                        }
                    default:
                        byte[] bArr = new byte[readInt5];
                        this.stream.readFully(bArr);
                        StringBuilder sb = new StringBuilder(4);
                        sb.append((char) (readInt >>> 24));
                        sb.append((char) ((readInt >> 16) & 255));
                        sb.append((char) ((readInt >> 8) & 255));
                        sb.append((char) (readInt & 255));
                        if ((readInt >>> 28) == 0) {
                            processWarningOccurred("Encountered unknown chunk with critical bit set!");
                        }
                        this.metadata.unknownChunkType.add(sb.toString());
                        this.metadata.unknownChunkData.add(bArr);
                        break;
                }
            } catch (IOException e2) {
                throw new IIOException("Error reading PNG metadata", e2);
            }
        } while (readInt2 == this.stream.readInt());
        throw new IIOException("Failed to read a chunk of type " + readInt);
    }

    private String readNullTerminatedString(String str, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i <= i2 || (i3 = this.stream.read()) == 0) {
                break;
            }
            if (i3 == -1) {
                throw new EOFException();
            }
            byteArrayOutputStream.write(i3);
            i2 = i4;
        }
        if (i3 == 0) {
            return new String(byteArrayOutputStream.toByteArray(), str);
        }
        throw new IIOException("Found non null terminated string");
    }

    private void resetStreamSettings() {
        this.gotHeader = false;
        this.gotMetadata = false;
        this.metadata = null;
        this.pixelStream = null;
        this.imageStartPosition = -1L;
    }

    private void skipPass(int i, int i2) throws IOException, IIOException {
        if (i == 0 || i2 == 0) {
            return;
        }
        int[] iArr = inputBandsForColorType;
        PNGMetadata pNGMetadata = this.metadata;
        int multiplyExact = (Math.multiplyExact(iArr[pNGMetadata.IHDR_colorType] * pNGMetadata.IHDR_bitDepth, i) + 7) / 8;
        for (int i3 = 0; i3 < i2; i3++) {
            this.pixelStream.skipBytes(multiplyExact + 1);
        }
    }

    private void updateImageProgress(int i) {
        int i2 = this.pixelsDone + i;
        this.pixelsDone = i2;
        processImageProgress((i2 * 100.0f) / this.totalPixels);
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return new ImageReadParam();
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IIOException {
        if (i != 0) {
            throw new IndexOutOfBoundsException("imageIndex != 0!");
        }
        readHeader();
        return this.metadata.IHDR_height;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IIOException {
        if (i != 0) {
            throw new IndexOutOfBoundsException("imageIndex != 0!");
        }
        readMetadata();
        return this.metadata;
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IIOException {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        if (i != 0) {
            throw new IndexOutOfBoundsException("imageIndex != 0!");
        }
        readHeader();
        ArrayList arrayList = new ArrayList(1);
        PNGMetadata pNGMetadata = this.metadata;
        int i2 = pNGMetadata.IHDR_bitDepth;
        int i3 = pNGMetadata.IHDR_colorType;
        int i4 = i2 <= 8 ? 0 : 1;
        if (i3 == 0) {
            readMetadata();
            if (this.metadata.hasTransparentColor()) {
                arrayList.add(ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1003), new int[]{0, 1}, i4, true, false));
            }
            arrayList.add(ImageTypeSpecifier.createGrayscale(i2, i4, false));
        } else if (i3 == 6) {
            if (i2 == 8) {
                arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(6));
                arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(2));
            }
            arrayList.add(ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1000), new int[]{0, 1, 2, 3}, i4, true, false));
        } else if (i3 == 2) {
            readMetadata();
            if (i2 == 8) {
                if (this.metadata.hasTransparentColor()) {
                    arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(6));
                }
                arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(5));
                arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(1));
                arrayList.add(ImageTypeSpecifier.createFromBufferedImageType(4));
            }
            if (this.metadata.hasTransparentColor()) {
                arrayList.add(ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1000), new int[]{0, 1, 2, 3}, i4, true, false));
            }
            arrayList.add(ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1000), new int[]{0, 1, 2}, i4, false, false));
        } else if (i3 == 3) {
            readMetadata();
            int i5 = 1 << i2;
            PNGMetadata pNGMetadata2 = this.metadata;
            byte[] bArr6 = pNGMetadata2.PLTE_red;
            byte[] bArr7 = pNGMetadata2.PLTE_green;
            byte[] bArr8 = pNGMetadata2.PLTE_blue;
            if (bArr6.length < i5) {
                bArr2 = Arrays.copyOf(bArr6, i5);
                byte[] bArr9 = this.metadata.PLTE_red;
                Arrays.fill(bArr2, bArr9.length, i5, bArr9[bArr9.length - 1]);
                bArr3 = Arrays.copyOf(this.metadata.PLTE_green, i5);
                byte[] bArr10 = this.metadata.PLTE_green;
                Arrays.fill(bArr3, bArr10.length, i5, bArr10[bArr10.length - 1]);
                bArr = Arrays.copyOf(this.metadata.PLTE_blue, i5);
                byte[] bArr11 = this.metadata.PLTE_blue;
                Arrays.fill(bArr, bArr11.length, i5, bArr11[bArr11.length - 1]);
            } else {
                bArr = bArr8;
                bArr2 = bArr6;
                bArr3 = bArr7;
            }
            PNGMetadata pNGMetadata3 = this.metadata;
            if (!pNGMetadata3.tRNS_present || (bArr5 = pNGMetadata3.tRNS_alpha) == null) {
                bArr4 = null;
            } else {
                if (bArr5.length != bArr2.length) {
                    bArr5 = Arrays.copyOf(bArr5, bArr2.length);
                    Arrays.fill(bArr5, this.metadata.tRNS_alpha.length, bArr2.length, (byte) -1);
                }
                bArr4 = bArr5;
            }
            arrayList.add(ImageTypeSpecifier.createIndexed(bArr2, bArr3, bArr, bArr4, i2, 0));
        } else if (i3 == 4) {
            arrayList.add(ImageTypeSpecifier.createInterleaved(ColorSpace.getInstance(1003), new int[]{0, 1}, i4, true, false));
        }
        return arrayList.iterator();
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IIOException {
        if (this.stream == null) {
            throw new IllegalStateException("No input source set!");
        }
        if (this.seekForwardOnly && z) {
            throw new IllegalStateException("seekForwardOnly and allowSearch can't both be true!");
        }
        return 1;
    }

    @Override // javax.imageio.ImageReader
    public ImageTypeSpecifier getRawImageType(int i) throws IOException {
        ImageTypeSpecifier next;
        Iterator<ImageTypeSpecifier> imageTypes = getImageTypes(i);
        do {
            next = imageTypes.next();
        } while (imageTypes.hasNext());
        return next;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IIOException {
        return null;
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IIOException {
        if (i != 0) {
            throw new IndexOutOfBoundsException("imageIndex != 0!");
        }
        readHeader();
        return this.metadata.IHDR_width;
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IIOException {
        if (i != 0) {
            throw new IndexOutOfBoundsException("imageIndex != 0!");
        }
        try {
            readImage(imageReadParam);
            return this.theImage;
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            throw e;
        } catch (Throwable th) {
            throw new IIOException("Caught exception during read: ", th);
        }
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        super.reset();
        resetStreamSettings();
    }

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        super.setInput(obj, z, z2);
        this.stream = (ImageInputStream) obj;
        resetStreamSettings();
    }
}
