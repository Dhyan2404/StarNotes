package com.sun.imageio.plugins.gif;

import com.sun.imageio.plugins.common.ReaderUtil;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class GIFImageReader extends ImageReader {
    int bitPos;
    byte[] block;
    int blockLength;
    int clearCode;
    int currIndex;
    boolean decodeThisRow;
    int destY;
    Point destinationOffset;
    Rectangle destinationRegion;
    int eofCode;
    private byte[] fallbackColorTable;
    boolean gotHeader;
    int height;
    GIFImageMetadata imageMetadata;
    int imageMetadataLength;
    List<Long> imageStartPosition;
    int initCodeSize;
    int interlacePass;
    boolean lastBlockFound;
    int next32Bits;
    int nextByte;
    int numImages;
    byte[] rowBuf;
    int rowsDone;
    int sourceMaxProgressivePass;
    int sourceMinProgressivePass;
    Rectangle sourceRegion;
    int sourceXSubsampling;
    int sourceYSubsampling;
    ImageInputStream stream;
    GIFStreamMetadata streamMetadata;
    int streamX;
    int streamY;
    BufferedImage theImage;
    WritableRaster theTile;
    int updateMinY;
    int updateYStep;
    int width;
    static final int[] interlaceIncrement = {8, 8, 4, 2, -1};
    static final int[] interlaceOffset = {0, 4, 2, 1, -1};
    private static byte[] defaultPalette = null;

    public GIFImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.stream = null;
        this.gotHeader = false;
        this.streamMetadata = null;
        this.currIndex = -1;
        this.imageMetadata = null;
        this.imageStartPosition = new ArrayList();
        this.numImages = -1;
        this.block = new byte[255];
        this.blockLength = 0;
        this.bitPos = 0;
        this.nextByte = 0;
        this.next32Bits = 0;
        this.lastBlockFound = false;
        this.theImage = null;
        this.theTile = null;
        this.width = -1;
        this.height = -1;
        this.streamX = -1;
        this.streamY = -1;
        this.rowsDone = 0;
        this.interlacePass = 0;
        this.fallbackColorTable = null;
        this.decodeThisRow = true;
        this.destY = 0;
    }

    private void checkIndex(int i) {
        if (i < this.minIndex) {
            throw new IndexOutOfBoundsException("imageIndex < minIndex!");
        }
        if (this.seekForwardOnly) {
            this.minIndex = i;
        }
    }

    private void computeDecodeThisRow() {
        int i;
        Rectangle rectangle;
        int i2;
        int i3 = this.destY;
        Rectangle rectangle2 = this.destinationRegion;
        this.decodeThisRow = i3 < rectangle2.f97733y + rectangle2.height && (i = this.streamY) >= (i2 = (rectangle = this.sourceRegion).f97733y) && i < rectangle.height + i2 && (i - i2) % this.sourceYSubsampling == 0;
    }

    private byte[] concatenateBlocks() throws IOException {
        byte[] bArr = new byte[0];
        while (true) {
            int readUnsignedByte = this.stream.readUnsignedByte();
            if (readUnsignedByte == 0) {
                return bArr;
            }
            byte[] bArr2 = new byte[bArr.length + readUnsignedByte];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.stream.readFully(bArr2, bArr.length, readUnsignedByte);
            bArr = bArr2;
        }
    }

    private int copyData(byte[] bArr, int i, byte[] bArr2) {
        int length = bArr2.length;
        int length2 = bArr.length - i;
        if (length > length2) {
            length = length2;
        }
        System.arraycopy(bArr, i, bArr2, 0, length);
        return i + length;
    }

    private ImageTypeSpecifier createIndexed(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        GIFImageMetadata gIFImageMetadata = this.imageMetadata;
        return new ImageTypeSpecifier(gIFImageMetadata.transparentColorFlag ? new IndexColorModel(i, bArr.length, bArr, bArr2, bArr3, Math.min(gIFImageMetadata.transparentColorIndex, bArr.length - 1)) : new IndexColorModel(i, bArr.length, bArr, bArr2, bArr3), i == 8 ? new PixelInterleavedSampleModel(0, 1, 1, 1, 1, new int[]{0}) : new MultiPixelPackedSampleModel(0, 1, 1, i));
    }

    private int getCode(int i, int i2) throws IOException {
        int i3 = this.bitPos;
        if (i3 + i > 32) {
            return this.eofCode;
        }
        int i4 = i2 & (this.next32Bits >> i3);
        this.bitPos = i3 + i;
        while (true) {
            int i5 = this.bitPos;
            if (i5 < 8 || this.lastBlockFound) {
                break;
            }
            this.next32Bits >>>= 8;
            this.bitPos = i5 - 8;
            if (this.nextByte >= this.blockLength) {
                int readUnsignedByte = this.stream.readUnsignedByte();
                this.blockLength = readUnsignedByte;
                if (readUnsignedByte == 0) {
                    this.lastBlockFound = true;
                    return i4;
                }
                int i6 = 0;
                while (readUnsignedByte > 0) {
                    int read = this.stream.read(this.block, i6, readUnsignedByte);
                    if (read == -1) {
                        throw new IIOException("Invalid block length for LZW encoded image data");
                    }
                    i6 += read;
                    readUnsignedByte -= read;
                }
                this.nextByte = 0;
            }
            int i7 = this.next32Bits;
            byte[] bArr = this.block;
            int i8 = this.nextByte;
            this.nextByte = i8 + 1;
            this.next32Bits = i7 | (bArr[i8] << 24);
        }
        return i4;
    }

    private static synchronized byte[] getDefaultPalette() {
        byte[] bArr;
        synchronized (GIFImageReader.class) {
            if (defaultPalette == null) {
                IndexColorModel indexColorModel = (IndexColorModel) new BufferedImage(1, 1, 13).getColorModel();
                int mapSize = indexColorModel.getMapSize();
                byte[] bArr2 = new byte[mapSize];
                byte[] bArr3 = new byte[mapSize];
                byte[] bArr4 = new byte[mapSize];
                indexColorModel.getReds(bArr2);
                indexColorModel.getGreens(bArr3);
                indexColorModel.getBlues(bArr4);
                defaultPalette = new byte[mapSize * 3];
                for (int i = 0; i < mapSize; i++) {
                    byte[] bArr5 = defaultPalette;
                    int i2 = i * 3;
                    bArr5[i2 + 0] = bArr2[i];
                    bArr5[i2 + 1] = bArr3[i];
                    bArr5[i2 + 2] = bArr4[i];
                }
            }
            bArr = defaultPalette;
        }
        return bArr;
    }

    private void initNext32Bits() {
        byte[] bArr = this.block;
        this.next32Bits = (bArr[3] << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        this.nextByte = 4;
    }

    private int locateImage(int i) throws IIOException {
        readHeader();
        try {
            int min = Math.min(i, this.imageStartPosition.size() - 1);
            this.stream.seek(this.imageStartPosition.get(min).longValue());
            while (min < i) {
                if (!skipImage()) {
                    return min - 1;
                }
                this.imageStartPosition.add(Long.valueOf(this.stream.getStreamPosition()));
                min++;
            }
            if (this.currIndex != i) {
                this.imageMetadata = null;
            }
            this.currIndex = i;
            return i;
        } catch (IOException e) {
            throw new IIOException("Couldn't seek!", e);
        }
    }

    private void outputPixels(byte[] bArr, int i) {
        int i2 = this.interlacePass;
        if (i2 < this.sourceMinProgressivePass || i2 > this.sourceMaxProgressivePass) {
            return;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.streamX;
            int i5 = this.sourceRegion.f97732x;
            if (i4 >= i5) {
                this.rowBuf[i4 - i5] = bArr[i3];
            }
            int i6 = i4 + 1;
            this.streamX = i6;
            if (i6 == this.width) {
                int i7 = this.rowsDone + 1;
                this.rowsDone = i7;
                processImageProgress((i7 * 100.0f) / this.height);
                if (abortRequested()) {
                    return;
                }
                if (this.decodeThisRow) {
                    outputRow();
                }
                this.streamX = 0;
                if (this.imageMetadata.interlaceFlag) {
                    int i8 = this.streamY + interlaceIncrement[this.interlacePass];
                    this.streamY = i8;
                    if (i8 >= this.height) {
                        if (this.updateListeners != null) {
                            processPassComplete(this.theImage);
                        }
                        int i9 = this.interlacePass + 1;
                        this.interlacePass = i9;
                        if (i9 > this.sourceMaxProgressivePass) {
                            return;
                        }
                        this.streamY = interlaceOffset[i9];
                        startPass(i9);
                    }
                } else {
                    this.streamY++;
                }
                this.destY = this.destinationRegion.f97733y + ((this.streamY - this.sourceRegion.f97733y) / this.sourceYSubsampling);
                computeDecodeThisRow();
            }
        }
    }

    private void outputRow() {
        int min = Math.min(this.sourceRegion.width, this.destinationRegion.width * this.sourceXSubsampling);
        int i = this.destinationRegion.f97732x;
        if (this.sourceXSubsampling == 1) {
            this.theTile.setDataElements(i, this.destY, min, 1, this.rowBuf);
        } else {
            int i2 = 0;
            while (i2 < min) {
                this.theTile.setSample(i, this.destY, 0, this.rowBuf[i2] & 255);
                i2 += this.sourceXSubsampling;
                i++;
            }
        }
        int i3 = i;
        if (this.updateListeners != null) {
            processImageUpdate(this.theImage, i3, this.destY, min, 1, 1, this.updateYStep, new int[]{0});
        }
    }

    private void readHeader() throws IIOException {
        if (this.gotHeader) {
            return;
        }
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        this.streamMetadata = new GIFStreamMetadata();
        try {
            this.stream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
            byte[] bArr = new byte[6];
            this.stream.readFully(bArr);
            StringBuilder sb = new StringBuilder(3);
            sb.append((char) bArr[3]);
            sb.append((char) bArr[4]);
            sb.append((char) bArr[5]);
            this.streamMetadata.version = sb.toString();
            this.streamMetadata.logicalScreenWidth = this.stream.readUnsignedShort();
            this.streamMetadata.logicalScreenHeight = this.stream.readUnsignedShort();
            int readUnsignedByte = this.stream.readUnsignedByte();
            boolean z = (readUnsignedByte & 128) != 0;
            GIFStreamMetadata gIFStreamMetadata = this.streamMetadata;
            gIFStreamMetadata.colorResolution = ((readUnsignedByte >> 4) & 7) + 1;
            gIFStreamMetadata.sortFlag = (readUnsignedByte & 8) != 0;
            int i = 1 << ((readUnsignedByte & 7) + 1);
            gIFStreamMetadata.backgroundColorIndex = this.stream.readUnsignedByte();
            this.streamMetadata.pixelAspectRatio = this.stream.readUnsignedByte();
            if (z) {
                byte[] bArr2 = new byte[i * 3];
                this.streamMetadata.globalColorTable = bArr2;
                this.stream.readFully(bArr2);
            } else {
                this.streamMetadata.globalColorTable = null;
            }
            this.imageStartPosition.add(Long.valueOf(this.stream.getStreamPosition()));
            this.gotHeader = true;
        } catch (IOException e) {
            throw new IIOException("I/O error reading header!", e);
        }
    }

    private void readMetadata() throws IIOException {
        int readUnsignedByte;
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        try {
            this.imageMetadata = new GIFImageMetadata();
            long streamPosition = this.stream.getStreamPosition();
            while (true) {
                int readUnsignedByte2 = this.stream.readUnsignedByte();
                if (readUnsignedByte2 == 44) {
                    this.imageMetadata.imageLeftPosition = this.stream.readUnsignedShort();
                    this.imageMetadata.imageTopPosition = this.stream.readUnsignedShort();
                    this.imageMetadata.imageWidth = this.stream.readUnsignedShort();
                    this.imageMetadata.imageHeight = this.stream.readUnsignedShort();
                    int readUnsignedByte3 = this.stream.readUnsignedByte();
                    boolean z = (readUnsignedByte3 & 128) != 0;
                    GIFImageMetadata gIFImageMetadata = this.imageMetadata;
                    gIFImageMetadata.interlaceFlag = (readUnsignedByte3 & 64) != 0;
                    gIFImageMetadata.sortFlag = (readUnsignedByte3 & 32) != 0;
                    int i = 1 << ((readUnsignedByte3 & 7) + 1);
                    if (z) {
                        byte[] bArr = new byte[i * 3];
                        gIFImageMetadata.localColorTable = bArr;
                        this.stream.readFully(bArr);
                    } else {
                        gIFImageMetadata.localColorTable = null;
                    }
                    this.imageMetadataLength = (int) (this.stream.getStreamPosition() - streamPosition);
                    return;
                }
                if (readUnsignedByte2 != 33) {
                    if (readUnsignedByte2 == 59) {
                        throw new IndexOutOfBoundsException("Attempt to read past end of image sequence!");
                    }
                    throw new IIOException("Unexpected block type " + readUnsignedByte2 + "!");
                }
                int readUnsignedByte4 = this.stream.readUnsignedByte();
                if (readUnsignedByte4 == 249) {
                    this.stream.readUnsignedByte();
                    int readUnsignedByte5 = this.stream.readUnsignedByte();
                    GIFImageMetadata gIFImageMetadata2 = this.imageMetadata;
                    gIFImageMetadata2.disposalMethod = 3 & (readUnsignedByte5 >> 2);
                    gIFImageMetadata2.userInputFlag = (readUnsignedByte5 & 2) != 0;
                    gIFImageMetadata2.transparentColorFlag = (readUnsignedByte5 & 1) != 0;
                    gIFImageMetadata2.delayTime = this.stream.readUnsignedShort();
                    this.imageMetadata.transparentColorIndex = this.stream.readUnsignedByte();
                    this.stream.readUnsignedByte();
                } else if (readUnsignedByte4 == 1) {
                    this.stream.readUnsignedByte();
                    GIFImageMetadata gIFImageMetadata3 = this.imageMetadata;
                    gIFImageMetadata3.hasPlainTextExtension = true;
                    gIFImageMetadata3.textGridLeft = this.stream.readUnsignedShort();
                    this.imageMetadata.textGridTop = this.stream.readUnsignedShort();
                    this.imageMetadata.textGridWidth = this.stream.readUnsignedShort();
                    this.imageMetadata.textGridHeight = this.stream.readUnsignedShort();
                    this.imageMetadata.characterCellWidth = this.stream.readUnsignedByte();
                    this.imageMetadata.characterCellHeight = this.stream.readUnsignedByte();
                    this.imageMetadata.textForegroundColor = this.stream.readUnsignedByte();
                    this.imageMetadata.textBackgroundColor = this.stream.readUnsignedByte();
                    this.imageMetadata.text = concatenateBlocks();
                } else if (readUnsignedByte4 == 254) {
                    byte[] concatenateBlocks = concatenateBlocks();
                    GIFImageMetadata gIFImageMetadata4 = this.imageMetadata;
                    if (gIFImageMetadata4.comments == null) {
                        gIFImageMetadata4.comments = new ArrayList();
                    }
                    this.imageMetadata.comments.add(concatenateBlocks);
                } else if (readUnsignedByte4 == 255) {
                    int readUnsignedByte6 = this.stream.readUnsignedByte();
                    byte[] bArr2 = new byte[8];
                    byte[] bArr3 = new byte[3];
                    byte[] bArr4 = new byte[readUnsignedByte6];
                    this.stream.readFully(bArr4);
                    int copyData = copyData(bArr4, copyData(bArr4, 0, bArr2), bArr3);
                    byte[] concatenateBlocks2 = concatenateBlocks();
                    if (copyData < readUnsignedByte6) {
                        int i2 = readUnsignedByte6 - copyData;
                        byte[] bArr5 = new byte[concatenateBlocks2.length + i2];
                        System.arraycopy(bArr4, copyData, bArr5, 0, i2);
                        System.arraycopy(concatenateBlocks2, 0, bArr5, i2, concatenateBlocks2.length);
                        concatenateBlocks2 = bArr5;
                    }
                    GIFImageMetadata gIFImageMetadata5 = this.imageMetadata;
                    if (gIFImageMetadata5.applicationIDs == null) {
                        gIFImageMetadata5.applicationIDs = new ArrayList();
                        this.imageMetadata.authenticationCodes = new ArrayList();
                        this.imageMetadata.applicationData = new ArrayList();
                    }
                    this.imageMetadata.applicationIDs.add(bArr2);
                    this.imageMetadata.authenticationCodes.add(bArr3);
                    this.imageMetadata.applicationData.add(concatenateBlocks2);
                } else {
                    do {
                        readUnsignedByte = this.stream.readUnsignedByte();
                        this.stream.skipBytes(readUnsignedByte);
                    } while (readUnsignedByte > 0);
                }
            }
        } catch (IIOException e) {
            throw e;
        } catch (IOException e2) {
            throw new IIOException("I/O error reading image metadata!", e2);
        }
    }

    private void resetStreamSettings() {
        this.gotHeader = false;
        this.streamMetadata = null;
        this.currIndex = -1;
        this.imageMetadata = null;
        this.imageStartPosition = new ArrayList();
        this.numImages = -1;
        this.blockLength = 0;
        this.bitPos = 0;
        this.nextByte = 0;
        this.next32Bits = 0;
        this.lastBlockFound = false;
        this.theImage = null;
        this.theTile = null;
        this.width = -1;
        this.height = -1;
        this.streamX = -1;
        this.streamY = -1;
        this.rowsDone = 0;
        this.interlacePass = 0;
        this.fallbackColorTable = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x000b, code lost:
    
        r4.stream.skipBytes(8);
        r1 = r4.stream.readUnsignedByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x001b, code lost:
    
        if ((r1 & 128) == 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x001d, code lost:
    
        r4.stream.skipBytes((1 << ((r1 & 7) + 1)) * 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0029, code lost:
    
        r4.stream.skipBytes(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x002e, code lost:
    
        r1 = r4.stream.readUnsignedByte();
        r4.stream.skipBytes(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0039, code lost:
    
        if (r1 > 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x003b, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean skipImage() throws javax.imageio.IIOException {
        /*
            r4 = this;
        L0:
            r0 = 0
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2 = 44
            if (r1 != r2) goto L3c
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2 = 8
            r1.skipBytes(r2)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2 = r1 & 128(0x80, float:1.794E-43)
            r3 = 1
            if (r2 == 0) goto L29
            r1 = r1 & 7
            int r1 = r1 + r3
            javax.imageio.stream.ImageInputStream r2 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r3 << r1
            int r1 = r1 * 3
            r2.skipBytes(r1)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
        L29:
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r1.skipBytes(r3)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
        L2e:
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            javax.imageio.stream.ImageInputStream r2 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2.skipBytes(r1)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            if (r1 > 0) goto L2e
            return r3
        L3c:
            r2 = 59
            if (r1 != r2) goto L41
            return r0
        L41:
            r2 = 33
            if (r1 != r2) goto L58
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
        L4a:
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            javax.imageio.stream.ImageInputStream r2 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2.skipBytes(r1)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            if (r1 > 0) goto L4a
            goto L0
        L58:
            if (r1 != 0) goto L5b
            return r0
        L5b:
            javax.imageio.stream.ImageInputStream r1 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            int r1 = r1.readUnsignedByte()     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            javax.imageio.stream.ImageInputStream r2 = r4.stream     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            r2.skipBytes(r1)     // Catch: java.io.IOException -> L69 java.io.EOFException -> L72
            if (r1 > 0) goto L5b
            goto L0
        L69:
            r4 = move-exception
            javax.imageio.IIOException r0 = new javax.imageio.IIOException
            java.lang.String r1 = "I/O error locating image!"
            r0.<init>(r1, r4)
            throw r0
        L72:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.gif.GIFImageReader.skipImage():boolean");
    }

    private void startPass(int i) {
        if (this.updateListeners == null || !this.imageMetadata.interlaceFlag) {
            return;
        }
        int[] iArr = interlaceOffset;
        int i2 = this.interlacePass;
        int i3 = iArr[i2];
        int i4 = interlaceIncrement[i2];
        Rectangle rectangle = this.sourceRegion;
        Point point = this.destinationOffset;
        Rectangle rectangle2 = this.destinationRegion;
        int i5 = rectangle2.f97732x;
        int i6 = rectangle2.f97733y;
        int i7 = rectangle2.width;
        int i8 = rectangle2.height;
        int[] computeUpdatedPixels = ReaderUtil.computeUpdatedPixels(rectangle, point, i5, i6, (i5 + i7) - 1, (i6 + i8) - 1, this.sourceXSubsampling, this.sourceYSubsampling, 0, i3, i7, ((i8 + i4) - 1) / i4, 1, i4);
        int i9 = computeUpdatedPixels[1];
        this.updateMinY = i9;
        int i10 = computeUpdatedPixels[5];
        this.updateYStep = i10;
        processPassStarted(this.theImage, this.interlacePass, this.sourceMinProgressivePass, this.sourceMaxProgressivePass, 0, i9, 1, i10, new int[]{0});
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return new ImageReadParam();
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IIOException {
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException();
        }
        readMetadata();
        return this.imageMetadata.imageHeight;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IIOException {
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException("Bad image index!");
        }
        readMetadata();
        return this.imageMetadata;
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IIOException {
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException();
        }
        readMetadata();
        ArrayList arrayList = new ArrayList(1);
        byte[] bArr = this.imageMetadata.localColorTable;
        if (bArr != null) {
            this.fallbackColorTable = bArr;
        } else {
            bArr = this.streamMetadata.globalColorTable;
        }
        if (bArr == null) {
            if (this.fallbackColorTable == null) {
                processWarningOccurred("Use default color table.");
                this.fallbackColorTable = getDefaultPalette();
            }
            bArr = this.fallbackColorTable;
        }
        int length = bArr.length / 3;
        int i2 = 2;
        if (length == 2) {
            i2 = 1;
        } else if (length != 4) {
            i2 = 8;
            if (length == 8 || length == 16) {
                i2 = 4;
            }
        }
        int i3 = 1 << i2;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int i6 = i5 + 1;
            bArr2[i4] = bArr[i5];
            int i7 = i6 + 1;
            bArr3[i4] = bArr[i6];
            bArr4[i4] = bArr[i7];
            i4++;
            i5 = i7 + 1;
        }
        arrayList.add(createIndexed(bArr2, bArr3, bArr4, i2));
        return arrayList.iterator();
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IIOException {
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
    public IIOMetadata getStreamMetadata() throws IIOException {
        readHeader();
        return this.streamMetadata;
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IIOException {
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException();
        }
        readMetadata();
        return this.imageMetadata.imageWidth;
    }

    public void initializeStringTable(int[] iArr, byte[] bArr, byte[] bArr2, int[] iArr2) {
        int i = 1 << this.initCodeSize;
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
            byte b = (byte) i2;
            bArr[i2] = b;
            bArr2[i2] = b;
            iArr2[i2] = 1;
        }
        while (i < 4096) {
            iArr[i] = -1;
            iArr2[i] = 1;
            i++;
        }
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IIOException {
        int i2;
        if (this.stream == null) {
            throw new IllegalStateException("Input not set!");
        }
        checkIndex(i);
        if (locateImage(i) != i) {
            throw new IndexOutOfBoundsException("imageIndex out of bounds!");
        }
        readMetadata();
        ImageReadParam defaultReadParam = imageReadParam == null ? getDefaultReadParam() : imageReadParam;
        Iterator<ImageTypeSpecifier> imageTypes = getImageTypes(i);
        GIFImageMetadata gIFImageMetadata = this.imageMetadata;
        BufferedImage destination = ImageReader.getDestination(defaultReadParam, imageTypes, gIFImageMetadata.imageWidth, gIFImageMetadata.imageHeight);
        this.theImage = destination;
        int i3 = 0;
        this.theTile = destination.getWritableTile(0, 0);
        GIFImageMetadata gIFImageMetadata2 = this.imageMetadata;
        this.width = gIFImageMetadata2.imageWidth;
        this.height = gIFImageMetadata2.imageHeight;
        this.streamX = 0;
        this.streamY = 0;
        this.rowsDone = 0;
        this.interlacePass = 0;
        this.sourceRegion = new Rectangle(0, 0, 0, 0);
        Rectangle rectangle = new Rectangle(0, 0, 0, 0);
        this.destinationRegion = rectangle;
        ImageReader.computeRegions(defaultReadParam, this.width, this.height, this.theImage, this.sourceRegion, rectangle);
        Rectangle rectangle2 = this.destinationRegion;
        this.destinationOffset = new Point(rectangle2.f97732x, rectangle2.f97733y);
        this.sourceXSubsampling = defaultReadParam.getSourceXSubsampling();
        this.sourceYSubsampling = defaultReadParam.getSourceYSubsampling();
        this.sourceMinProgressivePass = Math.max(defaultReadParam.getSourceMinProgressivePass(), 0);
        this.sourceMaxProgressivePass = Math.min(defaultReadParam.getSourceMaxProgressivePass(), 3);
        this.destY = this.destinationRegion.f97733y + ((this.streamY - this.sourceRegion.f97733y) / this.sourceYSubsampling);
        computeDecodeThisRow();
        clearAbortRequest();
        processImageStarted(i);
        if (abortRequested()) {
            processReadAborted();
            return this.theImage;
        }
        startPass(0);
        this.rowBuf = new byte[this.width];
        try {
            int readUnsignedByte = this.stream.readUnsignedByte();
            this.initCodeSize = readUnsignedByte;
            if (readUnsignedByte < 1 || readUnsignedByte > 8) {
                throw new IIOException("Bad code size:" + this.initCodeSize);
            }
            int readUnsignedByte2 = this.stream.readUnsignedByte();
            this.blockLength = readUnsignedByte2;
            int i4 = 0;
            while (readUnsignedByte2 > 0) {
                int read = this.stream.read(this.block, i4, readUnsignedByte2);
                if (read == -1) {
                    throw new IIOException("Invalid block length for LZW encoded image data");
                }
                readUnsignedByte2 -= read;
                i4 += read;
            }
            this.bitPos = 0;
            this.nextByte = 0;
            this.lastBlockFound = false;
            this.interlacePass = 0;
            initNext32Bits();
            int i5 = 1 << this.initCodeSize;
            this.clearCode = i5;
            this.eofCode = i5 + 1;
            int[] iArr = new int[4096];
            byte[] bArr = new byte[4096];
            byte[] bArr2 = new byte[4096];
            int[] iArr2 = new int[4096];
            byte[] bArr3 = new byte[4096];
            initializeStringTable(iArr, bArr, bArr2, iArr2);
            int i6 = this.initCodeSize;
            int i7 = (1 << i6) + 2;
            int i8 = i6 + 1;
            int i9 = (1 << i8) - 1;
            do {
                int code = getCode(i8, i9);
                if (code == this.clearCode) {
                    initializeStringTable(iArr, bArr, bArr2, iArr2);
                    int i10 = this.initCodeSize;
                    int i11 = (1 << i10) + 2;
                    i8 = i10 + 1;
                    int i12 = (1 << i8) - 1;
                    int code2 = getCode(i8, i12);
                    if (code2 == this.eofCode) {
                        processImageComplete();
                        return this.theImage;
                    }
                    i7 = i11;
                    i3 = code2;
                    i9 = i12;
                } else {
                    if (code == this.eofCode) {
                        processImageComplete();
                        return this.theImage;
                    }
                    if (code < i7) {
                        i2 = code;
                    } else {
                        if (code != i7) {
                            processWarningOccurred("Out-of-sequence code!");
                        }
                        i2 = i3;
                    }
                    iArr[i7] = i3;
                    bArr[i7] = bArr2[i2];
                    bArr2[i7] = bArr2[i3];
                    iArr2[i7] = iArr2[i3] + 1;
                    i7++;
                    if (i7 == (1 << i8) && i7 < 4096) {
                        i8++;
                        i9 = (1 << i8) - 1;
                    }
                    i3 = code;
                }
                int i13 = iArr2[i3];
                int i14 = i3;
                for (int i15 = i13 - 1; i15 >= 0; i15--) {
                    bArr3[i15] = bArr[i14];
                    i14 = iArr[i14];
                }
                outputPixels(bArr3, i13);
            } while (!abortRequested());
            processReadAborted();
            return this.theImage;
        } catch (IOException e) {
            throw new IIOException("I/O error reading image!", e);
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
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageInputStream)) {
                throw new IllegalArgumentException("input not an ImageInputStream!");
            }
            this.stream = (ImageInputStream) obj;
        }
        resetStreamSettings();
    }
}
