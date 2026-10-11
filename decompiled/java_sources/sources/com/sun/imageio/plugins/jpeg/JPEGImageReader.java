package com.sun.imageio.plugins.jpeg;

import com.sun.imageio.plugins.jpeg.JPEG;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.color.CMMException;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorConvertOp;
import java.awt.image.ColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.jpeg.JPEGHuffmanTable;
import javax.imageio.plugins.jpeg.JPEGImageReadParam;
import javax.imageio.plugins.jpeg.JPEGQTable;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes9.dex */
public class JPEGImageReader extends ImageReader {
    private static final int MAX_WARNING = 2;
    private static final int MIN_ESTIMATED_PASSES = 10;
    private static final int UNKNOWN = -1;
    protected static final int WARNING_IGNORE_INVALID_ICC = 2;
    protected static final int WARNING_NO_EOI = 0;
    protected static final int WARNING_NO_JFIF_IN_THUMB = 1;
    private JPEGHuffmanTable[] abbrevACHuffmanTables;
    private JPEGHuffmanTable[] abbrevDCHuffmanTables;
    private JPEGQTable[] abbrevQTables;
    private DataBufferByte buffer;
    private CallBackLock cbLock;
    private int colorSpaceCode;
    private ColorConvertOp convert;
    private int currentImage;
    private boolean debug;
    private Rectangle destROI;
    private int[] destinationBands;
    private DisposerRecord disposerRecord;
    private Object disposerReferent;
    private boolean haveSeeked;
    private int height;
    private ColorSpace iccCS;
    private ImageInputStream iis;
    private BufferedImage image;
    private JPEGMetadata imageMetadata;
    private int imageMetadataIndex;
    private List<Long> imagePositions;
    private int knownPassCount;
    private int maxProgressivePass;
    private int minProgressivePass;
    private int numComponents;
    private int numImages;
    private int outColorSpaceCode;
    private int pass;
    private float percentToDate;
    private float previousPassPercentage;
    private int progInterval;
    private WritableRaster raster;
    private JPEGMetadata streamMetadata;
    private long structPointer;
    private boolean tablesOnlyChecked;
    private WritableRaster target;
    private int theLockCount;
    private Thread theThread;
    private int width;

    /* loaded from: classes9.dex */
    public static class CallBackLock {
        private State lockState = State.Unlocked;

        /* loaded from: classes9.dex */
        public enum State {
            Unlocked,
            Locked
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void lock() {
            this.lockState = State.Locked;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unlock() {
            this.lockState = State.Unlocked;
        }

        public void check() {
            if (this.lockState != State.Unlocked) {
                throw new IllegalStateException("Access to the reader is not allowed");
            }
        }
    }

    /* loaded from: classes9.dex */
    public static class JPEGReaderDisposerRecord implements DisposerRecord {
        private long pData;

        public JPEGReaderDisposerRecord(long j) {
            this.pData = j;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            long j = this.pData;
            if (j != 0) {
                JPEGImageReader.disposeReader(j);
                this.pData = 0L;
            }
        }
    }

    static {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.sun.imageio.plugins.jpeg.JPEGImageReader.1
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.loadLibrary("javajpeg");
                return null;
            }
        });
        initReaderIDs(ImageInputStream.class, JPEGQTable.class, JPEGHuffmanTable.class);
    }

    public JPEGImageReader(ImageReaderSpi imageReaderSpi) {
        super(imageReaderSpi);
        this.debug = false;
        this.structPointer = 0L;
        this.iis = null;
        this.imagePositions = null;
        this.numImages = 0;
        this.currentImage = -1;
        this.iccCS = null;
        this.convert = null;
        this.image = null;
        this.raster = null;
        this.target = null;
        this.buffer = null;
        this.destROI = null;
        this.destinationBands = null;
        this.streamMetadata = null;
        this.imageMetadata = null;
        this.imageMetadataIndex = -1;
        this.haveSeeked = false;
        this.abbrevQTables = null;
        this.abbrevDCHuffmanTables = null;
        this.abbrevACHuffmanTables = null;
        this.minProgressivePass = 0;
        this.maxProgressivePass = Integer.MAX_VALUE;
        this.knownPassCount = -1;
        this.pass = 0;
        this.percentToDate = 0.0f;
        this.previousPassPercentage = 0.0f;
        this.progInterval = 0;
        this.tablesOnlyChecked = false;
        this.disposerReferent = new Object();
        this.theThread = null;
        this.theLockCount = 0;
        this.cbLock = new CallBackLock();
        long initJPEGImageReader = initJPEGImageReader();
        this.structPointer = initJPEGImageReader;
        JPEGReaderDisposerRecord jPEGReaderDisposerRecord = new JPEGReaderDisposerRecord(initJPEGImageReader);
        this.disposerRecord = jPEGReaderDisposerRecord;
        Disposer.addRecord(this.disposerReferent, jPEGReaderDisposerRecord);
    }

    private native void abortRead(long j);

    private void acceptPixels(int i, boolean z) {
        ColorConvertOp colorConvertOp = this.convert;
        if (colorConvertOp != null) {
            WritableRaster writableRaster = this.raster;
            colorConvertOp.filter(writableRaster, writableRaster);
        }
        WritableRaster writableRaster2 = this.target;
        Rectangle rectangle = this.destROI;
        writableRaster2.setRect(rectangle.f97732x, rectangle.f97733y + i, this.raster);
        this.cbLock.lock();
        try {
            BufferedImage bufferedImage = this.image;
            Rectangle rectangle2 = this.destROI;
            processImageUpdate(bufferedImage, rectangle2.f97732x, rectangle2.f97733y + i, this.raster.getWidth(), 1, 1, 1, this.destinationBands);
            if (i > 0 && i % this.progInterval == 0) {
                int height = this.target.getHeight() - 1;
                float f = i / height;
                if (z) {
                    int i2 = this.knownPassCount;
                    if (i2 != -1) {
                        processImageProgress(((this.pass + f) * 100.0f) / i2);
                    } else {
                        if (this.maxProgressivePass != Integer.MAX_VALUE) {
                            processImageProgress(((this.pass + f) * 100.0f) / ((r12 - this.minProgressivePass) + 1));
                        } else {
                            int max = Math.max(2, 10 - this.pass);
                            int i3 = (this.pass + max) - 1;
                            int max2 = Math.max((height / 20) * i3, i3);
                            this.progInterval = max2;
                            if (i % max2 == 0) {
                                float f2 = this.previousPassPercentage;
                                this.percentToDate = f2 + (((1.0f - f2) * f) / max);
                                if (this.debug) {
                                    System.out.print("pass= " + this.pass);
                                    System.out.print(", y= " + i);
                                    System.out.print(", progInt= " + this.progInterval);
                                    System.out.print(", % of pass: " + f);
                                    System.out.print(", rem. passes: " + max);
                                    System.out.print(", prev%: " + this.previousPassPercentage);
                                    System.out.print(", %ToDate: " + this.percentToDate);
                                    System.out.print(" ");
                                }
                                processImageProgress(this.percentToDate * 100.0f);
                            }
                        }
                    }
                } else {
                    processImageProgress(f * 100.0f);
                }
            }
        } finally {
            this.cbLock.unlock();
        }
    }

    private void checkColorConversion(BufferedImage bufferedImage, ImageReadParam imageReadParam) throws IIOException {
        if (imageReadParam == null || (imageReadParam.getSourceBands() == null && imageReadParam.getDestinationBands() == null)) {
            ColorModel colorModel = bufferedImage.getColorModel();
            if (colorModel instanceof IndexColorModel) {
                throw new IIOException("IndexColorModel not supported");
            }
            ColorSpace colorSpace = colorModel.getColorSpace();
            int type = colorSpace.getType();
            this.convert = null;
            int i = this.outColorSpaceCode;
            if (i == 1) {
                if (type != 5) {
                    if (type != 6) {
                        throw new IIOException("Incompatible color conversion");
                    }
                    return;
                } else {
                    setOutColorSpace(this.structPointer, 2);
                    this.outColorSpaceCode = 2;
                    this.numComponents = 3;
                    return;
                }
            }
            if (i != 2) {
                throw new IIOException("Incompatible color conversion");
            }
            if (type == 6) {
                if (this.colorSpaceCode == 3) {
                    setOutColorSpace(this.structPointer, 1);
                    this.outColorSpaceCode = 1;
                    this.numComponents = 1;
                    return;
                }
                return;
            }
            if (this.iccCS != null && colorModel.getNumComponents() == this.numComponents && colorSpace != this.iccCS) {
                this.convert = new ColorConvertOp(this.iccCS, colorSpace, null);
                return;
            }
            if (this.iccCS == null && !colorSpace.isCS_sRGB() && colorModel.getNumComponents() == this.numComponents) {
                this.convert = new ColorConvertOp(JPEG.JCS.sRGB, colorSpace, null);
            } else if (type != 5) {
                throw new IIOException("Incompatible color conversion");
            }
        }
    }

    private void checkTablesOnly() throws IOException {
        if (this.debug) {
            System.out.println("Checking for tables-only image");
        }
        long streamPosition = this.iis.getStreamPosition();
        if (this.debug) {
            System.out.println("saved pos is " + streamPosition);
            System.out.println("length is " + this.iis.length());
        }
        if (readNativeHeader(true)) {
            if (this.debug) {
                System.out.println("tables-only image found");
                long streamPosition2 = this.iis.getStreamPosition();
                System.out.println("pos after return from native is " + streamPosition2);
            }
            if (!this.ignoreMetadata) {
                this.iis.seek(streamPosition);
                this.haveSeeked = true;
                this.streamMetadata = new JPEGMetadata(true, false, this.iis, this);
                long streamPosition3 = this.iis.getStreamPosition();
                if (this.debug) {
                    System.out.println("pos after constructing stream metadata is " + streamPosition3);
                }
            }
            if (hasNextImage()) {
                this.imagePositions.add(Long.valueOf(this.iis.getStreamPosition()));
            }
        } else {
            this.imagePositions.add(Long.valueOf(streamPosition));
            this.currentImage = 0;
        }
        if (this.seekForwardOnly && !this.imagePositions.isEmpty()) {
            List<Long> list = this.imagePositions;
            this.iis.flushBefore(list.get(list.size() - 1).longValue());
        }
        this.tablesOnlyChecked = true;
    }

    private native void clearNativeReadAbortFlag(long j);

    private synchronized void clearThreadLock() {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.theThread;
        if (thread == null || thread != currentThread) {
            throw new IllegalStateException("Attempt to clear thread lock  form wrong thread. Locked thread: " + this.theThread + "; current thread: " + currentThread);
        }
        int i = this.theLockCount - 1;
        this.theLockCount = i;
        if (i == 0) {
            this.theThread = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void disposeReader(long j);

    private ImageTypeProducer getImageType(int i) {
        if (i <= 0 || i >= 6) {
            return null;
        }
        return ImageTypeProducer.getTypeProducer(i);
    }

    private Iterator<ImageTypeSpecifier> getImageTypesOnThread(int i) throws IOException {
        if (this.currentImage != i) {
            this.cbLock.check();
            readHeader(i, true);
        }
        ImageTypeProducer imageType = getImageType(this.colorSpaceCode);
        ArrayList arrayList = new ArrayList(1);
        int i2 = this.colorSpaceCode;
        if (i2 == 1) {
            arrayList.add(imageType);
            arrayList.add(getImageType(2));
        } else if (i2 == 2) {
            arrayList.add(imageType);
            arrayList.add(getImageType(1));
        } else if (i2 == 3) {
            arrayList.add(getImageType(2));
            if (this.iccCS != null) {
                arrayList.add(new ImageTypeProducer() { // from class: com.sun.imageio.plugins.jpeg.JPEGImageReader.2
                    @Override // com.sun.imageio.plugins.jpeg.ImageTypeProducer
                    public ImageTypeSpecifier produce() {
                        return ImageTypeSpecifier.createInterleaved(JPEGImageReader.this.iccCS, JPEG.bOffsRGB, 0, false, false);
                    }
                });
            }
            arrayList.add(getImageType(1));
        }
        return new ImageTypeIterator(arrayList.iterator());
    }

    private int getNumImagesOnThread(boolean z) throws IOException {
        int i = this.numImages;
        if (i != 0) {
            return i;
        }
        if (this.iis == null) {
            throw new IllegalStateException("Input not set");
        }
        if (!z) {
            return -1;
        }
        if (this.seekForwardOnly) {
            throw new IllegalStateException("seekForwardOnly and allowSearch can't both be true!");
        }
        if (!this.tablesOnlyChecked) {
            checkTablesOnly();
        }
        this.iis.mark();
        boolean z2 = false;
        gotoImage(0);
        JPEGBuffer jPEGBuffer = new JPEGBuffer(this.iis);
        jPEGBuffer.loadBuf(0);
        while (!z2) {
            z2 = jPEGBuffer.scanForFF(this);
            byte[] bArr = jPEGBuffer.buf;
            int i2 = jPEGBuffer.bufPtr;
            int i3 = bArr[i2] & 255;
            if (i3 != 0) {
                switch (i3) {
                    case 208:
                    case 209:
                    case 210:
                    case 211:
                    case 212:
                    case 213:
                    case 214:
                    case 215:
                    case 217:
                        break;
                    case 216:
                        this.numImages++;
                        break;
                    default:
                        jPEGBuffer.bufAvail--;
                        jPEGBuffer.bufPtr = i2 + 1;
                        jPEGBuffer.loadBuf(2);
                        byte[] bArr2 = jPEGBuffer.buf;
                        int i4 = jPEGBuffer.bufPtr;
                        int i5 = i4 + 1;
                        int i6 = (bArr2[i4] & 255) << 8;
                        jPEGBuffer.bufPtr = i5 + 1;
                        int i7 = (bArr2[i5] & 255) | i6;
                        jPEGBuffer.bufAvail -= 2;
                        jPEGBuffer.skipData(i7 - 2);
                        continue;
                }
            }
            jPEGBuffer.bufAvail--;
            jPEGBuffer.bufPtr = i2 + 1;
        }
        this.iis.reset();
        return this.numImages;
    }

    private void gotoImage(int i) throws IOException {
        if (this.iis == null) {
            throw new IllegalStateException("Input not set");
        }
        if (i < this.minIndex) {
            throw new IndexOutOfBoundsException();
        }
        if (!this.tablesOnlyChecked) {
            checkTablesOnly();
        }
        if (this.imagePositions.isEmpty()) {
            throw new IIOException("No image data present to read");
        }
        if (i < this.imagePositions.size()) {
            this.iis.seek(this.imagePositions.get(i).longValue());
        } else {
            List<Long> list = this.imagePositions;
            this.iis.seek(list.get(list.size() - 1).longValue());
            skipImage();
            for (int size = this.imagePositions.size(); size <= i; size++) {
                if (!hasNextImage()) {
                    throw new IndexOutOfBoundsException();
                }
                Long valueOf = Long.valueOf(this.iis.getStreamPosition());
                this.imagePositions.add(valueOf);
                if (this.seekForwardOnly) {
                    this.iis.flushBefore(valueOf.longValue());
                }
                if (size < i) {
                    skipImage();
                }
            }
        }
        if (this.seekForwardOnly) {
            this.minIndex = i;
        }
        this.haveSeeked = true;
    }

    private boolean hasNextImage() throws IOException {
        if (this.debug) {
            System.out.print("hasNextImage called; returning ");
        }
        this.iis.mark();
        int read = this.iis.read();
        boolean z = false;
        while (read != -1) {
            if (z && read == 216) {
                this.iis.reset();
                if (this.debug) {
                    System.out.println("true");
                }
                return true;
            }
            z = read == 255;
            read = this.iis.read();
        }
        this.iis.reset();
        if (this.debug) {
            System.out.println("false");
        }
        return false;
    }

    private native long initJPEGImageReader();

    private void initProgressData() {
        this.knownPassCount = -1;
        this.pass = 0;
        this.percentToDate = 0.0f;
        this.previousPassPercentage = 0.0f;
        this.progInterval = 0;
    }

    private static native void initReaderIDs(Class<?> cls, Class<?> cls2, Class<?> cls3);

    private void passComplete() {
        this.cbLock.lock();
        try {
            processPassComplete(this.image);
        } finally {
            this.cbLock.unlock();
        }
    }

    private void passStarted(int i) {
        this.cbLock.lock();
        try {
            this.pass = i;
            this.previousPassPercentage = this.percentToDate;
            processPassStarted(this.image, i, this.minProgressivePass, this.maxProgressivePass, 0, 0, 1, 1, this.destinationBands);
        } finally {
            this.cbLock.unlock();
        }
    }

    private void pushBack(int i) throws IOException {
        if (this.debug) {
            System.out.println("pushing back " + i + " bytes");
        }
        this.cbLock.lock();
        try {
            ImageInputStream imageInputStream = this.iis;
            imageInputStream.seek(imageInputStream.getStreamPosition() - i);
        } finally {
            this.cbLock.unlock();
        }
    }

    private void readHeader(int i, boolean z) throws IOException {
        gotoImage(i);
        readNativeHeader(z);
        this.currentImage = i;
    }

    private native boolean readImage(int i, long j, byte[] bArr, int i2, int[] iArr, int[] iArr2, int i3, int i4, int i5, int i6, int i7, int i8, JPEGQTable[] jPEGQTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr2, int i9, int i10, boolean z);

    private native boolean readImageHeader(long j, boolean z, boolean z2) throws IOException;

    private int readInputData(byte[] bArr, int i, int i2) throws IOException {
        this.cbLock.lock();
        try {
            return this.iis.read(bArr, i, i2);
        } finally {
            this.cbLock.unlock();
        }
    }

    private Raster readInternal(int i, ImageReadParam imageReadParam, boolean z) throws IOException {
        WritableRaster writableRaster;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        readHeader(i, false);
        if (z) {
            setOutColorSpace(this.structPointer, this.colorSpaceCode);
            this.image = null;
            writableRaster = null;
            i2 = 0;
        } else {
            Iterator<ImageTypeSpecifier> imageTypes = getImageTypes(i);
            if (!imageTypes.hasNext()) {
                throw new IIOException("Unsupported Image Type");
            }
            BufferedImage destination = ImageReader.getDestination(imageReadParam, imageTypes, this.width, this.height);
            this.image = destination;
            WritableRaster raster = destination.getRaster();
            i2 = this.image.getSampleModel().getNumBands();
            checkColorConversion(this.image, imageReadParam);
            ImageReader.checkReadParamBandSettings(imageReadParam, this.numComponents, i2);
            writableRaster = raster;
        }
        int[][] iArr2 = JPEG.bandOffsets;
        int i6 = this.numComponents;
        int[] iArr3 = iArr2[i6 - 1];
        int i7 = z ? i6 : i2;
        this.destinationBands = null;
        Rectangle rectangle = new Rectangle(0, 0, 0, 0);
        Rectangle rectangle2 = new Rectangle(0, 0, 0, 0);
        this.destROI = rectangle2;
        ImageReader.computeRegions(imageReadParam, this.width, this.height, this.image, rectangle, rectangle2);
        this.minProgressivePass = 0;
        this.maxProgressivePass = Integer.MAX_VALUE;
        if (imageReadParam != null) {
            int sourceXSubsampling = imageReadParam.getSourceXSubsampling();
            int sourceYSubsampling = imageReadParam.getSourceYSubsampling();
            int[] sourceBands = imageReadParam.getSourceBands();
            if (sourceBands != null) {
                i7 = sourceBands.length;
                iArr3 = sourceBands;
            }
            if (!z) {
                this.destinationBands = imageReadParam.getDestinationBands();
            }
            this.minProgressivePass = imageReadParam.getSourceMinProgressivePass();
            this.maxProgressivePass = imageReadParam.getSourceMaxProgressivePass();
            if (imageReadParam instanceof JPEGImageReadParam) {
                JPEGImageReadParam jPEGImageReadParam = (JPEGImageReadParam) imageReadParam;
                if (jPEGImageReadParam.areTablesSet()) {
                    this.abbrevQTables = jPEGImageReadParam.getQTables();
                    this.abbrevDCHuffmanTables = jPEGImageReadParam.getDCHuffmanTables();
                    this.abbrevACHuffmanTables = jPEGImageReadParam.getACHuffmanTables();
                }
            }
            i3 = sourceYSubsampling;
            iArr = iArr3;
            i4 = i7;
            i5 = sourceXSubsampling;
        } else {
            i3 = 1;
            iArr = iArr3;
            i4 = i7;
            i5 = 1;
        }
        int i8 = this.destROI.width * i4;
        DataBufferByte dataBufferByte = new DataBufferByte(i8);
        this.buffer = dataBufferByte;
        int[] iArr4 = iArr2[i4 - 1];
        this.raster = Raster.createInterleavedRaster(dataBufferByte, this.destROI.width, 1, i8, i4, iArr4, (Point) null);
        if (z) {
            Rectangle rectangle3 = this.destROI;
            this.target = Raster.createInterleavedRaster(0, rectangle3.width, rectangle3.height, i8, i4, iArr4, (Point) null);
        } else {
            this.target = writableRaster;
        }
        int[] sampleSize = this.target.getSampleModel().getSampleSize();
        for (int i9 : sampleSize) {
            if (i9 <= 0 || i9 > 8) {
                throw new IIOException("Illegal band size: should be 0 < size <= 8");
            }
        }
        boolean z2 = (this.updateListeners == null && this.progressListeners == null) ? false : true;
        initProgressData();
        if (i == this.imageMetadataIndex) {
            this.knownPassCount = 0;
            Iterator<MarkerSegment> it2 = this.imageMetadata.markerSequence.iterator();
            while (it2.hasNext()) {
                if (it2.next() instanceof SOSMarkerSegment) {
                    this.knownPassCount++;
                }
            }
        }
        int max = Math.max((this.target.getHeight() - 1) / 20, 1);
        this.progInterval = max;
        int i10 = this.knownPassCount;
        if (i10 > 0) {
            this.progInterval = max * i10;
        } else {
            int i11 = this.maxProgressivePass;
            if (i11 != Integer.MAX_VALUE) {
                this.progInterval = max * ((i11 - this.minProgressivePass) + 1);
            }
        }
        if (this.debug) {
            System.out.println("**** Read Data *****");
            System.out.println("numRasterBands is " + i4);
            System.out.print("srcBands:");
            for (int i12 = 0; i12 < iArr.length; i12++) {
                System.out.print(" " + iArr[i12]);
            }
            System.out.println();
            System.out.println("destination bands is " + this.destinationBands);
            if (this.destinationBands != null) {
                for (int i13 = 0; i13 < this.destinationBands.length; i13++) {
                    System.out.print(" " + this.destinationBands[i13]);
                }
                System.out.println();
            }
            System.out.println("sourceROI is " + rectangle);
            System.out.println("destROI is " + this.destROI);
            System.out.println("periodX is " + i5);
            System.out.println("periodY is " + i3);
            System.out.println("minProgressivePass is " + this.minProgressivePass);
            System.out.println("maxProgressivePass is " + this.maxProgressivePass);
            System.out.println("callbackUpdates is " + z2);
        }
        clearNativeReadAbortFlag(this.structPointer);
        processImageStarted(this.currentImage);
        if (readImage(i, this.structPointer, this.buffer.getData(), i4, iArr, sampleSize, rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height, i5, i3, this.abbrevQTables, this.abbrevDCHuffmanTables, this.abbrevACHuffmanTables, this.minProgressivePass, this.maxProgressivePass, z2)) {
            processReadAborted();
        } else {
            processImageComplete();
        }
        return this.target;
    }

    private boolean readNativeHeader(boolean z) throws IOException {
        boolean readImageHeader = readImageHeader(this.structPointer, this.haveSeeked, z);
        this.haveSeeked = false;
        return readImageHeader;
    }

    private void resetInternalState() {
        resetReader(this.structPointer);
        this.numImages = 0;
        this.imagePositions = new ArrayList();
        this.currentImage = -1;
        this.image = null;
        this.raster = null;
        this.target = null;
        this.buffer = null;
        this.destROI = null;
        this.destinationBands = null;
        this.streamMetadata = null;
        this.imageMetadata = null;
        this.imageMetadataIndex = -1;
        this.haveSeeked = false;
        this.tablesOnlyChecked = false;
        this.iccCS = null;
        initProgressData();
    }

    private native void resetLibraryState(long j);

    private native void resetReader(long j);

    private void setImageData(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.width = i;
        this.height = i2;
        this.colorSpaceCode = i3;
        this.outColorSpaceCode = i4;
        this.numComponents = i5;
        if (bArr == null) {
            this.iccCS = null;
            return;
        }
        try {
            ICC_Profile iCC_Profile = ICC_Profile.getInstance(bArr);
            byte[] data = iCC_Profile.getData();
            ColorSpace colorSpace = this.iccCS;
            ICC_Profile profile = colorSpace instanceof ICC_ColorSpace ? ((ICC_ColorSpace) colorSpace).getProfile() : null;
            byte[] data2 = profile != null ? profile.getData() : null;
            if (data2 == null || !Arrays.equals(data2, data)) {
                ICC_ColorSpace iCC_ColorSpace = new ICC_ColorSpace(iCC_Profile);
                this.iccCS = iCC_ColorSpace;
                try {
                    iCC_ColorSpace.fromRGB(new float[]{1.0f, 0.0f, 0.0f});
                } catch (CMMException unused) {
                    this.iccCS = null;
                    this.cbLock.lock();
                    try {
                        warningOccurred(2);
                    } finally {
                        this.cbLock.unlock();
                    }
                }
            }
        } catch (IllegalArgumentException unused2) {
            this.iccCS = null;
            warningOccurred(2);
        }
    }

    private native void setOutColorSpace(long j, int i);

    private native void setSource(long j);

    private synchronized void setThreadLock() {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.theThread;
        if (thread == null) {
            this.theThread = currentThread;
            this.theLockCount = 1;
        } else {
            if (thread != currentThread) {
                throw new IllegalStateException("Attempt to use instance of " + this + " locked on thread " + this.theThread + " from thread " + currentThread);
            }
            this.theLockCount++;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x003b. Please report as an issue. */
    private void skipImage() throws IOException {
        if (this.debug) {
            System.out.println("skipImage called");
        }
        if (this.iis.read() != 255) {
            throw new IOException("skipImage : Invalid image doesn't start with 0xff");
        }
        if (this.iis.read() != 216) {
            throw new IOException("skipImage : Invalid image doesn't start with SOI marker");
        }
        int read = this.iis.read();
        boolean z = false;
        while (read != -1) {
            if (z) {
                if (read == -1) {
                    throw new IndexOutOfBoundsException("skipImage : Reached EOF before we got EOI marker");
                }
                if (read != 0 && read != 1) {
                    if (read != 254) {
                        if (read != 255) {
                            switch (read) {
                                case 192:
                                case 193:
                                case 194:
                                case 195:
                                case 196:
                                case 197:
                                case 198:
                                case 199:
                                case 200:
                                case 201:
                                case 202:
                                case 203:
                                case 204:
                                case 205:
                                case 206:
                                case 207:
                                case 218:
                                case 219:
                                case 220:
                                case 221:
                                case 222:
                                case 223:
                                case 224:
                                case 225:
                                case 226:
                                case 227:
                                case 228:
                                case 229:
                                case 230:
                                case 231:
                                case 232:
                                case 233:
                                case 234:
                                case 235:
                                case 236:
                                case 237:
                                case 238:
                                case 239:
                                    break;
                                case 208:
                                case 209:
                                case 210:
                                case 211:
                                case 212:
                                case 213:
                                case 214:
                                case 215:
                                    break;
                                case 216:
                                    throw new IOException("skipImage : Found extra SOI marker before getting to EOI");
                                case 217:
                                    if (this.debug) {
                                        System.out.println("skipImage : Found EOI at " + (this.iis.getStreamPosition() - 2));
                                        return;
                                    }
                                    return;
                                default:
                                    throw new IOException("skipImage : Invalid marker starting with ff " + Integer.toHexString(read));
                            }
                        }
                    }
                    if (this.iis.read() == -1) {
                        throw new IndexOutOfBoundsException("skipImage : Reached EOF before we got EOI marker");
                    }
                    if (this.iis.read() == -1) {
                        throw new IndexOutOfBoundsException("skipImage : Reached EOF before we got EOI marker");
                    }
                    this.iis.skipBytes(((r3 << 8) | r7) - 2);
                }
            }
            z = read == 255;
            read = this.iis.read();
        }
        throw new IndexOutOfBoundsException("skipImage : Reached EOF before we got EOI marker");
    }

    private long skipInputBytes(long j) throws IOException {
        this.cbLock.lock();
        try {
            return this.iis.skipBytes(j);
        } finally {
            this.cbLock.unlock();
        }
    }

    private void skipPastImage(int i) {
        this.cbLock.lock();
        try {
            gotoImage(i);
            skipImage();
        } catch (IOException | IndexOutOfBoundsException unused) {
        } catch (Throwable th) {
            this.cbLock.unlock();
            throw th;
        }
        this.cbLock.unlock();
    }

    @Override // javax.imageio.ImageReader
    public void abort() {
        setThreadLock();
        try {
            super.abort();
            abortRead(this.structPointer);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public boolean canReadRaster() {
        return true;
    }

    @Override // javax.imageio.ImageReader
    public void dispose() {
        setThreadLock();
        try {
            this.cbLock.check();
            if (this.structPointer != 0) {
                this.disposerRecord.dispose();
                this.structPointer = 0L;
            }
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return new JPEGImageReadParam();
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IOException {
        setThreadLock();
        try {
            if (this.currentImage != i) {
                this.cbLock.check();
                readHeader(i, true);
            }
            return this.height;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        JPEGMetadata jPEGMetadata;
        setThreadLock();
        try {
            if (this.imageMetadataIndex == i && (jPEGMetadata = this.imageMetadata) != null) {
                return jPEGMetadata;
            }
            this.cbLock.check();
            gotoImage(i);
            JPEGMetadata jPEGMetadata2 = new JPEGMetadata(false, false, this.iis, this);
            this.imageMetadata = jPEGMetadata2;
            this.imageMetadataIndex = i;
            return jPEGMetadata2;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException {
        setThreadLock();
        try {
            return getImageTypesOnThread(i);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            return getNumImagesOnThread(z);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public int getNumThumbnails(int i) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            getImageMetadata(i);
            JFIFMarkerSegment jFIFMarkerSegment = (JFIFMarkerSegment) this.imageMetadata.findMarkerSegment(JFIFMarkerSegment.class, true);
            int i2 = 0;
            if (jFIFMarkerSegment != null) {
                i2 = (jFIFMarkerSegment.thumb == null ? 0 : 1) + jFIFMarkerSegment.extSegments.size();
            }
            return i2;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public ImageTypeSpecifier getRawImageType(int i) throws IOException {
        setThreadLock();
        try {
            if (this.currentImage != i) {
                this.cbLock.check();
                readHeader(i, true);
            }
            return getImageType(this.colorSpaceCode).getType();
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IOException {
        setThreadLock();
        try {
            if (!this.tablesOnlyChecked) {
                this.cbLock.check();
                checkTablesOnly();
            }
            return this.streamMetadata;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public int getThumbnailHeight(int i, int i2) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            if (i2 < 0 || i2 >= getNumThumbnails(i)) {
                throw new IndexOutOfBoundsException("No such thumbnail");
            }
            return ((JFIFMarkerSegment) this.imageMetadata.findMarkerSegment(JFIFMarkerSegment.class, true)).getThumbnailHeight(i2);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public int getThumbnailWidth(int i, int i2) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            if (i2 < 0 || i2 >= getNumThumbnails(i)) {
                throw new IndexOutOfBoundsException("No such thumbnail");
            }
            return ((JFIFMarkerSegment) this.imageMetadata.findMarkerSegment(JFIFMarkerSegment.class, true)).getThumbnailWidth(i2);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IOException {
        setThreadLock();
        try {
            if (this.currentImage != i) {
                this.cbLock.check();
                readHeader(i, true);
            }
            return this.width;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            try {
                try {
                    readInternal(i, imageReadParam, false);
                    BufferedImage bufferedImage = this.image;
                    this.image = null;
                    return bufferedImage;
                } catch (IOException e) {
                    resetLibraryState(this.structPointer);
                    throw e;
                }
            } catch (RuntimeException e2) {
                resetLibraryState(this.structPointer);
                throw e2;
            }
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        Point point;
        setThreadLock();
        try {
            try {
                try {
                    this.cbLock.check();
                    if (imageReadParam != null) {
                        point = imageReadParam.getDestinationOffset();
                        imageReadParam.setDestinationOffset(new Point(0, 0));
                    } else {
                        point = null;
                    }
                    Raster readInternal = readInternal(i, imageReadParam, true);
                    if (point != null) {
                        this.target = this.target.createWritableTranslatedChild(point.f97730x, point.f97731y);
                    }
                    return readInternal;
                } catch (IOException e) {
                    resetLibraryState(this.structPointer);
                    throw e;
                }
            } catch (RuntimeException e2) {
                resetLibraryState(this.structPointer);
                throw e2;
            }
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage readThumbnail(int i, int i2) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            if (i2 < 0 || i2 >= getNumThumbnails(i)) {
                throw new IndexOutOfBoundsException("No such thumbnail");
            }
            return ((JFIFMarkerSegment) this.imageMetadata.findMarkerSegment(JFIFMarkerSegment.class, true)).getThumbnail(this.iis, i2, this);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public boolean readerSupportsThumbnails() {
        return true;
    }

    @Override // javax.imageio.ImageReader
    public void reset() {
        setThreadLock();
        try {
            this.cbLock.check();
            super.reset();
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        setThreadLock();
        try {
            this.cbLock.check();
            super.setInput(obj, z, z2);
            this.ignoreMetadata = z2;
            resetInternalState();
            this.iis = (ImageInputStream) obj;
            setSource(this.structPointer);
        } finally {
            clearThreadLock();
        }
    }

    public void thumbnailComplete() {
        this.cbLock.lock();
        try {
            processThumbnailComplete();
        } finally {
            this.cbLock.unlock();
        }
    }

    public void thumbnailProgress(float f) {
        this.cbLock.lock();
        try {
            processThumbnailProgress(f);
        } finally {
            this.cbLock.unlock();
        }
    }

    public void thumbnailStarted(int i) {
        this.cbLock.lock();
        try {
            processThumbnailStarted(this.currentImage, i);
        } finally {
            this.cbLock.unlock();
        }
    }

    public void warningOccurred(int i) {
        this.cbLock.lock();
        try {
            if (i < 0 || i > 2) {
                throw new InternalError("Invalid warning index");
            }
            processWarningOccurred("com.sun.imageio.plugins.jpeg.JPEGImageReaderResources", Integer.toString(i));
        } finally {
            this.cbLock.unlock();
        }
    }

    public void warningWithMessage(String str) {
        this.cbLock.lock();
        try {
            processWarningOccurred(str);
        } finally {
            this.cbLock.unlock();
        }
    }
}
