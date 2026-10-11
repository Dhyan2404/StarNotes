package com.twelvemonkeys.imageio.plugins.tiff;

import com.sunia.HTREnginev2.nzh;
import com.sunia.HTREnginev2.rui;
import com.twelvemonkeys.image.ImageUtil;
import com.twelvemonkeys.imageio.ImageWriterBase;
import com.twelvemonkeys.imageio.metadata.AbstractEntry;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.exif.EXIFWriter;
import com.twelvemonkeys.imageio.metadata.exif.Rational;
import com.twelvemonkeys.imageio.metadata.exif.TIFF;
import com.twelvemonkeys.imageio.stream.SubImageOutputStream;
import com.twelvemonkeys.imageio.util.IIOUtil;
import com.twelvemonkeys.io.enc.EncoderStream;
import com.twelvemonkeys.io.enc.PackBitsEncoder;
import com.twelvemonkeys.lang.Validate;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.DataBuffer;
import java.awt.image.ImageObserver;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public final class TIFFImageWriter extends ImageWriterBase {
    public static final Rational STANDARD_DPI = new Rational(72);

    /* renamed from: e */
    public boolean f94173e;

    /* renamed from: f */
    public EXIFWriter f94174f;

    /* renamed from: g */
    public long f94175g;

    /* renamed from: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriter$a */
    /* loaded from: classes10.dex */
    public static final class C16968a extends AbstractEntry {

        /* renamed from: c */
        public final short f94176c;

        public C16968a(int i, Object obj) {
            this(i, m60659d(obj), obj);
        }

        /* renamed from: d */
        public static short m60659d(Object obj) {
            Object notNull = Validate.notNull(obj);
            boolean isArray = notNull.getClass().isArray();
            if (isArray) {
                notNull = Array.get(notNull, 0);
            }
            if (notNull instanceof Byte) {
                return (short) 1;
            }
            if (notNull instanceof Short) {
                return (isArray || ((Short) notNull).shortValue() >= 127) ? (short) 3 : (short) 1;
            }
            if (notNull instanceof Integer) {
                return (isArray || ((Integer) notNull).intValue() >= 32767) ? (short) 4 : (short) 3;
            }
            if ((notNull instanceof Long) && !isArray && ((Long) notNull).longValue() < 2147483647L) {
                return (short) 4;
            }
            if (notNull instanceof Rational) {
                return (short) 5;
            }
            if (notNull instanceof String) {
                return (short) 2;
            }
            throw new UnsupportedOperationException(String.format("Method guessType not implemented for value of type %s", notNull.getClass()));
        }

        @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
        public String getTypeName() {
            return TIFF.TYPE_NAMES[this.f94176c];
        }

        public C16968a(int i, short s, Object obj) {
            super(Integer.valueOf(i), obj);
            this.f94176c = s;
        }
    }

    public TIFFImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.f94173e = false;
        this.f94174f = null;
        this.f94175g = -1L;
    }

    public static void main(String[] strArr) throws IOException {
        int i;
        int i2;
        int i3;
        if (strArr.length > 1) {
            i = Integer.parseInt(strArr[0]);
            i2 = 1;
        } else {
            i = -1;
            i2 = 0;
        }
        int i4 = i2 + 1;
        if (strArr.length > i4) {
            i3 = Integer.parseInt(strArr[i2]);
        } else {
            i4 = i2;
            i3 = 0;
        }
        if (strArr.length <= i4) {
            System.err.println("No file specified");
            System.exit(1);
        }
        File file = new File(strArr[i4]);
        ImageInputStream createImageInputStream = ImageIO.createImageInputStream(file);
        try {
            Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(createImageInputStream);
            if (!imageReaders.hasNext()) {
                System.err.println("No reader for: " + file);
                System.exit(1);
            }
            ImageReader next = imageReaders.next();
            next.setInput(createImageInputStream);
            ImageReadParam defaultReadParam = next.getDefaultReadParam();
            defaultReadParam.setDestinationType(next.getRawImageType(0));
            if (defaultReadParam.getDestinationType() == null) {
                Iterator<ImageTypeSpecifier> imageTypes = next.getImageTypes(0);
                while (imageTypes.hasNext()) {
                    ImageTypeSpecifier next2 = imageTypes.next();
                    if (next2.getColorModel().getColorSpace().getType() == 9) {
                        defaultReadParam.setDestinationType(next2);
                    }
                }
            }
            System.err.println("param.getDestinationType(): " + defaultReadParam.getDestinationType());
            BufferedImage read = next.read(0, defaultReadParam);
            createImageInputStream.close();
            System.err.println("original: " + read);
            if (i > 0 && i != read.getType()) {
                if (i == 13) {
                    read = ImageUtil.createIndexed(read, 256, (Color) null, 259);
                } else {
                    BufferedImage bufferedImage = new BufferedImage(read.getWidth(), read.getHeight(), i);
                    Graphics2D createGraphics = bufferedImage.createGraphics();
                    try {
                        createGraphics.drawImage(read, 0, 0, (ImageObserver) null);
                        createGraphics.dispose();
                        read = bufferedImage;
                    } catch (Throwable th) {
                        createGraphics.dispose();
                        throw th;
                    }
                }
            }
            File createTempFile = File.createTempFile(file.getName().replace('.', '-'), ".tif");
            System.err.println("output: " + createTempFile);
            TIFFImageWriter tIFFImageWriter = new TIFFImageWriter(null);
            ImageOutputStream createImageOutputStream = ImageIO.createImageOutputStream(createTempFile);
            try {
                tIFFImageWriter.setOutput(createImageOutputStream);
                ImageWriteParam defaultWriteParam = tIFFImageWriter.getDefaultWriteParam();
                defaultWriteParam.setCompressionMode(2);
                defaultWriteParam.setCompressionType(defaultWriteParam.getCompressionTypes()[i3]);
                System.err.println("compression: " + defaultWriteParam.getLocalizedCompressionTypeName());
                long currentTimeMillis = System.currentTimeMillis();
                tIFFImageWriter.write(null, new IIOImage(read, (List<? extends BufferedImage>) null, (IIOMetadata) null), defaultWriteParam);
                System.err.println("Write time: " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                createImageOutputStream.close();
                System.err.println("output.length: " + createTempFile.length());
                BufferedImage read2 = ImageIO.read(createTempFile);
                System.err.println("read: " + read2);
                TIFFImageReader.showIt(read2, createTempFile.getName());
            } catch (Throwable th2) {
                createImageOutputStream.close();
                throw th2;
            }
        } catch (Throwable th3) {
            createImageInputStream.close();
            throw th3;
        }
    }

    /* renamed from: b */
    public final short[] m60649b(int[] iArr) {
        int length = iArr.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = (short) iArr[i];
        }
        return sArr;
    }

    /* renamed from: c */
    public final int m60650c(SampleModel sampleModel) {
        int i = 0;
        for (int i2 = 0; i2 < sampleModel.getNumBands(); i2++) {
            i += sampleModel.getSampleSize(i2);
        }
        return i;
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteSequence() {
        return true;
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        return super.convertStreamMetadata(iIOMetadata, imageWriteParam);
    }

    /* renamed from: d */
    public final short[] m60651d(IndexColorModel indexColorModel) {
        int pow = (int) (Math.pow(2.0d, indexColorModel.getPixelSize()) * 3.0d);
        short[] sArr = new short[pow];
        for (int i = 0; i < indexColorModel.getMapSize(); i++) {
            int rgb = indexColorModel.getRGB(i);
            sArr[i] = (short) m60656i((rgb >> 16) & 255);
            sArr[(pow / 3) + i] = (short) m60656i((rgb >> 8) & 255);
            sArr[((pow * 2) / 3) + i] = (short) m60656i(rgb & 255);
        }
        return sArr;
    }

    /* renamed from: e */
    public final DataOutput m60652e(RenderedImage renderedImage, ImageWriteParam imageWriteParam, Map<Integer, Entry> map) {
        long j;
        int intValue = ((Integer) map.get(259).getValue()).intValue();
        if (intValue == 1) {
            return this.imageOutput;
        }
        if (intValue == 2 || intValue == 3 || intValue == 4) {
            if (intValue != 2) {
                j = ((Long) map.get(Integer.valueOf(intValue == 3 ? 292 : 293)).getValue()).longValue();
            } else {
                j = 0;
            }
            long j2 = j;
            Entry entry = map.get(266);
            return new DataOutputStream(new CCITTFaxEncoderStream(IIOUtil.createStreamAdapter(this.imageOutput), renderedImage.getTileWidth(), renderedImage.getTileHeight(), intValue, ((Integer) (entry != null ? entry.getValue() : 1)).intValue(), j2));
        }
        if (intValue == 5) {
            OutputStream encoderStream = new EncoderStream(IIOUtil.createStreamAdapter(this.imageOutput), new rui((((renderedImage.getTileWidth() * renderedImage.getTileHeight()) * renderedImage.getColorModel().getPixelSize()) + 7) / 8));
            if (map.containsKey(317) && map.get(317).getValue().equals(2)) {
                encoderStream = new nzh(encoderStream, renderedImage.getTileWidth(), renderedImage.getTile(0, 0).getNumBands(), renderedImage.getColorModel().getComponentSize(0), this.imageOutput.getByteOrder());
            }
            return new DataOutputStream(encoderStream);
        }
        if (intValue != 8) {
            if (intValue == 32773) {
                return new DataOutputStream(new EncoderStream(IIOUtil.createStreamAdapter(this.imageOutput), new PackBitsEncoder(), true));
            }
            if (intValue != 32946) {
                throw new IllegalArgumentException(String.format("Unsupported TIFF compression: %d", Integer.valueOf(intValue)));
            }
        }
        OutputStream deflaterOutputStream = new DeflaterOutputStream(IIOUtil.createStreamAdapter(this.imageOutput), new Deflater(imageWriteParam.getCompressionMode() == 2 ? 9 - Math.round(imageWriteParam.getCompressionQuality() * 8.0f) : 1), 1024);
        if (map.containsKey(317) && map.get(317).getValue().equals(2)) {
            deflaterOutputStream = new nzh(deflaterOutputStream, renderedImage.getTileWidth(), renderedImage.getTile(0, 0).getNumBands(), renderedImage.getColorModel().getComponentSize(0), this.imageOutput.getByteOrder());
        }
        return new DataOutputStream(deflaterOutputStream);
    }

    @Override // javax.imageio.ImageWriter
    public void endWriteSequence() throws IOException {
        if (!this.f94173e) {
            throw new IllegalStateException("prepareWriteSequence() must be called before endWriteSequence()!");
        }
        this.f94173e = false;
        this.f94174f = null;
        this.f94175g = -1L;
        this.imageOutput.flush();
    }

    /* renamed from: f */
    public final void m60653f(ByteBuffer byteBuffer, DataOutput dataOutput) throws IOException {
        byteBuffer.flip();
        dataOutput.write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.remaining());
        byteBuffer.clear();
    }

    /* renamed from: g */
    public final int m60654g(ColorModel colorModel) {
        if (colorModel.getPixelSize() == 1) {
            if (colorModel instanceof IndexColorModel) {
                if (colorModel.getRGB(0) == -1 && colorModel.getRGB(1) == -16777216) {
                    return 0;
                }
                if (colorModel.getRGB(0) != -16777216 || colorModel.getRGB(1) != -1) {
                    return 3;
                }
            }
            return 1;
        }
        if (colorModel instanceof IndexColorModel) {
            return 3;
        }
        int type = colorModel.getColorSpace().getType();
        if (type == 5) {
            return 2;
        }
        if (type == 6) {
            return 1;
        }
        if (type == 9) {
            return 5;
        }
        throw new IllegalArgumentException("Can't determine PhotometricInterpretation for color model: " + colorModel);
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return super.getDefaultStreamMetadata(imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new TIFFImageWriteParam();
    }

    /* renamed from: h */
    public final TIFFImageMetadata m60655h(Directory directory, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        Validate.notNull(imageTypeSpecifier, "imageType");
        LinkedHashMap linkedHashMap = new LinkedHashMap(directory != null ? directory.size() + 10 : 20);
        if (directory != null) {
            for (Entry entry : directory) {
                linkedHashMap.put((Integer) entry.getIdentifier(), entry);
            }
        }
        linkedHashMap.put(262, new C16968a(262, (short) 3, Integer.valueOf(m60654g(imageTypeSpecifier.getColorModel()))));
        return new TIFFImageMetadata((Collection<Entry>) linkedHashMap.values());
    }

    /* renamed from: i */
    public final int m60656i(int i) {
        return i * 257;
    }

    /* renamed from: j */
    public final void m60657j(DataOutput dataOutput, RenderedImage renderedImage, int i, int[] iArr, int[] iArr2) throws IOException {
        int i2;
        int i3;
        Raster raster;
        int i4;
        int i5 = i;
        processImageStarted(0);
        int minTileY = renderedImage.getMinTileY();
        int numYTiles = renderedImage.getNumYTiles() + minTileY;
        int minTileX = renderedImage.getMinTileX();
        int numXTiles = renderedImage.getNumXTiles() + minTileX;
        int tileHeight = renderedImage.getTileHeight();
        int tileWidth = renderedImage.getTileWidth();
        int sampleSize = renderedImage.getSampleModel().getSampleSize(0);
        int numBands = renderedImage.getSampleModel().getNumBands();
        ByteBuffer allocate = ByteBuffer.allocate((((tileWidth * numBands) * sampleSize) + 7) / 8);
        while (minTileY < numYTiles) {
            int i6 = minTileX;
            while (i6 < numXTiles) {
                Raster tile = renderedImage.getTile(i6, minTileY);
                int minX = tile.getMinX() - tile.getSampleModelTranslateX();
                int minY = tile.getMinY() - tile.getSampleModelTranslateY();
                int width = ((tile.getSampleModel().getWidth() * sampleSize) + 7) / 8;
                DataBuffer dataBuffer = tile.getDataBuffer();
                int i7 = minTileX;
                int dataType = dataBuffer.getDataType();
                int i8 = numXTiles;
                if (dataType == 0) {
                    i2 = minTileY;
                    i3 = numYTiles;
                    int i9 = ((tileWidth * sampleSize) + 7) / 8;
                    int i10 = minX % 8;
                    WritableRaster createCompatibleWritableRaster = i10 != 0 ? tile.createCompatibleWritableRaster(tile.getWidth(), 1) : null;
                    DataBuffer dataBuffer2 = i10 != 0 ? createCompatibleWritableRaster.getDataBuffer() : null;
                    int i11 = 0;
                    while (i11 < dataBuffer.getNumBanks()) {
                        int i12 = tileWidth;
                        int i13 = minY;
                        while (i13 < tileHeight + minY) {
                            int i14 = i13 * width * numBands;
                            if (i10 != 0) {
                                raster = tile;
                                i4 = tileHeight;
                                createCompatibleWritableRaster.setDataElements(0, 0, tile.createChild(0, i13 - minY, tile.getWidth(), 1, 0, 0, null));
                            } else {
                                raster = tile;
                                i4 = tileHeight;
                            }
                            int i15 = minX;
                            while (i15 < i9 + minX) {
                                int i16 = (i15 * numBands) + i14;
                                int i17 = i9;
                                int i18 = 0;
                                while (i18 < numBands) {
                                    WritableRaster writableRaster = createCompatibleWritableRaster;
                                    if (sampleSize == 8 || i10 == 0) {
                                        allocate.put((byte) (dataBuffer.getElem(i11, iArr[i18] + i16) & 255));
                                    } else {
                                        allocate.put((byte) (dataBuffer2.getElem(i11, (i15 - minX) + iArr[i18]) & 255));
                                    }
                                    i18++;
                                    createCompatibleWritableRaster = writableRaster;
                                }
                                i15++;
                                i9 = i17;
                            }
                            int i19 = i9;
                            WritableRaster writableRaster2 = createCompatibleWritableRaster;
                            m60653f(allocate, dataOutput);
                            if (dataOutput instanceof DataOutputStream) {
                                ((DataOutputStream) dataOutput).flush();
                            }
                            i13++;
                            tileHeight = i4;
                            i9 = i19;
                            createCompatibleWritableRaster = writableRaster2;
                            tile = raster;
                        }
                        i11++;
                        tileWidth = i12;
                    }
                } else if (dataType == 1 || dataType == 2) {
                    i2 = minTileY;
                    i3 = numYTiles;
                    if (i5 != 1) {
                        throw new IllegalArgumentException("Not implemented for data type: " + dataBuffer.getDataType());
                    }
                    for (int i20 = 0; i20 < dataBuffer.getNumBanks(); i20++) {
                        for (int i21 = minY; i21 < tileHeight + minY; i21++) {
                            int i22 = (i21 * width) / 2;
                            for (int i23 = minX; i23 < tileWidth + minX; i23++) {
                                allocate.putShort((short) (dataBuffer.getElem(i20, i22 + i23) & 65535));
                            }
                            m60653f(allocate, dataOutput);
                            if (dataOutput instanceof DataOutputStream) {
                                ((DataOutputStream) dataOutput).flush();
                            }
                        }
                    }
                } else {
                    if (dataType != 3) {
                        throw new IllegalArgumentException("Not implemented for data type: " + dataBuffer.getDataType());
                    }
                    if (1 == i5) {
                        for (int i24 = 0; i24 < dataBuffer.getNumBanks(); i24++) {
                            int i25 = minY;
                            while (i25 < tileHeight + minY) {
                                int i26 = (i25 * width) / 4;
                                int i27 = numYTiles;
                                for (int i28 = minX; i28 < tileWidth + minX; i28++) {
                                    allocate.putInt(dataBuffer.getElem(i24, i26 + i28));
                                }
                                m60653f(allocate, dataOutput);
                                if (dataOutput instanceof DataOutputStream) {
                                    ((DataOutputStream) dataOutput).flush();
                                }
                                i25++;
                                numYTiles = i27;
                            }
                        }
                        i3 = numYTiles;
                    } else {
                        i3 = numYTiles;
                        for (int i29 = 0; i29 < dataBuffer.getNumBanks(); i29++) {
                            int i30 = 0;
                            while (i30 < tileHeight) {
                                int i31 = i30 * tileWidth;
                                int i32 = 0;
                                while (i32 < tileWidth) {
                                    int elem = dataBuffer.getElem(i29, i31 + i32);
                                    int i33 = i31;
                                    int i34 = 0;
                                    while (i34 < numBands) {
                                        allocate.put((byte) ((elem >> iArr2[i34]) & 255));
                                        i34++;
                                        minTileY = minTileY;
                                    }
                                    i32++;
                                    i31 = i33;
                                }
                                int i35 = minTileY;
                                m60653f(allocate, dataOutput);
                                if (dataOutput instanceof DataOutputStream) {
                                    ((DataOutputStream) dataOutput).flush();
                                }
                                i30++;
                                minTileY = i35;
                            }
                        }
                    }
                    i2 = minTileY;
                }
                i6++;
                i5 = i;
                tileHeight = tileHeight;
                minTileX = i7;
                numXTiles = i8;
                numYTiles = i3;
                minTileY = i2;
                tileWidth = tileWidth;
            }
            int i36 = minTileY;
            int i37 = numYTiles;
            int i38 = minTileX;
            int i39 = numXTiles;
            int i40 = tileHeight;
            int i41 = tileWidth;
            if (dataOutput instanceof DataOutputStream) {
                ((DataOutputStream) dataOutput).flush();
            }
            processImageProgress((i36 * 100.0f) / i37);
            minTileY = i36 + 1;
            numYTiles = i37;
            tileHeight = i40;
            minTileX = i38;
            numXTiles = i39;
            tileWidth = i41;
            i5 = i;
        }
        if (dataOutput instanceof DataOutputStream) {
            ((DataOutputStream) dataOutput).close();
        }
        processImageComplete();
    }

    /* renamed from: k */
    public final long m60658k(IIOImage iIOImage, ImageWriteParam imageWriteParam, EXIFWriter eXIFWriter, long j) throws IOException {
        int[] iArr;
        LinkedHashMap linkedHashMap;
        long j2;
        long j3;
        RenderedImage renderedImage = iIOImage.getRenderedImage();
        TIFFImageMetadata convertImageMetadata = iIOImage.getMetadata() != null ? convertImageMetadata(iIOImage.getMetadata(), ImageTypeSpecifier.createFromRenderedImage(renderedImage), imageWriteParam) : getDefaultImageMetadata(ImageTypeSpecifier.createFromRenderedImage(renderedImage), imageWriteParam);
        ColorModel colorModel = renderedImage.getColorModel();
        SampleModel sampleModel = renderedImage.getSampleModel();
        int numBands = sampleModel.getNumBands();
        int m60650c = m60650c(sampleModel);
        int[] iArr2 = null;
        if (sampleModel instanceof ComponentSampleModel) {
            iArr = ((ComponentSampleModel) sampleModel).getBandOffsets();
        } else if (sampleModel instanceof SinglePixelPackedSampleModel) {
            iArr2 = ((SinglePixelPackedSampleModel) sampleModel).getBitOffsets();
            iArr = null;
        } else {
            if (!(sampleModel instanceof MultiPixelPackedSampleModel)) {
                throw new IllegalArgumentException("Unknown bit/bandOffsets for sample model: " + sampleModel);
            }
            iArr = new int[]{0};
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        int[] iArr3 = iArr2;
        int[] iArr4 = iArr;
        linkedHashMap2.put(256, new C16968a(256, Integer.valueOf(renderedImage.getWidth())));
        linkedHashMap2.put(257, new C16968a(257, Integer.valueOf(renderedImage.getHeight())));
        linkedHashMap2.put(274, new C16968a(274, 1));
        linkedHashMap2.put(258, new C16968a(258, m60649b(sampleModel.getSampleSize())));
        if (numBands > colorModel.getNumColorComponents()) {
            if (colorModel.hasAlpha()) {
                linkedHashMap2.put(338, new C16968a(338, Integer.valueOf(colorModel.isAlphaPremultiplied() ? 1 : 2)));
            } else {
                linkedHashMap2.put(338, new C16968a(338, 0));
            }
        }
        int m60648b = ((imageWriteParam != null && imageWriteParam.getCompressionMode() != 3) || iIOImage.getMetadata() == null || convertImageMetadata.m60596f().getEntryById(259) == null) ? TIFFImageWriteParam.m60648b(imageWriteParam) : ((Integer) convertImageMetadata.m60596f().getEntryById(259).getValue()).intValue();
        linkedHashMap2.put(259, new C16968a(259, Integer.valueOf(m60648b)));
        if (m60648b == 3) {
            Entry entryById = convertImageMetadata.m60596f().getEntryById(292);
            if (entryById == null) {
                entryById = new C16968a(292, 1L);
            }
            linkedHashMap2.put(292, entryById);
        } else if (m60648b == 4) {
            Entry entryById2 = convertImageMetadata.m60596f().getEntryById(293);
            if (entryById2 == null) {
                entryById2 = new C16968a(293, 0L);
            }
            linkedHashMap2.put(293, entryById2);
        } else if ((m60648b == 5 || m60648b == 8 || m60648b == 32946) && m60650c >= 8) {
            linkedHashMap2.put(317, new C16968a(317, 2));
        }
        int m60654g = m60648b == 7 ? 6 : m60654g(colorModel);
        linkedHashMap2.put(262, new C16968a(262, Integer.valueOf(m60654g)));
        if (m60654g == 3 && (colorModel instanceof IndexColorModel)) {
            linkedHashMap2.put(320, new C16968a(320, m60651d((IndexColorModel) colorModel)));
            linkedHashMap2.put(277, new C16968a(277, 1));
        } else {
            linkedHashMap2.put(277, new C16968a(277, Integer.valueOf(numBands)));
            ColorSpace colorSpace = colorModel.getColorSpace();
            if ((colorSpace instanceof ICC_ColorSpace) && !colorSpace.isCS_sRGB()) {
                linkedHashMap2.put(34675, new C16968a(34675, ((ICC_ColorSpace) colorSpace).getProfile().getData()));
            }
        }
        if (sampleModel.getDataType() == 2) {
            linkedHashMap2.put(339, new C16968a(339, 2));
        }
        Entry entryById3 = convertImageMetadata.m60596f().getEntryById(305);
        if (entryById3 == null) {
            entryById3 = new C16968a(305, "TwelveMonkeys ImageIO TIFF writer " + this.originatingProvider.getVersion());
        }
        linkedHashMap2.put(305, entryById3);
        int[] iArr5 = {274, 306, 269, 270, 271, 272, 285, 297, 315, 316, 33432};
        for (int i = 0; i < 11; i++) {
            int i2 = iArr5[i];
            Entry entryById4 = convertImageMetadata.m60596f().getEntryById(Integer.valueOf(i2));
            if (entryById4 != null) {
                linkedHashMap2.put(Integer.valueOf(i2), entryById4);
            }
        }
        Entry entryById5 = convertImageMetadata.m60596f().getEntryById(282);
        if (entryById5 == null) {
            entryById5 = new C16968a(282, STANDARD_DPI);
        }
        linkedHashMap2.put(282, entryById5);
        Entry entryById6 = convertImageMetadata.m60596f().getEntryById(283);
        if (entryById6 == null) {
            entryById6 = new C16968a(283, STANDARD_DPI);
        }
        linkedHashMap2.put(283, entryById6);
        Entry entryById7 = convertImageMetadata.m60596f().getEntryById(296);
        if (entryById7 == null) {
            entryById7 = new C16968a(296, 2);
        }
        linkedHashMap2.put(296, entryById7);
        linkedHashMap2.put(278, new C16968a(278, Integer.valueOf(renderedImage.getHeight())));
        linkedHashMap2.put(279, new C16968a(279, -1));
        linkedHashMap2.put(273, new C16968a(273, -1));
        if (m60648b == 1) {
            long streamPosition = this.imageOutput.getStreamPosition();
            long computeIFDSize = streamPosition + 4 + eXIFWriter.computeIFDSize(linkedHashMap2.values()) + 4;
            long width = (((renderedImage.getWidth() * renderedImage.getHeight()) * m60650c) + 7) / 8;
            linkedHashMap2.put(273, new C16968a(273, Long.valueOf(computeIFDSize)));
            linkedHashMap2.put(279, new C16968a(279, Long.valueOf(width)));
            long writeIFD = eXIFWriter.writeIFD(linkedHashMap2.values(), this.imageOutput);
            j3 = this.imageOutput.getStreamPosition();
            linkedHashMap = linkedHashMap2;
            j2 = j;
            if (streamPosition > j2) {
                this.imageOutput.seek(j2);
                this.imageOutput.writeInt((int) writeIFD);
                this.imageOutput.seek(j3);
            }
            this.imageOutput.writeInt(0);
        } else {
            linkedHashMap = linkedHashMap2;
            j2 = j;
            this.imageOutput.writeInt(0);
            j3 = -1;
        }
        long streamPosition2 = this.imageOutput.getStreamPosition();
        if (m60648b == 7) {
            Iterator<ImageWriter> imageWritersByFormatName = ImageIO.getImageWritersByFormatName("JPEG");
            if (!imageWritersByFormatName.hasNext()) {
                throw new IIOException("No JPEG ImageWriter found!");
            }
            ImageWriter next = imageWritersByFormatName.next();
            try {
                next.setOutput(new SubImageOutputStream(this.imageOutput));
                next.write(renderedImage);
            } finally {
                next.dispose();
            }
        } else {
            m60657j(m60652e(renderedImage, imageWriteParam, linkedHashMap), renderedImage, numBands, iArr4, iArr3);
        }
        long streamPosition3 = this.imageOutput.getStreamPosition() - streamPosition2;
        if (m60648b == 1) {
            return j3;
        }
        linkedHashMap.put(273, new C16968a(273, Long.valueOf(streamPosition2)));
        linkedHashMap.put(279, new C16968a(279, Long.valueOf(streamPosition3)));
        long writeIFD2 = eXIFWriter.writeIFD(linkedHashMap.values(), this.imageOutput);
        long streamPosition4 = this.imageOutput.getStreamPosition();
        this.imageOutput.seek(j2);
        this.imageOutput.writeInt((int) writeIFD2);
        this.imageOutput.seek(streamPosition4);
        this.imageOutput.writeInt(0);
        return streamPosition4;
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        if (this.f94173e) {
            throw new IllegalStateException("sequence writing has already been started!");
        }
        assertOutput();
        this.f94173e = true;
        EXIFWriter eXIFWriter = new EXIFWriter();
        this.f94174f = eXIFWriter;
        eXIFWriter.writeTIFFHeader(this.imageOutput);
        this.f94175g = this.imageOutput.getStreamPosition();
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase
    public void resetMembers() {
        super.resetMembers();
        this.f94173e = false;
        this.f94174f = null;
        this.f94175g = -1L;
    }

    @Override // com.twelvemonkeys.imageio.ImageWriterBase, javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        super.setOutput(obj);
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        assertOutput();
        EXIFWriter eXIFWriter = new EXIFWriter();
        eXIFWriter.writeTIFFHeader(this.imageOutput);
        m60658k(iIOImage, imageWriteParam, eXIFWriter, this.imageOutput.getStreamPosition());
        this.imageOutput.flush();
    }

    @Override // javax.imageio.ImageWriter
    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        if (!this.f94173e) {
            throw new IllegalStateException("prepareWriteSequence() must be called before writeToSequence()!");
        }
        long j = this.f94175g;
        if (j > 0) {
            this.imageOutput.flushBefore(j);
        }
        this.f94175g = m60658k(iIOImage, imageWriteParam, this.f94174f, this.f94175g);
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public TIFFImageMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        Directory m60596f;
        Validate.notNull(iIOMetadata, "inData");
        Validate.notNull(imageTypeSpecifier, "imageType");
        if (iIOMetadata instanceof TIFFImageMetadata) {
            m60596f = ((TIFFImageMetadata) iIOMetadata).m60596f();
        } else {
            TIFFImageMetadata tIFFImageMetadata = new TIFFImageMetadata(Collections.emptySet());
            try {
                if (Arrays.asList(iIOMetadata.getMetadataFormatNames()).contains(TIFFMedataFormat.SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME)) {
                    tIFFImageMetadata.setFromTree(TIFFMedataFormat.SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME, iIOMetadata.getAsTree(TIFFMedataFormat.SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME));
                } else {
                    if (!iIOMetadata.isStandardMetadataFormatSupported()) {
                        return null;
                    }
                    tIFFImageMetadata.setFromTree(IIOMetadataFormatImpl.standardMetadataFormatName, iIOMetadata.getAsTree(IIOMetadataFormatImpl.standardMetadataFormatName));
                }
            } catch (IIOInvalidTreeException unused) {
            }
            m60596f = tIFFImageMetadata.m60596f();
        }
        return m60655h(m60596f, imageTypeSpecifier, imageWriteParam);
    }

    @Override // javax.imageio.ImageWriter
    public TIFFImageMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        return m60655h(null, imageTypeSpecifier, imageWriteParam);
    }
}
