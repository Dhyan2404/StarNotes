package com.twelvemonkeys.imageio.plugins.jpeg;

import com.sunia.HTREnginev2.C13607d9;
import com.sunia.HTREnginev2.C13767gd;
import com.sunia.HTREnginev2.ari;
import com.sunia.HTREnginev2.gkf;
import com.sunia.HTREnginev2.ohn;
import com.sunia.HTREnginev2.phn;
import com.sunia.HTREnginev2.sdm;
import com.sunia.HTREnginev2.tqi;
import com.sunia.HTREnginev2.uqi;
import com.sunia.HTREnginev2.vqi;
import com.sunia.HTREnginev2.wqi;
import com.sunia.HTREnginev2.xqi;
import com.sunia.HTREnginev2.yqi;
import com.twelvemonkeys.imageio.ImageReaderBase;
import com.twelvemonkeys.imageio.color.ColorSpaces;
import com.twelvemonkeys.imageio.color.YCbCrConverter;
import com.twelvemonkeys.imageio.metadata.CompoundDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.exif.EXIFReader;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEGSegment;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEGSegmentUtil;
import com.twelvemonkeys.imageio.plugins.jpeg.Frame;
import com.twelvemonkeys.imageio.util.ImageTypeSpecifiers;
import com.twelvemonkeys.imageio.util.ProgressListenerBase;
import com.twelvemonkeys.lang.Validate;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.event.IIOReadUpdateListener;
import javax.imageio.event.IIOReadWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class JPEGImageReader extends ImageReaderBase {

    /* renamed from: m */
    public static final int f94079m = -1;

    /* renamed from: f */
    public final ImageReader f94081f;

    /* renamed from: g */
    public final C16957d f94082g;

    /* renamed from: h */
    public ImageReader f94083h;

    /* renamed from: i */
    public List<phn> f94084i;

    /* renamed from: j */
    public xqi f94085j;

    /* renamed from: k */
    public List<sdm> f94086k;

    /* renamed from: l */
    public static final boolean f94078l = "true".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.imageio.plugins.jpeg.debug"));

    /* renamed from: n */
    public static final Map<Integer, List<String>> f94080n = JPEGSegmentUtil.ALL_SEGMENTS;

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader$a */
    /* loaded from: classes10.dex */
    public static class C16954a implements IIOReadWarningListener {

        /* renamed from: e */
        public final /* synthetic */ String f94087e;

        public C16954a(String str) {
            this.f94087e = str;
        }

        @Override // javax.imageio.event.IIOReadWarningListener
        public void warningOccurred(ImageReader imageReader, String str) {
            System.err.println("Warning: " + this.f94087e + ": " + str);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader$b */
    /* loaded from: classes10.dex */
    public static class C16955b extends ProgressListenerBase {

        /* renamed from: f */
        public static final int f94088f = 78;

        /* renamed from: e */
        public int f94089e = 0;

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageComplete(ImageReader imageReader) {
            for (int i = this.f94089e; i < 78; i++) {
                System.out.print(".");
            }
            System.out.println(IteratorUtils.f104924b);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageProgress(ImageReader imageReader, float f) {
            int i = ((int) (f * 78.0f)) / 100;
            for (int i2 = this.f94089e; i2 < i; i2++) {
                System.out.print(".");
            }
            System.out.flush();
            this.f94089e = i;
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageStarted(ImageReader imageReader, int i) {
            System.out.print(IteratorUtils.f104923a);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader$c */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C16956c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f94090a;

        static {
            int[] iArr = new int[JPEGColorSpace.values().length];
            f94090a = iArr;
            try {
                iArr[JPEGColorSpace.CMYK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader$d */
    /* loaded from: classes10.dex */
    public class C16957d extends ProgressListenerBase implements IIOReadUpdateListener, IIOReadWarningListener {
        public C16957d() {
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageComplete(ImageReader imageReader) {
            JPEGImageReader.this.processImageComplete();
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageProgress(ImageReader imageReader, float f) {
            JPEGImageReader.this.processImageProgress(f);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageStarted(ImageReader imageReader, int i) {
            JPEGImageReader.this.processImageStarted(i);
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void imageUpdate(ImageReader imageReader, BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
            JPEGImageReader.this.processImageUpdate(bufferedImage, i, i2, i3, i4, i5, i6, iArr);
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void passComplete(ImageReader imageReader, BufferedImage bufferedImage) {
            JPEGImageReader.this.processPassComplete(bufferedImage);
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void passStarted(ImageReader imageReader, BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
            JPEGImageReader.this.processPassStarted(bufferedImage, i, i2, i3, i4, i5, i6, i7, iArr);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void readAborted(ImageReader imageReader) {
            JPEGImageReader.this.processReadAborted();
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void sequenceComplete(ImageReader imageReader) {
            JPEGImageReader.this.processSequenceComplete();
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void sequenceStarted(ImageReader imageReader, int i) {
            JPEGImageReader.this.processSequenceStarted(i);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void thumbnailComplete(ImageReader imageReader) {
            JPEGImageReader.this.processThumbnailComplete();
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void thumbnailPassComplete(ImageReader imageReader, BufferedImage bufferedImage) {
            JPEGImageReader.this.processThumbnailPassComplete(bufferedImage);
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void thumbnailPassStarted(ImageReader imageReader, BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
            JPEGImageReader.this.processThumbnailPassStarted(bufferedImage, i, i2, i3, i4, i5, i6, i7, iArr);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void thumbnailProgress(ImageReader imageReader, float f) {
            JPEGImageReader.this.processThumbnailProgress(f);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void thumbnailStarted(ImageReader imageReader, int i, int i2) {
            JPEGImageReader.this.processThumbnailStarted(i, i2);
        }

        @Override // javax.imageio.event.IIOReadUpdateListener
        public void thumbnailUpdate(ImageReader imageReader, BufferedImage bufferedImage, int i, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
            JPEGImageReader.this.processThumbnailUpdate(bufferedImage, i, i2, i3, i4, i5, i6, iArr);
        }

        @Override // javax.imageio.event.IIOReadWarningListener
        public void warningOccurred(ImageReader imageReader, String str) {
            JPEGImageReader.this.processWarningOccurred(str);
        }

        public /* synthetic */ C16957d(JPEGImageReader jPEGImageReader, C16954a c16954a) {
            this();
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader$e */
    /* loaded from: classes10.dex */
    public class C16958e implements ohn {
        public C16958e() {
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: a */
        public void mo55966a(int i, int i2) {
            JPEGImageReader.this.processThumbnailStarted(i, i2);
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: b */
        public void mo55967b() {
            JPEGImageReader.this.processThumbnailComplete();
        }

        @Override // com.sunia.HTREnginev2.ohn
        /* renamed from: c */
        public void mo55968c(float f) {
            JPEGImageReader.this.processThumbnailProgress(f);
        }

        public /* synthetic */ C16958e(JPEGImageReader jPEGImageReader, C16954a c16954a) {
            this();
        }
    }

    public JPEGImageReader(ImageReaderSpi imageReaderSpi, ImageReader imageReader) {
        super(imageReaderSpi);
        this.f94081f = (ImageReader) Validate.notNull(imageReader);
        this.f94082g = new C16957d(this, null);
    }

    /* renamed from: B */
    public static JPEGColorSpace m60506B(tqi tqiVar, C13607d9 c13607d9, Frame frame) throws IIOException {
        if (c13607d9 != null) {
            int i = c13607d9.f67630g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 && frame.m60503b() == 4) {
                        return JPEGColorSpace.YCCK;
                    }
                } else if (frame.m60503b() == 3) {
                    return JPEGColorSpace.YCbCr;
                }
            } else {
                if (frame.m60503b() == 1) {
                    return JPEGColorSpace.Gray;
                }
                if (frame.m60503b() == 3) {
                    return JPEGColorSpace.RGB;
                }
                if (frame.m60503b() == 4) {
                    return JPEGColorSpace.CMYK;
                }
            }
        }
        int m60503b = frame.m60503b();
        if (m60503b == 1) {
            return JPEGColorSpace.Gray;
        }
        if (m60503b == 2) {
            return JPEGColorSpace.GrayA;
        }
        int i2 = 0;
        if (m60503b == 3) {
            Frame.Component[] componentArr = frame.f94073e;
            int i3 = componentArr[0].f94074a;
            if (i3 == 1 && componentArr[1].f94074a == 2 && componentArr[2].f94074a == 3) {
                return JPEGColorSpace.YCbCr;
            }
            if (i3 == 82 && componentArr[1].f94074a == 71 && componentArr[2].f94074a == 66) {
                return JPEGColorSpace.RGB;
            }
            if (i3 == 89 && componentArr[1].f94074a == 67 && componentArr[2].f94074a == 99) {
                return JPEGColorSpace.PhotoYCC;
            }
            int length = componentArr.length;
            while (i2 < length) {
                Frame.Component component = componentArr[i2];
                if (component.f94075b != 1 || component.f94076c != 1) {
                    return JPEGColorSpace.YCbCr;
                }
                i2++;
            }
            return tqiVar != null ? JPEGColorSpace.YCbCr : JPEGColorSpace.RGB;
        }
        if (m60503b != 4) {
            throw new IIOException("Cannot determine source color space");
        }
        Frame.Component[] componentArr2 = frame.f94073e;
        int i4 = componentArr2[0].f94074a;
        if (i4 == 1 && componentArr2[1].f94074a == 2 && componentArr2[2].f94074a == 3 && componentArr2[3].f94074a == 4) {
            return JPEGColorSpace.YCbCrA;
        }
        if (i4 == 82 && componentArr2[1].f94074a == 71 && componentArr2[2].f94074a == 66 && componentArr2[3].f94074a == 65) {
            return JPEGColorSpace.RGBA;
        }
        if (i4 == 89 && componentArr2[1].f94074a == 67 && componentArr2[2].f94074a == 99 && componentArr2[3].f94074a == 65) {
            return JPEGColorSpace.PhotoYCCA;
        }
        if (i4 == 67 && componentArr2[1].f94074a == 77 && componentArr2[2].f94074a == 89 && componentArr2[3].f94074a == 75) {
            return JPEGColorSpace.CMYK;
        }
        if (i4 == 89 && componentArr2[1].f94074a == 67 && componentArr2[2].f94074a == 99 && componentArr2[3].f94074a == 75) {
            return JPEGColorSpace.YCCK;
        }
        int length2 = componentArr2.length;
        while (i2 < length2) {
            Frame.Component component2 = componentArr2[i2];
            if (component2.f94075b != 1 || component2.f94076c != 1) {
                return JPEGColorSpace.YCCK;
            }
            i2++;
        }
        return JPEGColorSpace.CMYK;
    }

    /* renamed from: F */
    public static void m60507F(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    /* renamed from: G */
    public static void m60508G(Raster raster) {
        byte[] data = ((DataBufferByte) raster.getDataBuffer()).getData();
        int length = data.length;
        for (int i = 0; i < length; i++) {
            data[i] = (byte) ((255 - data[i]) & 255);
        }
    }

    /* renamed from: I */
    public static byte[] m60509I(DataInput dataInput, int i) throws IOException {
        if (i == 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        dataInput.readFully(bArr);
        return bArr;
    }

    public static void convertYCCK2CMYK(Raster raster) {
        int height = raster.getHeight();
        int width = raster.getWidth();
        byte[] data = ((DataBufferByte) raster.getDataBuffer()).getData();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = ((i * width) + i2) * 4;
                YCbCrConverter.convertYCbCr2RGB(data, data, i3);
                int i4 = i3 + 3;
                data[i4] = (byte) ((255 - data[i4]) & 255);
            }
        }
    }

    public static void convertYCbCr2RGB(Raster raster) {
        int height = raster.getHeight();
        int width = raster.getWidth();
        byte[] data = ((DataBufferByte) raster.getDataBuffer()).getData();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                YCbCrConverter.convertYCbCr2RGB(data, data, ((i * width) + i2) * 3);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:72|(17:77|78|(2:169|170)(1:80)|81|82|83|84|(4:86|87|88|89)(1:160)|90|91|92|93|94|95|(10:97|98|99|100|101|102|(1:104)|105|(1:107)|108)(1:153)|(6:110|111|112|(8:114|115|116|117|118|119|120|121)|137|138)(1:144)|125)|172|173|174|175|176|177|178|179|180|78|(0)(0)|81|82|83|84|(0)(0)|90|91|92|93|94|95|(0)(0)|(0)(0)|125) */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03e2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x03e3, code lost:
    
        r18 = 0;
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0254, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0256, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0259, code lost:
    
        if (r1 == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x025b, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03ec, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03f1, code lost:
    
        r25 = r7;
        r21 = r8;
        r18 = 0;
        r15 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03ee, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03ef, code lost:
    
        r20 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0247 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0264 A[Catch: all -> 0x03ea, TRY_LEAVE, TryCatch #7 {all -> 0x03ea, blocks: (B:78:0x0240, B:170:0x0247, B:83:0x024f, B:84:0x0260, B:86:0x0264, B:164:0x0256, B:180:0x023a), top: B:169:0x0247, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader.main(java.lang.String[]):void");
    }

    public static void showIt(BufferedImage bufferedImage, String str) {
        ImageReaderBase.showIt(bufferedImage, str);
    }

    /* renamed from: u */
    public static Map<Integer, List<String>> m60528u() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 65504; i <= 65519; i++) {
            linkedHashMap.put(Integer.valueOf(i), JPEGSegmentUtil.ALL_IDS);
        }
        linkedHashMap.put(Integer.valueOf(JPEG.SOF0), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF1), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF2), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF3), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF5), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF6), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF7), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF9), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF10), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF11), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF13), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF14), null);
        linkedHashMap.put(Integer.valueOf(JPEG.SOF15), null);
        linkedHashMap.put(Integer.valueOf(JPEG.DQT), null);
        linkedHashMap.put(Integer.valueOf(JPEG.DHT), null);
        linkedHashMap.put(65498, null);
        return Collections.unmodifiableMap(linkedHashMap);
    }

    /* renamed from: A */
    public Frame m60529A() throws IOException {
        m60531D();
        for (sdm sdmVar : this.f94086k) {
            if (sdmVar instanceof Frame) {
                return (Frame) sdmVar;
            }
        }
        throw new IIOException("No SOF segment in stream");
    }

    /* renamed from: C */
    public ImageReader m60530C() throws IOException {
        if (this.f94083h == null) {
            this.f94083h = this.f94081f.getOriginatingProvider().createReaderInstance();
        }
        return this.f94083h;
    }

    /* renamed from: D */
    public final void m60531D() throws IOException {
        if (this.f94086k == null) {
            long currentTimeMillis = f94078l ? System.currentTimeMillis() : 0L;
            List<JPEGSegment> m60536L = m60536L();
            ArrayList arrayList = new ArrayList(m60536L.size());
            for (JPEGSegment jPEGSegment : m60536L) {
                try {
                    DataInputStream dataInputStream = new DataInputStream(jPEGSegment.segmentData());
                    try {
                        arrayList.add(sdm.m57153a(jPEGSegment.marker(), jPEGSegment.identifier(), jPEGSegment.segmentLength(), dataInputStream));
                        dataInputStream.close();
                    } finally {
                        try {
                            break;
                        } finally {
                        }
                    }
                } catch (IOException e) {
                    if (jPEGSegment.marker() < 65504 || 65519 < jPEGSegment.marker()) {
                        throw e;
                    }
                    processWarningOccurred("Bogus " + jPEGSegment.identifier() + " segment, ignoring");
                }
            }
            this.f94086k = arrayList;
            if (f94078l) {
                System.out.println("Read metadata in " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            }
        }
    }

    /* renamed from: E */
    public final void m60532E() {
        this.f94081f.addIIOReadProgressListener(this.f94082g);
        this.f94081f.addIIOReadUpdateListener(this.f94082g);
        this.f94081f.addIIOReadWarningListener(this.f94082g);
    }

    /* renamed from: H */
    public final boolean m60533H() throws IOException {
        assertInput();
        try {
            return m60529A().f84044a == 65475;
        } catch (IIOException e) {
            if (!f94078l) {
                return false;
            }
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: J */
    public final ICC_Profile m60534J(InputStream inputStream, boolean z) throws IOException {
        try {
            ICC_Profile iCC_Profile = ICC_Profile.getInstance(inputStream);
            return z ? iCC_Profile : ColorSpaces.validateProfile(ensureDisplayProfile(iCC_Profile));
        } catch (RuntimeException e) {
            processWarningOccurred(String.format("Bad 'ICC_PROFILE' chunk(s): %s. Ignoring ICC profile.", e.getMessage()));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0172 A[Catch: all -> 0x01ac, TryCatch #1 {all -> 0x01ac, blocks: (B:14:0x015a, B:16:0x0169, B:19:0x016e, B:21:0x0172, B:22:0x0181, B:36:0x0176, B:38:0x017a, B:39:0x017e), top: B:13:0x015a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x019e A[Catch: all -> 0x01aa, TryCatch #0 {all -> 0x01aa, blocks: (B:25:0x0198, B:27:0x019e, B:31:0x01a2), top: B:24:0x0198 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a2 A[Catch: all -> 0x01aa, TRY_LEAVE, TryCatch #0 {all -> 0x01aa, blocks: (B:25:0x0198, B:27:0x019e, B:31:0x01a2), top: B:24:0x0198 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0176 A[Catch: all -> 0x01ac, TryCatch #1 {all -> 0x01ac, blocks: (B:14:0x015a, B:16:0x0169, B:19:0x016e, B:21:0x0172, B:22:0x0181, B:36:0x0176, B:38:0x017a, B:39:0x017e), top: B:13:0x015a }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012d  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.awt.image.BufferedImage m60535K(int r19, javax.imageio.ImageReadParam r20, com.twelvemonkeys.imageio.plugins.jpeg.Frame r21, com.twelvemonkeys.imageio.plugins.jpeg.JPEGColorSpace r22, java.awt.color.ICC_Profile r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader.m60535K(int, javax.imageio.ImageReadParam, com.twelvemonkeys.imageio.plugins.jpeg.Frame, com.twelvemonkeys.imageio.plugins.jpeg.JPEGColorSpace, java.awt.color.ICC_Profile):java.awt.image.BufferedImage");
    }

    /* renamed from: L */
    public final List<JPEGSegment> m60536L() throws IOException {
        this.imageInput.mark();
        try {
            try {
                this.imageInput.seek(0L);
                return JPEGSegmentUtil.readSegments(this.imageInput, f94080n);
            } catch (IllegalArgumentException | IIOException e) {
                if (f94078l) {
                    e.printStackTrace();
                }
                this.imageInput.reset();
                return Collections.emptyList();
            }
        } finally {
            this.imageInput.reset();
        }
    }

    /* renamed from: M */
    public final void m60537M(int i) throws IOException {
        checkBounds(i);
        if (this.f94084i == null) {
            this.f94084i = new ArrayList();
            C16958e c16958e = new C16958e(this, null);
            tqi m60542y = m60542y();
            if (m60542y != null && m60542y.f85657k != null) {
                List<phn> list = this.f94084i;
                list.add(new uqi(c16958e, i, list.size(), m60542y));
            }
            vqi m60543z = m60543z();
            if (m60543z != null && m60543z.f87827e != null) {
                int i2 = m60543z.f87826d;
                if (i2 == 16 || i2 == 17 || i2 == 19) {
                    this.f94084i.add(new wqi(c16958e, m60530C(), i, this.f94084i.size(), m60543z));
                } else {
                    processWarningOccurred("Unknown JFXX extension code: " + m60543z.f87826d);
                }
            }
            List<C13767gd> m60540w = m60540w(65505, "Exif");
            if (m60540w.isEmpty()) {
                return;
            }
            InputStream m54260b = m60540w.get(0).m54260b();
            if (m54260b.read() == -1) {
                processWarningOccurred("Exif chunk has no data.");
                return;
            }
            MemoryCacheImageInputStream memoryCacheImageInputStream = new MemoryCacheImageInputStream(m54260b);
            CompoundDirectory compoundDirectory = (CompoundDirectory) new EXIFReader().read(memoryCacheImageInputStream);
            if (compoundDirectory.directoryCount() == 2) {
                Directory directory = compoundDirectory.getDirectory(1);
                Entry entryById = directory.getEntryById(259);
                if (entryById != null && !entryById.getValue().equals(1) && !entryById.getValue().equals(6)) {
                    processWarningOccurred("EXIF IFD with unknown compression (expected 1 or 6): " + entryById.getValue());
                    return;
                }
                Entry entryById2 = directory.getEntryById(514);
                if (entryById2 == null || ((Number) entryById2.getValue()).longValue() > 0) {
                    this.f94084i.add(new gkf(c16958e, m60530C(), 0, this.f94084i.size(), directory, memoryCacheImageInputStream));
                } else {
                    processWarningOccurred("EXIF IFD with empty (zero-length) thumbnail");
                }
            }
        }
    }

    @Override // javax.imageio.ImageReader
    public void abort() {
        super.abort();
        this.f94081f.abort();
    }

    @Override // javax.imageio.ImageReader
    public boolean canReadRaster() {
        return this.f94081f.canReadRaster();
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public void dispose() {
        super.dispose();
        ImageReader imageReader = this.f94083h;
        if (imageReader != null) {
            imageReader.dispose();
            this.f94083h = null;
        }
        this.f94081f.dispose();
    }

    public ICC_Profile ensureDisplayProfile(ICC_Profile iCC_Profile) {
        if (iCC_Profile != null && iCC_Profile.getProfileClass() != 1) {
            byte[] data = iCC_Profile.getData();
            if (data[64] == 0) {
                processWarningOccurred("ICC profile is Perceptual, ignoring, treating as Display class");
                m60507F(ICC_Profile.icSigDisplayClass, data, 12);
                return ICC_Profile.getInstance(data);
            }
        }
        return iCC_Profile;
    }

    @Override // javax.imageio.ImageReader
    public ImageReadParam getDefaultReadParam() {
        return this.f94081f.getDefaultReadParam();
    }

    public ICC_Profile getEmbeddedICCProfile(boolean z) throws IOException {
        boolean z2;
        List<C13767gd> m60540w = m60540w(JPEG.APP2, "ICC_PROFILE");
        if (m60540w.size() == 1) {
            DataInputStream dataInputStream = new DataInputStream(m60540w.get(0).m54260b());
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            int readUnsignedByte2 = dataInputStream.readUnsignedByte();
            if (readUnsignedByte == 1 || readUnsignedByte2 == 1) {
                return m60534J(dataInputStream, z);
            }
            processWarningOccurred(String.format("Unexpected number of 'ICC_PROFILE' chunks: %d of %d. Ignoring ICC profile.", Integer.valueOf(readUnsignedByte), Integer.valueOf(readUnsignedByte2)));
            return null;
        }
        if (m60540w.isEmpty()) {
            return null;
        }
        DataInputStream dataInputStream2 = new DataInputStream(m60540w.get(0).m54260b());
        int readUnsignedByte3 = dataInputStream2.readUnsignedByte();
        int readUnsignedByte4 = dataInputStream2.readUnsignedByte();
        if (readUnsignedByte4 != m60540w.size()) {
            processWarningOccurred(String.format("Bad 'ICC_PROFILE' chunk count: %d. Ignoring ICC profile.", Integer.valueOf(readUnsignedByte4)));
            if (!z) {
                return null;
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 && readUnsignedByte3 < 1) {
            processWarningOccurred(String.format("Invalid 'ICC_PROFILE' chunk index: %d. Ignoring ICC profile.", Integer.valueOf(readUnsignedByte3)));
            if (!z) {
                return null;
            }
        }
        int size = z2 ? m60540w.size() : readUnsignedByte4;
        InputStream[] inputStreamArr = new InputStream[size];
        inputStreamArr[z2 ? 0 : readUnsignedByte3 - 1] = dataInputStream2;
        for (int i = 1; i < size; i++) {
            DataInputStream dataInputStream3 = new DataInputStream(m60540w.get(i).m54260b());
            int readUnsignedByte5 = dataInputStream3.readUnsignedByte();
            if (!z2 && dataInputStream3.readUnsignedByte() != readUnsignedByte4) {
                throw new IIOException(String.format("Bad number of 'ICC_PROFILE' chunks: %d of %d.", Integer.valueOf(readUnsignedByte5), Integer.valueOf(readUnsignedByte4)));
            }
            inputStreamArr[z2 ? i : readUnsignedByte5 - 1] = dataInputStream3;
        }
        return m60534J(new SequenceInputStream(Collections.enumeration(Arrays.asList(inputStreamArr))), z);
    }

    @Override // javax.imageio.ImageReader
    public String getFormatName() throws IOException {
        return this.f94081f.getFormatName();
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IOException {
        checkBounds(i);
        Frame m60529A = m60529A();
        return m60529A.f84044a == 65475 ? m60529A.f94071c : this.f94081f.getHeight(i);
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        checkBounds(i);
        if (m60533H()) {
            return new C16961a(this.f94086k);
        }
        try {
            IIOMetadata imageMetadata = this.f94081f.getImageMetadata(i);
            if (imageMetadata == null || !Arrays.asList(imageMetadata.getMetadataFormatNames()).contains("javax_imageio_jpeg_image_1.0")) {
                return imageMetadata;
            }
            if (this.f94085j == null) {
                this.f94085j = new xqi(this);
            }
            return this.f94085j.m58298a(imageMetadata);
        } catch (IndexOutOfBoundsException e) {
            throw new IIOException("Corrupt JPEG data: Bad segment length", e);
        } catch (NegativeArraySizeException e2) {
            throw new IIOException("Corrupt JPEG data: Bad component count", e2);
        }
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException {
        Iterator<ImageTypeSpecifier> imageTypes = this.f94081f.getImageTypes(i);
        JPEGColorSpace m60506B = m60506B(m60542y(), m60539v(), m60529A());
        if (imageTypes != null && imageTypes.hasNext() && m60506B != JPEGColorSpace.CMYK && m60506B != JPEGColorSpace.YCCK) {
            return imageTypes;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ImageTypeSpecifiers.createFromBufferedImageType(5));
        arrayList.add(ImageTypeSpecifiers.createFromBufferedImageType(1));
        arrayList.add(ImageTypeSpecifiers.createFromBufferedImageType(4));
        ICC_Profile embeddedICCProfile = getEmbeddedICCProfile(false);
        if (m60506B == JPEGColorSpace.CMYK || m60506B == JPEGColorSpace.YCCK) {
            if (embeddedICCProfile != null && embeddedICCProfile.getNumComponents() == 4) {
                arrayList.add(ImageTypeSpecifiers.createInterleaved(ColorSpaces.createColorSpace(embeddedICCProfile), new int[]{3, 2, 1, 0}, 0, false, false));
            }
            arrayList.add(ImageTypeSpecifiers.createInterleaved(ColorSpaces.getColorSpace(5001), new int[]{3, 2, 1, 0}, 0, false, false));
        } else if (m60506B == JPEGColorSpace.YCbCr || m60506B == JPEGColorSpace.RGB) {
            if (embeddedICCProfile != null && embeddedICCProfile.getNumComponents() == 3) {
                arrayList.add(ImageTypeSpecifiers.createInterleaved(ColorSpaces.createColorSpace(embeddedICCProfile), new int[]{0, 1, 2}, 0, false, false));
            }
        } else if (m60506B == JPEGColorSpace.YCbCrA || m60506B == JPEGColorSpace.RGBA) {
            arrayList.addAll(0, Arrays.asList(ImageTypeSpecifiers.createFromBufferedImageType(2), ImageTypeSpecifiers.createFromBufferedImageType(6), ImageTypeSpecifiers.createFromBufferedImageType(3), ImageTypeSpecifiers.createFromBufferedImageType(7)));
            if (embeddedICCProfile != null && embeddedICCProfile.getNumComponents() == 3) {
                arrayList.add(ImageTypeSpecifiers.createInterleaved(ColorSpaces.createColorSpace(embeddedICCProfile), new int[]{0, 1, 2, 3}, 0, true, false));
            }
        }
        return arrayList.iterator();
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        if (z && m60533H()) {
            return 1;
        }
        try {
            return this.f94081f.getNumImages(z);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return 0;
        }
    }

    @Override // javax.imageio.ImageReader
    public int getNumThumbnails(int i) throws IOException {
        m60537M(i);
        return this.f94084i.size();
    }

    @Override // javax.imageio.ImageReader
    public ImageTypeSpecifier getRawImageType(int i) throws IOException {
        try {
            ImageTypeSpecifier rawImageType = this.f94081f.getRawImageType(i);
            if (rawImageType != null) {
                return rawImageType;
            }
        } catch (NullPointerException | IIOException unused) {
        }
        if (C16956c.f94090a[m60506B(m60542y(), m60539v(), m60529A()).ordinal()] != 1) {
            return null;
        }
        ICC_Profile embeddedICCProfile = getEmbeddedICCProfile(false);
        return (embeddedICCProfile == null || embeddedICCProfile.getNumComponents() != 4) ? ImageTypeSpecifiers.createInterleaved(ColorSpaces.getColorSpace(5001), new int[]{3, 2, 1, 0}, 0, false, false) : ImageTypeSpecifiers.createInterleaved(ColorSpaces.createColorSpace(embeddedICCProfile), new int[]{3, 2, 1, 0}, 0, false, false);
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IOException {
        return this.f94081f.getStreamMetadata();
    }

    @Override // javax.imageio.ImageReader
    public int getThumbnailHeight(int i, int i2) throws IOException {
        m60538t(i, i2);
        return this.f94084i.get(i2).mo54287a();
    }

    @Override // javax.imageio.ImageReader
    public int getThumbnailWidth(int i, int i2) throws IOException {
        m60538t(i, i2);
        return this.f94084i.get(i2).mo54288b();
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IOException {
        checkBounds(i);
        Frame m60529A = m60529A();
        return m60529A.f84044a == 65475 ? m60529A.f94072d : this.f94081f.getWidth(i);
    }

    @Override // javax.imageio.ImageReader
    public boolean isRandomAccessEasy(int i) throws IOException {
        return this.f94081f.isRandomAccessEasy(i);
    }

    @Override // javax.imageio.ImageReader
    public void processWarningOccurred(String str) {
        super.processWarningOccurred(str);
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage read(int i, ImageReadParam imageReadParam) throws IOException {
        assertInput();
        checkBounds(i);
        Frame m60529A = m60529A();
        boolean z = false;
        ICC_Profile embeddedICCProfile = getEmbeddedICCProfile(false);
        C13607d9 m60539v = m60539v();
        if (m60539v != null && ((m60539v.f67630g == 1 && m60529A.m60503b() != 3) || (m60539v.f67630g == 2 && m60529A.m60503b() != 4))) {
            Object[] objArr = new Object[3];
            objArr[0] = m60539v.f67630g == 2 ? "YCCK/CMYK" : "YCC/RGB";
            objArr[1] = Integer.valueOf(m60529A.f84044a & 15);
            objArr[2] = Integer.valueOf(m60529A.m60503b());
            processWarningOccurred(String.format("Invalid Adobe App14 marker. Indicates %s data, but SOF%d has %d color component(s). Ignoring Adobe App14 marker.", objArr));
            m60539v = null;
            z = true;
        }
        JPEGColorSpace m60506B = m60506B(m60542y(), m60539v, m60529A);
        if (m60529A.f84044a == 65475) {
            return new yqi().m58473a(this.f94086k, this.imageInput);
        }
        if (!this.f94081f.canReadRaster() || (!z && m60506B != JPEGColorSpace.CMYK && m60506B != JPEGColorSpace.YCCK && ((embeddedICCProfile == null || ColorSpaces.isCS_sRGB(embeddedICCProfile)) && (m60506B != JPEGColorSpace.YCbCr || getRawImageType(i) == null)))) {
            if (f94078l) {
                System.out.println("Reading using delegate");
            }
            return this.f94081f.read(i, imageReadParam);
        }
        if (f94078l) {
            System.out.println("Reading using raster and extra conversion");
            System.out.println("ICC color profile: " + embeddedICCProfile);
        }
        return m60535K(i, imageReadParam, m60529A, m60506B, embeddedICCProfile);
    }

    @Override // javax.imageio.ImageReader
    public RenderedImage readAsRenderedImage(int i, ImageReadParam imageReadParam) throws IOException {
        return read(i, imageReadParam);
    }

    @Override // javax.imageio.ImageReader
    public Raster readRaster(int i, ImageReadParam imageReadParam) throws IOException {
        checkBounds(i);
        return m60533H() ? new yqi().m58474b(this.f94086k, this.imageInput) : this.f94081f.readRaster(i, imageReadParam);
    }

    @Override // javax.imageio.ImageReader
    public BufferedImage readThumbnail(int i, int i2) throws IOException {
        m60538t(i, i2);
        return this.f94084i.get(i2).mo54289f();
    }

    @Override // javax.imageio.ImageReader
    public boolean readerSupportsThumbnails() {
        return true;
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase
    public void resetMembers() {
        this.f94081f.reset();
        this.f94086k = null;
        this.f94084i = null;
        ImageReader imageReader = this.f94083h;
        if (imageReader != null) {
            imageReader.reset();
        }
        this.f94085j = null;
        m60532E();
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public void setInput(Object obj, boolean z, boolean z2) {
        super.setInput(obj, z, z2);
        ImageReader imageReader = this.f94081f;
        ImageInputStream imageInputStream = this.imageInput;
        imageReader.setInput(imageInputStream != null ? new ari(imageInputStream) : null, z, z2);
    }

    /* renamed from: t */
    public final void m60538t(int i, int i2) throws IOException {
        Validate.isTrue(i2 >= 0, Integer.valueOf(i2), "thumbnailIndex < 0; %d");
        Validate.isTrue(getNumThumbnails(i) > i2, Integer.valueOf(i2), "thumbnailIndex >= numThumbnails; %d");
    }

    /* renamed from: v */
    public C13607d9 m60539v() throws IOException {
        List<C13767gd> m60540w = m60540w(JPEG.APP14, "Adobe");
        if (m60540w.isEmpty()) {
            return null;
        }
        return (C13607d9) m60540w.get(0);
    }

    /* renamed from: w */
    public List<C13767gd> m60540w(int i, String str) throws IOException {
        m60531D();
        List<C13767gd> emptyList = Collections.emptyList();
        for (sdm sdmVar : this.f94086k) {
            if ((sdmVar instanceof C13767gd) && (i == -1 || i == sdmVar.f84044a)) {
                if (str == null || str.equals(((C13767gd) sdmVar).f70917b)) {
                    if (emptyList == Collections.EMPTY_LIST) {
                        emptyList = new ArrayList<>(this.f94086k.size());
                    }
                    emptyList.add((C13767gd) sdmVar);
                }
            }
        }
        return emptyList;
    }

    /* renamed from: x */
    public final CompoundDirectory m60541x() throws IOException {
        List<C13767gd> m60540w = m60540w(65505, "Exif");
        if (m60540w.isEmpty()) {
            return null;
        }
        InputStream m54260b = m60540w.get(0).m54260b();
        if (m54260b.read() == -1) {
            processWarningOccurred("Exif chunk has no data.");
            return null;
        }
        return (CompoundDirectory) new EXIFReader().read(ImageIO.createImageInputStream(m54260b));
    }

    /* renamed from: y */
    public tqi m60542y() throws IOException {
        List<C13767gd> m60540w = m60540w(65504, "JFIF");
        if (m60540w.isEmpty()) {
            return null;
        }
        return (tqi) m60540w.get(0);
    }

    /* renamed from: z */
    public vqi m60543z() throws IOException {
        List<C13767gd> m60540w = m60540w(65504, "JFXX");
        if (m60540w.isEmpty()) {
            return null;
        }
        return (vqi) m60540w.get(0);
    }
}
