package com.sun.imageio.plugins.gif;

import com.sun.imageio.plugins.common.LZWCompressor;
import com.sun.imageio.plugins.common.PaletteBuilder;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.image.ColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.NodeList;
import sun.awt.image.ByteComponentRaster;

/* loaded from: classes9.dex */
public class GIFImageWriter extends ImageWriter {
    private static final boolean DEBUG = false;
    static final String IMAGE_METADATA_NAME = "javax_imageio_gif_image_1.0";
    static final String STANDARD_METADATA_NAME = "javax_imageio_1.0";
    static final String STREAM_METADATA_NAME = "javax_imageio_gif_stream_1.0";
    private int imageIndex;
    private boolean isWritingSequence;
    private ImageOutputStream stream;
    private GIFWritableStreamMetadata theStreamMetadata;
    private boolean wroteSequenceHeader;

    public GIFImageWriter(GIFImageWriterSpi gIFImageWriterSpi) {
        super(gIFImageWriterSpi);
        this.stream = null;
        this.isWritingSequence = false;
        this.wroteSequenceHeader = false;
        this.theStreamMetadata = null;
        this.imageIndex = 0;
    }

    private static void computeRegions(Rectangle rectangle, Dimension dimension, ImageWriteParam imageWriteParam) {
        int i;
        int i2;
        if (imageWriteParam != null) {
            int[] sourceBands = imageWriteParam.getSourceBands();
            if (sourceBands != null && (sourceBands.length != 1 || sourceBands[0] != 0)) {
                throw new IllegalArgumentException("Cannot sub-band image!");
            }
            Rectangle sourceRegion = imageWriteParam.getSourceRegion();
            if (sourceRegion != null) {
                rectangle.setBounds(sourceRegion.intersection(rectangle));
            }
            int subsamplingXOffset = imageWriteParam.getSubsamplingXOffset();
            int subsamplingYOffset = imageWriteParam.getSubsamplingYOffset();
            rectangle.f97732x += subsamplingXOffset;
            rectangle.f97733y += subsamplingYOffset;
            rectangle.width -= subsamplingXOffset;
            rectangle.height -= subsamplingYOffset;
            i2 = imageWriteParam.getSourceXSubsampling();
            i = imageWriteParam.getSourceYSubsampling();
        } else {
            i = 1;
            i2 = 1;
        }
        dimension.setSize(((rectangle.width + i2) - 1) / i2, ((rectangle.height + i) - 1) / i);
        if (dimension.width <= 0 || dimension.height <= 0) {
            throw new IllegalArgumentException("Empty source region!");
        }
    }

    private void convertMetadata(String str, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        String nativeMetadataFormatName = iIOMetadata.getNativeMetadataFormatName();
        if (nativeMetadataFormatName == null || !nativeMetadataFormatName.equals(str)) {
            String[] extraMetadataFormatNames = iIOMetadata.getExtraMetadataFormatNames();
            if (extraMetadataFormatNames != null) {
                for (String str2 : extraMetadataFormatNames) {
                    if (str2.equals(str)) {
                        break;
                    }
                }
            }
            str = null;
        }
        if (str == null && iIOMetadata.isStandardMetadataFormatSupported()) {
            str = "javax_imageio_1.0";
        }
        if (str != null) {
            try {
                iIOMetadata2.mergeTree(str, iIOMetadata.getAsTree(str));
            } catch (IIOInvalidTreeException unused) {
            }
        }
    }

    private static byte[] createColorTable(ColorModel colorModel, SampleModel sampleModel) {
        int i = 0;
        if (!(colorModel instanceof IndexColorModel)) {
            if (sampleModel.getNumBands() != 1) {
                return null;
            }
            int i2 = sampleModel.getSampleSize()[0];
            if (i2 > 8) {
                i2 = 8;
            }
            int i3 = (1 << i2) * 3;
            byte[] bArr = new byte[i3];
            while (i < i3) {
                bArr[i] = (byte) (i / 3);
                i++;
            }
            return bArr;
        }
        IndexColorModel indexColorModel = (IndexColorModel) colorModel;
        int mapSize = indexColorModel.getMapSize();
        int gifPaletteSize = getGifPaletteSize(mapSize);
        byte[] bArr2 = new byte[gifPaletteSize];
        byte[] bArr3 = new byte[gifPaletteSize];
        byte[] bArr4 = new byte[gifPaletteSize];
        indexColorModel.getReds(bArr2);
        indexColorModel.getGreens(bArr3);
        indexColorModel.getBlues(bArr4);
        while (mapSize < gifPaletteSize) {
            bArr2[mapSize] = bArr2[0];
            bArr3[mapSize] = bArr3[0];
            bArr4[mapSize] = bArr4[0];
            mapSize++;
        }
        byte[] bArr5 = new byte[gifPaletteSize * 3];
        int i4 = 0;
        while (i < gifPaletteSize) {
            int i5 = i4 + 1;
            bArr5[i4] = bArr2[i];
            int i6 = i5 + 1;
            bArr5[i5] = bArr3[i];
            bArr5[i6] = bArr4[i];
            i++;
            i4 = i6 + 1;
        }
        return bArr5;
    }

    private static int getGifPaletteSize(int i) {
        if (i <= 2) {
            return 2;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    private static int getNumBits(int i) throws IOException {
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 32) {
            return 5;
        }
        if (i == 64) {
            return 6;
        }
        if (i == 128) {
            return 7;
        }
        if (i == 256) {
            return 8;
        }
        throw new IOException("Bad palette length: " + i + "!");
    }

    private boolean needToCreateIndex(RenderedImage renderedImage) {
        SampleModel sampleModel = renderedImage.getSampleModel();
        return sampleModel.getNumBands() != 1 || sampleModel.getSampleSize()[0] > 8 || renderedImage.getColorModel().getComponentSize()[0] > 8;
    }

    private void resetLocal() {
        this.isWritingSequence = false;
        this.wroteSequenceHeader = false;
        this.theStreamMetadata = null;
        this.imageIndex = 0;
    }

    private void writeApplicationExtension(GIFWritableImageMetadata gIFWritableImageMetadata) throws IOException {
        List<byte[]> list = gIFWritableImageMetadata.applicationIDs;
        if (list != null) {
            Iterator<byte[]> it2 = list.iterator();
            Iterator<byte[]> it3 = gIFWritableImageMetadata.authenticationCodes.iterator();
            Iterator<byte[]> it4 = gIFWritableImageMetadata.applicationData.iterator();
            while (it2.hasNext()) {
                try {
                    this.stream.write(33);
                    this.stream.write(255);
                    this.stream.write(11);
                    this.stream.write(it2.next(), 0, 8);
                    this.stream.write(it3.next(), 0, 3);
                    writeBlocks(it4.next());
                    this.stream.write(0);
                } catch (IOException e) {
                    throw new IIOException("I/O error writing Application Extension!", e);
                }
            }
        }
    }

    private void writeBlocks(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        int i = 0;
        while (i < bArr.length) {
            int min = Math.min(bArr.length - i, 255);
            this.stream.write(min);
            this.stream.write(bArr, i, min);
            i += min;
        }
    }

    private void writeCommentExtension(GIFWritableImageMetadata gIFWritableImageMetadata) throws IOException {
        List<byte[]> list = gIFWritableImageMetadata.comments;
        if (list != null) {
            try {
                Iterator<byte[]> it2 = list.iterator();
                while (it2.hasNext()) {
                    this.stream.write(33);
                    this.stream.write(254);
                    writeBlocks(it2.next());
                    this.stream.write(0);
                }
            } catch (IOException e) {
                throw new IIOException("I/O error writing Comment Extension!", e);
            }
        }
    }

    private void writeGraphicControlExtension(int i, boolean z, boolean z2, int i2, int i3) throws IOException {
        try {
            this.stream.write(33);
            this.stream.write(249);
            this.stream.write(4);
            int i4 = (i & 3) << 2;
            if (z) {
                i4 |= 2;
            }
            if (z2) {
                i4 |= 1;
            }
            this.stream.write(i4);
            this.stream.writeShort((short) i2);
            this.stream.write(i3);
            this.stream.write(0);
        } catch (IOException e) {
            throw new IIOException("I/O error writing Graphic Control Extension!", e);
        }
    }

    private void writeHeader(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, byte[] bArr) throws IOException {
        try {
            this.stream.writeBytes("GIF" + str);
            this.stream.writeShort((short) i);
            this.stream.writeShort((short) i2);
            int i7 = (bArr != null ? 128 : 0) | (((i3 - 1) & 7) << 4);
            if (z) {
                i7 |= 8;
            }
            this.stream.write(i7 | (i6 - 1));
            this.stream.write(i5);
            this.stream.write(i4);
            if (bArr != null) {
                this.stream.write(bArr);
            }
        } catch (IOException e) {
            throw new IIOException("I/O error writing header!", e);
        }
    }

    private void writeImage(RenderedImage renderedImage, GIFWritableImageMetadata gIFWritableImageMetadata, ImageWriteParam imageWriteParam, byte[] bArr, Rectangle rectangle, Dimension dimension) throws IOException {
        NodeList nodeList;
        boolean z;
        int length;
        int i;
        renderedImage.getColorModel();
        SampleModel sampleModel = renderedImage.getSampleModel();
        if (gIFWritableImageMetadata == null) {
            gIFWritableImageMetadata = (GIFWritableImageMetadata) getDefaultImageMetadata(new ImageTypeSpecifier(renderedImage), imageWriteParam);
            z = gIFWritableImageMetadata.transparentColorFlag;
        } else {
            try {
                nodeList = ((IIOMetadataNode) gIFWritableImageMetadata.getAsTree(IMAGE_METADATA_NAME)).getElementsByTagName("GraphicControlExtension");
            } catch (IllegalArgumentException unused) {
                nodeList = null;
            }
            z = nodeList != null && nodeList.getLength() > 0;
            if (imageWriteParam != null && imageWriteParam.canWriteProgressive()) {
                if (imageWriteParam.getProgressiveMode() == 0) {
                    gIFWritableImageMetadata.interlaceFlag = false;
                } else if (imageWriteParam.getProgressiveMode() == 1) {
                    gIFWritableImageMetadata.interlaceFlag = true;
                }
            }
        }
        if (Arrays.equals(bArr, gIFWritableImageMetadata.localColorTable)) {
            gIFWritableImageMetadata.localColorTable = null;
        }
        gIFWritableImageMetadata.imageWidth = dimension.width;
        gIFWritableImageMetadata.imageHeight = dimension.height;
        if (z) {
            writeGraphicControlExtension(gIFWritableImageMetadata);
        }
        writePlainTextExtension(gIFWritableImageMetadata);
        writeApplicationExtension(gIFWritableImageMetadata);
        writeCommentExtension(gIFWritableImageMetadata);
        byte[] bArr2 = gIFWritableImageMetadata.localColorTable;
        if (bArr2 != null) {
            length = bArr2.length;
        } else {
            if (bArr == null) {
                i = sampleModel.getSampleSize(0);
                writeImageDescriptor(gIFWritableImageMetadata, getNumBits(i));
                writeRasterData(renderedImage, rectangle, dimension, imageWriteParam, gIFWritableImageMetadata.interlaceFlag);
            }
            length = bArr.length;
        }
        i = length / 3;
        writeImageDescriptor(gIFWritableImageMetadata, getNumBits(i));
        writeRasterData(renderedImage, rectangle, dimension, imageWriteParam, gIFWritableImageMetadata.interlaceFlag);
    }

    private void writeImageDescriptor(int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, byte[] bArr) throws IOException {
        try {
            this.stream.write(44);
            this.stream.writeShort((short) i);
            this.stream.writeShort((short) i2);
            this.stream.writeShort((short) i3);
            this.stream.writeShort((short) i4);
            int i6 = bArr != null ? 128 : 0;
            if (z) {
                i6 |= 64;
            }
            if (z2) {
                i6 |= 8;
            }
            this.stream.write(i6 | (i5 - 1));
            if (bArr != null) {
                this.stream.write(bArr);
            }
        } catch (IOException e) {
            throw new IIOException("I/O error writing Image Descriptor!", e);
        }
    }

    private void writePlainTextExtension(GIFWritableImageMetadata gIFWritableImageMetadata) throws IOException {
        if (gIFWritableImageMetadata.hasPlainTextExtension) {
            try {
                this.stream.write(33);
                this.stream.write(1);
                this.stream.write(12);
                this.stream.writeShort(gIFWritableImageMetadata.textGridLeft);
                this.stream.writeShort(gIFWritableImageMetadata.textGridTop);
                this.stream.writeShort(gIFWritableImageMetadata.textGridWidth);
                this.stream.writeShort(gIFWritableImageMetadata.textGridHeight);
                this.stream.write(gIFWritableImageMetadata.characterCellWidth);
                this.stream.write(gIFWritableImageMetadata.characterCellHeight);
                this.stream.write(gIFWritableImageMetadata.textForegroundColor);
                this.stream.write(gIFWritableImageMetadata.textBackgroundColor);
                writeBlocks(gIFWritableImageMetadata.text);
                this.stream.write(0);
            } catch (IOException e) {
                throw new IIOException("I/O error writing Plain Text Extension!", e);
            }
        }
    }

    private void writeRasterData(RenderedImage renderedImage, Rectangle rectangle, Dimension dimension, ImageWriteParam imageWriteParam, boolean z) throws IOException {
        int sourceXSubsampling;
        int sourceYSubsampling;
        LZWCompressor lZWCompressor;
        int i;
        int i2 = rectangle.f97732x;
        int i3 = rectangle.f97733y;
        int i4 = rectangle.width;
        int i5 = dimension.width;
        int i6 = dimension.height;
        if (imageWriteParam == null) {
            sourceYSubsampling = 1;
            sourceXSubsampling = 1;
        } else {
            sourceXSubsampling = imageWriteParam.getSourceXSubsampling();
            sourceYSubsampling = imageWriteParam.getSourceYSubsampling();
        }
        SampleModel sampleModel = renderedImage.getSampleModel();
        int i7 = sampleModel.getSampleSize()[0];
        if (i7 == 1) {
            i7++;
        }
        this.stream.write(i7);
        LZWCompressor lZWCompressor2 = new LZWCompressor(this.stream, i7, false);
        boolean z2 = sourceXSubsampling == 1 && sourceYSubsampling == 1 && renderedImage.getNumXTiles() == 1 && renderedImage.getNumYTiles() == 1 && (sampleModel instanceof ComponentSampleModel) && (renderedImage.getTile(0, 0) instanceof ByteComponentRaster) && (renderedImage.getTile(0, 0).getDataBuffer() instanceof DataBufferByte);
        int max = Math.max(i6 / 20, 1);
        clearAbortRequest();
        processImageStarted(this.imageIndex);
        if (abortRequested()) {
            processWriteAborted();
            return;
        }
        if (!z) {
            lZWCompressor = lZWCompressor2;
            int i8 = sourceYSubsampling;
            int i9 = sourceXSubsampling;
            if (z2) {
                Raster tile = renderedImage.getTile(0, 0);
                byte[] data = ((DataBufferByte) tile.getDataBuffer()).getData();
                ComponentSampleModel componentSampleModel = (ComponentSampleModel) tile.getSampleModel();
                writeRowsOpt(data, componentSampleModel.getOffset(i2, i3, 0), componentSampleModel.getScanlineStride(), lZWCompressor, 0, 1, i5, i6, 0, max);
                if (abortRequested()) {
                    return;
                } else {
                    i = 0;
                }
            } else {
                i = 0;
                writeRows(renderedImage, lZWCompressor, i2, i9, i3, i8, i4, 0, 1, i5, i6, 0, max);
                if (abortRequested()) {
                    return;
                }
            }
        } else if (z2) {
            ByteComponentRaster byteComponentRaster = (ByteComponentRaster) renderedImage.getTile(0, 0);
            byte[] data2 = ((DataBufferByte) byteComponentRaster.getDataBuffer()).getData();
            ComponentSampleModel componentSampleModel2 = (ComponentSampleModel) byteComponentRaster.getSampleModel();
            int offset = componentSampleModel2.getOffset(i2, i3, 0) + byteComponentRaster.getDataOffset(0);
            int scanlineStride = componentSampleModel2.getScanlineStride();
            lZWCompressor = lZWCompressor2;
            writeRowsOpt(data2, offset, scanlineStride, lZWCompressor2, 0, 8, i5, i6, 0, max);
            if (abortRequested()) {
                return;
            }
            int i10 = (i6 / 8) + 0;
            writeRowsOpt(data2, offset, scanlineStride, lZWCompressor, 4, 8, i5, i6, i10, max);
            if (abortRequested()) {
                return;
            }
            int i11 = i10 + ((i6 - 4) / 8);
            writeRowsOpt(data2, offset, scanlineStride, lZWCompressor, 2, 4, i5, i6, i11, max);
            if (abortRequested()) {
                return;
            }
            writeRowsOpt(data2, offset, scanlineStride, lZWCompressor, 1, 2, i5, i6, i11 + ((i6 - 2) / 4), max);
            if (abortRequested()) {
                return;
            } else {
                i = 0;
            }
        } else {
            lZWCompressor = lZWCompressor2;
            int i12 = sourceYSubsampling * 8;
            int i13 = sourceYSubsampling;
            int i14 = sourceXSubsampling;
            writeRows(renderedImage, lZWCompressor, i2, sourceXSubsampling, i3, i12, i4, 0, 8, i5, i6, 0, max);
            if (abortRequested()) {
                return;
            }
            int i15 = (i6 / 8) + 0;
            int i16 = i13 * 4;
            writeRows(renderedImage, lZWCompressor, i2, i14, i3 + i16, i12, i4, 4, 8, i5, i6, i15, max);
            if (abortRequested()) {
                return;
            }
            int i17 = i15 + ((i6 - 4) / 8);
            int i18 = i13 * 2;
            writeRows(renderedImage, lZWCompressor, i2, i14, i3 + i18, i16, i4, 2, 4, i5, i6, i17, max);
            if (abortRequested()) {
                return;
            }
            writeRows(renderedImage, lZWCompressor, i2, i14, i3 + i13, i18, i4, 1, 2, i5, i6, i17 + ((i6 - 2) / 4), max);
            if (abortRequested()) {
                return;
            } else {
                i = 0;
            }
        }
        lZWCompressor.flush();
        this.stream.write(i);
        processImageComplete();
    }

    private void writeRows(RenderedImage renderedImage, LZWCompressor lZWCompressor, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) throws IOException {
        int[] iArr = new int[i5];
        byte[] bArr = new byte[i8];
        Raster tile = (renderedImage.getNumXTiles() == 1 && renderedImage.getNumYTiles() == 1) ? renderedImage.getTile(0, 0) : renderedImage.getData();
        int i12 = i3;
        int i13 = i6;
        int i14 = i10;
        while (i13 < i9) {
            if (i14 % i11 == 0) {
                processImageProgress((i14 * 100.0f) / i9);
                if (abortRequested()) {
                    processWriteAborted();
                    return;
                }
            }
            int i15 = i14;
            tile.getSamples(i, i12, i5, 1, 0, iArr);
            int i16 = 0;
            int i17 = 0;
            while (i16 < i8) {
                bArr[i16] = (byte) iArr[i17];
                i16++;
                i17 += i2;
            }
            lZWCompressor.compress(bArr, 0, i8);
            i14 = i15 + 1;
            i12 += i4;
            i13 += i7;
        }
    }

    private void writeRowsOpt(byte[] bArr, int i, int i2, LZWCompressor lZWCompressor, int i3, int i4, int i5, int i6, int i7, int i8) throws IOException {
        int i9 = i + (i3 * i2);
        int i10 = i2 * i4;
        while (i3 < i6) {
            if (i7 % i8 == 0) {
                processImageProgress((i7 * 100.0f) / i6);
                if (abortRequested()) {
                    processWriteAborted();
                    return;
                }
            }
            lZWCompressor.compress(bArr, i9, i5);
            i7++;
            i9 += i10;
            i3 += i4;
        }
    }

    private void writeTrailer() throws IOException {
        this.stream.write(59);
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteSequence() {
        return true;
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        if (iIOMetadata == null) {
            throw new IllegalArgumentException("inData == null!");
        }
        if (imageTypeSpecifier == null) {
            throw new IllegalArgumentException("imageType == null!");
        }
        GIFWritableImageMetadata gIFWritableImageMetadata = (GIFWritableImageMetadata) getDefaultImageMetadata(imageTypeSpecifier, imageWriteParam);
        boolean z = gIFWritableImageMetadata.interlaceFlag;
        convertMetadata(IMAGE_METADATA_NAME, iIOMetadata, gIFWritableImageMetadata);
        if (imageWriteParam != null && imageWriteParam.canWriteProgressive() && imageWriteParam.getProgressiveMode() != 3) {
            gIFWritableImageMetadata.interlaceFlag = z;
        }
        return gIFWritableImageMetadata;
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        if (iIOMetadata == null) {
            throw new IllegalArgumentException("inData == null!");
        }
        IIOMetadata defaultStreamMetadata = getDefaultStreamMetadata(imageWriteParam);
        convertMetadata(STREAM_METADATA_NAME, iIOMetadata, defaultStreamMetadata);
        return defaultStreamMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteSequence() throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("output == null!");
        }
        if (!this.isWritingSequence) {
            throw new IllegalStateException("prepareWriteSequence() was not invoked!");
        }
        writeTrailer();
        resetLocal();
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        int transparentPixel;
        GIFWritableImageMetadata gIFWritableImageMetadata = new GIFWritableImageMetadata();
        SampleModel sampleModel = imageTypeSpecifier.getSampleModel();
        Rectangle rectangle = new Rectangle(sampleModel.getWidth(), sampleModel.getHeight());
        Dimension dimension = new Dimension();
        computeRegions(rectangle, dimension, imageWriteParam);
        gIFWritableImageMetadata.imageWidth = dimension.width;
        gIFWritableImageMetadata.imageHeight = dimension.height;
        if (imageWriteParam != null && imageWriteParam.canWriteProgressive() && imageWriteParam.getProgressiveMode() == 0) {
            gIFWritableImageMetadata.interlaceFlag = false;
        } else {
            gIFWritableImageMetadata.interlaceFlag = true;
        }
        ColorModel colorModel = imageTypeSpecifier.getColorModel();
        gIFWritableImageMetadata.localColorTable = createColorTable(colorModel, sampleModel);
        if ((colorModel instanceof IndexColorModel) && (transparentPixel = ((IndexColorModel) colorModel).getTransparentPixel()) != -1) {
            gIFWritableImageMetadata.transparentColorFlag = true;
            gIFWritableImageMetadata.transparentColorIndex = transparentPixel;
        }
        return gIFWritableImageMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        GIFWritableStreamMetadata gIFWritableStreamMetadata = new GIFWritableStreamMetadata();
        gIFWritableStreamMetadata.version = "89a";
        return gIFWritableStreamMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new GIFImageWriteParam(getLocale());
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("Output is not set.");
        }
        resetLocal();
        if (iIOMetadata == null) {
            this.theStreamMetadata = (GIFWritableStreamMetadata) getDefaultStreamMetadata(null);
        } else {
            GIFWritableStreamMetadata gIFWritableStreamMetadata = new GIFWritableStreamMetadata();
            this.theStreamMetadata = gIFWritableStreamMetadata;
            convertMetadata(STREAM_METADATA_NAME, iIOMetadata, gIFWritableStreamMetadata);
        }
        this.isWritingSequence = true;
    }

    @Override // javax.imageio.ImageWriter
    public void reset() {
        super.reset();
        resetLocal();
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        super.setOutput(obj);
        if (obj == null) {
            this.stream = null;
        } else {
            if (!(obj instanceof ImageOutputStream)) {
                throw new IllegalArgumentException("output is not an ImageOutputStream");
            }
            ImageOutputStream imageOutputStream = (ImageOutputStream) obj;
            this.stream = imageOutputStream;
            imageOutputStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        }
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        GIFWritableStreamMetadata gIFWritableStreamMetadata;
        if (this.stream == null) {
            throw new IllegalStateException("output == null!");
        }
        if (iIOImage != null) {
            if (!iIOImage.hasRaster()) {
                resetLocal();
                if (iIOMetadata == null) {
                    gIFWritableStreamMetadata = (GIFWritableStreamMetadata) getDefaultStreamMetadata(imageWriteParam);
                } else {
                    gIFWritableStreamMetadata = (GIFWritableStreamMetadata) convertStreamMetadata(iIOMetadata, imageWriteParam);
                }
                write(true, true, gIFWritableStreamMetadata, iIOImage, imageWriteParam);
                return;
            }
            throw new UnsupportedOperationException("canWriteRasters() == false!");
        }
        throw new IllegalArgumentException("iioimage == null!");
    }

    @Override // javax.imageio.ImageWriter
    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        if (this.stream == null) {
            throw new IllegalStateException("output == null!");
        }
        if (iIOImage == null) {
            throw new IllegalArgumentException("image == null!");
        }
        if (iIOImage.hasRaster()) {
            throw new UnsupportedOperationException("canWriteRasters() == false!");
        }
        if (!this.isWritingSequence) {
            throw new IllegalStateException("prepareWriteSequence() was not invoked!");
        }
        write(!this.wroteSequenceHeader, false, this.theStreamMetadata, iIOImage, imageWriteParam);
        if (!this.wroteSequenceHeader) {
            this.wroteSequenceHeader = true;
        }
        this.imageIndex++;
    }

    private void writeGraphicControlExtension(GIFWritableImageMetadata gIFWritableImageMetadata) throws IOException {
        writeGraphicControlExtension(gIFWritableImageMetadata.disposalMethod, gIFWritableImageMetadata.userInputFlag, gIFWritableImageMetadata.transparentColorFlag, gIFWritableImageMetadata.delayTime, gIFWritableImageMetadata.transparentColorIndex);
    }

    private void writeHeader(IIOMetadata iIOMetadata, int i) throws IOException {
        GIFWritableStreamMetadata gIFWritableStreamMetadata;
        if (iIOMetadata instanceof GIFWritableStreamMetadata) {
            gIFWritableStreamMetadata = (GIFWritableStreamMetadata) iIOMetadata;
        } else {
            GIFWritableStreamMetadata gIFWritableStreamMetadata2 = new GIFWritableStreamMetadata();
            gIFWritableStreamMetadata2.setFromTree(STREAM_METADATA_NAME, iIOMetadata.getAsTree(STREAM_METADATA_NAME));
            gIFWritableStreamMetadata = gIFWritableStreamMetadata2;
        }
        writeHeader(gIFWritableStreamMetadata.version, gIFWritableStreamMetadata.logicalScreenWidth, gIFWritableStreamMetadata.logicalScreenHeight, gIFWritableStreamMetadata.colorResolution, gIFWritableStreamMetadata.pixelAspectRatio, gIFWritableStreamMetadata.backgroundColorIndex, gIFWritableStreamMetadata.sortFlag, i, gIFWritableStreamMetadata.globalColorTable);
    }

    private void writeImageDescriptor(GIFWritableImageMetadata gIFWritableImageMetadata, int i) throws IOException {
        writeImageDescriptor(gIFWritableImageMetadata.imageLeftPosition, gIFWritableImageMetadata.imageTopPosition, gIFWritableImageMetadata.imageWidth, gIFWritableImageMetadata.imageHeight, gIFWritableImageMetadata.interlaceFlag, gIFWritableImageMetadata.sortFlag, i, gIFWritableImageMetadata.localColorTable);
    }

    private void write(boolean z, boolean z2, IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        GIFWritableImageMetadata gIFWritableImageMetadata;
        byte[] bArr;
        int sampleSize;
        byte[] bArr2;
        byte[] bArr3;
        int i;
        RenderedImage renderedImage = iIOImage.getRenderedImage();
        if (needToCreateIndex(renderedImage)) {
            renderedImage = PaletteBuilder.createIndexedImage(renderedImage);
            iIOImage.setRenderedImage(renderedImage);
        }
        ColorModel colorModel = renderedImage.getColorModel();
        SampleModel sampleModel = renderedImage.getSampleModel();
        Rectangle rectangle = new Rectangle(renderedImage.getMinX(), renderedImage.getMinY(), renderedImage.getWidth(), renderedImage.getHeight());
        Dimension dimension = new Dimension();
        computeRegions(rectangle, dimension, imageWriteParam);
        if (iIOImage.getMetadata() != null) {
            gIFWritableImageMetadata = new GIFWritableImageMetadata();
            convertMetadata(IMAGE_METADATA_NAME, iIOImage.getMetadata(), gIFWritableImageMetadata);
            if (gIFWritableImageMetadata.localColorTable == null) {
                gIFWritableImageMetadata.localColorTable = createColorTable(colorModel, sampleModel);
                if (colorModel instanceof IndexColorModel) {
                    int transparentPixel = ((IndexColorModel) colorModel).getTransparentPixel();
                    boolean z3 = transparentPixel != -1;
                    gIFWritableImageMetadata.transparentColorFlag = z3;
                    if (z3) {
                        gIFWritableImageMetadata.transparentColorIndex = transparentPixel;
                    }
                }
            }
        } else {
            gIFWritableImageMetadata = null;
        }
        GIFWritableImageMetadata gIFWritableImageMetadata2 = gIFWritableImageMetadata;
        if (z) {
            if (iIOMetadata != null) {
                GIFWritableStreamMetadata gIFWritableStreamMetadata = (GIFWritableStreamMetadata) iIOMetadata;
                if (gIFWritableStreamMetadata.version == null) {
                    gIFWritableStreamMetadata.version = "89a";
                }
                if (gIFWritableStreamMetadata.logicalScreenWidth == -1) {
                    gIFWritableStreamMetadata.logicalScreenWidth = dimension.width;
                }
                if (gIFWritableStreamMetadata.logicalScreenHeight == -1) {
                    gIFWritableStreamMetadata.logicalScreenHeight = dimension.height;
                }
                if (gIFWritableStreamMetadata.colorResolution == -1) {
                    if (colorModel != null) {
                        i = colorModel.getComponentSize()[0];
                    } else {
                        i = sampleModel.getSampleSize()[0];
                    }
                    gIFWritableStreamMetadata.colorResolution = i;
                }
                if (gIFWritableStreamMetadata.globalColorTable == null) {
                    if (this.isWritingSequence && gIFWritableImageMetadata2 != null && (bArr3 = gIFWritableImageMetadata2.localColorTable) != null) {
                        gIFWritableStreamMetadata.globalColorTable = bArr3;
                    } else if (gIFWritableImageMetadata2 == null || gIFWritableImageMetadata2.localColorTable == null) {
                        gIFWritableStreamMetadata.globalColorTable = createColorTable(colorModel, sampleModel);
                    }
                }
                bArr = gIFWritableStreamMetadata.globalColorTable;
                if (bArr != null) {
                    sampleSize = getNumBits(bArr.length / 3);
                } else if (gIFWritableImageMetadata2 != null && (bArr2 = gIFWritableImageMetadata2.localColorTable) != null) {
                    sampleSize = getNumBits(bArr2.length / 3);
                } else {
                    sampleSize = sampleModel.getSampleSize(0);
                }
                writeHeader(gIFWritableStreamMetadata, sampleSize);
            } else {
                throw new IllegalArgumentException("Cannot write null header!");
            }
        } else if (this.isWritingSequence) {
            bArr = this.theStreamMetadata.globalColorTable;
        } else {
            throw new IllegalArgumentException("Must write header for single image!");
        }
        writeImage(iIOImage.getRenderedImage(), gIFWritableImageMetadata2, imageWriteParam, bArr, rectangle, dimension);
        if (z2) {
            writeTrailer();
        }
    }
}
