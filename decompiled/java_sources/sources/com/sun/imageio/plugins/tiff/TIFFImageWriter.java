package com.sun.imageio.plugins.tiff;

import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.sun.imageio.plugins.common.ImageUtil;
import com.sun.imageio.plugins.common.SingleTileRenderedImage;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.plugins.tiff.BaselineTIFFTagSet;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.Node;

/* loaded from: classes9.dex */
public class TIFFImageWriter extends ImageWriter {
    private static final int DEFAULT_BYTES_PER_STRIP = 8192;
    private int bitDepth;
    private char[] bitsPerSample;
    private ByteOrder byteOrder;
    private TIFFColorConverter colorConverter;
    private int compression;
    private TIFFCompressor compressor;
    private int currentImage;
    private long headerPosition;
    private RenderedImage image;
    private TIFFImageMetadata imageMetadata;
    private ImageTypeSpecifier imageType;
    private boolean inReplacePixelsNest;
    private boolean isBilevel;
    private boolean isImageSimple;
    private boolean isInsertingEmpty;
    private boolean isInverted;
    private boolean isRescaling;
    private boolean isTiled;
    private boolean isWritingEmpty;
    private boolean isWritingSequence;
    private int nativePhotometricInterpretation;
    private long nextIFDPointerPos;
    private long nextSpace;
    private int numBands;
    private ImageWriteParam param;
    private int periodX;
    private int periodY;
    private int photometricInterpretation;
    private int pixelsDone;
    private int predictor;
    private long prevHeaderPosition;
    private long prevNextSpace;
    private long prevStreamPosition;
    private TIFFImageReader reader;
    private long[] replacePixelsByteCounts;
    private long replacePixelsByteCountsPosition;
    private int replacePixelsIndex;
    private Object replacePixelsLock;
    private TIFFImageMetadata replacePixelsMetadata;
    private long replacePixelsOffsetsPosition;
    private Rectangle replacePixelsRegion;
    private long[] replacePixelsTileOffsets;
    private int sampleFormat;
    private int[] sampleSize;
    private byte[][] scale;
    private byte[] scale0;
    private byte[][] scaleh;
    private byte[][] scalel;
    private int scalingBitDepth;
    private int[] sourceBands;
    private int sourceHeight;
    private int sourceWidth;
    private int sourceXOffset;
    private int sourceYOffset;
    private ImageOutputStream stream;
    private TIFFStreamMetadata streamMetadata;
    private int tileLength;
    private int tileWidth;
    private int tilesAcross;
    private int tilesDown;
    private int totalPixels;
    static final String EXIF_JPEG_COMPRESSION_TYPE = "Exif JPEG";
    static final String[] TIFFCompressionTypes = {"CCITT RLE", "CCITT T.4", "CCITT T.6", "LZW", "JPEG", "ZLib", "PackBits", "Deflate", EXIF_JPEG_COMPRESSION_TYPE};
    static final String[] compressionTypes = {"CCITT RLE", "CCITT T.4", "CCITT T.6", "LZW", "Old JPEG", "JPEG", "ZLib", "PackBits", "Deflate", EXIF_JPEG_COMPRESSION_TYPE};
    static final boolean[] isCompressionLossless = {true, true, true, true, false, false, true, true, true, false};
    static final int[] compressionNumbers = {2, 3, 4, 5, 6, 7, 8, 32773, 32946, 6};

    public TIFFImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.sampleSize = null;
        this.scalingBitDepth = -1;
        this.isRescaling = false;
        this.sampleFormat = 4;
        this.scale = null;
        this.scale0 = null;
        this.scaleh = null;
        this.scalel = null;
        this.nextSpace = 0L;
        this.isWritingSequence = false;
        this.isInsertingEmpty = false;
        this.isWritingEmpty = false;
        this.currentImage = 0;
        this.replacePixelsLock = new Object();
        this.replacePixelsIndex = -1;
        this.replacePixelsMetadata = null;
        this.replacePixelsTileOffsets = null;
        this.replacePixelsByteCounts = null;
        this.replacePixelsOffsetsPosition = 0L;
        this.replacePixelsByteCountsPosition = 0L;
        this.replacePixelsRegion = null;
        this.inReplacePixelsNest = false;
        this.reader = null;
    }

    public static int XToTileX(int i, int i2, int i3) {
        int i4 = i - i2;
        if (i4 < 0) {
            i4 += 1 - i3;
        }
        return i4 / i3;
    }

    public static int YToTileY(int i, int i2, int i3) {
        int i4 = i - i2;
        if (i4 < 0) {
            i4 += 1 - i3;
        }
        return i4 / i3;
    }

    private void checkParamsEmpty(ImageTypeSpecifier imageTypeSpecifier, int i, int i2, List<? extends BufferedImage> list) {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        if (imageTypeSpecifier == null) {
            throw new IllegalArgumentException("imageType == null!");
        }
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("width < 1 || height < 1!");
        }
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                BufferedImage bufferedImage = list.get(i3);
                if (bufferedImage == null || !(bufferedImage instanceof BufferedImage)) {
                    throw new IllegalArgumentException("thumbnails contains null references or objects other than BufferedImages!");
                }
            }
        }
        if (this.isInsertingEmpty) {
            throw new IllegalStateException("Previous call to prepareInsertEmpty() without corresponding call to endInsertEmpty()!");
        }
        if (this.isWritingEmpty) {
            throw new IllegalStateException("Previous call to prepareWriteEmpty() without corresponding call to endWriteEmpty()!");
        }
    }

    private TIFFImageMetadata convertNativeImageMetadata(IIOMetadata iIOMetadata) throws IIOInvalidTreeException {
        if (iIOMetadata == null) {
            throw new NullPointerException("inData == null!");
        }
        if (!Arrays.asList(iIOMetadata.getMetadataFormatNames()).contains(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME)) {
            throw new IllegalArgumentException("inData does not support native metadata format!");
        }
        Node asTree = iIOMetadata.getAsTree(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME);
        if (asTree == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(BaselineTIFFTagSet.getInstance());
        TIFFImageMetadata tIFFImageMetadata = new TIFFImageMetadata(arrayList);
        tIFFImageMetadata.setFromTree(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME, asTree);
        return tIFFImageMetadata;
    }

    private TIFFImageMetadata convertStandardImageMetadata(IIOMetadata iIOMetadata) throws IIOInvalidTreeException {
        if (iIOMetadata == null) {
            throw new NullPointerException("inData == null!");
        }
        if (!iIOMetadata.isStandardMetadataFormatSupported()) {
            throw new IllegalArgumentException("inData does not support standard metadata format!");
        }
        Node asTree = iIOMetadata.getAsTree(IIOMetadataFormatImpl.standardMetadataFormatName);
        if (asTree == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(BaselineTIFFTagSet.getInstance());
        TIFFImageMetadata tIFFImageMetadata = new TIFFImageMetadata(arrayList);
        tIFFImageMetadata.setFromTree(IIOMetadataFormatImpl.standardMetadataFormatName, asTree);
        return tIFFImageMetadata;
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
        if (this.bitDepth == this.scalingBitDepth && equals(iArr, this.sampleSize)) {
            return;
        }
        this.isRescaling = false;
        this.scalingBitDepth = -1;
        this.scaleh = null;
        this.scalel = null;
        this.scale = null;
        this.scale0 = null;
        this.sampleSize = iArr;
        if (this.bitDepth <= 16) {
            int i = 0;
            while (true) {
                if (i >= this.numBands) {
                    break;
                }
                if (iArr[i] != this.bitDepth) {
                    this.isRescaling = true;
                    break;
                }
                i++;
            }
        }
        if (this.isRescaling) {
            int i2 = this.bitDepth;
            this.scalingBitDepth = i2;
            int i3 = (1 << i2) - 1;
            if (i2 <= 8) {
                this.scale = new byte[this.numBands];
                for (int i4 = 0; i4 < this.numBands; i4++) {
                    int i5 = (1 << iArr[i4]) - 1;
                    int i6 = i5 / 2;
                    this.scale[i4] = new byte[i5 + 1];
                    for (int i7 = 0; i7 <= i5; i7++) {
                        this.scale[i4][i7] = (byte) (((i7 * i3) + i6) / i5);
                    }
                }
                this.scale0 = this.scale[0];
                this.scalel = null;
                this.scaleh = null;
                return;
            }
            if (i2 <= 16) {
                int i8 = this.numBands;
                this.scaleh = new byte[i8];
                this.scalel = new byte[i8];
                for (int i9 = 0; i9 < this.numBands; i9++) {
                    int i10 = (1 << iArr[i9]) - 1;
                    int i11 = i10 / 2;
                    int i12 = i10 + 1;
                    this.scaleh[i9] = new byte[i12];
                    this.scalel[i9] = new byte[i12];
                    for (int i13 = 0; i13 <= i10; i13++) {
                        int i14 = ((i13 * i3) + i11) / i10;
                        this.scaleh[i9][i13] = (byte) (i14 >> 8);
                        this.scalel[i9][i13] = (byte) (i14 & 255);
                    }
                }
                this.scale = null;
                this.scale0 = null;
            }
        }
    }

    private void insert(int i, IIOImage iIOImage, ImageWriteParam imageWriteParam, boolean z) throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("Output not set!");
        }
        if (iIOImage == null) {
            throw new IllegalArgumentException("image == null!");
        }
        long[] jArr = new long[1];
        long[] jArr2 = new long[1];
        locateIFD(i, jArr, jArr2);
        markPositions();
        this.stream.seek(jArr[0]);
        this.stream.mark();
        long readUnsignedInt = this.stream.readUnsignedInt();
        this.stream.reset();
        long j = jArr[0];
        if (j + 4 > this.nextSpace) {
            this.nextSpace = j + 4;
        }
        long j2 = (this.nextSpace + 3) & (-4);
        this.nextSpace = j2;
        this.stream.writeInt((int) j2);
        this.stream.seek(this.nextSpace);
        write(null, iIOImage, imageWriteParam, false, z);
        this.stream.seek(this.nextIFDPointerPos);
        this.stream.writeInt((int) jArr2[0]);
        if (abortRequested()) {
            this.stream.seek(jArr[0]);
            this.stream.writeInt((int) readUnsignedInt);
            resetPositions();
        }
    }

    private boolean isEncodingEmpty() {
        return this.isInsertingEmpty || this.isWritingEmpty;
    }

    private void locateIFD(int i, long[] jArr, long[] jArr2) throws IOException {
        if (i < -1) {
            throw new IndexOutOfBoundsException("imageIndex < -1!");
        }
        long streamPosition = this.stream.getStreamPosition();
        this.stream.seek(this.headerPosition);
        int readUnsignedShort = this.stream.readUnsignedShort();
        if (readUnsignedShort == 19789) {
            this.stream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            if (readUnsignedShort != 18761) {
                this.stream.seek(streamPosition);
                throw new IIOException("Illegal byte order");
            }
            this.stream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        }
        if (this.stream.readUnsignedShort() != 42) {
            this.stream.seek(streamPosition);
            throw new IIOException("Illegal magic number");
        }
        jArr[0] = this.stream.getStreamPosition();
        long readUnsignedInt = this.stream.readUnsignedInt();
        jArr2[0] = readUnsignedInt;
        if (readUnsignedInt == 0) {
            if (i <= 0) {
                return;
            }
            this.stream.seek(streamPosition);
            throw new IndexOutOfBoundsException("imageIndex is greater than the largest available index!");
        }
        this.stream.seek(readUnsignedInt);
        int i2 = 0;
        while (true) {
            if (i != -1 && i2 >= i) {
                return;
            }
            try {
                this.stream.skipBytes(this.stream.readShort() * 12);
                jArr[0] = this.stream.getStreamPosition();
                long readUnsignedInt2 = this.stream.readUnsignedInt();
                jArr2[0] = readUnsignedInt2;
                if (readUnsignedInt2 == 0) {
                    if (i == -1 || i2 >= i - 1) {
                        return;
                    }
                    this.stream.seek(streamPosition);
                    throw new IndexOutOfBoundsException("imageIndex is greater than the largest available index!");
                }
                this.stream.seek(readUnsignedInt2);
                i2++;
            } catch (EOFException unused) {
                this.stream.seek(streamPosition);
                jArr2[0] = 0;
                return;
            }
        }
    }

    private void markPositions() throws IOException {
        this.prevStreamPosition = this.stream.getStreamPosition();
        this.prevHeaderPosition = this.headerPosition;
        this.prevNextSpace = this.nextSpace;
    }

    private TIFFIFD readIFD(int i) throws IOException {
        ImageOutputStream imageOutputStream = this.stream;
        if (imageOutputStream == null) {
            throw new IllegalStateException("Output not set!");
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("imageIndex < 0!");
        }
        imageOutputStream.mark();
        long[] jArr = new long[1];
        locateIFD(i, new long[1], jArr);
        if (jArr[0] == 0) {
            this.stream.reset();
            throw new IndexOutOfBoundsException("imageIndex out of bounds!");
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(BaselineTIFFTagSet.getInstance());
        TIFFIFD tiffifd = new TIFFIFD(arrayList);
        tiffifd.initialize(this.stream, true, false, false);
        this.stream.reset();
        return tiffifd;
    }

    private void resetPositions() throws IOException {
        this.stream.seek(this.prevStreamPosition);
        this.headerPosition = this.prevHeaderPosition;
        this.nextSpace = this.prevNextSpace;
    }

    private Raster subsample(Raster raster, int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, Rectangle rectangle) {
        int i7;
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        int width = raster.getWidth();
        int height = raster.getHeight();
        int numBands = raster.getSampleModel().getNumBands();
        int dataType = raster.getSampleModel().getDataType();
        int XToTileX = XToTileX(minX, i, i3) + i5;
        int YToTileY = YToTileY(minY, i2, i4) + i6;
        int XToTileX2 = XToTileX((minX + width) - 1, i, i3) + i5;
        int YToTileY2 = YToTileY((minY + height) - 1, i2, i4) + i6;
        int i8 = (XToTileX2 - XToTileX) + 1;
        int i9 = (YToTileY2 - YToTileY) + 1;
        if (i8 <= 0 || i9 <= 0) {
            return null;
        }
        int i10 = ((XToTileX - i5) * i3) + i;
        int i11 = ((((XToTileX2 - i5) * i3) + i) - i10) + 1;
        int i12 = ((YToTileY - i6) * i4) + i2;
        WritableRaster createCompatibleWritableRaster = raster.createCompatibleWritableRaster(XToTileX, YToTileY, i8, i9);
        int i13 = ((((YToTileY2 - i6) * i4) + i2) - i12) + 1 + i12;
        if (dataType == 4) {
            float[] fArr = new float[i11];
            float[] fArr2 = new float[i8];
            int i14 = 0;
            while (i14 < numBands) {
                int i15 = i12;
                int i16 = YToTileY;
                while (i15 < i13) {
                    raster.getSamples(i10, i15, i11, 1, i14, fArr);
                    int i17 = i12;
                    int i18 = 0;
                    int i19 = 0;
                    while (i18 < i11) {
                        fArr2[i19] = fArr[i18];
                        i18 += i3;
                        i19++;
                    }
                    int i20 = i14;
                    float[] fArr3 = fArr2;
                    createCompatibleWritableRaster.setSamples(XToTileX, i16, i8, 1, i20, fArr3);
                    i15 += i4;
                    i14 = i20;
                    fArr2 = fArr3;
                    YToTileY = YToTileY;
                    i16++;
                    i12 = i17;
                }
                i14++;
            }
            i7 = YToTileY;
        } else {
            i7 = YToTileY;
            if (dataType == 5) {
                double[] dArr = new double[i11];
                double[] dArr2 = new double[i8];
                int i21 = 0;
                while (i21 < numBands) {
                    int i22 = i12;
                    int i23 = i7;
                    while (i22 < i13) {
                        raster.getSamples(i10, i22, i11, 1, i21, dArr);
                        int i24 = 0;
                        int i25 = 0;
                        while (i24 < i11) {
                            dArr2[i25] = dArr[i24];
                            i24 += i3;
                            i25++;
                        }
                        int i26 = i21;
                        createCompatibleWritableRaster.setSamples(XToTileX, i23, i8, 1, i26, dArr2);
                        i22 += i4;
                        i23++;
                        i21 = i26;
                    }
                    i21++;
                }
            } else {
                int[] iArr2 = new int[i11];
                int[] iArr3 = new int[i8];
                int i27 = 0;
                while (i27 < numBands) {
                    int i28 = i12;
                    int i29 = i7;
                    while (i28 < i13) {
                        raster.getSamples(i10, i28, i11, 1, i27, iArr2);
                        int i30 = 0;
                        int i31 = 0;
                        while (i30 < i11) {
                            iArr3[i31] = iArr2[i30];
                            i30 += i3;
                            i31++;
                        }
                        int i32 = i27;
                        createCompatibleWritableRaster.setSamples(XToTileX, i29, i8, 1, i32, iArr3);
                        i28 += i4;
                        i29++;
                        i27 = i32;
                    }
                    i27++;
                }
            }
        }
        return createCompatibleWritableRaster.createChild(XToTileX, i7, rectangle.width, rectangle.height, rectangle.f97732x, rectangle.f97733y, iArr);
    }

    private void writeHeader() throws IOException {
        TIFFStreamMetadata tIFFStreamMetadata = this.streamMetadata;
        if (tIFFStreamMetadata != null) {
            this.byteOrder = tIFFStreamMetadata.byteOrder;
        } else {
            this.byteOrder = ByteOrder.BIG_ENDIAN;
        }
        this.stream.setByteOrder(this.byteOrder);
        if (this.byteOrder == ByteOrder.BIG_ENDIAN) {
            this.stream.writeShort(DefaultImageHeaderParser.f15007e);
        } else {
            this.stream.writeShort(DefaultImageHeaderParser.f15008f);
        }
        this.stream.writeShort(42);
        this.stream.writeInt(0);
        long streamPosition = this.stream.getStreamPosition();
        this.nextSpace = streamPosition;
        this.headerPosition = streamPosition - 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:365:0x08f4 A[LOOP:43: B:364:0x08f2->B:365:0x08f4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0045 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int writeTile(java.awt.Rectangle r53, com.sun.imageio.plugins.tiff.TIFFCompressor r54) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageWriter.writeTile(java.awt.Rectangle, com.sun.imageio.plugins.tiff.TIFFCompressor):int");
    }

    @Override // javax.imageio.ImageWriter
    public boolean canInsertEmpty(int i) throws IOException {
        return canInsertImage(i);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canInsertImage(int i) throws IOException {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        this.stream.mark();
        locateIFD(i, new long[1], new long[1]);
        this.stream.reset();
        return true;
    }

    @Override // javax.imageio.ImageWriter
    public boolean canReplacePixels(int i) throws IOException {
        if (getOutput() != null) {
            return readIFD(i).getTIFFField(259).getAsInt(0) == 1;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteEmpty() throws IOException {
        if (getOutput() != null) {
            return true;
        }
        throw new IllegalStateException("getOutput() == null!");
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteSequence() {
        return true;
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        TIFFImageMetadata convertNativeImageMetadata;
        if (iIOMetadata == null) {
            throw new NullPointerException("inData == null!");
        }
        if (imageTypeSpecifier == null) {
            throw new NullPointerException("imageType == null!");
        }
        if (iIOMetadata instanceof TIFFImageMetadata) {
            convertNativeImageMetadata = new TIFFImageMetadata(((TIFFImageMetadata) iIOMetadata).getRootIFD().getShallowClone());
        } else if (Arrays.asList(iIOMetadata.getMetadataFormatNames()).contains(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME)) {
            try {
                convertNativeImageMetadata = convertNativeImageMetadata(iIOMetadata);
            } catch (IIOInvalidTreeException unused) {
                return null;
            }
        } else if (iIOMetadata.isStandardMetadataFormatSupported()) {
            try {
                convertNativeImageMetadata = convertStandardImageMetadata(iIOMetadata);
            } catch (IIOInvalidTreeException unused2) {
                return null;
            }
        } else {
            convertNativeImageMetadata = null;
        }
        if (convertNativeImageMetadata == null) {
            return convertNativeImageMetadata;
        }
        TIFFImageWriter tIFFImageWriter = new TIFFImageWriter(this.originatingProvider);
        tIFFImageWriter.imageMetadata = convertNativeImageMetadata;
        tIFFImageWriter.param = imageWriteParam;
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        try {
            tIFFImageWriter.setupMetadata(imageTypeSpecifier.getColorModel(), sampleModel, sampleModel.getWidth(), sampleModel.getHeight());
            return tIFFImageWriter.imageMetadata;
        } catch (IIOException unused3) {
            return null;
        }
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        if (iIOMetadata == null) {
            throw new NullPointerException("inData == null!");
        }
        if (iIOMetadata instanceof TIFFStreamMetadata) {
            TIFFStreamMetadata tIFFStreamMetadata = new TIFFStreamMetadata();
            tIFFStreamMetadata.byteOrder = ((TIFFStreamMetadata) iIOMetadata).byteOrder;
            return tIFFStreamMetadata;
        }
        if (!Arrays.asList(iIOMetadata.getMetadataFormatNames()).contains("javax_imageio_tiff_stream_1.0")) {
            return null;
        }
        TIFFStreamMetadata tIFFStreamMetadata2 = new TIFFStreamMetadata();
        try {
            tIFFStreamMetadata2.mergeTree("javax_imageio_tiff_stream_1.0", iIOMetadata.getAsTree("javax_imageio_tiff_stream_1.0"));
            return tIFFStreamMetadata2;
        } catch (IIOInvalidTreeException unused) {
            return null;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void endInsertEmpty() throws IOException {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        if (!this.isInsertingEmpty) {
            throw new IllegalStateException("No previous call to prepareInsertEmpty()!");
        }
        if (this.isWritingEmpty) {
            throw new IllegalStateException("Previous call to prepareWriteEmpty() without corresponding call to endWriteEmpty()!");
        }
        if (this.inReplacePixelsNest) {
            throw new IllegalStateException("In nested call to prepareReplacePixels!");
        }
        this.isInsertingEmpty = false;
    }

    @Override // javax.imageio.ImageWriter
    public void endReplacePixels() throws IOException {
        synchronized (this.replacePixelsLock) {
            if (!this.inReplacePixelsNest) {
                throw new IllegalStateException("No previous call to prepareReplacePixels()!");
            }
            this.replacePixelsIndex = -1;
            this.replacePixelsMetadata = null;
            this.replacePixelsTileOffsets = null;
            this.replacePixelsByteCounts = null;
            this.replacePixelsOffsetsPosition = 0L;
            this.replacePixelsByteCountsPosition = 0L;
            this.replacePixelsRegion = null;
            this.inReplacePixelsNest = false;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteEmpty() throws IOException {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        if (!this.isWritingEmpty) {
            throw new IllegalStateException("No previous call to prepareWriteEmpty()!");
        }
        if (this.isInsertingEmpty) {
            throw new IllegalStateException("Previous call to prepareInsertEmpty() without corresponding call to endInsertEmpty()!");
        }
        if (this.inReplacePixelsNest) {
            throw new IllegalStateException("In nested call to prepareReplacePixels!");
        }
        this.isWritingEmpty = false;
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteSequence() throws IOException {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        if (!this.isWritingSequence) {
            throw new IllegalStateException("prepareWriteSequence() has not been called!");
        }
        this.isWritingSequence = false;
        long length = this.stream.length();
        if (length != -1) {
            this.stream.seek(length);
        }
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        TIFFImageMetadata tIFFImageMetadata;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(BaselineTIFFTagSet.getInstance());
        TIFFImageMetadata tIFFImageMetadata2 = new TIFFImageMetadata(arrayList);
        return (imageTypeSpecifier == null || (tIFFImageMetadata = (TIFFImageMetadata) convertImageMetadata(tIFFImageMetadata2, imageTypeSpecifier, imageWriteParam)) == null) ? tIFFImageMetadata2 : tIFFImageMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return new TIFFStreamMetadata();
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new TIFFImageWriteParam(getLocale());
    }

    public ImageTypeSpecifier getImageType() {
        return this.imageType;
    }

    @Override // javax.imageio.ImageWriter
    public void prepareInsertEmpty(int i, ImageTypeSpecifier imageTypeSpecifier, int i2, int i3, IIOMetadata iIOMetadata, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        checkParamsEmpty(imageTypeSpecifier, i2, i3, list);
        this.isInsertingEmpty = true;
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        insert(i, new IIOImage(new EmptyImage(0, 0, i2, i3, 0, 0, sampleModel.getWidth(), sampleModel.getHeight(), sampleModel, imageTypeSpecifier.getColorModel()), (List<? extends BufferedImage>) null, iIOMetadata), imageWriteParam, false);
    }

    @Override // javax.imageio.ImageWriter
    public void prepareReplacePixels(int i, Rectangle rectangle) throws IOException {
        synchronized (this.replacePixelsLock) {
            if (this.stream == null) {
                throw new IllegalStateException("Output not set!");
            }
            if (rectangle == null) {
                throw new IllegalArgumentException("region == null!");
            }
            if (rectangle.getWidth() < 1.0d) {
                throw new IllegalArgumentException("region.getWidth() < 1!");
            }
            if (rectangle.getHeight() < 1.0d) {
                throw new IllegalArgumentException("region.getHeight() < 1!");
            }
            if (this.inReplacePixelsNest) {
                throw new IllegalStateException("In nested call to prepareReplacePixels!");
            }
            TIFFIFD readIFD = readIFD(i);
            if (readIFD.getTIFFField(259).getAsInt(0) != 1) {
                throw new UnsupportedOperationException("canReplacePixels(imageIndex) == false!");
            }
            TIFFField tIFFField = readIFD.getTIFFField(256);
            if (tIFFField == null) {
                throw new IIOException("Cannot read ImageWidth field.");
            }
            int asInt = tIFFField.getAsInt(0);
            TIFFField tIFFField2 = readIFD.getTIFFField(257);
            if (tIFFField2 == null) {
                throw new IIOException("Cannot read ImageHeight field.");
            }
            Rectangle intersection = rectangle.intersection(new Rectangle(0, 0, asInt, tIFFField2.getAsInt(0)));
            if (intersection.isEmpty()) {
                throw new IIOException("Region does not intersect image bounds");
            }
            this.replacePixelsRegion = intersection;
            TIFFField tIFFField3 = readIFD.getTIFFField(324);
            if (tIFFField3 == null) {
                tIFFField3 = readIFD.getTIFFField(273);
            }
            this.replacePixelsTileOffsets = tIFFField3.getAsLongs();
            TIFFField tIFFField4 = readIFD.getTIFFField(325);
            if (tIFFField4 == null) {
                tIFFField4 = readIFD.getTIFFField(279);
            }
            this.replacePixelsByteCounts = tIFFField4.getAsLongs();
            this.replacePixelsOffsetsPosition = readIFD.getStripOrTileOffsetsPosition();
            this.replacePixelsByteCountsPosition = readIFD.getStripOrTileByteCountsPosition();
            this.replacePixelsMetadata = new TIFFImageMetadata(readIFD);
            this.replacePixelsIndex = i;
            this.inReplacePixelsNest = true;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteEmpty(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, int i, int i2, IIOMetadata iIOMetadata2, List<? extends BufferedImage> list, ImageWriteParam imageWriteParam) throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("output == null!");
        }
        checkParamsEmpty(imageTypeSpecifier, i, i2, list);
        this.isWritingEmpty = true;
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        EmptyImage emptyImage = new EmptyImage(0, 0, i, i2, 0, 0, sampleModel.getWidth(), sampleModel.getHeight(), sampleModel, imageTypeSpecifier.getColorModel());
        markPositions();
        write(iIOMetadata, new IIOImage(emptyImage, (List<? extends BufferedImage>) null, iIOMetadata2), imageWriteParam, true, false);
        if (abortRequested()) {
            resetPositions();
        }
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        if (getOutput() == null) {
            throw new IllegalStateException("getOutput() == null!");
        }
        if (iIOMetadata != null) {
            iIOMetadata = convertStreamMetadata(iIOMetadata, null);
        }
        if (iIOMetadata == null) {
            iIOMetadata = getDefaultStreamMetadata(null);
        }
        this.streamMetadata = (TIFFStreamMetadata) iIOMetadata;
        writeHeader();
        this.isWritingSequence = true;
    }

    @Override // javax.imageio.ImageWriter
    public void replacePixels(RenderedImage renderedImage, ImageWriteParam imageWriteParam) throws IOException {
        ImageWriteParam defaultWriteParam;
        int subsamplingXOffset;
        int subsamplingYOffset;
        int i;
        int i2;
        int[] iArr;
        int i3;
        WritableRaster raster;
        int i4;
        int i5;
        TIFFNullCompressor tIFFNullCompressor;
        int i6;
        int i7;
        int i8;
        WritableRaster writableRaster;
        Point point;
        int i9;
        int[] iArr2;
        ColorModel colorModel;
        int i10;
        Rectangle rectangle;
        int i11;
        Raster subsample;
        synchronized (this.replacePixelsLock) {
            if (this.stream == null) {
                throw new IllegalStateException("stream == null!");
            }
            if (renderedImage != null) {
                if (this.inReplacePixelsNest) {
                    if (imageWriteParam == null) {
                        defaultWriteParam = getDefaultWriteParam();
                        subsamplingXOffset = 0;
                        subsamplingYOffset = 0;
                        i2 = 1;
                        i = 1;
                    } else {
                        defaultWriteParam = getDefaultWriteParam();
                        defaultWriteParam.setCompressionMode(0);
                        defaultWriteParam.setTilingMode(3);
                        defaultWriteParam.setDestinationOffset(imageWriteParam.getDestinationOffset());
                        defaultWriteParam.setSourceBands(imageWriteParam.getSourceBands());
                        defaultWriteParam.setSourceRegion(imageWriteParam.getSourceRegion());
                        int sourceXSubsampling = imageWriteParam.getSourceXSubsampling();
                        int sourceYSubsampling = imageWriteParam.getSourceYSubsampling();
                        subsamplingXOffset = imageWriteParam.getSubsamplingXOffset();
                        subsamplingYOffset = imageWriteParam.getSubsamplingYOffset();
                        i = sourceXSubsampling;
                        i2 = sourceYSubsampling;
                    }
                    TIFFField tIFFField = this.replacePixelsMetadata.getTIFFField(258);
                    if (tIFFField != null) {
                        int[] asInts = tIFFField.getAsInts();
                        int[] sampleSize = renderedImage.getSampleModel().getSampleSize();
                        int[] sourceBands = defaultWriteParam.getSourceBands();
                        if (sourceBands != null) {
                            if (sourceBands.length == asInts.length) {
                                for (int i12 = 0; i12 < sourceBands.length; i12++) {
                                    if (asInts[i12] != sampleSize[sourceBands[i12]]) {
                                        throw new IIOException("Source and destination have different BitsPerSample");
                                    }
                                }
                            } else {
                                throw new IIOException("Source and destination have different SamplesPerPixel");
                            }
                        } else {
                            int numBands = renderedImage.getSampleModel().getNumBands();
                            if (numBands != asInts.length) {
                                throw new IIOException("Source and destination have different SamplesPerPixel");
                            }
                            for (int i13 = 0; i13 < numBands; i13++) {
                                if (asInts[i13] != sampleSize[i13]) {
                                    throw new IIOException("Source and destination have different BitsPerSample");
                                }
                            }
                        }
                        Rectangle rectangle2 = new Rectangle(renderedImage.getMinX(), renderedImage.getMinY(), renderedImage.getWidth(), renderedImage.getHeight());
                        Rectangle sourceRegion = defaultWriteParam.getSourceRegion();
                        if (sourceRegion == null) {
                            sourceRegion = rectangle2;
                        }
                        int i14 = subsamplingXOffset + sourceRegion.f97732x;
                        int i15 = subsamplingYOffset + sourceRegion.f97733y;
                        if (!sourceRegion.equals(rectangle2)) {
                            sourceRegion = sourceRegion.intersection(rectangle2);
                            if (sourceRegion.isEmpty()) {
                                throw new IllegalArgumentException("Source region does not intersect source image!");
                            }
                        }
                        Point destinationOffset = defaultWriteParam.getDestinationOffset();
                        Rectangle intersection = new Rectangle(destinationOffset.f97730x, destinationOffset.f97731y, (XToTileX(sourceRegion.f97732x + sourceRegion.width, i14, i) + destinationOffset.f97730x) - (XToTileX(sourceRegion.f97732x, i14, i) + destinationOffset.f97730x), (YToTileY(sourceRegion.f97733y + sourceRegion.height, i15, i2) + destinationOffset.f97731y) - (YToTileY(sourceRegion.f97733y, i15, i2) + destinationOffset.f97731y)).intersection(this.replacePixelsRegion);
                        if (!intersection.isEmpty()) {
                            int i16 = intersection.f97732x;
                            int i17 = destinationOffset.f97730x;
                            int i18 = ((i16 - i17) * i) + i14;
                            int i19 = ((((((i16 + intersection.width) - 1) - i17) * i) + i14) - i18) + 1;
                            int i20 = intersection.f97733y;
                            int i21 = destinationOffset.f97731y;
                            int i22 = ((i20 - i21) * i2) + i15;
                            if (!new Rectangle(i18, i22, i19, ((((((i20 + intersection.height) - 1) - i21) * i2) + i15) - i22) + 1).intersection(rectangle2).isEmpty()) {
                                TIFFImageReader tIFFImageReader = this.reader;
                                if (tIFFImageReader == null) {
                                    this.reader = new TIFFImageReader(new TIFFImageReaderSpi());
                                } else {
                                    tIFFImageReader.reset();
                                }
                                this.stream.mark();
                                try {
                                    try {
                                        this.stream.seek(this.headerPosition);
                                        this.reader.setInput(this.stream);
                                        this.imageMetadata = this.replacePixelsMetadata;
                                        this.param = defaultWriteParam;
                                        SampleModel sampleModel = renderedImage.getSampleModel();
                                        ColorModel colorModel2 = renderedImage.getColorModel();
                                        this.numBands = sampleModel.getNumBands();
                                        RenderedImage renderedImage2 = renderedImage;
                                        this.imageType = new ImageTypeSpecifier(renderedImage2);
                                        this.periodX = defaultWriteParam.getSourceXSubsampling();
                                        this.periodY = defaultWriteParam.getSourceYSubsampling();
                                        this.sourceBands = null;
                                        int[] sourceBands2 = defaultWriteParam.getSourceBands();
                                        if (sourceBands2 != null) {
                                            this.sourceBands = sourceBands2;
                                            iArr = sourceBands;
                                            this.numBands = iArr.length;
                                        } else {
                                            iArr = sourceBands;
                                        }
                                        setupMetadata(colorModel2, sampleModel, this.reader.getWidth(this.replacePixelsIndex), this.reader.getHeight(this.replacePixelsIndex));
                                        initializeScaleTables(sampleModel.getSampleSize());
                                        boolean isBinary = ImageUtil.isBinary(renderedImage.getSampleModel());
                                        this.isBilevel = isBinary;
                                        int i23 = this.nativePhotometricInterpretation;
                                        boolean z = (i23 == 1 && this.photometricInterpretation == 0) || (i23 == 0 && this.photometricInterpretation == 1);
                                        this.isInverted = z;
                                        this.isImageSimple = (isBinary || (!z && ImageUtil.imageIsContiguous(renderedImage))) && !this.isRescaling && iArr == null && this.periodX == 1 && this.periodY == 1 && this.colorConverter == null;
                                        int XToTileX = XToTileX(intersection.f97732x, 0, this.tileWidth);
                                        int YToTileY = YToTileY(intersection.f97733y, 0, this.tileLength);
                                        int XToTileX2 = XToTileX((intersection.f97732x + intersection.width) - 1, 0, this.tileWidth);
                                        ColorModel colorModel3 = colorModel2;
                                        int YToTileY2 = YToTileY((intersection.f97733y + intersection.height) - 1, 0, this.tileLength);
                                        TIFFNullCompressor tIFFNullCompressor2 = new TIFFNullCompressor();
                                        tIFFNullCompressor2.setWriter(this);
                                        tIFFNullCompressor2.setStream(this.stream);
                                        tIFFNullCompressor2.setMetadata(this.imageMetadata);
                                        Rectangle rectangle3 = new Rectangle();
                                        while (YToTileY <= YToTileY2) {
                                            int i24 = YToTileY2;
                                            int i25 = XToTileX;
                                            while (i25 <= XToTileX2) {
                                                TIFFNullCompressor tIFFNullCompressor3 = tIFFNullCompressor2;
                                                int i26 = (this.tilesAcross * YToTileY) + i25;
                                                boolean z2 = this.replacePixelsByteCounts[i26] == 0;
                                                if (z2) {
                                                    i3 = XToTileX2;
                                                    raster = Raster.createWritableRaster(sampleModel.createCompatibleSampleModel(this.tileWidth, this.tileLength), null);
                                                } else {
                                                    i3 = XToTileX2;
                                                    raster = this.reader.readTile(this.replacePixelsIndex, i25, YToTileY).getRaster();
                                                }
                                                int i27 = i25;
                                                rectangle3.setLocation(this.tileWidth * i25, this.tileLength * YToTileY);
                                                rectangle3.setSize(raster.getWidth(), raster.getHeight());
                                                WritableRaster createWritableTranslatedChild = raster.createWritableTranslatedChild(rectangle3.f97732x, rectangle3.f97733y);
                                                Rectangle intersection2 = rectangle3.intersection(intersection);
                                                int i28 = intersection2.f97732x;
                                                Rectangle rectangle4 = intersection;
                                                int i29 = destinationOffset.f97730x;
                                                int i30 = YToTileY;
                                                int i31 = ((i28 - i29) * i) + i14;
                                                int i32 = ((((((i28 + intersection2.width) - 1) - i29) * i) + i14) - i31) + 1;
                                                int i33 = intersection2.f97733y;
                                                int i34 = destinationOffset.f97731y;
                                                Rectangle rectangle5 = rectangle3;
                                                int i35 = ((i33 - i34) * i2) + i15;
                                                SampleModel sampleModel2 = sampleModel;
                                                Rectangle rectangle6 = new Rectangle(i31, i35, i32, ((((((i33 + intersection2.height) - 1) - i34) * i2) + i15) - i35) + 1);
                                                Raster data = renderedImage2.getData(rectangle6);
                                                if (i == 1 && i2 == 1 && i14 == 0 && i15 == 0) {
                                                    subsample = data.createChild(rectangle6.f97732x, rectangle6.f97733y, rectangle6.width, rectangle6.height, intersection2.f97732x, intersection2.f97733y, iArr);
                                                    iArr2 = iArr;
                                                    point = destinationOffset;
                                                    i6 = i14;
                                                    i10 = i;
                                                    colorModel = colorModel3;
                                                    i7 = i24;
                                                    tIFFNullCompressor = tIFFNullCompressor3;
                                                    i5 = i3;
                                                    i8 = i27;
                                                    i4 = i30;
                                                    writableRaster = createWritableTranslatedChild;
                                                    rectangle = rectangle5;
                                                    i9 = i15;
                                                    i11 = i2;
                                                } else {
                                                    i4 = i30;
                                                    i5 = i3;
                                                    int[] iArr3 = iArr;
                                                    int[] iArr4 = iArr;
                                                    int i36 = i14;
                                                    tIFFNullCompressor = tIFFNullCompressor3;
                                                    i6 = i14;
                                                    i7 = i24;
                                                    i8 = i27;
                                                    writableRaster = createWritableTranslatedChild;
                                                    point = destinationOffset;
                                                    i9 = i15;
                                                    iArr2 = iArr4;
                                                    colorModel = colorModel3;
                                                    i10 = i;
                                                    rectangle = rectangle5;
                                                    i11 = i2;
                                                    subsample = subsample(data, iArr3, i36, i15, i, i2, destinationOffset.f97730x, destinationOffset.f97731y, intersection2);
                                                    if (subsample == null) {
                                                        i25 = i8 + 1;
                                                        renderedImage2 = renderedImage;
                                                        i14 = i6;
                                                        colorModel3 = colorModel;
                                                        tIFFNullCompressor2 = tIFFNullCompressor;
                                                        rectangle3 = rectangle;
                                                        XToTileX2 = i5;
                                                        YToTileY = i4;
                                                        i = i10;
                                                        destinationOffset = point;
                                                        iArr = iArr2;
                                                        i15 = i9;
                                                        i2 = i11;
                                                        intersection = rectangle4;
                                                        sampleModel = sampleModel2;
                                                        i24 = i7;
                                                    }
                                                }
                                                writableRaster.setRect(subsample);
                                                if (z2) {
                                                    this.stream.seek(this.nextSpace);
                                                } else {
                                                    this.stream.seek(this.replacePixelsTileOffsets[i26]);
                                                }
                                                this.image = new SingleTileRenderedImage(writableRaster, colorModel);
                                                int writeTile = writeTile(rectangle, tIFFNullCompressor);
                                                if (z2) {
                                                    this.stream.mark();
                                                    long j = i26 * 4;
                                                    this.stream.seek(this.replacePixelsOffsetsPosition + j);
                                                    this.stream.writeInt((int) this.nextSpace);
                                                    this.stream.seek(this.replacePixelsByteCountsPosition + j);
                                                    this.stream.writeInt(writeTile);
                                                    this.stream.reset();
                                                    this.nextSpace += writeTile;
                                                }
                                                i25 = i8 + 1;
                                                renderedImage2 = renderedImage;
                                                i14 = i6;
                                                colorModel3 = colorModel;
                                                tIFFNullCompressor2 = tIFFNullCompressor;
                                                rectangle3 = rectangle;
                                                XToTileX2 = i5;
                                                YToTileY = i4;
                                                i = i10;
                                                destinationOffset = point;
                                                iArr = iArr2;
                                                i15 = i9;
                                                i2 = i11;
                                                intersection = rectangle4;
                                                sampleModel = sampleModel2;
                                                i24 = i7;
                                            }
                                            YToTileY++;
                                            renderedImage2 = renderedImage;
                                            colorModel3 = colorModel3;
                                            YToTileY2 = i24;
                                            i = i;
                                            intersection = intersection;
                                            sampleModel = sampleModel;
                                        }
                                    } catch (IOException e) {
                                        throw e;
                                    }
                                } finally {
                                    this.stream.reset();
                                }
                            } else {
                                throw new IllegalArgumentException("Backward mapped destination region does not intersect source image!");
                            }
                        } else {
                            throw new IllegalArgumentException("Forward mapped source region does not intersect destination region!");
                        }
                    } else {
                        throw new IIOException("Cannot read destination BitsPerSample");
                    }
                } else {
                    throw new IllegalStateException("No previous call to prepareReplacePixels!");
                }
            } else {
                throw new IllegalArgumentException("image == null!");
            }
        }
    }

    @Override // javax.imageio.ImageWriter
    public void reset() {
        super.reset();
        this.stream = null;
        this.image = null;
        this.imageType = null;
        this.byteOrder = null;
        this.param = null;
        this.compressor = null;
        this.colorConverter = null;
        this.streamMetadata = null;
        this.imageMetadata = null;
        this.isRescaling = false;
        this.isWritingSequence = false;
        this.isWritingEmpty = false;
        this.isInsertingEmpty = false;
        this.replacePixelsIndex = -1;
        this.replacePixelsMetadata = null;
        this.replacePixelsTileOffsets = null;
        this.replacePixelsByteCounts = null;
        this.replacePixelsOffsetsPosition = 0L;
        this.replacePixelsByteCountsPosition = 0L;
        this.replacePixelsRegion = null;
        this.inReplacePixelsNest = false;
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageOutputStream)) {
                throw new IllegalArgumentException("output not an ImageOutputStream!");
            }
            reset();
            ImageOutputStream imageOutputStream = (ImageOutputStream) obj;
            this.stream = imageOutputStream;
            try {
                this.headerPosition = imageOutputStream.getStreamPosition();
                try {
                    byte[] bArr = new byte[4];
                    this.stream.readFully(bArr);
                    byte b = bArr[0];
                    if ((b == 73 && bArr[1] == 73 && bArr[2] == 42 && bArr[3] == 0) || (b == 77 && bArr[1] == 77 && bArr[2] == 0 && bArr[3] == 42)) {
                        this.nextSpace = this.stream.length();
                    } else {
                        this.nextSpace = this.headerPosition;
                    }
                } catch (IOException unused) {
                    this.nextSpace = this.headerPosition;
                }
                this.stream.seek(this.headerPosition);
            } catch (IOException unused2) {
                this.headerPosition = 0L;
                this.nextSpace = 0L;
            }
        }
        super.setOutput(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:365:0x01d4, code lost:
    
        if (com.sun.imageio.plugins.tiff.TIFFImageWriter.EXIF_JPEG_COMPRESSION_TYPE.equals(r27.param.getCompressionType()) != false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0171, code lost:
    
        if (r7 != 2) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01bf, code lost:
    
        if (r3 != 6) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01c3, code lost:
    
        if (r2 == r6) goto L129;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0631 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x073f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x07e4  */
    /* JADX WARN: Removed duplicated region for block: B:233:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0595 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x05b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0351 A[LOOP:0: B:87:0x034f->B:88:0x0351, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x038d A[LOOP:1: B:94:0x0388->B:96:0x038d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0395 A[EDGE_INSN: B:97:0x0395->B:98:0x0395 BREAK  A[LOOP:1: B:94:0x0388->B:96:0x038d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setupMetadata(java.awt.image.ColorModel r28, java.awt.image.SampleModel r29, int r30, int r31) throws javax.imageio.IIOException {
        /*
            Method dump skipped, instructions count: 2536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageWriter.setupMetadata(java.awt.image.ColorModel, java.awt.image.SampleModel, int, int):void");
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        if (this.stream != null) {
            markPositions();
            write(iIOMetadata, iIOImage, imageWriteParam, true, true);
            if (abortRequested()) {
                resetPositions();
                return;
            }
            return;
        }
        throw new IllegalStateException("output == null!");
    }

    @Override // javax.imageio.ImageWriter
    public void writeInsert(int i, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        int i2 = this.currentImage;
        try {
            try {
                insert(i, iIOImage, imageWriteParam, true);
            } catch (Exception e) {
                throw e;
            }
        } finally {
            this.currentImage = i2;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        if (!this.isWritingSequence) {
            throw new IllegalStateException("prepareWriteSequence() has not been called!");
        }
        writeInsert(-1, iIOImage, imageWriteParam);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x00e6, code lost:
    
        if (r2.getNumComponents() == r17.numBands) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void write(javax.imageio.metadata.IIOMetadata r18, javax.imageio.IIOImage r19, javax.imageio.ImageWriteParam r20, boolean r21, boolean r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageWriter.write(javax.imageio.metadata.IIOMetadata, javax.imageio.IIOImage, javax.imageio.ImageWriteParam, boolean, boolean):void");
    }

    @Override // javax.imageio.ImageWriter
    public void replacePixels(Raster raster, ImageWriteParam imageWriteParam) throws IOException {
        if (raster != null) {
            replacePixels(new SingleTileRenderedImage(raster, this.image.getColorModel()), imageWriteParam);
            return;
        }
        throw new NullPointerException("raster == null!");
    }
}
