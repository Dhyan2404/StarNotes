package com.sun.imageio.plugins.png;

import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import java.awt.Rectangle;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.zip.DeflaterOutputStream;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;

/* loaded from: classes9.dex */
public final class PNGImageWriter extends ImageWriter {
    private static final int DEFAULT_COMPRESSION_LEVEL = 4;
    int bpp;
    byte[] currRow;
    byte[][] filteredRows;
    PNGMetadata metadata;
    int numBands;
    int periodX;
    int periodY;
    int pixelsDone;
    byte[] prevRow;
    RowFilter rowFilter;
    int[] sampleSize;
    byte[][] scale;
    byte[] scale0;
    byte[][] scaleh;
    byte[][] scalel;
    int scalingBitDepth;
    int[] sourceBands;
    int sourceHeight;
    int sourceWidth;
    int sourceXOffset;
    int sourceYOffset;
    ImageOutputStream stream;
    int totalPixels;

    public PNGImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.stream = null;
        this.metadata = null;
        this.sourceXOffset = 0;
        this.sourceYOffset = 0;
        this.sourceWidth = 0;
        this.sourceHeight = 0;
        this.sourceBands = null;
        this.periodX = 1;
        this.periodY = 1;
        this.rowFilter = new RowFilter();
        this.prevRow = null;
        this.currRow = null;
        this.filteredRows = null;
        this.sampleSize = null;
        this.scalingBitDepth = -1;
        this.scale = null;
        this.scale0 = null;
        this.scaleh = null;
        this.scalel = null;
    }

    private static int chunkType(String str) {
        return str.charAt(3) | (str.charAt(0) << 24) | (str.charAt(1) << 16) | (str.charAt(2) << '\b');
    }

    private byte[] deflate(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        deflaterOutputStream.write(bArr);
        deflaterOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0250 A[LOOP:0: B:13:0x008b->B:39:0x0250, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x024f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void encodePass(javax.imageio.stream.ImageOutputStream r35, java.awt.image.RenderedImage r36, int r37, int r38, int r39, int r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.png.PNGImageWriter.encodePass(javax.imageio.stream.ImageOutputStream, java.awt.image.RenderedImage, int, int, int, int):void");
    }

    private boolean equals(int[] iArr, int[] iArr2) {
        if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
            return false;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private void initializeScaleTables(int[] iArr) {
        int i = this.metadata.IHDR_bitDepth;
        if (i == this.scalingBitDepth && equals(iArr, this.sampleSize)) {
            return;
        }
        this.sampleSize = iArr;
        this.scalingBitDepth = i;
        int i2 = (1 << i) - 1;
        if (i <= 8) {
            this.scale = new byte[this.numBands];
            for (int i3 = 0; i3 < this.numBands; i3++) {
                int i4 = (1 << iArr[i3]) - 1;
                int i5 = i4 / 2;
                this.scale[i3] = new byte[i4 + 1];
                for (int i6 = 0; i6 <= i4; i6++) {
                    this.scale[i3][i6] = (byte) (((i6 * i2) + i5) / i4);
                }
            }
            this.scale0 = this.scale[0];
            this.scalel = null;
            this.scaleh = null;
            return;
        }
        int i7 = this.numBands;
        this.scaleh = new byte[i7];
        this.scalel = new byte[i7];
        for (int i8 = 0; i8 < this.numBands; i8++) {
            int i9 = (1 << iArr[i8]) - 1;
            int i10 = i9 / 2;
            int i11 = i9 + 1;
            this.scaleh[i8] = new byte[i11];
            this.scalel[i8] = new byte[i11];
            for (int i12 = 0; i12 <= i9; i12++) {
                int i13 = ((i12 * i2) + i10) / i9;
                this.scaleh[i8][i12] = (byte) (i13 >> 8);
                this.scalel[i8][i12] = (byte) (i13 & 255);
            }
        }
        this.scale = null;
        this.scale0 = null;
    }

    private void writeIEND() throws IOException {
        new ChunkStream(1229278788, this.stream).finish();
    }

    private void writeUnknownChunks() throws IOException {
        Iterator<String> it2 = this.metadata.unknownChunkType.iterator();
        Iterator<byte[]> it3 = this.metadata.unknownChunkData.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            ChunkStream chunkStream = new ChunkStream(chunkType(it2.next()), this.stream);
            chunkStream.write(it3.next());
            chunkStream.finish();
        }
    }

    private void write_IDAT(RenderedImage renderedImage, int i) throws IOException {
        IDATOutputStream iDATOutputStream = new IDATOutputStream(this.stream, 32768, i);
        try {
            if (this.metadata.IHDR_interlaceMethod == 1) {
                for (int i2 = 0; i2 < 7; i2++) {
                    encodePass(iDATOutputStream, renderedImage, PNGImageReader.adam7XOffset[i2], PNGImageReader.adam7YOffset[i2], PNGImageReader.adam7XSubsampling[i2], PNGImageReader.adam7YSubsampling[i2]);
                    if (abortRequested()) {
                        break;
                    }
                }
            } else {
                encodePass(iDATOutputStream, renderedImage, 0, 0, 1, 1);
            }
        } finally {
            iDATOutputStream.finish();
        }
    }

    private void write_IHDR() throws IOException {
        ChunkStream chunkStream = new ChunkStream(1229472850, this.stream);
        chunkStream.writeInt(this.metadata.IHDR_width);
        chunkStream.writeInt(this.metadata.IHDR_height);
        chunkStream.writeByte(this.metadata.IHDR_bitDepth);
        chunkStream.writeByte(this.metadata.IHDR_colorType);
        int i = this.metadata.IHDR_compressionMethod;
        if (i != 0) {
            throw new IIOException("Only compression method 0 is defined in PNG 1.1");
        }
        chunkStream.writeByte(i);
        int i2 = this.metadata.IHDR_filterMethod;
        if (i2 != 0) {
            throw new IIOException("Only filter method 0 is defined in PNG 1.1");
        }
        chunkStream.writeByte(i2);
        int i3 = this.metadata.IHDR_interlaceMethod;
        if (i3 < 0 || i3 > 1) {
            throw new IIOException("Only interlace methods 0 (node) and 1 (adam7) are defined in PNG 1.1");
        }
        chunkStream.writeByte(i3);
        chunkStream.finish();
    }

    private void write_PLTE() throws IOException {
        PNGMetadata pNGMetadata = this.metadata;
        if (pNGMetadata.PLTE_present) {
            int i = pNGMetadata.IHDR_colorType;
            int i2 = 0;
            if (i == 0 || i == 4) {
                processWarningOccurred(0, "A PLTE chunk may not appear in a gray or gray alpha image.\nThe chunk will not be written");
                return;
            }
            ChunkStream chunkStream = new ChunkStream(1347179589, this.stream);
            int length = this.metadata.PLTE_red.length;
            byte[] bArr = new byte[length * 3];
            int i3 = 0;
            while (i2 < length) {
                int i4 = i3 + 1;
                PNGMetadata pNGMetadata2 = this.metadata;
                bArr[i3] = pNGMetadata2.PLTE_red[i2];
                int i5 = i4 + 1;
                bArr[i4] = pNGMetadata2.PLTE_green[i2];
                bArr[i5] = pNGMetadata2.PLTE_blue[i2];
                i2++;
                i3 = i5 + 1;
            }
            chunkStream.write(bArr);
            chunkStream.finish();
        }
    }

    private void write_bKGD() throws IOException {
        if (this.metadata.bKGD_present) {
            ChunkStream chunkStream = new ChunkStream(1649100612, this.stream);
            PNGMetadata pNGMetadata = this.metadata;
            int i = pNGMetadata.IHDR_colorType & 3;
            int i2 = pNGMetadata.bKGD_colorType;
            int i3 = pNGMetadata.bKGD_red;
            int i4 = pNGMetadata.bKGD_green;
            int i5 = pNGMetadata.bKGD_blue;
            if (i == 2 && i2 == 0) {
                i3 = pNGMetadata.bKGD_gray;
                i2 = i;
                i4 = i3;
                i5 = i4;
            }
            if (i2 != i) {
                processWarningOccurred(0, "bKGD metadata has incompatible color type.\nThe chunk will not be written.");
                return;
            }
            if (i == 3) {
                chunkStream.writeByte(pNGMetadata.bKGD_index);
            } else if (i == 0 || i == 4) {
                chunkStream.writeShort(pNGMetadata.bKGD_gray);
            } else {
                chunkStream.writeShort(i3);
                chunkStream.writeShort(i4);
                chunkStream.writeShort(i5);
            }
            chunkStream.finish();
        }
    }

    private void write_cHRM() throws IOException {
        if (this.metadata.cHRM_present) {
            ChunkStream chunkStream = new ChunkStream(1665684045, this.stream);
            chunkStream.writeInt(this.metadata.cHRM_whitePointX);
            chunkStream.writeInt(this.metadata.cHRM_whitePointY);
            chunkStream.writeInt(this.metadata.cHRM_redX);
            chunkStream.writeInt(this.metadata.cHRM_redY);
            chunkStream.writeInt(this.metadata.cHRM_greenX);
            chunkStream.writeInt(this.metadata.cHRM_greenY);
            chunkStream.writeInt(this.metadata.cHRM_blueX);
            chunkStream.writeInt(this.metadata.cHRM_blueY);
            chunkStream.finish();
        }
    }

    private void write_gAMA() throws IOException {
        if (this.metadata.gAMA_present) {
            ChunkStream chunkStream = new ChunkStream(1732332865, this.stream);
            chunkStream.writeInt(this.metadata.gAMA_gamma);
            chunkStream.finish();
        }
    }

    private void write_hIST() throws IOException, IIOException {
        if (this.metadata.hIST_present) {
            ChunkStream chunkStream = new ChunkStream(1749635924, this.stream);
            PNGMetadata pNGMetadata = this.metadata;
            if (!pNGMetadata.PLTE_present) {
                throw new IIOException("hIST chunk without PLTE chunk!");
            }
            char[] cArr = pNGMetadata.hIST_histogram;
            chunkStream.writeChars(cArr, 0, cArr.length);
            chunkStream.finish();
        }
    }

    private void write_iCCP() throws IOException {
        if (this.metadata.iCCP_present) {
            ChunkStream chunkStream = new ChunkStream(1766015824, this.stream);
            if (this.metadata.iCCP_profileName.length() > 79) {
                throw new IIOException("iCCP profile name is longer than 79");
            }
            chunkStream.writeBytes(this.metadata.iCCP_profileName);
            chunkStream.writeByte(0);
            chunkStream.writeByte(this.metadata.iCCP_compressionMethod);
            chunkStream.write(this.metadata.iCCP_compressedProfile);
            chunkStream.finish();
        }
    }

    private void write_iTXt() throws IOException {
        Iterator<String> it2 = this.metadata.iTXt_keyword.iterator();
        Iterator<Boolean> it3 = this.metadata.iTXt_compressionFlag.iterator();
        Iterator<Integer> it4 = this.metadata.iTXt_compressionMethod.iterator();
        Iterator<String> it5 = this.metadata.iTXt_languageTag.iterator();
        Iterator<String> it6 = this.metadata.iTXt_translatedKeyword.iterator();
        Iterator<String> it7 = this.metadata.iTXt_text.iterator();
        while (it2.hasNext()) {
            ChunkStream chunkStream = new ChunkStream(1767135348, this.stream);
            String next = it2.next();
            if (next.length() > 79) {
                throw new IIOException("iTXt keyword is longer than 79");
            }
            chunkStream.writeBytes(next);
            chunkStream.writeByte(0);
            Boolean next2 = it3.next();
            chunkStream.writeByte(next2.booleanValue() ? 1 : 0);
            chunkStream.writeByte(it4.next().intValue());
            chunkStream.writeBytes(it5.next());
            chunkStream.writeByte(0);
            chunkStream.write(it6.next().getBytes("UTF8"));
            chunkStream.writeByte(0);
            String next3 = it7.next();
            if (next2.booleanValue()) {
                chunkStream.write(deflate(next3.getBytes("UTF8")));
            } else {
                chunkStream.write(next3.getBytes("UTF8"));
            }
            chunkStream.finish();
        }
    }

    private void write_magic() throws IOException {
        this.stream.write(new byte[]{-119, FramedLZ4CompressorInputStream.f106197v, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_INT32_SHORT_MAX, 13, 10, Ascii.SUB, 10});
    }

    private void write_pHYs() throws IOException {
        if (this.metadata.pHYs_present) {
            ChunkStream chunkStream = new ChunkStream(1883789683, this.stream);
            chunkStream.writeInt(this.metadata.pHYs_pixelsPerUnitXAxis);
            chunkStream.writeInt(this.metadata.pHYs_pixelsPerUnitYAxis);
            chunkStream.writeByte(this.metadata.pHYs_unitSpecifier);
            chunkStream.finish();
        }
    }

    private void write_sBIT() throws IOException {
        if (this.metadata.sBIT_present) {
            ChunkStream chunkStream = new ChunkStream(1933723988, this.stream);
            PNGMetadata pNGMetadata = this.metadata;
            int i = pNGMetadata.IHDR_colorType;
            if (pNGMetadata.sBIT_colorType != i) {
                processWarningOccurred(0, "sBIT metadata has wrong color type.\nThe chunk will not be written.");
                return;
            }
            if (i == 0 || i == 4) {
                chunkStream.writeByte(pNGMetadata.sBIT_grayBits);
            } else if (i == 2 || i == 3 || i == 6) {
                chunkStream.writeByte(pNGMetadata.sBIT_redBits);
                chunkStream.writeByte(this.metadata.sBIT_greenBits);
                chunkStream.writeByte(this.metadata.sBIT_blueBits);
            }
            if (i == 4 || i == 6) {
                chunkStream.writeByte(this.metadata.sBIT_alphaBits);
            }
            chunkStream.finish();
        }
    }

    private void write_sPLT() throws IOException {
        if (this.metadata.sPLT_present) {
            ChunkStream chunkStream = new ChunkStream(1934642260, this.stream);
            if (this.metadata.sPLT_paletteName.length() > 79) {
                throw new IIOException("sPLT palette name is longer than 79");
            }
            chunkStream.writeBytes(this.metadata.sPLT_paletteName);
            int i = 0;
            chunkStream.writeByte(0);
            chunkStream.writeByte(this.metadata.sPLT_sampleDepth);
            PNGMetadata pNGMetadata = this.metadata;
            int length = pNGMetadata.sPLT_red.length;
            if (pNGMetadata.sPLT_sampleDepth == 8) {
                while (i < length) {
                    chunkStream.writeByte(this.metadata.sPLT_red[i]);
                    chunkStream.writeByte(this.metadata.sPLT_green[i]);
                    chunkStream.writeByte(this.metadata.sPLT_blue[i]);
                    chunkStream.writeByte(this.metadata.sPLT_alpha[i]);
                    chunkStream.writeShort(this.metadata.sPLT_frequency[i]);
                    i++;
                }
            } else {
                while (i < length) {
                    chunkStream.writeShort(this.metadata.sPLT_red[i]);
                    chunkStream.writeShort(this.metadata.sPLT_green[i]);
                    chunkStream.writeShort(this.metadata.sPLT_blue[i]);
                    chunkStream.writeShort(this.metadata.sPLT_alpha[i]);
                    chunkStream.writeShort(this.metadata.sPLT_frequency[i]);
                    i++;
                }
            }
            chunkStream.finish();
        }
    }

    private void write_sRGB() throws IOException {
        if (this.metadata.sRGB_present) {
            ChunkStream chunkStream = new ChunkStream(1934772034, this.stream);
            chunkStream.writeByte(this.metadata.sRGB_renderingIntent);
            chunkStream.finish();
        }
    }

    private void write_tEXt() throws IOException {
        Iterator<String> it2 = this.metadata.tEXt_keyword.iterator();
        Iterator<String> it3 = this.metadata.tEXt_text.iterator();
        while (it2.hasNext()) {
            ChunkStream chunkStream = new ChunkStream(1950701684, this.stream);
            String next = it2.next();
            if (next.length() > 79) {
                throw new IIOException("tEXt keyword is longer than 79");
            }
            chunkStream.writeBytes(next);
            chunkStream.writeByte(0);
            chunkStream.writeBytes(it3.next());
            chunkStream.finish();
        }
    }

    private void write_tIME() throws IOException {
        if (this.metadata.tIME_present) {
            ChunkStream chunkStream = new ChunkStream(1950960965, this.stream);
            chunkStream.writeShort(this.metadata.tIME_year);
            chunkStream.writeByte(this.metadata.tIME_month);
            chunkStream.writeByte(this.metadata.tIME_day);
            chunkStream.writeByte(this.metadata.tIME_hour);
            chunkStream.writeByte(this.metadata.tIME_minute);
            chunkStream.writeByte(this.metadata.tIME_second);
            chunkStream.finish();
        }
    }

    private void write_tRNS() throws IOException, IIOException {
        if (this.metadata.tRNS_present) {
            ChunkStream chunkStream = new ChunkStream(1951551059, this.stream);
            PNGMetadata pNGMetadata = this.metadata;
            int i = pNGMetadata.IHDR_colorType;
            int i2 = pNGMetadata.tRNS_colorType;
            int i3 = pNGMetadata.tRNS_red;
            int i4 = pNGMetadata.tRNS_green;
            int i5 = pNGMetadata.tRNS_blue;
            if (i == 2 && i2 == 0) {
                i3 = pNGMetadata.tRNS_gray;
                i2 = i;
                i4 = i3;
                i5 = i4;
            }
            if (i2 != i) {
                processWarningOccurred(0, "tRNS metadata has incompatible color type.\nThe chunk will not be written.");
                return;
            }
            if (i == 3) {
                if (!pNGMetadata.PLTE_present) {
                    throw new IIOException("tRNS chunk without PLTE chunk!");
                }
                chunkStream.write(pNGMetadata.tRNS_alpha);
            } else if (i == 0) {
                chunkStream.writeShort(pNGMetadata.tRNS_gray);
            } else {
                if (i != 2) {
                    throw new IIOException("tRNS chunk for color type 4 or 6!");
                }
                chunkStream.writeShort(i3);
                chunkStream.writeShort(i4);
                chunkStream.writeShort(i5);
            }
            chunkStream.finish();
        }
    }

    private void write_zTXt() throws IOException {
        Iterator<String> it2 = this.metadata.zTXt_keyword.iterator();
        Iterator<Integer> it3 = this.metadata.zTXt_compressionMethod.iterator();
        Iterator<String> it4 = this.metadata.zTXt_text.iterator();
        while (it2.hasNext()) {
            ChunkStream chunkStream = new ChunkStream(2052348020, this.stream);
            String next = it2.next();
            if (next.length() > 79) {
                throw new IIOException("tEXt keyword is longer than 79");
            }
            chunkStream.writeBytes(next);
            chunkStream.writeByte(0);
            chunkStream.writeByte(it3.next().intValue());
            chunkStream.write(deflate(it4.next().getBytes("ISO-8859-1")));
            chunkStream.finish();
        }
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        return iIOMetadata instanceof PNGMetadata ? (PNGMetadata) ((PNGMetadata) iIOMetadata).clone() : new PNGMetadata(iIOMetadata);
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        PNGMetadata pNGMetadata = new PNGMetadata();
        pNGMetadata.initialize(imageTypeSpecifier, imageTypeSpecifier.getSampleModel().getNumBands());
        return pNGMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new PNGImageWriteParam(getLocale());
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        super.setOutput(obj);
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageOutputStream)) {
                throw new IllegalArgumentException("output not an ImageOutputStream!");
            }
            this.stream = (ImageOutputStream) obj;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IIOException {
        if (this.stream == null) {
            throw new IllegalStateException("output == null!");
        }
        if (iIOImage == null) {
            throw new IllegalArgumentException("image == null!");
        }
        if (iIOImage.hasRaster()) {
            throw new UnsupportedOperationException("image has a Raster!");
        }
        RenderedImage renderedImage = iIOImage.getRenderedImage();
        SampleModel sampleModel = renderedImage.getSampleModel();
        this.numBands = sampleModel.getNumBands();
        this.sourceXOffset = renderedImage.getMinX();
        this.sourceYOffset = renderedImage.getMinY();
        this.sourceWidth = renderedImage.getWidth();
        this.sourceHeight = renderedImage.getHeight();
        this.sourceBands = null;
        this.periodX = 1;
        this.periodY = 1;
        if (imageWriteParam != null) {
            Rectangle sourceRegion = imageWriteParam.getSourceRegion();
            if (sourceRegion != null) {
                Rectangle intersection = sourceRegion.intersection(new Rectangle(renderedImage.getMinX(), renderedImage.getMinY(), renderedImage.getWidth(), renderedImage.getHeight()));
                this.sourceXOffset = intersection.f97732x;
                this.sourceYOffset = intersection.f97733y;
                this.sourceWidth = intersection.width;
                this.sourceHeight = intersection.height;
            }
            int subsamplingXOffset = imageWriteParam.getSubsamplingXOffset();
            int subsamplingYOffset = imageWriteParam.getSubsamplingYOffset();
            this.sourceXOffset += subsamplingXOffset;
            this.sourceYOffset += subsamplingYOffset;
            this.sourceWidth -= subsamplingXOffset;
            this.sourceHeight -= subsamplingYOffset;
            this.periodX = imageWriteParam.getSourceXSubsampling();
            this.periodY = imageWriteParam.getSourceYSubsampling();
            int[] sourceBands = imageWriteParam.getSourceBands();
            if (sourceBands != null) {
                this.sourceBands = sourceBands;
                this.numBands = sourceBands.length;
            }
        }
        int i = this.sourceWidth;
        int i2 = this.periodX;
        int i3 = ((i + i2) - 1) / i2;
        int i4 = this.sourceHeight;
        int i5 = this.periodY;
        int i6 = ((i4 + i5) - 1) / i5;
        if (i3 <= 0 || i6 <= 0) {
            throw new IllegalArgumentException("Empty source region!");
        }
        this.totalPixels = i3 * i6;
        this.pixelsDone = 0;
        IIOMetadata metadata = iIOImage.getMetadata();
        if (metadata != null) {
            this.metadata = (PNGMetadata) convertImageMetadata(metadata, ImageTypeSpecifier.createFromRenderedImage(renderedImage), null);
        } else {
            this.metadata = new PNGMetadata();
        }
        int i7 = 4;
        if (imageWriteParam != null) {
            int compressionMode = imageWriteParam.getCompressionMode();
            if (compressionMode == 0) {
                i7 = 0;
            } else if (compressionMode == 2) {
                float compressionQuality = imageWriteParam.getCompressionQuality();
                if (compressionQuality >= 0.0f && compressionQuality <= 1.0f) {
                    i7 = 9 - Math.round(compressionQuality * 9.0f);
                }
            }
            int progressiveMode = imageWriteParam.getProgressiveMode();
            if (progressiveMode == 0) {
                this.metadata.IHDR_interlaceMethod = 0;
            } else if (progressiveMode == 1) {
                this.metadata.IHDR_interlaceMethod = 1;
            }
        }
        this.metadata.initialize(new ImageTypeSpecifier(renderedImage), this.numBands);
        PNGMetadata pNGMetadata = this.metadata;
        pNGMetadata.IHDR_width = i3;
        pNGMetadata.IHDR_height = i6;
        this.bpp = this.numBands * (pNGMetadata.IHDR_bitDepth == 16 ? 2 : 1);
        initializeScaleTables(sampleModel.getSampleSize());
        clearAbortRequest();
        processImageStarted(0);
        if (abortRequested()) {
            processWriteAborted();
            return;
        }
        try {
            write_magic();
            write_IHDR();
            write_cHRM();
            write_gAMA();
            write_iCCP();
            write_sBIT();
            write_sRGB();
            write_PLTE();
            write_hIST();
            write_tRNS();
            write_bKGD();
            write_pHYs();
            write_sPLT();
            write_tIME();
            write_tEXt();
            write_iTXt();
            write_zTXt();
            writeUnknownChunks();
            write_IDAT(renderedImage, i7);
            if (abortRequested()) {
                processWriteAborted();
            } else {
                writeIEND();
                processImageComplete();
            }
        } catch (IOException e) {
            throw new IIOException("I/O error writing PNG file!", e);
        }
    }
}
