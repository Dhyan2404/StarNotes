package com.sun.imageio.plugins.jpeg;

import com.sun.imageio.plugins.jpeg.DHTMarkerSegment;
import com.sun.imageio.plugins.jpeg.DQTMarkerSegment;
import com.sun.imageio.plugins.jpeg.SOFMarkerSegment;
import com.sun.imageio.plugins.jpeg.SOSMarkerSegment;
import java.awt.Dimension;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorConvertOp;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.plugins.jpeg.JPEGHuffmanTable;
import javax.imageio.plugins.jpeg.JPEGImageWriteParam;
import javax.imageio.plugins.jpeg.JPEGQTable;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;
import org.w3c.dom.Node;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes9.dex */
public class JPEGImageWriter extends ImageWriter {
    private static final int MAX_WARNING = 15;
    protected static final int WARNING_DEST_IGNORED = 0;
    protected static final int WARNING_DEST_METADATA_ADOBE_MISMATCH = 4;
    protected static final int WARNING_DEST_METADATA_COMP_MISMATCH = 2;
    protected static final int WARNING_DEST_METADATA_JFIF_MISMATCH = 3;
    protected static final int WARNING_FORCING_JFIF = 11;
    protected static final int WARNING_IGNORING_THUMBS = 10;
    protected static final int WARNING_ILLEGAL_THUMBNAIL = 9;
    protected static final int WARNING_IMAGE_METADATA_ADOBE_MISMATCH = 6;
    protected static final int WARNING_IMAGE_METADATA_JFIF_MISMATCH = 5;
    protected static final int WARNING_METADATA_ADJUSTED_FOR_THUMB = 13;
    protected static final int WARNING_METADATA_NOT_JPEG_FOR_RASTER = 7;
    protected static final int WARNING_NO_BANDS_ON_INDEXED = 8;
    protected static final int WARNING_NO_GRAY_THUMB_AS_INDEXED = 15;
    protected static final int WARNING_NO_RGB_THUMB_AS_INDEXED = 14;
    protected static final int WARNING_STREAM_METADATA_IGNORED = 1;
    protected static final int WARNING_THUMB_CLIPPED = 12;
    static final Dimension[] preferredThumbSizes;
    private CallBackLock cbLock;
    private ColorConvertOp convertOp;
    private boolean convertTosRGB;
    private WritableRaster converted;
    private int currentImage;
    private boolean debug;
    private DisposerRecord disposerRecord;
    private Object disposerReferent;
    private boolean forceJFIF;
    private ICC_Profile iccProfile;
    private boolean ignoreAdobe;
    private boolean ignoreJFIF;
    private IndexColorModel indexCM;
    private boolean indexed;
    private ImageOutputStream ios;
    private boolean isAlphaPremultiplied;
    private JPEGMetadata metadata;
    private int newAdobeTransform;
    private int numScans;
    private WritableRaster raster;
    private boolean sequencePrepared;
    private int sourceHeight;
    private int sourceWidth;
    private int sourceXOffset;
    private int sourceYOffset;
    private int[] srcBands;
    private ColorModel srcCM;
    private Raster srcRas;
    private JPEGHuffmanTable[] streamACHuffmanTables;
    private JPEGHuffmanTable[] streamDCHuffmanTables;
    private JPEGQTable[] streamQTables;
    private long structPointer;
    private int theLockCount;
    private Thread theThread;
    private List<? extends BufferedImage> thumbnails;
    private boolean writeAdobe;
    private boolean writeDefaultJFIF;

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
                throw new IllegalStateException("Access to the writer is not allowed");
            }
        }
    }

    /* loaded from: classes9.dex */
    public static class JPEGWriterDisposerRecord implements DisposerRecord {
        private long pData;

        public JPEGWriterDisposerRecord(long j) {
            this.pData = j;
        }

        @Override // sun.java2d.DisposerRecord
        public synchronized void dispose() {
            long j = this.pData;
            if (j != 0) {
                JPEGImageWriter.disposeWriter(j);
                this.pData = 0L;
            }
        }
    }

    static {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.sun.imageio.plugins.jpeg.JPEGImageWriter.1
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.loadLibrary("javajpeg");
                return null;
            }
        });
        initWriterIDs(JPEGQTable.class, JPEGHuffmanTable.class);
        preferredThumbSizes = new Dimension[]{new Dimension(1, 1), new Dimension(255, 255)};
    }

    public JPEGImageWriter(ImageWriterSpi imageWriterSpi) {
        super(imageWriterSpi);
        this.debug = false;
        this.structPointer = 0L;
        this.ios = null;
        this.srcRas = null;
        this.raster = null;
        this.indexed = false;
        this.indexCM = null;
        this.convertTosRGB = false;
        this.converted = null;
        this.isAlphaPremultiplied = false;
        this.srcCM = null;
        this.thumbnails = null;
        this.iccProfile = null;
        this.sourceXOffset = 0;
        this.sourceYOffset = 0;
        this.sourceWidth = 0;
        this.srcBands = null;
        this.sourceHeight = 0;
        this.currentImage = 0;
        this.convertOp = null;
        this.streamQTables = null;
        this.streamDCHuffmanTables = null;
        this.streamACHuffmanTables = null;
        this.ignoreJFIF = false;
        this.forceJFIF = false;
        this.ignoreAdobe = false;
        this.newAdobeTransform = -1;
        this.writeDefaultJFIF = false;
        this.writeAdobe = false;
        this.metadata = null;
        this.sequencePrepared = false;
        this.numScans = 0;
        this.disposerReferent = new Object();
        this.theThread = null;
        this.theLockCount = 0;
        this.cbLock = new CallBackLock();
        long initJPEGImageWriter = initJPEGImageWriter();
        this.structPointer = initJPEGImageWriter;
        JPEGWriterDisposerRecord jPEGWriterDisposerRecord = new JPEGWriterDisposerRecord(initJPEGImageWriter);
        this.disposerRecord = jPEGWriterDisposerRecord;
        Disposer.addRecord(this.disposerReferent, jPEGWriterDisposerRecord);
    }

    private native void abortWrite(long j);

    private void checkAdobe(AdobeMarkerSegment adobeMarkerSegment, ImageTypeSpecifier imageTypeSpecifier, boolean z) {
        int transformForType;
        if (adobeMarkerSegment == null || adobeMarkerSegment.transform == (transformForType = JPEG.transformForType(imageTypeSpecifier, z))) {
            return;
        }
        warningOccurred(z ? 6 : 4);
        if (transformForType == -1) {
            this.ignoreAdobe = true;
        } else {
            this.newAdobeTransform = transformForType;
        }
    }

    private void checkJFIF(JFIFMarkerSegment jFIFMarkerSegment, ImageTypeSpecifier imageTypeSpecifier, boolean z) {
        if (jFIFMarkerSegment == null || JPEG.isJFIFcompliant(imageTypeSpecifier, z)) {
            return;
        }
        this.ignoreJFIF = true;
        warningOccurred(z ? 5 : 3);
    }

    private void checkSOFBands(SOFMarkerSegment sOFMarkerSegment, int i) throws IIOException {
        if (sOFMarkerSegment != null && sOFMarkerSegment.componentSpecs.length != i) {
            throw new IIOException("Metadata components != number of destination bands");
        }
    }

    private synchronized void clearThreadLock() {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.theThread;
        if (thread == null || thread != currentThread) {
            throw new IllegalStateException("Attempt to clear thread lock form wrong thread. Locked thread: " + this.theThread + "; current thread: " + currentThread);
        }
        int i = this.theLockCount - 1;
        this.theLockCount = i;
        if (i == 0) {
            this.theThread = null;
        }
    }

    private JPEGHuffmanTable[] collectHTablesFromMetadata(JPEGMetadata jPEGMetadata, boolean z) throws IIOException {
        ArrayList arrayList = new ArrayList();
        Iterator<MarkerSegment> it2 = jPEGMetadata.markerSequence.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            MarkerSegment next = it2.next();
            if (next instanceof DHTMarkerSegment) {
                DHTMarkerSegment dHTMarkerSegment = (DHTMarkerSegment) next;
                for (int i = 0; i < dHTMarkerSegment.tables.size(); i++) {
                    DHTMarkerSegment.Htable htable = dHTMarkerSegment.tables.get(i);
                    if (htable.tableClass == (!z)) {
                        arrayList.add(htable);
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        DHTMarkerSegment.Htable[] htableArr = new DHTMarkerSegment.Htable[arrayList.size()];
        arrayList.toArray(htableArr);
        int size = arrayList.size();
        JPEGHuffmanTable[] jPEGHuffmanTableArr = new JPEGHuffmanTable[size];
        for (int i2 = 0; i2 < size; i2++) {
            jPEGHuffmanTableArr[i2] = null;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (htableArr[i3].tableID == i2) {
                    if (jPEGHuffmanTableArr[i2] != null) {
                        throw new IIOException("Metadata has duplicate Htables!");
                    }
                    DHTMarkerSegment.Htable htable2 = htableArr[i3];
                    jPEGHuffmanTableArr[i2] = new JPEGHuffmanTable(htable2.numCodes, htable2.values);
                }
            }
        }
        return jPEGHuffmanTableArr;
    }

    private JPEGQTable[] collectQTablesFromMetadata(JPEGMetadata jPEGMetadata) {
        ArrayList arrayList = new ArrayList();
        for (MarkerSegment markerSegment : jPEGMetadata.markerSequence) {
            if (markerSegment instanceof DQTMarkerSegment) {
                arrayList.addAll(((DQTMarkerSegment) markerSegment).tables);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        int size = arrayList.size();
        JPEGQTable[] jPEGQTableArr = new JPEGQTable[size];
        for (int i = 0; i < size; i++) {
            jPEGQTableArr[i] = new JPEGQTable(((DQTMarkerSegment.Qtable) arrayList.get(i)).data);
        }
        return jPEGQTableArr;
    }

    private int[] collectScans(JPEGMetadata jPEGMetadata, SOFMarkerSegment sOFMarkerSegment) {
        int i;
        ArrayList arrayList = new ArrayList();
        for (MarkerSegment markerSegment : jPEGMetadata.markerSequence) {
            if (markerSegment instanceof SOSMarkerSegment) {
                arrayList.add((SOSMarkerSegment) markerSegment);
            }
        }
        this.numScans = 0;
        if (arrayList.isEmpty()) {
            return null;
        }
        int size = arrayList.size();
        this.numScans = size;
        int[] iArr = new int[size * 9];
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.numScans) {
            SOSMarkerSegment sOSMarkerSegment = (SOSMarkerSegment) arrayList.get(i2);
            int i4 = i3 + 1;
            iArr[i3] = sOSMarkerSegment.componentSpecs.length;
            for (int i5 = 0; i5 < 4; i5++) {
                SOSMarkerSegment.ScanComponentSpec[] scanComponentSpecArr = sOSMarkerSegment.componentSpecs;
                if (i5 < scanComponentSpecArr.length) {
                    int i6 = scanComponentSpecArr[i5].componentSelector;
                    int i7 = 0;
                    while (true) {
                        SOFMarkerSegment.ComponentSpec[] componentSpecArr = sOFMarkerSegment.componentSpecs;
                        if (i7 >= componentSpecArr.length) {
                            break;
                        }
                        if (i6 == componentSpecArr[i7].componentId) {
                            i = i4 + 1;
                            iArr[i4] = i7;
                            break;
                        }
                        i7++;
                    }
                } else {
                    i = i4 + 1;
                    iArr[i4] = 0;
                }
                i4 = i;
            }
            int i8 = i4 + 1;
            iArr[i4] = sOSMarkerSegment.startSpectralSelection;
            int i9 = i8 + 1;
            iArr[i8] = sOSMarkerSegment.endSpectralSelection;
            int i10 = i9 + 1;
            iArr[i9] = sOSMarkerSegment.approxHigh;
            iArr[i10] = sOSMarkerSegment.approxLow;
            i2++;
            i3 = i10 + 1;
        }
        return iArr;
    }

    private IIOMetadata convertImageMetadataOnThread(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        Node asTree;
        if (iIOMetadata instanceof JPEGMetadata) {
            if (((JPEGMetadata) iIOMetadata).isStream) {
                return null;
            }
            return iIOMetadata;
        }
        if (iIOMetadata.isStandardMetadataFormatSupported() && (asTree = iIOMetadata.getAsTree(IIOMetadataFormatImpl.standardMetadataFormatName)) != null) {
            JPEGMetadata jPEGMetadata = new JPEGMetadata(imageTypeSpecifier, imageWriteParam, this);
            try {
                jPEGMetadata.setFromTree(IIOMetadataFormatImpl.standardMetadataFormatName, asTree);
                return jPEGMetadata;
            } catch (IIOInvalidTreeException unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void disposeWriter(long j);

    private int getDefaultDestCSType(ImageTypeSpecifier imageTypeSpecifier) {
        return getDefaultDestCSType(imageTypeSpecifier.getColorModel());
    }

    private int getDestCSType(ImageTypeSpecifier imageTypeSpecifier) {
        ColorModel colorModel = imageTypeSpecifier.getColorModel();
        colorModel.hasAlpha();
        int type = colorModel.getColorSpace().getType();
        if (type == 3) {
            return 3;
        }
        if (type == 9) {
            return 4;
        }
        if (type != 5) {
            return type != 6 ? 0 : 1;
        }
        return 2;
    }

    private int getSrcCSType(ImageTypeSpecifier imageTypeSpecifier) {
        return getSrcCSType(imageTypeSpecifier.getColorModel());
    }

    private void grabPixels(int i) {
        Raster raster;
        if (this.indexed) {
            raster = this.indexCM.convertToIntDiscrete(this.srcRas.createChild(this.sourceXOffset, this.sourceYOffset + i, this.sourceWidth, 1, 0, 0, new int[]{0}), this.indexCM.getTransparency() != 1).getRaster();
        } else {
            raster = this.srcRas.createChild(this.sourceXOffset, this.sourceYOffset + i, this.sourceWidth, 1, 0, 0, this.srcBands);
        }
        Raster raster2 = raster;
        if (this.convertTosRGB) {
            if (this.debug) {
                System.out.println("Converting to sRGB");
            }
            WritableRaster filter = this.convertOp.filter(raster, this.converted);
            this.converted = filter;
            raster2 = filter;
        }
        Raster raster3 = raster2;
        if (this.isAlphaPremultiplied) {
            WritableRaster createCompatibleWritableRaster = raster2.createCompatibleWritableRaster();
            createCompatibleWritableRaster.setPixels(raster2.getMinX(), raster2.getMinY(), raster2.getWidth(), raster2.getHeight(), raster2.getPixels(raster2.getMinX(), raster2.getMinY(), raster2.getWidth(), raster2.getHeight(), (int[]) null));
            this.srcCM.coerceData(createCompatibleWritableRaster, false);
            raster3 = createCompatibleWritableRaster.createChild(createCompatibleWritableRaster.getMinX(), createCompatibleWritableRaster.getMinY(), createCompatibleWritableRaster.getWidth(), createCompatibleWritableRaster.getHeight(), 0, 0, this.srcBands);
        }
        this.raster.setRect(raster3);
        if (i <= 7 || i % 8 != 0) {
            return;
        }
        this.cbLock.lock();
        try {
            processImageProgress((i / this.sourceHeight) * 100.0f);
        } finally {
            this.cbLock.unlock();
        }
    }

    private native long initJPEGImageWriter();

    private static native void initWriterIDs(Class<?> cls, Class<?> cls2);

    private boolean isSubsampled(SOFMarkerSegment.ComponentSpec[] componentSpecArr) {
        SOFMarkerSegment.ComponentSpec componentSpec = componentSpecArr[0];
        int i = componentSpec.HsamplingFactor;
        int i2 = componentSpec.VsamplingFactor;
        for (int i3 = 1; i3 < componentSpecArr.length; i3++) {
            SOFMarkerSegment.ComponentSpec componentSpec2 = componentSpecArr[i3];
            if (componentSpec2.HsamplingFactor != i || componentSpec2.VsamplingFactor != i2) {
                return true;
            }
        }
        return false;
    }

    private boolean jfifOK(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        if (imageTypeSpecifier != null && !JPEG.isJFIFcompliant(imageTypeSpecifier, true)) {
            return false;
        }
        if (iIOMetadata2 != null) {
            if ((iIOMetadata2 instanceof JPEGMetadata ? (JPEGMetadata) iIOMetadata2 : (JPEGMetadata) convertImageMetadata(iIOMetadata2, imageTypeSpecifier, imageWriteParam)).findMarkerSegment(JFIFMarkerSegment.class, true) == null) {
                return false;
            }
        }
        return true;
    }

    private void prepareWriteSequenceOnThread(IIOMetadata iIOMetadata) throws IOException {
        if (this.ios == null) {
            throw new IllegalStateException("Output has not been set!");
        }
        if (iIOMetadata != null) {
            if (!(iIOMetadata instanceof JPEGMetadata)) {
                throw new IIOException("Stream metadata must be JPEG metadata");
            }
            JPEGMetadata jPEGMetadata = (JPEGMetadata) iIOMetadata;
            if (!jPEGMetadata.isStream) {
                throw new IllegalArgumentException("Invalid stream metadata object.");
            }
            if (this.currentImage != 0) {
                throw new IIOException("JPEG Stream metadata must precede all images");
            }
            if (this.sequencePrepared) {
                throw new IIOException("Stream metadata already written!");
            }
            this.streamQTables = collectQTablesFromMetadata(jPEGMetadata);
            if (this.debug) {
                System.out.println("after collecting from stream metadata, streamQTables.length is " + this.streamQTables.length);
            }
            if (this.streamQTables == null) {
                this.streamQTables = JPEG.getDefaultQTables();
            }
            JPEGHuffmanTable[] collectHTablesFromMetadata = collectHTablesFromMetadata(jPEGMetadata, true);
            this.streamDCHuffmanTables = collectHTablesFromMetadata;
            if (collectHTablesFromMetadata == null) {
                this.streamDCHuffmanTables = JPEG.getDefaultHuffmanTables(true);
            }
            JPEGHuffmanTable[] collectHTablesFromMetadata2 = collectHTablesFromMetadata(jPEGMetadata, false);
            this.streamACHuffmanTables = collectHTablesFromMetadata2;
            if (collectHTablesFromMetadata2 == null) {
                this.streamACHuffmanTables = JPEG.getDefaultHuffmanTables(false);
            }
            writeTables(this.structPointer, this.streamQTables, this.streamDCHuffmanTables, this.streamACHuffmanTables);
        }
        this.sequencePrepared = true;
    }

    private void resetInternalState() {
        resetWriter(this.structPointer);
        this.srcRas = null;
        this.raster = null;
        this.convertTosRGB = false;
        this.currentImage = 0;
        this.numScans = 0;
        this.metadata = null;
    }

    private native void resetWriter(long j);

    private native void setDest(long j);

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

    private native boolean writeImage(long j, byte[] bArr, int i, int i2, int i3, int[] iArr, int i4, int i5, int i6, int i7, int i8, JPEGQTable[] jPEGQTableArr, boolean z, JPEGHuffmanTable[] jPEGHuffmanTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr2, boolean z2, boolean z3, boolean z4, int i9, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, boolean z5, int i10);

    private void writeMetadata() throws IOException {
        JPEGMetadata jPEGMetadata = this.metadata;
        if (jPEGMetadata != null) {
            jPEGMetadata.writeToStream(this.ios, this.ignoreJFIF, this.forceJFIF, this.thumbnails, this.iccProfile, this.ignoreAdobe, this.newAdobeTransform, this);
            return;
        }
        if (this.writeDefaultJFIF) {
            JFIFMarkerSegment.writeDefaultJFIF(this.ios, this.thumbnails, this.iccProfile, this);
        }
        if (this.writeAdobe) {
            AdobeMarkerSegment.writeAdobeSegment(this.ios, this.newAdobeTransform);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:300:0x0446, code lost:
    
        if (r1.iccSegment != null) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0473, code lost:
    
        if (isSubsampled(r14.componentSpecs) != false) goto L202;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x05be A[LOOP:3: B:175:0x05bc->B:176:0x05be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x06d3 A[Catch: all -> 0x06ea, TRY_ENTER, TryCatch #1 {all -> 0x06ea, blocks: (B:201:0x06d3, B:202:0x06da, B:206:0x06d7), top: B:199:0x06d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x06d7 A[Catch: all -> 0x06ea, TryCatch #1 {all -> 0x06ea, blocks: (B:201:0x06d3, B:202:0x06da, B:206:0x06d7), top: B:199:0x06d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02d7  */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.awt.color.ICC_Profile, java.awt.image.WritableRaster] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeOnThread(javax.imageio.metadata.IIOMetadata r39, javax.imageio.IIOImage r40, javax.imageio.ImageWriteParam r41) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.jpeg.JPEGImageWriter.writeOnThread(javax.imageio.metadata.IIOMetadata, javax.imageio.IIOImage, javax.imageio.ImageWriteParam):void");
    }

    private void writeOutputData(byte[] bArr, int i, int i2) throws IOException {
        this.cbLock.lock();
        try {
            this.ios.write(bArr, i, i2);
        } finally {
            this.cbLock.unlock();
        }
    }

    private native void writeTables(long j, JPEGQTable[] jPEGQTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr, JPEGHuffmanTable[] jPEGHuffmanTableArr2);

    @Override // javax.imageio.ImageWriter
    public synchronized void abort() {
        setThreadLock();
        try {
            super.abort();
            abortWrite(this.structPointer);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteRasters() {
        return true;
    }

    @Override // javax.imageio.ImageWriter
    public boolean canWriteSequence() {
        return true;
    }

    @Override // javax.imageio.ImageWriter
    public synchronized void clearAbortRequest() {
        setThreadLock();
        try {
            this.cbLock.check();
            if (abortRequested()) {
                super.clearAbortRequest();
                resetWriter(this.structPointer);
                setDest(this.structPointer);
            }
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertImageMetadata(IIOMetadata iIOMetadata, ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        setThreadLock();
        try {
            return convertImageMetadataOnThread(iIOMetadata, imageTypeSpecifier, imageWriteParam);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter, javax.imageio.ImageTranscoder
    public IIOMetadata convertStreamMetadata(IIOMetadata iIOMetadata, ImageWriteParam imageWriteParam) {
        if ((iIOMetadata instanceof JPEGMetadata) && ((JPEGMetadata) iIOMetadata).isStream) {
            return iIOMetadata;
        }
        return null;
    }

    @Override // javax.imageio.ImageWriter
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

    @Override // javax.imageio.ImageWriter
    public void endWriteSequence() throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            if (!this.sequencePrepared) {
                throw new IllegalStateException("sequencePrepared not called!");
            }
            this.sequencePrepared = false;
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam) {
        setThreadLock();
        try {
            return new JPEGMetadata(imageTypeSpecifier, imageWriteParam, this);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam imageWriteParam) {
        setThreadLock();
        try {
            return new JPEGMetadata(imageWriteParam, this);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public ImageWriteParam getDefaultWriteParam() {
        return new JPEGImageWriteParam(null);
    }

    @Override // javax.imageio.ImageWriter
    public int getNumThumbnailsSupported(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        if (imageTypeSpecifier == null && iIOMetadata2 == null) {
            return -1;
        }
        return jfifOK(imageTypeSpecifier, imageWriteParam, iIOMetadata, iIOMetadata2) ? Integer.MAX_VALUE : 0;
    }

    @Override // javax.imageio.ImageWriter
    public Dimension[] getPreferredThumbnailSizes(ImageTypeSpecifier imageTypeSpecifier, ImageWriteParam imageWriteParam, IIOMetadata iIOMetadata, IIOMetadata iIOMetadata2) {
        if (jfifOK(imageTypeSpecifier, imageWriteParam, iIOMetadata, iIOMetadata2)) {
            return (Dimension[]) preferredThumbSizes.clone();
        }
        return null;
    }

    @Override // javax.imageio.ImageWriter
    public void prepareWriteSequence(IIOMetadata iIOMetadata) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            prepareWriteSequenceOnThread(iIOMetadata);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public void reset() {
        setThreadLock();
        try {
            this.cbLock.check();
            super.reset();
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public void setOutput(Object obj) {
        setThreadLock();
        try {
            this.cbLock.check();
            super.setOutput(obj);
            resetInternalState();
            this.ios = (ImageOutputStream) obj;
            setDest(this.structPointer);
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
            if (i < 0 || i > 15) {
                throw new InternalError("Invalid warning index");
            }
            processWarningOccurred(this.currentImage, "com.sun.imageio.plugins.jpeg.JPEGImageWriterResources", Integer.toString(i));
        } finally {
            this.cbLock.unlock();
        }
    }

    public void warningWithMessage(String str) {
        this.cbLock.lock();
        try {
            processWarningOccurred(this.currentImage, str);
        } finally {
            this.cbLock.unlock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public void write(IIOMetadata iIOMetadata, IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            writeOnThread(iIOMetadata, iIOImage, imageWriteParam);
        } finally {
            clearThreadLock();
        }
    }

    @Override // javax.imageio.ImageWriter
    public void writeToSequence(IIOImage iIOImage, ImageWriteParam imageWriteParam) throws IOException {
        setThreadLock();
        try {
            this.cbLock.check();
            if (!this.sequencePrepared) {
                throw new IllegalStateException("sequencePrepared not called!");
            }
            write(null, iIOImage, imageWriteParam);
        } finally {
            clearThreadLock();
        }
    }

    private int getDefaultDestCSType(RenderedImage renderedImage) {
        return getDefaultDestCSType(renderedImage.getColorModel());
    }

    private int getSrcCSType(RenderedImage renderedImage) {
        return getSrcCSType(renderedImage.getColorModel());
    }

    private int getDefaultDestCSType(ColorModel colorModel) {
        if (colorModel != null) {
            colorModel.hasAlpha();
            int type = colorModel.getColorSpace().getType();
            if (type == 3) {
                return 3;
            }
            if (type == 9) {
                return 5;
            }
            if (type == 5) {
                return 3;
            }
            if (type == 6) {
                return 1;
            }
        }
        return 0;
    }

    private int getSrcCSType(ColorModel colorModel) {
        if (colorModel != null) {
            colorModel.hasAlpha();
            int type = colorModel.getColorSpace().getType();
            if (type == 3) {
                return 3;
            }
            if (type == 9) {
                return 4;
            }
            if (type == 5) {
                return 2;
            }
            if (type == 6) {
                return 1;
            }
        }
        return 0;
    }
}
