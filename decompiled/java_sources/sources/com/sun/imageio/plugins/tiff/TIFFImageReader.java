package com.sun.imageio.plugins.tiff;

import com.google.android.material.motion.MotionUtils;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.tiff.BaselineTIFFTagSet;
import javax.imageio.plugins.tiff.TIFFField;
import javax.imageio.plugins.tiff.TIFFImageReadParam;
import javax.imageio.plugins.tiff.TIFFTagSet;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class TIFFImageReader extends ImageReader {
    private static final int BITS_PER_SAMPLE_MAX = 64;
    private static final int SAMPLES_PER_PIXEL_MAX = 1024;
    private int[] bitsPerSample;
    private char[] colorMap;
    private int compression;
    private int currIndex;
    private TIFFDecompressor decompressor;
    private int[] destinationBands;
    private int dstHeight;
    private int dstMinX;
    private int dstMinY;
    private int dstWidth;
    private int dstXOffset;
    private int dstYOffset;
    private int[] extraSamples;
    private boolean gotHeader;
    private int height;
    private TIFFImageMetadata imageMetadata;
    private ImageReadParam imageReadParam;
    private List<Long> imageStartPosition;
    private HashMap<Integer, List<ImageTypeSpecifier>> imageTypeMap;
    private int numBands;
    private int numImages;
    private int photometricInterpretation;
    private int pixelsRead;
    private int pixelsToRead;
    private int planarConfiguration;
    private int[] sampleFormat;
    private int samplesPerPixel;
    private int[] sourceBands;
    private int sourceXOffset;
    private int sourceYOffset;
    private int srcXSubsampling;
    private int srcYSubsampling;
    private ImageInputStream stream;
    private TIFFStreamMetadata streamMetadata;
    private BufferedImage theImage;
    private int tileOrStripHeight;
    private int tileOrStripWidth;
    private int tilesAcross;
    private int tilesDown;
    private int width;

    public TIFFImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.stream = null;
        this.gotHeader = false;
        this.imageReadParam = getDefaultReadParam();
        this.streamMetadata = null;
        this.currIndex = -1;
        this.imageMetadata = null;
        this.imageStartPosition = new ArrayList();
        this.numImages = -1;
        this.imageTypeMap = new HashMap<>();
        this.theImage = null;
        this.width = -1;
        this.height = -1;
        this.numBands = -1;
        this.tileOrStripWidth = -1;
        this.tileOrStripHeight = -1;
        this.planarConfiguration = 1;
    }

    private void checkIndex(int i) {
        if (i < this.minIndex) {
            throw new IndexOutOfBoundsException("imageIndex < minIndex!");
        }
        if (this.seekForwardOnly) {
            this.minIndex = i;
        }
    }

    private void decodeTile(int i, int i2, int i3) throws IOException {
        int i4;
        int i5 = this.tileOrStripWidth;
        int i6 = this.tileOrStripHeight;
        Rectangle rectangle = new Rectangle(i * i5, i2 * i6, i5, i6);
        if (!isImageTiled(this.currIndex)) {
            rectangle = rectangle.intersection(new Rectangle(0, 0, this.width, this.height));
        }
        int i7 = rectangle.width;
        if (i7 <= 0 || (i4 = rectangle.height) <= 0) {
            return;
        }
        int i8 = rectangle.f97732x;
        int i9 = rectangle.f97733y;
        this.dstMinX = iceil(i8 - this.sourceXOffset, this.srcXSubsampling);
        int ifloor = ifloor(((i8 + i7) - 1) - this.sourceXOffset, this.srcXSubsampling);
        this.dstMinY = iceil(i9 - this.sourceYOffset, this.srcYSubsampling);
        int ifloor2 = ifloor(((i9 + i4) - 1) - this.sourceYOffset, this.srcYSubsampling);
        int i10 = this.dstMinX;
        this.dstWidth = (ifloor - i10) + 1;
        int i11 = this.dstMinY;
        this.dstHeight = (ifloor2 - i11) + 1;
        this.dstMinX = i10 + this.dstXOffset;
        this.dstMinY = i11 + this.dstYOffset;
        Rectangle intersection = new Rectangle(this.dstMinX, this.dstMinY, this.dstWidth, this.dstHeight).intersection(this.theImage.getRaster().getBounds());
        int i12 = intersection.f97732x;
        this.dstMinX = i12;
        int i13 = intersection.f97733y;
        this.dstMinY = i13;
        int i14 = intersection.width;
        this.dstWidth = i14;
        int i15 = intersection.height;
        this.dstHeight = i15;
        if (i14 <= 0 || i15 <= 0) {
            return;
        }
        int i16 = this.dstXOffset;
        int i17 = this.srcXSubsampling;
        int i18 = this.sourceXOffset;
        int i19 = ((i12 - i16) * i17) + i18;
        int i20 = ((((((i12 + i14) - 1) - i16) * i17) + i18) - i19) + 1;
        int i21 = this.dstYOffset;
        int i22 = this.srcYSubsampling;
        int i23 = this.sourceYOffset;
        int i24 = ((i13 - i21) * i22) + i23;
        this.decompressor.setSrcMinX(i8);
        this.decompressor.setSrcMinY(i9);
        this.decompressor.setSrcWidth(i7);
        this.decompressor.setSrcHeight(i4);
        this.decompressor.setDstMinX(this.dstMinX);
        this.decompressor.setDstMinY(this.dstMinY);
        this.decompressor.setDstWidth(this.dstWidth);
        this.decompressor.setDstHeight(this.dstHeight);
        this.decompressor.setActiveSrcMinX(i19);
        this.decompressor.setActiveSrcMinY(i24);
        this.decompressor.setActiveSrcWidth(i20);
        this.decompressor.setActiveSrcHeight(((((((i13 + i15) - 1) - i21) * i22) + i23) - i24) + 1);
        int i25 = this.tilesAcross;
        int i26 = (i2 * i25) + i;
        if (this.planarConfiguration == 2) {
            i26 += i25 * i3 * this.tilesDown;
        }
        long tileOrStripOffset = getTileOrStripOffset(i26);
        long tileOrStripByteCount = getTileOrStripByteCount(i26);
        this.decompressor.setPlanarBand(i3);
        this.decompressor.setStream(this.stream);
        this.decompressor.setOffset(tileOrStripOffset);
        this.decompressor.setByteCount((int) tileOrStripByteCount);
        this.decompressor.beginDecoding();
        this.stream.mark();
        this.decompressor.decode();
        this.stream.reset();
    }

    private int getCompression() {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(259);
        if (tIFFField == null) {
            return 1;
        }
        return tIFFField.getAsInt(0);
    }

    private int getHeight() {
        return this.height;
    }

    private int getPlanarConfiguration() {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(284);
        if (tIFFField == null) {
            return 1;
        }
        int asInt = tIFFField.getAsInt(0);
        if (asInt == 2) {
            if (getCompression() == 6 && this.imageMetadata.getTIFFField(513) != null) {
                processWarningOccurred("PlanarConfiguration \"Planar\" value inconsistent with JPEGInterchangeFormat; resetting to \"Chunky\".");
                return 1;
            }
            TIFFField tIFFField2 = this.imageMetadata.getTIFFField(324);
            if (tIFFField2 == null) {
                TIFFField tIFFField3 = this.imageMetadata.getTIFFField(273);
                int tileOrStripWidth = getTileOrStripWidth();
                int tileOrStripHeight = getTileOrStripHeight();
                int width = (((getWidth() + tileOrStripWidth) - 1) / tileOrStripWidth) * (((getHeight() + tileOrStripHeight) - 1) / tileOrStripHeight);
                long[] asLongs = tIFFField3.getAsLongs();
                if (asLongs != null && asLongs.length == width) {
                    processWarningOccurred("PlanarConfiguration \"Planar\" value inconsistent with TileOffsets field value count; resetting to \"Chunky\".");
                    return 1;
                }
            } else {
                int tileOrStripHeight2 = getTileOrStripHeight();
                int height = ((getHeight() + tileOrStripHeight2) - 1) / tileOrStripHeight2;
                long[] asLongs2 = tIFFField2.getAsLongs();
                if (asLongs2 != null && asLongs2.length == height) {
                    processWarningOccurred("PlanarConfiguration \"Planar\" value inconsistent with StripOffsets field value count; resetting to \"Chunky\".");
                    return 1;
                }
            }
        }
        return asInt;
    }

    private long getTileOrStripByteCount(int i) throws IOException {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(325);
        if (tIFFField == null) {
            tIFFField = this.imageMetadata.getTIFFField(279);
        }
        if (tIFFField == null) {
            tIFFField = this.imageMetadata.getTIFFField(514);
        }
        if (tIFFField != null) {
            return tIFFField.getAsLong(i);
        }
        processWarningOccurred("TIFF directory contains neither StripByteCounts nor TileByteCounts field: attempting to calculate from strip or tile width and height.");
        int i2 = this.bitsPerSample[0];
        for (int i3 = 1; i3 < this.samplesPerPixel; i3++) {
            i2 += this.bitsPerSample[i3];
        }
        long tileOrStripWidth = (((getTileOrStripWidth() * i2) + 7) / 8) * getTileOrStripHeight();
        long length = this.stream.length();
        if (length != -1) {
            return Math.min(tileOrStripWidth, length - getTileOrStripOffset(i));
        }
        processWarningOccurred("Stream length is unknown: cannot clamp estimated strip or tile byte count to EOF.");
        return tileOrStripWidth;
    }

    private int getTileOrStripHeight() {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(323);
        if (tIFFField != null) {
            return tIFFField.getAsInt(0);
        }
        TIFFField tIFFField2 = this.imageMetadata.getTIFFField(278);
        int asInt = tIFFField2 == null ? -1 : tIFFField2.getAsInt(0);
        return asInt == -1 ? getHeight() : asInt;
    }

    private long getTileOrStripOffset(int i) throws IIOException {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(324);
        if (tIFFField == null) {
            tIFFField = this.imageMetadata.getTIFFField(273);
        }
        if (tIFFField == null) {
            tIFFField = this.imageMetadata.getTIFFField(513);
        }
        if (tIFFField != null) {
            return tIFFField.getAsLong(i);
        }
        throw new IIOException("Missing required strip or tile offsets field.");
    }

    private int getTileOrStripWidth() {
        TIFFField tIFFField = this.imageMetadata.getTIFFField(322);
        return tIFFField == null ? getWidth() : tIFFField.getAsInt(0);
    }

    private int getWidth() {
        return this.width;
    }

    private static int iceil(int i, int i2) {
        if (i > 0) {
            i += i2 - 1;
        }
        return i / i2;
    }

    private static int ifloor(int i, int i2) {
        if (i < 0) {
            i -= i2 - 1;
        }
        return i / i2;
    }

    private void initializeFromMetadata() throws IIOException {
        boolean z;
        int i;
        int i2;
        boolean z2;
        TIFFField tIFFField;
        Iterator<ImageReader> imageReadersByFormatName;
        TIFFField tIFFField2 = this.imageMetadata.getTIFFField(259);
        boolean z3 = true;
        if (tIFFField2 == null) {
            processWarningOccurred("Compression field is missing; assuming no compression");
            this.compression = 1;
        } else {
            this.compression = tIFFField2.getAsInt(0);
        }
        TIFFField tIFFField3 = this.imageMetadata.getTIFFField(256);
        if (tIFFField3 != null) {
            this.width = tIFFField3.getAsInt(0);
            z = false;
        } else {
            processWarningOccurred("ImageWidth field is missing.");
            z = true;
        }
        TIFFField tIFFField4 = this.imageMetadata.getTIFFField(257);
        if (tIFFField4 != null) {
            this.height = tIFFField4.getAsInt(0);
        } else {
            processWarningOccurred("ImageLength field is missing.");
            z = true;
        }
        TIFFField tIFFField5 = this.imageMetadata.getTIFFField(277);
        if (tIFFField5 != null) {
            this.samplesPerPixel = tIFFField5.getAsInt(0);
        } else {
            this.samplesPerPixel = 1;
            z = true;
        }
        if (!z || (tIFFField = this.imageMetadata.getTIFFField(513)) == null || (imageReadersByFormatName = ImageIO.getImageReadersByFormatName("JPEG")) == null || !imageReadersByFormatName.hasNext()) {
            i = 1;
        } else {
            ImageReader next = imageReadersByFormatName.next();
            try {
                this.stream.mark();
                this.stream.seek(tIFFField.getAsLong(0));
                next.setInput(this.stream);
                if (this.imageMetadata.getTIFFField(256) == null) {
                    this.width = next.getWidth(0);
                }
                if (this.imageMetadata.getTIFFField(257) == null) {
                    this.height = next.getHeight(0);
                }
                ImageTypeSpecifier rawImageType = next.getRawImageType(0);
                if (this.imageMetadata.getTIFFField(277) == null) {
                    this.samplesPerPixel = rawImageType != null ? rawImageType.getSampleModel().getNumBands() : 3;
                }
                this.stream.reset();
                i = rawImageType != null ? rawImageType.getColorModel().getComponentSize(0) : 8;
            } catch (IOException unused) {
                i = 1;
            }
            next.dispose();
        }
        int i3 = this.samplesPerPixel;
        if (i3 < 1) {
            throw new IIOException("Samples per pixel < 1!");
        }
        if (i3 > 1024) {
            throw new IIOException("Samples per pixel (" + this.samplesPerPixel + ") greater than allowed maximum (1024" + MotionUtils.f31762d);
        }
        this.numBands = i3;
        this.colorMap = null;
        TIFFField tIFFField6 = this.imageMetadata.getTIFFField(320);
        if (tIFFField6 != null) {
            this.colorMap = tIFFField6.getAsChars();
        }
        TIFFField tIFFField7 = this.imageMetadata.getTIFFField(262);
        if (tIFFField7 == null) {
            int i4 = this.compression;
            if (i4 == 2 || i4 == 3 || i4 == 4) {
                processWarningOccurred("PhotometricInterpretation field is missing; assuming WhiteIsZero");
                this.photometricInterpretation = 0;
            } else if (this.colorMap != null) {
                this.photometricInterpretation = 3;
            } else {
                int i5 = this.samplesPerPixel;
                if (i5 == 3 || i5 == 4) {
                    this.photometricInterpretation = 2;
                } else {
                    processWarningOccurred("PhotometricInterpretation field is missing; assuming BlackIsZero");
                    this.photometricInterpretation = 1;
                }
            }
        } else {
            this.photometricInterpretation = tIFFField7.getAsInt(0);
        }
        TIFFField tIFFField8 = this.imageMetadata.getTIFFField(339);
        this.sampleFormat = new int[this.samplesPerPixel];
        if (tIFFField8 == null) {
            z2 = true;
            i2 = 4;
        } else if (tIFFField8.getCount() != this.samplesPerPixel) {
            i2 = tIFFField8.getAsInt(0);
            z2 = true;
        } else {
            i2 = -1;
            z2 = false;
        }
        for (int i6 = 0; i6 < this.samplesPerPixel; i6++) {
            this.sampleFormat[i6] = z2 ? i2 : tIFFField8.getAsInt(i6);
            int i7 = this.sampleFormat[i6];
            if (i7 != 1 && i7 != 2 && i7 != 3 && i7 != 4) {
                processWarningOccurred("Illegal value for SAMPLE_FORMAT, assuming SAMPLE_FORMAT_UNDEFINED");
                this.sampleFormat[i6] = 4;
            }
        }
        TIFFField tIFFField9 = this.imageMetadata.getTIFFField(258);
        this.bitsPerSample = new int[this.samplesPerPixel];
        if (tIFFField9 != null) {
            if (tIFFField9.getCount() != this.samplesPerPixel) {
                i = tIFFField9.getAsInt(0);
            } else {
                z3 = false;
                i = i2;
            }
        }
        for (int i8 = 0; i8 < this.samplesPerPixel; i8++) {
            this.bitsPerSample[i8] = z3 ? i : tIFFField9.getAsInt(i8);
            if (this.bitsPerSample[i8] > 64) {
                throw new IIOException("Bits per sample (" + this.bitsPerSample[i8] + ") greater than allowed maximum (64" + MotionUtils.f31762d);
            }
        }
        this.extraSamples = null;
        TIFFField tIFFField10 = this.imageMetadata.getTIFFField(338);
        if (tIFFField10 != null) {
            this.extraSamples = tIFFField10.getAsInts();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        if (r0 <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        r0 = r0 - 1;
        r7 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int locateImage(int r7) throws javax.imageio.IIOException {
        /*
            r6 = this;
            r6.readHeader()
            java.util.List<java.lang.Long> r0 = r6.imageStartPosition
            int r0 = r0.size()
            int r0 = r0 + (-1)
            int r0 = java.lang.Math.min(r7, r0)
            r1 = 0
            java.util.List<java.lang.Long> r2 = r6.imageStartPosition     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            java.lang.Object r2 = r2.get(r0)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            javax.imageio.stream.ImageInputStream r3 = r6.stream     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            long r4 = r2.longValue()     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            r3.seek(r4)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
        L21:
            if (r0 >= r7) goto L79
            javax.imageio.stream.ImageInputStream r2 = r6.stream     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            int r2 = r2.readUnsignedShort()     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            if (r2 != 0) goto L31
            if (r0 <= 0) goto L78
            int r0 = r0 + (-1)
            r7 = r0
            goto L79
        L31:
            javax.imageio.stream.ImageInputStream r3 = r6.stream     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            int r2 = r2 * 12
            r3.skipBytes(r2)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            javax.imageio.stream.ImageInputStream r2 = r6.stream     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            long r2 = r2.readUnsignedInt()     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            r4 = 0
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 != 0) goto L45
            return r0
        L45:
            javax.imageio.stream.ImageInputStream r4 = r6.stream     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            r4.seek(r2)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            java.util.List<java.lang.Long> r4 = r6.imageStartPosition     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            r4.add(r2)     // Catch: java.io.IOException -> L56 java.io.EOFException -> L5f
            int r0 = r0 + 1
            goto L21
        L56:
            r6 = move-exception
            javax.imageio.IIOException r7 = new javax.imageio.IIOException
            java.lang.String r0 = "Couldn't seek!"
            r7.<init>(r0, r6)
            throw r7
        L5f:
            r7 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Ignored "
            r2.append(r3)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            r6.forwardWarningMessage(r7)
            if (r0 <= 0) goto L78
            int r1 = r0 + (-1)
        L78:
            r7 = r1
        L79:
            int r0 = r6.currIndex
            if (r0 == r7) goto L80
            r0 = 0
            r6.imageMetadata = r0
        L80:
            r6.currIndex = r7
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageReader.locateImage(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
    
        throw new java.lang.IllegalArgumentException("Destination band out of range!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0091, code lost:
    
        throw new java.lang.IllegalArgumentException("Source band out of range!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void prepareRead(int r4, javax.imageio.ImageReadParam r5) throws java.io.IOException {
        /*
            r3 = this;
            javax.imageio.stream.ImageInputStream r0 = r3.stream
            if (r0 == 0) goto L9b
            if (r5 != 0) goto La
            javax.imageio.ImageReadParam r5 = r3.getDefaultReadParam()
        La:
            r3.imageReadParam = r5
            r3.seekToImage(r4)
            int r0 = r3.getTileOrStripWidth()
            r3.tileOrStripWidth = r0
            int r0 = r3.getTileOrStripHeight()
            r3.tileOrStripHeight = r0
            int r0 = r3.getPlanarConfiguration()
            r3.planarConfiguration = r0
            int[] r0 = r5.getSourceBands()
            r3.sourceBands = r0
            r1 = 0
            if (r0 != 0) goto L3c
            int r0 = r3.numBands
            int[] r0 = new int[r0]
            r3.sourceBands = r0
            r0 = r1
        L31:
            int r2 = r3.numBands
            if (r0 >= r2) goto L3c
            int[] r2 = r3.sourceBands
            r2[r0] = r0
            int r0 = r0 + 1
            goto L31
        L3c:
            java.util.Iterator r4 = r3.getImageTypes(r4)
            javax.imageio.ImageTypeSpecifier r4 = com.sun.imageio.plugins.common.ImageUtil.getDestinationType(r5, r4)
            java.awt.image.SampleModel r4 = r4.getSampleModel()
            int r4 = r4.getNumBands()
            int[] r5 = r5.getDestinationBands()
            r3.destinationBands = r5
            if (r5 != 0) goto L62
            int[] r5 = new int[r4]
            r3.destinationBands = r5
            r5 = r1
        L59:
            if (r5 >= r4) goto L62
            int[] r0 = r3.destinationBands
            r0[r5] = r5
            int r5 = r5 + 1
            goto L59
        L62:
            int[] r5 = r3.sourceBands
            int r5 = r5.length
            int[] r0 = r3.destinationBands
            int r0 = r0.length
            if (r5 != r0) goto L93
        L6a:
            int[] r5 = r3.sourceBands
            int r0 = r5.length
            if (r1 >= r0) goto L92
            r5 = r5[r1]
            if (r5 < 0) goto L8a
            int r0 = r3.numBands
            if (r5 >= r0) goto L8a
            int[] r5 = r3.destinationBands
            r5 = r5[r1]
            if (r5 < 0) goto L82
            if (r5 >= r4) goto L82
            int r1 = r1 + 1
            goto L6a
        L82:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Destination band out of range!"
            r3.<init>(r4)
            throw r3
        L8a:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Source band out of range!"
            r3.<init>(r4)
            throw r3
        L92:
            return
        L93:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "sourceBands.length != destinationBands.length"
            r3.<init>(r4)
            throw r3
        L9b:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "Input not set!"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageReader.prepareRead(int, javax.imageio.ImageReadParam):void");
    }

    private void readHeader() throws IIOException {
        if (this.gotHeader) {
            return;
        }
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        this.streamMetadata = new TIFFStreamMetadata();
        try {
            int readUnsignedShort = this.stream.readUnsignedShort();
            if (readUnsignedShort == 19789) {
                TIFFStreamMetadata tIFFStreamMetadata = this.streamMetadata;
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                tIFFStreamMetadata.byteOrder = byteOrder;
                this.stream.setByteOrder(byteOrder);
            } else if (readUnsignedShort == 18761) {
                TIFFStreamMetadata tIFFStreamMetadata2 = this.streamMetadata;
                ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
                tIFFStreamMetadata2.byteOrder = byteOrder2;
                this.stream.setByteOrder(byteOrder2);
            } else {
                processWarningOccurred("Bad byte order in header, assuming little-endian");
                TIFFStreamMetadata tIFFStreamMetadata3 = this.streamMetadata;
                ByteOrder byteOrder3 = ByteOrder.LITTLE_ENDIAN;
                tIFFStreamMetadata3.byteOrder = byteOrder3;
                this.stream.setByteOrder(byteOrder3);
            }
            if (this.stream.readUnsignedShort() != 42) {
                processWarningOccurred("Bad magic number in header, continuing");
            }
            long readUnsignedInt = this.stream.readUnsignedInt();
            this.stream.seek(readUnsignedInt);
            this.imageStartPosition.add(Long.valueOf(readUnsignedInt));
            this.gotHeader = true;
        } catch (IOException e) {
            throw new IIOException("I/O error reading header!", e);
        }
    }

    private void readMetadata() throws IIOException {
        List<TIFFTagSet> arrayList;
        boolean z;
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        if (this.imageMetadata != null) {
            return;
        }
        try {
            ImageReadParam imageReadParam = this.imageReadParam;
            if (imageReadParam instanceof TIFFImageReadParam) {
                TIFFImageReadParam tIFFImageReadParam = (TIFFImageReadParam) imageReadParam;
                arrayList = tIFFImageReadParam.getAllowedTagSets();
                z = tIFFImageReadParam.getReadUnknownTags();
            } else {
                arrayList = new ArrayList<>(1);
                arrayList.add(BaselineTIFFTagSet.getInstance());
                z = false;
            }
            TIFFImageMetadata tIFFImageMetadata = new TIFFImageMetadata(arrayList);
            this.imageMetadata = tIFFImageMetadata;
            tIFFImageMetadata.initializeFromStream(this.stream, this.ignoreMetadata, z);
        } catch (IIOException e) {
            throw e;
        } catch (IOException e2) {
            throw new IIOException("I/O error reading image metadata!", e2);
        }
    }

    private void reportProgress() {
        int i = this.pixelsRead + (this.dstWidth * this.dstHeight);
        this.pixelsRead = i;
        processImageProgress((i * 100.0f) / this.pixelsToRead);
        processImageUpdate(this.theImage, this.dstMinX, this.dstMinY, this.dstWidth, this.dstHeight, 1, 1, this.destinationBands);
    }

    private void seekToImage(int i) throws IIOException {
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException("imageIndex out of bounds!");
        }
        readMetadata();
        initializeFromMetadata();
    }

    @Override // javax.imageio.ImageReader
    public boolean canReadRaster() {
        return false;
    }

    public void forwardWarningMessage(String str) {
        processWarningOccurred(str);
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return new TIFFImageReadParam();
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IIOException {
        seekToImage(i);
        TIFFImageMetadata tIFFImageMetadata = new TIFFImageMetadata(this.imageMetadata.getRootIFD().getTagSetList());
        tIFFImageMetadata.setFromTree(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME, this.imageMetadata.getAsTree(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME));
        return tIFFImageMetadata;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    @Override // javax.imageio.ImageReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Iterator<javax.imageio.ImageTypeSpecifier> getImageTypes(int r19) throws javax.imageio.IIOException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFImageReader.getImageTypes(int):java.util.Iterator");
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        if (this.seekForwardOnly && z) {
            throw new IllegalStateException("seekForwardOnly and allowSearch can't both be true!");
        }
        int i = this.numImages;
        if (i > 0) {
            return i;
        }
        if (z) {
            this.numImages = locateImage(Integer.MAX_VALUE) + 1;
        }
        return this.numImages;
    }

    @Override // javax.imageio.ImageReader
    public int getNumThumbnails(int i) throws IOException {
        return 0;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IIOException {
        readHeader();
        return this.streamMetadata;
    }

    @Override // javax.imageio.ImageReader
    public int getTileHeight(int i) throws IOException {
        seekToImage(i);
        return getTileOrStripHeight();
    }

    @Override // javax.imageio.ImageReader
    public int getTileWidth(int i) throws IOException {
        seekToImage(i);
        return getTileOrStripWidth();
    }

    @Override // javax.imageio.ImageReader
    public boolean hasThumbnails(int i) {
        return false;
    }

    @Override // javax.imageio.ImageReader
    public boolean isImageTiled(int i) throws IOException {
        seekToImage(i);
        return this.imageMetadata.getTIFFField(322) != null;
    }

    @Override // javax.imageio.ImageReader
    public boolean isRandomAccessEasy(int i) throws IOException {
        int i2 = this.currIndex;
        if (i2 == -1) {
            return false;
        }
        seekToImage(i2);
        return getCompression() == 1;
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IOException {
        prepareRead(i, imageReadParam);
        this.theImage = ImageReader.getDestination(imageReadParam, getImageTypes(i), this.width, this.height);
        this.srcXSubsampling = this.imageReadParam.getSourceXSubsampling();
        this.srcYSubsampling = this.imageReadParam.getSourceYSubsampling();
        Point destinationOffset = this.imageReadParam.getDestinationOffset();
        this.dstXOffset = destinationOffset.f97730x;
        this.dstYOffset = destinationOffset.f97731y;
        Rectangle rectangle = new Rectangle(0, 0, 0, 0);
        Rectangle rectangle2 = new Rectangle(0, 0, 0, 0);
        ImageReader.computeRegions(this.imageReadParam, this.width, this.height, this.theImage, rectangle, rectangle2);
        this.sourceXOffset = rectangle.f97732x;
        this.sourceYOffset = rectangle.f97733y;
        this.pixelsToRead = rectangle2.width * rectangle2.height;
        this.pixelsRead = 0;
        clearAbortRequest();
        processImageStarted(i);
        if (abortRequested()) {
            processReadAborted();
            return this.theImage;
        }
        int i2 = this.width;
        int i3 = this.tileOrStripWidth;
        this.tilesAcross = ((i2 + i3) - 1) / i3;
        int i4 = this.height;
        int i5 = this.tileOrStripHeight;
        this.tilesDown = ((i4 + i5) - 1) / i5;
        int compression = getCompression();
        if (compression == 1) {
            TIFFField tIFFField = this.imageMetadata.getTIFFField(266);
            if (tIFFField == null || tIFFField.getAsInt(0) != 2) {
                this.decompressor = new TIFFNullDecompressor();
            } else {
                this.decompressor = new TIFFLSBDecompressor();
            }
        } else if (compression == 4) {
            this.decompressor = new TIFFFaxDecompressor();
        } else if (compression == 3) {
            this.decompressor = new TIFFFaxDecompressor();
        } else if (compression == 2) {
            this.decompressor = new TIFFFaxDecompressor();
        } else if (compression == 32773) {
            this.decompressor = new TIFFPackBitsDecompressor();
        } else if (compression == 5) {
            TIFFField tIFFField2 = this.imageMetadata.getTIFFField(317);
            int asInt = tIFFField2 == null ? 1 : tIFFField2.getAsInt(0);
            TIFFField tIFFField3 = this.imageMetadata.getTIFFField(266);
            this.decompressor = new TIFFLZWDecompressor(asInt, tIFFField3 == null ? 1 : tIFFField3.getAsInt(0));
        } else if (compression == 7) {
            this.decompressor = new TIFFJPEGDecompressor();
        } else if (compression == 8 || compression == 32946) {
            TIFFField tIFFField4 = this.imageMetadata.getTIFFField(317);
            this.decompressor = new TIFFDeflateDecompressor(tIFFField4 == null ? 1 : tIFFField4.getAsInt(0));
        } else {
            if (compression != 6) {
                throw new IIOException("Unsupported compression type (tag value = " + compression + ")!");
            }
            TIFFField tIFFField5 = this.imageMetadata.getTIFFField(512);
            if (tIFFField5 == null) {
                processWarningOccurred("JPEGProc field missing; assuming baseline sequential JPEG process.");
            } else if (tIFFField5.getAsInt(0) != 1) {
                throw new IIOException("Old-style JPEG supported for baseline sequential JPEG process only!");
            }
            this.decompressor = new TIFFOldJPEGDecompressor();
        }
        TIFFColorConverter tIFFColorConverter = null;
        if (this.photometricInterpretation == 6 && compression != 7 && compression != 6) {
            boolean z = this.theImage.getColorModel().getColorSpace().getType() == 5;
            TIFFDecompressor tIFFDecompressor = this.decompressor;
            if (tIFFDecompressor instanceof TIFFNullDecompressor) {
                tIFFDecompressor = null;
            }
            this.decompressor = new TIFFYCbCrDecompressor(tIFFDecompressor, z);
        }
        if (this.photometricInterpretation == 8 && this.theImage.getColorModel().getColorSpace().getType() == 5) {
            tIFFColorConverter = new TIFFCIELabColorConverter();
        } else if (this.photometricInterpretation == 6 && !(this.decompressor instanceof TIFFYCbCrDecompressor) && compression != 7 && compression != 6) {
            tIFFColorConverter = new TIFFYCbCrColorConverter(this.imageMetadata);
        }
        this.decompressor.setReader(this);
        this.decompressor.setMetadata(this.imageMetadata);
        this.decompressor.setImage(this.theImage);
        this.decompressor.setPhotometricInterpretation(this.photometricInterpretation);
        this.decompressor.setCompression(compression);
        this.decompressor.setSamplesPerPixel(this.samplesPerPixel);
        this.decompressor.setBitsPerSample(this.bitsPerSample);
        this.decompressor.setSampleFormat(this.sampleFormat);
        this.decompressor.setExtraSamples(this.extraSamples);
        this.decompressor.setColorMap(this.colorMap);
        this.decompressor.setColorConverter(tIFFColorConverter);
        this.decompressor.setSourceXOffset(this.sourceXOffset);
        this.decompressor.setSourceYOffset(this.sourceYOffset);
        this.decompressor.setSubsampleX(this.srcXSubsampling);
        this.decompressor.setSubsampleY(this.srcYSubsampling);
        this.decompressor.setDstXOffset(this.dstXOffset);
        this.decompressor.setDstYOffset(this.dstYOffset);
        this.decompressor.setSourceBands(this.sourceBands);
        this.decompressor.setDestinationBands(this.destinationBands);
        int XToTileX = TIFFImageWriter.XToTileX(rectangle.f97732x, 0, this.tileOrStripWidth);
        int YToTileY = TIFFImageWriter.YToTileY(rectangle.f97733y, 0, this.tileOrStripHeight);
        int XToTileX2 = TIFFImageWriter.XToTileX((rectangle.f97732x + rectangle.width) - 1, 0, this.tileOrStripWidth);
        int YToTileY2 = TIFFImageWriter.YToTileY((rectangle.f97733y + rectangle.height) - 1, 0, this.tileOrStripHeight);
        if (this.planarConfiguration == 2) {
            this.decompressor.setPlanar(true);
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            while (YToTileY <= YToTileY2) {
                for (int i6 = XToTileX; i6 <= XToTileX2; i6++) {
                    for (int i7 = 0; i7 < this.numBands; i7++) {
                        iArr[0] = this.sourceBands[i7];
                        this.decompressor.setSourceBands(iArr);
                        iArr2[0] = this.destinationBands[i7];
                        this.decompressor.setDestinationBands(iArr2);
                        decodeTile(i6, YToTileY, i7);
                    }
                    reportProgress();
                    if (abortRequested()) {
                        processReadAborted();
                        return this.theImage;
                    }
                }
                YToTileY++;
            }
        } else {
            while (YToTileY <= YToTileY2) {
                for (int i8 = XToTileX; i8 <= XToTileX2; i8++) {
                    decodeTile(i8, YToTileY, -1);
                    reportProgress();
                    if (abortRequested()) {
                        processReadAborted();
                        return this.theImage;
                    }
                }
                YToTileY++;
            }
        }
        processImageComplete();
        return this.theImage;
    }

    @Override // javax.imageio.ImageReader
    public RenderedImage readAsRenderedImage(int i, ImageReadParam imageReadParam) throws IOException {
        prepareRead(i, imageReadParam);
        return new TIFFRenderedImage(this, i, this.imageReadParam, this.width, this.height);
    }

    @Override // javax.imageio.ImageReader
    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        throw new UnsupportedOperationException();
    }

    public boolean readSupportsThumbnails() {
        return false;
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage readTile(int i, int i2, int i3) throws IOException {
        int width = getWidth(i);
        int height = getHeight(i);
        int tileWidth = getTileWidth(i);
        int tileHeight = getTileHeight(i);
        int i4 = tileWidth * i2;
        int i5 = tileHeight * i3;
        if (i2 < 0 || i3 < 0 || i4 >= width || i5 >= height) {
            throw new IllegalArgumentException("Tile indices are out of bounds!");
        }
        if (i4 + tileWidth > width) {
            tileWidth = width - i4;
        }
        if (i5 + tileHeight > height) {
            tileHeight = height - i5;
        }
        ImageReadParam defaultReadParam = getDefaultReadParam();
        defaultReadParam.setSourceRegion(new Rectangle(i4, i5, tileWidth, tileHeight));
        return read(i, defaultReadParam);
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        super.reset();
        resetLocal();
    }

    public void resetLocal() {
        this.stream = null;
        this.gotHeader = false;
        this.imageReadParam = getDefaultReadParam();
        this.streamMetadata = null;
        this.currIndex = -1;
        this.imageMetadata = null;
        this.imageStartPosition = new ArrayList();
        this.numImages = -1;
        this.imageTypeMap = new HashMap<>();
        this.width = -1;
        this.height = -1;
        this.numBands = -1;
        this.tileOrStripWidth = -1;
        this.tileOrStripHeight = -1;
        this.planarConfiguration = 1;
    }

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        super.setInput(obj, z, z2);
        resetLocal();
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageInputStream)) {
                throw new IllegalArgumentException("input not an ImageInputStream!");
            }
            this.stream = (ImageInputStream) obj;
        }
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IOException {
        seekToImage(i);
        return getHeight();
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IOException {
        seekToImage(i);
        return getWidth();
    }

    public IIOMetadata getStreamMetadata(int i) throws IIOException {
        readHeader();
        TIFFStreamMetadata tIFFStreamMetadata = new TIFFStreamMetadata();
        tIFFStreamMetadata.setFromTree("javax_imageio_tiff_stream_1.0", tIFFStreamMetadata.getAsTree("javax_imageio_tiff_stream_1.0"));
        return tIFFStreamMetadata;
    }
}
