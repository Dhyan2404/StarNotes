package com.sun.imageio.plugins.wbmp;

import com.sun.imageio.plugins.common.I18N;
import com.sun.imageio.plugins.common.ReaderUtil;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.imageio.IIOException;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class WBMPImageReader extends ImageReader {
    private boolean gotHeader;
    private int height;
    private ImageInputStream iis;
    private WBMPMetadata metadata;
    private int wbmpType;
    private int width;

    public WBMPImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.iis = null;
        this.gotHeader = false;
    }

    private void checkIndex(int i) {
        if (i != 0) {
            throw new IndexOutOfBoundsException(I18N.getString("WBMPImageReader0"));
        }
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
        readHeader();
        return this.height;
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        checkIndex(i);
        if (this.metadata == null) {
            readHeader();
        }
        return this.metadata;
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException {
        checkIndex(i);
        readHeader();
        BufferedImage bufferedImage = new BufferedImage(1, 1, 12);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new ImageTypeSpecifier(bufferedImage));
        return arrayList.iterator();
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
        readHeader();
        return this.width;
    }

    @Override // javax.imageio.ImageReader
    public boolean isRandomAccessEasy(int i) throws IOException {
        checkIndex(i);
        return true;
    }

    public boolean isValidWbmpType(int i) {
        return i == 0;
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IOException {
        if (this.iis == null) {
            throw new IllegalStateException(I18N.getString("WBMPImageReader1"));
        }
        checkIndex(i);
        clearAbortRequest();
        processImageStarted(i);
        ImageReadParam defaultReadParam = imageReadParam == null ? getDefaultReadParam() : imageReadParam;
        readHeader();
        Rectangle rectangle = new Rectangle(0, 0, 0, 0);
        Rectangle rectangle2 = new Rectangle(0, 0, 0, 0);
        ImageReader.computeRegions(defaultReadParam, this.width, this.height, defaultReadParam.getDestination(), rectangle, rectangle2);
        int sourceXSubsampling = defaultReadParam.getSourceXSubsampling();
        int sourceYSubsampling = defaultReadParam.getSourceYSubsampling();
        defaultReadParam.getSubsamplingXOffset();
        defaultReadParam.getSubsamplingYOffset();
        BufferedImage destination = defaultReadParam.getDestination();
        if (destination == null) {
            destination = new BufferedImage(rectangle2.f97732x + rectangle2.width, rectangle2.f97733y + rectangle2.height, 12);
        }
        BufferedImage bufferedImage = destination;
        boolean z = rectangle2.equals(new Rectangle(0, 0, this.width, this.height)) && rectangle2.equals(new Rectangle(0, 0, bufferedImage.getWidth(), bufferedImage.getHeight()));
        WritableRaster writableTile = bufferedImage.getWritableTile(0, 0);
        MultiPixelPackedSampleModel multiPixelPackedSampleModel = (MultiPixelPackedSampleModel) bufferedImage.getSampleModel();
        if (!z) {
            int i2 = (this.width + 7) / 8;
            byte[] bArr = new byte[i2];
            byte[] data = ((DataBufferByte) writableTile.getDataBuffer()).getData();
            int scanlineStride = multiPixelPackedSampleModel.getScanlineStride();
            this.iis.skipBytes(rectangle.f97733y * i2);
            int i3 = i2 * (sourceYSubsampling - 1);
            int i4 = rectangle2.width;
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            int[] iArr4 = new int[i4];
            int i5 = rectangle2.f97732x;
            int i6 = rectangle.f97732x;
            int i7 = 0;
            while (i5 < rectangle2.f97732x + rectangle2.width) {
                iArr3[i7] = i6 >> 3;
                iArr[i7] = 7 - (i6 & 7);
                iArr4[i7] = i5 >> 3;
                iArr2[i7] = 7 - (i5 & 7);
                i5++;
                i7++;
                i6 += sourceXSubsampling;
            }
            int i8 = rectangle2.f97733y * scanlineStride;
            int i9 = 0;
            while (i9 < rectangle2.height && !abortRequested()) {
                this.iis.read(bArr, 0, i2);
                for (int i10 = 0; i10 < rectangle2.width; i10++) {
                    int i11 = (bArr[iArr3[i10]] >> iArr[i10]) & 1;
                    int i12 = iArr4[i10] + i8;
                    data[i12] = (byte) (data[i12] | (i11 << iArr2[i10]));
                }
                this.iis.skipBytes(i3);
                processImageUpdate(bufferedImage, 0, i9, rectangle2.width, 1, 1, 1, new int[]{0});
                processImageProgress((i9 * 100.0f) / rectangle2.height);
                i9++;
                i8 += scanlineStride;
                i3 = i3;
                bArr = bArr;
                iArr = iArr;
                iArr4 = iArr4;
                iArr3 = iArr3;
                iArr2 = iArr2;
            }
        } else {
            if (abortRequested()) {
                processReadAborted();
                return bufferedImage;
            }
            this.iis.read(((DataBufferByte) writableTile.getDataBuffer()).getData(), 0, this.height * multiPixelPackedSampleModel.getScanlineStride());
            processImageUpdate(bufferedImage, 0, 0, this.width, this.height, 1, 1, new int[]{0});
            processImageProgress(100.0f);
        }
        if (abortRequested()) {
            processReadAborted();
        } else {
            processImageComplete();
        }
        return bufferedImage;
    }

    public void readHeader() throws IOException {
        if (this.gotHeader) {
            return;
        }
        if (this.iis == null) {
            throw new IllegalStateException("Input source not set!");
        }
        this.metadata = new WBMPMetadata();
        this.wbmpType = this.iis.readByte();
        if (this.iis.readByte() != 0 || !isValidWbmpType(this.wbmpType)) {
            throw new IIOException(I18N.getString("WBMPImageReader2"));
        }
        this.metadata.wbmpType = this.wbmpType;
        int readMultiByteInteger = ReaderUtil.readMultiByteInteger(this.iis);
        this.width = readMultiByteInteger;
        this.metadata.width = readMultiByteInteger;
        int readMultiByteInteger2 = ReaderUtil.readMultiByteInteger(this.iis);
        this.height = readMultiByteInteger2;
        this.metadata.height = readMultiByteInteger2;
        this.gotHeader = true;
    }

    @Override // javax.imageio.ImageReader
    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        return read(i, imageReadParam).getData();
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        super.reset();
        this.iis = null;
        this.gotHeader = false;
    }

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        super.setInput(obj, z, z2);
        this.iis = (ImageInputStream) obj;
        this.gotHeader = false;
    }
}
