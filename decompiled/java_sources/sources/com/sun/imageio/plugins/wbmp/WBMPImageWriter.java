package com.sun.imageio.plugins.wbmp;

import com.sun.imageio.plugins.common.I18N;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.io.IOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class WBMPImageWriter extends ImageWriter {
    private ImageOutputStream stream;

    public WBMPImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.stream = null;
    }

    private void checkSampleModel(SampleModel sampleModel) {
        int dataType = sampleModel.getDataType();
        if (dataType < 0 || dataType > 3 || sampleModel.getNumBands() != 1 || sampleModel.getSampleSize(0) != 1) {
            throw new IllegalArgumentException(I18N.getString("WBMPImageWriter2"));
        }
    }

    private static int getNumBits(int i) {
        int i2 = 32;
        for (int i3 = Integer.MIN_VALUE; i3 != 0 && (i & i3) == 0; i3 >>>= 1) {
            i2--;
        }
        return i2;
    }

    private static byte[] intToMultiByte(int i) {
        int numBits = (getNumBits(i) + 6) / 7;
        byte[] bArr = new byte[numBits];
        int i2 = numBits - 1;
        for (int i3 = 0; i3 <= i2; i3++) {
            byte b = (byte) ((i >>> ((i2 - i3) * 7)) & 127);
            bArr[i3] = b;
            if (i3 != i2) {
                bArr[i3] = (byte) (b | Byte.MIN_VALUE);
            }
        }
        return bArr;
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
        WBMPMetadata wBMPMetadata = new WBMPMetadata();
        wBMPMetadata.wbmpType = 0;
        return wBMPMetadata;
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        return null;
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
                throw new IllegalArgumentException(I18N.getString("WBMPImageWriter"));
            }
            this.stream = (ImageOutputStream) obj;
        }
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        RenderedImage renderedImage;
        SampleModel sampleModel;
        Raster data;
        int i;
        int i2;
        boolean z;
        if (this.stream == null) {
            throw new IllegalStateException(I18N.getString("WBMPImageWriter3"));
        }
        if (iIOImage == null) {
            throw new IllegalArgumentException(I18N.getString("WBMPImageWriter4"));
        }
        clearAbortRequest();
        processImageStarted(0);
        ImageWriteParam defaultWriteParam = imageWriteParam == null ? getDefaultWriteParam() : imageWriteParam;
        boolean hasRaster = iIOImage.hasRaster();
        Rectangle sourceRegion = defaultWriteParam.getSourceRegion();
        if (hasRaster) {
            data = iIOImage.getRaster();
            sampleModel = data.getSampleModel();
            renderedImage = null;
        } else {
            renderedImage = iIOImage.getRenderedImage();
            sampleModel = renderedImage.getSampleModel();
            data = renderedImage.getData();
        }
        Raster raster = data;
        checkSampleModel(sampleModel);
        Rectangle bounds = sourceRegion == null ? raster.getBounds() : sourceRegion.intersection(raster.getBounds());
        if (bounds.isEmpty()) {
            throw new RuntimeException(I18N.getString("WBMPImageWriter1"));
        }
        int sourceXSubsampling = defaultWriteParam.getSourceXSubsampling();
        int sourceYSubsampling = defaultWriteParam.getSourceYSubsampling();
        int subsamplingXOffset = defaultWriteParam.getSubsamplingXOffset();
        int subsamplingYOffset = defaultWriteParam.getSubsamplingYOffset();
        bounds.translate(subsamplingXOffset, subsamplingYOffset);
        int i3 = bounds.width - subsamplingXOffset;
        bounds.width = i3;
        int i4 = bounds.height - subsamplingYOffset;
        bounds.height = i4;
        int i5 = bounds.f97732x / sourceXSubsampling;
        int i6 = bounds.f97733y / sourceYSubsampling;
        int i7 = ((i3 + sourceXSubsampling) - 1) / sourceXSubsampling;
        int i8 = ((i4 + sourceYSubsampling) - 1) / sourceYSubsampling;
        Rectangle rectangle = new Rectangle(i5, i6, i7, i8);
        SampleModel createCompatibleSampleModel = sampleModel.createCompatibleSampleModel(i7, i8);
        if (createCompatibleSampleModel.getDataType() != 0 || !(createCompatibleSampleModel instanceof MultiPixelPackedSampleModel) || ((MultiPixelPackedSampleModel) createCompatibleSampleModel).getDataBitOffset() != 0) {
            createCompatibleSampleModel = new MultiPixelPackedSampleModel(0, i7, i8, 1, (i7 + 7) >> 3, 0);
        }
        if (rectangle.equals(bounds)) {
            i = i8;
            i2 = i7;
        } else if (sourceXSubsampling == 1 && sourceYSubsampling == 1) {
            raster = raster.createChild(raster.getMinX(), raster.getMinY(), i7, i8, i5, i6, null);
            i = i8;
            i2 = i7;
        } else {
            i = i8;
            i2 = i7;
            WritableRaster createWritableRaster = Raster.createWritableRaster(createCompatibleSampleModel, new Point(i5, i6));
            byte[] data2 = ((DataBufferByte) createWritableRaster.getDataBuffer()).getData();
            int i9 = bounds.f97733y;
            int i10 = 0;
            int i11 = i6;
            while (i11 < i6 + i) {
                int i12 = bounds.f97732x;
                Rectangle rectangle2 = bounds;
                int i13 = 0;
                while (i13 < i2) {
                    WritableRaster writableRaster = createWritableRaster;
                    int i14 = i10 + (i13 >> 3);
                    data2[i14] = (byte) (data2[i14] | (raster.getSample(i12, i9, 0) << (7 - (i13 & 7))));
                    i13++;
                    i12 += sourceXSubsampling;
                    createWritableRaster = writableRaster;
                    raster = raster;
                }
                i10 += (i2 + 7) >> 3;
                i11++;
                i9 += sourceYSubsampling;
                bounds = rectangle2;
                createWritableRaster = createWritableRaster;
            }
            raster = createWritableRaster;
        }
        if (!createCompatibleSampleModel.equals(raster.getSampleModel())) {
            WritableRaster createWritableRaster2 = Raster.createWritableRaster(createCompatibleSampleModel, new Point(raster.getMinX(), raster.getMinY()));
            createWritableRaster2.setRect(raster);
            raster = createWritableRaster2;
        }
        if (hasRaster || !(renderedImage.getColorModel() instanceof IndexColorModel)) {
            z = false;
        } else {
            IndexColorModel indexColorModel = (IndexColorModel) renderedImage.getColorModel();
            z = indexColorModel.getRed(0) > indexColorModel.getRed(1);
        }
        int scanlineStride = ((MultiPixelPackedSampleModel) createCompatibleSampleModel).getScanlineStride();
        int i15 = (i2 + 7) / 8;
        byte[] data3 = ((DataBufferByte) raster.getDataBuffer()).getData();
        this.stream.write(0);
        this.stream.write(0);
        this.stream.write(intToMultiByte(i2));
        this.stream.write(intToMultiByte(i));
        if (!z && scanlineStride == i15) {
            this.stream.write(data3, 0, i * i15);
            processImageProgress(100.0f);
        } else if (z) {
            byte[] bArr = new byte[i15];
            int i16 = 0;
            for (int i17 = 0; i17 < i && !abortRequested(); i17++) {
                for (int i18 = 0; i18 < i15; i18++) {
                    bArr[i18] = (byte) (~data3[i18 + i16]);
                }
                this.stream.write(bArr, 0, i15);
                i16 += scanlineStride;
                processImageProgress((i17 * 100.0f) / i);
            }
        } else {
            int i19 = 0;
            for (int i20 = 0; i20 < i && !abortRequested(); i20++) {
                this.stream.write(data3, i19, i15);
                i19 += scanlineStride;
                processImageProgress((i20 * 100.0f) / i);
            }
        }
        if (abortRequested()) {
            processWriteAborted();
            return;
        }
        processImageComplete();
        ImageOutputStream imageOutputStream = this.stream;
        imageOutputStream.flushBefore(imageOutputStream.getStreamPosition());
    }
}
