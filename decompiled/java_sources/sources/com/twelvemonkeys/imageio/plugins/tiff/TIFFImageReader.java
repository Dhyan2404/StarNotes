package com.twelvemonkeys.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import com.fasterxml.jackson.core.JsonParser;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.sunia.HTREnginev2.b7n;
import com.sunia.HTREnginev2.mzh;
import com.sunia.HTREnginev2.qui;
import com.sunia.HTREnginev2.z00;
import com.twelvemonkeys.imageio.ImageReaderBase;
import com.twelvemonkeys.imageio.color.CIELabColorConverter;
import com.twelvemonkeys.imageio.color.ColorSpaces;
import com.twelvemonkeys.imageio.color.YCbCrConverter;
import com.twelvemonkeys.imageio.metadata.CompoundDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.exif.EXIFReader;
import com.twelvemonkeys.imageio.metadata.exif.Rational;
import com.twelvemonkeys.imageio.metadata.exif.TIFF;
import com.twelvemonkeys.imageio.metadata.iptc.IPTCReader;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.imageio.metadata.psd.PSDReader;
import com.twelvemonkeys.imageio.metadata.xmp.XMPReader;
import com.twelvemonkeys.imageio.stream.ByteArrayImageInputStream;
import com.twelvemonkeys.imageio.util.ImageTypeSpecifiers;
import com.twelvemonkeys.imageio.util.ProgressListenerBase;
import com.twelvemonkeys.io.FastByteArrayOutputStream;
import com.twelvemonkeys.io.enc.DecoderStream;
import com.twelvemonkeys.io.enc.PackBitsDecoder;
import java.awt.Rectangle;
import java.awt.color.CMMException;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BandedSampleModel;
import java.awt.image.BufferedImage;
import java.awt.image.ColorConvertOp;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferFloat;
import java.awt.image.DataBufferInt;
import java.awt.image.DataBufferShort;
import java.awt.image.DataBufferUShort;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.event.IIOReadWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.spi.IIORegistry;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;
import org.apache.commons.collections4.IteratorUtils;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class TIFFImageReader extends ImageReaderBase {

    /* renamed from: h */
    public static final boolean f94165h = "true".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.imageio.plugins.tiff.debug"));

    /* renamed from: i */
    public static final double[] f94166i = {0.299d, 0.587d, 0.114d};

    /* renamed from: j */
    public static final double[] f94167j = {0.0d, 255.0d, 128.0d, 255.0d, 128.0d, 255.0d};

    /* renamed from: f */
    public CompoundDirectory f94168f;

    /* renamed from: g */
    public Directory f94169g;

    /* renamed from: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader$a */
    /* loaded from: classes10.dex */
    public static class C16965a implements IIOReadWarningListener {

        /* renamed from: e */
        public final /* synthetic */ String f94170e;

        public C16965a(String str) {
            this.f94170e = str;
        }

        @Override // javax.imageio.event.IIOReadWarningListener
        public void warningOccurred(ImageReader imageReader, String str) {
            System.err.println("Warning: " + this.f94170e + ": " + str);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader$b */
    /* loaded from: classes10.dex */
    public static class C16966b extends ProgressListenerBase {

        /* renamed from: f */
        public static final int f94171f = 78;

        /* renamed from: e */
        public int f94172e = 0;

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageComplete(ImageReader imageReader) {
            for (int i = this.f94172e; i < 78; i++) {
                System.out.print(".");
            }
            System.out.println(IteratorUtils.f104924b);
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageProgress(ImageReader imageReader, float f) {
            int i = ((int) (f * 78.0f)) / 100;
            for (int i2 = this.f94172e; i2 < i; i2++) {
                System.out.print(".");
            }
            System.out.flush();
            this.f94172e = i;
        }

        @Override // com.twelvemonkeys.imageio.util.ProgressListenerBase, javax.imageio.event.IIOReadProgressListener
        public void imageStarted(ImageReader imageReader, int i) {
            System.out.print(IteratorUtils.f104923a);
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader$c */
    /* loaded from: classes10.dex */
    public static class C16967c implements ServiceRegistry.Filter {
        @Override // javax.imageio.spi.ServiceRegistry.Filter
        public boolean filter(Object obj) {
            return obj.getClass().getName().equals("com.sun.imageio.plugins.tiff.TIFFImageReaderSpi");
        }
    }

    public TIFFImageReader(TIFFImageReaderSpi tIFFImageReaderSpi) {
        super(tIFFImageReaderSpi);
    }

    /* renamed from: i */
    public static InputStream m60612i(int i, int i2, int i3, byte[][] bArr, byte[][] bArr2, byte[][] bArr3) throws IOException {
        int i4 = i * 3;
        int i5 = i * 2;
        FastByteArrayOutputStream fastByteArrayOutputStream = new FastByteArrayOutputStream(i4 + 12 + (bArr.length * 5) + (bArr.length * bArr[0].length) + (bArr2.length * 5) + (bArr2.length * bArr2[0].length) + (bArr3.length * 5) + (bArr3.length * bArr3[0].length) + 8 + i5);
        DataOutputStream dataOutputStream = new DataOutputStream(fastByteArrayOutputStream);
        dataOutputStream.writeShort(65496);
        dataOutputStream.writeShort(JPEG.SOF0);
        dataOutputStream.writeShort(i4 + 8);
        dataOutputStream.writeByte(8);
        dataOutputStream.writeShort(i3);
        dataOutputStream.writeShort(i2);
        dataOutputStream.writeByte(i);
        int i6 = 0;
        while (i6 < i) {
            dataOutputStream.writeByte(i6);
            dataOutputStream.writeByte(i6 == 0 ? 34 : 17);
            dataOutputStream.writeByte(i6);
            i6++;
        }
        for (int i7 = 0; i7 < bArr.length; i7++) {
            byte[] bArr4 = bArr[i7];
            dataOutputStream.writeShort(JPEG.DQT);
            dataOutputStream.writeShort(bArr4.length + 3);
            dataOutputStream.writeByte(i7);
            dataOutputStream.write(bArr4);
        }
        for (int i8 = 0; i8 < bArr2.length; i8++) {
            byte[] bArr5 = bArr2[i8];
            dataOutputStream.writeShort(JPEG.DHT);
            dataOutputStream.writeShort(bArr5.length + 3);
            dataOutputStream.writeByte(i8);
            dataOutputStream.write(bArr5);
        }
        for (int i9 = 0; i9 < bArr3.length; i9++) {
            byte[] bArr6 = bArr3[i9];
            dataOutputStream.writeShort(JPEG.DHT);
            dataOutputStream.writeShort(bArr6.length + 3);
            dataOutputStream.writeByte((i9 & 15) + 16);
            dataOutputStream.write(bArr6);
        }
        dataOutputStream.writeShort(65498);
        dataOutputStream.writeShort(i5 + 6);
        dataOutputStream.writeByte(i);
        int i10 = 0;
        while (i10 < i) {
            dataOutputStream.writeByte(i10);
            dataOutputStream.writeByte(i10 == 0 ? i10 : (i10 & 15) + 16);
            i10++;
        }
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        dataOutputStream.writeByte(0);
        return fastByteArrayOutputStream.createInputStream();
    }

    /* renamed from: l */
    public static void m60613l() {
        IIORegistry defaultInstance = IIORegistry.getDefaultInstance();
        Iterator serviceProviders = defaultInstance.getServiceProviders(ImageReaderSpi.class, new C16967c(), false);
        while (serviceProviders.hasNext()) {
            defaultInstance.deregisterServiceProvider((ImageReaderSpi) serviceProviders.next());
        }
    }

    public static void main(String[] strArr) throws IOException {
        int i;
        int i2;
        ImageReadParam imageReadParam;
        boolean z;
        BufferedImage readThumbnail;
        Object[] objArr;
        String[] strArr2 = strArr;
        int i3 = 0;
        ImageIO.setUseCache(false);
        int length = strArr2.length;
        int i4 = 0;
        while (i4 < length) {
            String str = strArr2[i4];
            File file = new File(str);
            ImageInputStream createImageInputStream = ImageIO.createImageInputStream(file);
            if (createImageInputStream == null) {
                System.err.println("Could not read file: " + file);
            } else {
                m60613l();
                Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(createImageInputStream);
                if (imageReaders.hasNext()) {
                    ImageReader next = imageReaders.next();
                    System.err.println("Reading using: " + next);
                    next.addIIOReadWarningListener(new C16965a(str));
                    next.addIIOReadProgressListener(new C16966b());
                    next.setInput(createImageInputStream);
                    try {
                        ImageReadParam defaultReadParam = next.getDefaultReadParam();
                        boolean z2 = true;
                        int numImages = next.getNumImages(true);
                        int i5 = i3;
                        while (i5 < numImages) {
                            try {
                                long currentTimeMillis = System.currentTimeMillis();
                                BufferedImage read = next.read(i5, defaultReadParam);
                                try {
                                    try {
                                        System.err.println("Read time: " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                                        System.err.println("image: " + read);
                                        if (read.getType() == 0) {
                                            long currentTimeMillis2 = System.currentTimeMillis();
                                            i2 = length;
                                            try {
                                                imageReadParam = defaultReadParam;
                                            } catch (Throwable th) {
                                                th = th;
                                                imageReadParam = defaultReadParam;
                                                i = 0;
                                                z = true;
                                                try {
                                                    System.err.println(file + " image " + i5 + " can't be read:");
                                                    th.printStackTrace();
                                                    i5++;
                                                    i3 = i;
                                                    z2 = z;
                                                    length = i2;
                                                    defaultReadParam = imageReadParam;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    try {
                                                        System.err.println(file + " can't be read:");
                                                        th.printStackTrace();
                                                        i4++;
                                                        strArr2 = strArr;
                                                        i3 = i;
                                                        length = i2;
                                                    } finally {
                                                        createImageInputStream.close();
                                                    }
                                                }
                                            }
                                            try {
                                                read = new ColorConvertOp(null).filter(read, new BufferedImage(read.getWidth(), read.getHeight(), 2));
                                                System.err.println("Conversion time: " + (System.currentTimeMillis() - currentTimeMillis2) + " ms");
                                            } catch (Throwable th3) {
                                                th = th3;
                                                i = 0;
                                                z = true;
                                                System.err.println(file + " image " + i5 + " can't be read:");
                                                th.printStackTrace();
                                                i5++;
                                                i3 = i;
                                                z2 = z;
                                                length = i2;
                                                defaultReadParam = imageReadParam;
                                            }
                                        } else {
                                            i2 = length;
                                            imageReadParam = defaultReadParam;
                                        }
                                        Object[] objArr2 = new Object[3];
                                        try {
                                            objArr2[0] = file.getName();
                                            try {
                                                objArr2[1] = Integer.valueOf(next.getWidth(i5));
                                                objArr2[2] = Integer.valueOf(next.getHeight(i5));
                                                showIt(read, String.format("Image: %s [%d x %d]", objArr2));
                                                try {
                                                    int numThumbnails = next.getNumThumbnails(0);
                                                    for (int i6 = 0; i6 < numThumbnails; i6++) {
                                                        try {
                                                            readThumbnail = next.readThumbnail(i5, i6);
                                                            objArr = new Object[3];
                                                            i = 0;
                                                        } catch (IIOException e) {
                                                            e = e;
                                                            i = 0;
                                                        }
                                                        try {
                                                            objArr[0] = file.getName();
                                                            z = true;
                                                            try {
                                                                try {
                                                                    objArr[1] = Integer.valueOf(readThumbnail.getWidth());
                                                                    objArr[2] = Integer.valueOf(readThumbnail.getHeight());
                                                                    showIt(readThumbnail, String.format("Thumbnail: %s [%d x %d]", objArr));
                                                                } catch (IIOException e2) {
                                                                    e = e2;
                                                                    System.err.println("Could not read thumbnails: " + e.getMessage());
                                                                    e.printStackTrace();
                                                                    i5++;
                                                                    i3 = i;
                                                                    z2 = z;
                                                                    length = i2;
                                                                    defaultReadParam = imageReadParam;
                                                                }
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                System.err.println(file + " image " + i5 + " can't be read:");
                                                                th.printStackTrace();
                                                                i5++;
                                                                i3 = i;
                                                                z2 = z;
                                                                length = i2;
                                                                defaultReadParam = imageReadParam;
                                                            }
                                                        } catch (IIOException e3) {
                                                            e = e3;
                                                            z = true;
                                                            System.err.println("Could not read thumbnails: " + e.getMessage());
                                                            e.printStackTrace();
                                                            i5++;
                                                            i3 = i;
                                                            z2 = z;
                                                            length = i2;
                                                            defaultReadParam = imageReadParam;
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            z = true;
                                                            System.err.println(file + " image " + i5 + " can't be read:");
                                                            th.printStackTrace();
                                                            i5++;
                                                            i3 = i;
                                                            z2 = z;
                                                            length = i2;
                                                            defaultReadParam = imageReadParam;
                                                        }
                                                    }
                                                    i = 0;
                                                    z = true;
                                                } catch (IIOException e4) {
                                                    e = e4;
                                                    i = 0;
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    i = 0;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                z = true;
                                                i = 0;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            i = 0;
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        i2 = length;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    i = i3;
                                    i2 = length;
                                    imageReadParam = defaultReadParam;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                i = i3;
                                i2 = length;
                                imageReadParam = defaultReadParam;
                                z = z2;
                            }
                            i5++;
                            i3 = i;
                            z2 = z;
                            length = i2;
                            defaultReadParam = imageReadParam;
                        }
                        i = i3;
                        i2 = length;
                    } catch (Throwable th12) {
                        th = th12;
                        i = i3;
                        i2 = length;
                    }
                    i4++;
                    strArr2 = strArr;
                    i3 = i;
                    length = i2;
                } else {
                    System.err.println("No reader for: " + file);
                }
            }
            i = i3;
            i2 = length;
            i4++;
            strArr2 = strArr;
            i3 = i;
            length = i2;
        }
    }

    public static void showIt(BufferedImage bufferedImage, String str) {
        ImageReaderBase.showIt(bufferedImage, str);
    }

    /* renamed from: A */
    public final Number m60614A(int i, String str, Number number) throws IIOException {
        Entry entryById = this.f94169g.getEntryById(Integer.valueOf(i));
        if (entryById != null) {
            return (Number) entryById.getValue();
        }
        if (number != null) {
            return number;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Missing TIFF tag: ");
        Object obj = str;
        if (str == null) {
            obj = Integer.valueOf(i);
        }
        sb.append(obj);
        throw new IIOException(sb.toString());
    }

    /* renamed from: B */
    public final boolean m60615B(int i, IIOMetadata iIOMetadata) throws IOException {
        NodeList elementsByTagName;
        if (iIOMetadata == null || (elementsByTagName = ((IIOMetadataNode) iIOMetadata.getAsTree(IIOMetadataFormatImpl.standardMetadataFormatName)).getElementsByTagName("ColorSpaceType")) == null || elementsByTagName.getLength() <= 0) {
            return false;
        }
        String attribute = ((IIOMetadataNode) elementsByTagName.item(0)).getAttribute("name");
        if (("YCbCr".equals(attribute) && i == 6) || ((ColorUtils.RGB_COLOR_START.equals(attribute) && i == 2) || ("GRAY".equals(attribute) && i == 1))) {
            return false;
        }
        if (f94165h) {
            System.out.println("Incompatible JPEG CS/PhotometricInterpretation: " + attribute + "/" + i);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public final void m60616C(int i, byte[] bArr) throws IIOException {
        float f;
        int i2;
        int i3 = 0;
        if (i == 0) {
            while (i3 < bArr.length) {
                bArr[i3] = (byte) (~bArr[i3]);
                i3++;
            }
            return;
        }
        if (i != 6) {
            switch (i) {
                case 8:
                case 9:
                case 10:
                    CIELabColorConverter cIELabColorConverter = new CIELabColorConverter(i == 8 ? CIELabColorConverter.Illuminant.D65 : CIELabColorConverter.Illuminant.D50);
                    float[] fArr = new float[3];
                    for (int i4 = 0; i4 < bArr.length; i4 += 3) {
                        float f2 = ((bArr[i4] & 255) * 100.0f) / 255.0f;
                        if (i == 8) {
                            f = bArr[i4 + 1];
                            i2 = bArr[i4 + 2];
                        } else {
                            f = (bArr[i4 + 1] & 255) - 128;
                            i2 = (bArr[i4 + 2] & 255) - 128;
                        }
                        cIELabColorConverter.toRGB(f2, f, i2, fArr);
                        bArr[i4] = (byte) fArr[0];
                        bArr[i4 + 1] = (byte) fArr[1];
                        bArr[i4 + 2] = (byte) fArr[2];
                    }
                    return;
                default:
                    return;
            }
        }
        double[] m60641t = m60641t(529, ExifInterface.TAG_Y_CB_CR_COEFFICIENTS, false, 3);
        double[] m60641t2 = m60641t(532, ExifInterface.TAG_REFERENCE_BLACK_WHITE, false, 6);
        if ((m60641t == null || Arrays.equals(m60641t, f94166i)) && (m60641t2 == null || Arrays.equals(m60641t2, f94167j))) {
            while (i3 < bArr.length) {
                YCbCrConverter.convertYCbCr2RGB(bArr, bArr, i3);
                i3 += 3;
            }
            return;
        }
        if (m60641t == null) {
            m60641t = f94166i;
        }
        if (m60641t2 != null && Arrays.equals(m60641t2, f94167j)) {
            m60641t2 = null;
        }
        while (i3 < bArr.length) {
            YCbCrConverter.convertYCbCr2RGB(bArr, bArr, m60641t, m60641t2, i3);
            i3 += 3;
        }
    }

    /* renamed from: D */
    public final void m60617D(int i, float[] fArr) {
    }

    /* renamed from: E */
    public final void m60618E(int i, int[] iArr) {
        if (i != 0) {
            return;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = ~iArr[i2];
        }
    }

    /* renamed from: F */
    public final void m60619F(int i, short[] sArr) throws IIOException {
        float f;
        float f2;
        int i2 = 0;
        if (i == 0) {
            while (i2 < sArr.length) {
                sArr[i2] = (short) (~sArr[i2]);
                i2++;
            }
            return;
        }
        if (i == 6) {
            double[] m60641t = m60641t(529, ExifInterface.TAG_Y_CB_CR_COEFFICIENTS, false, 3);
            double[] m60641t2 = m60641t(532, ExifInterface.TAG_REFERENCE_BLACK_WHITE, false, 6);
            if (m60641t == null) {
                m60641t = f94166i;
            }
            if (m60641t2 != null && Arrays.equals(m60641t2, f94167j)) {
                m60641t2 = null;
            }
            while (i2 < sArr.length) {
                m60629f(sArr, sArr, m60641t, m60641t2, i2);
                i2 += 3;
            }
            return;
        }
        switch (i) {
            case 8:
            case 9:
            case 10:
                CIELabColorConverter cIELabColorConverter = new CIELabColorConverter(i == 10 ? CIELabColorConverter.Illuminant.D65 : CIELabColorConverter.Illuminant.D50);
                float[] fArr = new float[3];
                float f3 = i == 8 ? 65535.0f : 65280.0f;
                for (int i3 = 0; i3 < sArr.length; i3 += 3) {
                    float f4 = ((sArr[i3] & 65535) * 100.0f) / f3;
                    if (i == 8) {
                        f2 = sArr[i3 + 1] / 256.0f;
                        f = sArr[i3 + 2] / 256.0f;
                    } else {
                        f = ((65535 & sArr[i3 + 2]) + JsonParser.f21215g) / 256.0f;
                        f2 = ((sArr[i3 + 1] & 65535) + JsonParser.f21215g) / 256.0f;
                    }
                    cIELabColorConverter.toRGB(f4, f2, f, fArr);
                    sArr[i3] = (short) (fArr[0] * 257.0f);
                    sArr[i3 + 1] = (short) (fArr[1] * 257.0f);
                    sArr[i3 + 2] = (short) (fArr[2] * 257.0f);
                }
                return;
            default:
                return;
        }
    }

    /* renamed from: G */
    public final void m60620G(DataInput dataInput, float[] fArr) throws IOException {
        if (dataInput instanceof ImageInputStream) {
            ((ImageInputStream) dataInput).readFully(fArr, 0, fArr.length);
            return;
        }
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = dataInput.readFloat();
        }
    }

    /* renamed from: H */
    public final void m60621H(DataInput dataInput, int[] iArr) throws IOException {
        if (dataInput instanceof ImageInputStream) {
            ((ImageInputStream) dataInput).readFully(iArr, 0, iArr.length);
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = dataInput.readInt();
        }
    }

    /* renamed from: I */
    public final void m60622I(DataInput dataInput, short[] sArr) throws IOException {
        if (dataInput instanceof ImageInputStream) {
            ((ImageInputStream) dataInput).readFully(sArr, 0, sArr.length);
            return;
        }
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = dataInput.readShort();
        }
    }

    /* renamed from: J */
    public final void m60623J(int i) throws IOException {
        readMetadata();
        checkBounds(i);
        this.f94169g = this.f94168f.getDirectory(i);
    }

    /* renamed from: K */
    public final void m60624K(Raster raster, Rectangle rectangle, int i, int i2, int i3, int i4, int i5, WritableRaster writableRaster, int i6, int i7, int i8, int i9, DataInput dataInput) throws IOException {
        DataBuffer dataBuffer = raster.getDataBuffer();
        boolean z = dataBuffer.getNumBanks() > 1;
        int transferType = raster.getTransferType();
        if (transferType == 0) {
            byte[] data = ((DataBufferByte) dataBuffer).getData(z ? ((BandedSampleModel) raster.getSampleModel()).getBankIndices()[i3] : i3);
            WritableRaster createWritableChild = z ? writableRaster.createWritableChild(writableRaster.getMinX(), writableRaster.getMinY(), writableRaster.getWidth(), writableRaster.getHeight(), 0, 0, new int[]{i3}) : writableRaster;
            Raster createChild = z ? raster.createChild(raster.getMinX(), 0, raster.getWidth(), 1, 0, 0, new int[]{i3}) : raster;
            for (int i10 = i7; i10 < i7 + i9 && i10 < rectangle.f97733y + rectangle.height; i10++) {
                dataInput.readFully(data);
                if (i10 % i2 == 0 && i10 >= rectangle.f97733y) {
                    if (!z) {
                        m60616C(i5, data);
                    }
                    if (i != 1) {
                        int i11 = (rectangle.f97732x / i) * i4;
                        while (i11 < ((rectangle.f97732x + i8) / i) * i4) {
                            System.arraycopy(data, i11 * i, data, i11, i4);
                            i11 += i4;
                        }
                    }
                    createWritableChild.setDataElements(i6 / i, (i10 - rectangle.f97733y) / i2, createChild);
                }
            }
            return;
        }
        if (transferType == 1 || transferType == 2) {
            short[] data2 = dataBuffer.getDataType() == 1 ? ((DataBufferUShort) dataBuffer).getData(i3) : ((DataBufferShort) dataBuffer).getData(i3);
            WritableRaster createWritableChild2 = z ? writableRaster.createWritableChild(writableRaster.getMinX(), writableRaster.getMinY(), writableRaster.getWidth(), writableRaster.getHeight(), 0, 0, new int[]{i3}) : writableRaster;
            Raster createChild2 = z ? raster.createChild(raster.getMinX(), 0, raster.getWidth(), 1, 0, 0, new int[]{i3}) : raster;
            for (int i12 = i7; i12 < i7 + i9 && i12 < rectangle.f97733y + rectangle.height; i12++) {
                m60622I(dataInput, data2);
                if (i12 >= rectangle.f97733y) {
                    m60619F(i5, data2);
                    if (i != 1) {
                        int i13 = (rectangle.f97732x / i) * i4;
                        while (i13 < ((rectangle.f97732x + i8) / i) * i4) {
                            System.arraycopy(data2, i13 * i, data2, i13, i4);
                            i13 += i4;
                        }
                    }
                    createWritableChild2.setDataElements(i6 / i, (i12 - rectangle.f97733y) / i2, createChild2);
                }
            }
            return;
        }
        if (transferType == 3) {
            int[] data3 = ((DataBufferInt) dataBuffer).getData(i3);
            WritableRaster createWritableChild3 = z ? writableRaster.createWritableChild(writableRaster.getMinX(), writableRaster.getMinY(), writableRaster.getWidth(), writableRaster.getHeight(), 0, 0, new int[]{i3}) : writableRaster;
            Raster createChild3 = z ? raster.createChild(raster.getMinX(), 0, raster.getWidth(), 1, 0, 0, new int[]{i3}) : raster;
            for (int i14 = i7; i14 < i7 + i9 && i14 < rectangle.f97733y + rectangle.height; i14++) {
                m60621H(dataInput, data3);
                if (i14 >= rectangle.f97733y) {
                    m60618E(i5, data3);
                    if (i != 1) {
                        int i15 = (rectangle.f97732x / i) * i4;
                        while (i15 < ((rectangle.f97732x + i8) / i) * i4) {
                            System.arraycopy(data3, i15 * i, data3, i15, i4);
                            i15 += i4;
                        }
                    }
                    createWritableChild3.setDataElements(i6 / i, (i14 - rectangle.f97733y) / i2, createChild3);
                }
            }
            return;
        }
        if (transferType != 4) {
            return;
        }
        float[] data4 = ((DataBufferFloat) raster.getDataBuffer()).getData(i3);
        WritableRaster createWritableChild4 = z ? writableRaster.createWritableChild(writableRaster.getMinX(), writableRaster.getMinY(), writableRaster.getWidth(), writableRaster.getHeight(), 0, 0, new int[]{i3}) : writableRaster;
        Raster createChild4 = z ? raster.createChild(raster.getMinX(), 0, raster.getWidth(), 1, 0, 0, new int[]{i3}) : raster;
        for (int i16 = i7; i16 < i7 + i9 && i16 < rectangle.f97733y + rectangle.height; i16++) {
            m60620G(dataInput, data4);
            if (i16 >= rectangle.f97733y) {
                m60625b(data4);
                m60617D(i5, data4);
                if (i != 1) {
                    int i17 = (rectangle.f97732x / i) * i4;
                    while (i17 < ((rectangle.f97732x + rectangle.width) / i) * i4) {
                        System.arraycopy(data4, i17 * i, data4, i17, i4);
                        i17 += i4;
                    }
                }
                createWritableChild4.setDataElements(i6, i16 - rectangle.f97733y, createChild4);
            }
        }
    }

    /* renamed from: b */
    public final void m60625b(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            if (fArr[i] > 1.0f) {
                fArr[i] = 1.0f;
            }
        }
    }

    /* renamed from: c */
    public final short m60626c(int i) {
        return (short) Math.max(0, Math.min(65535, i));
    }

    /* renamed from: d */
    public final Raster m60627d(Raster raster, Rectangle rectangle, int[] iArr, int i) {
        return (rectangle.contains(raster.getMinX(), 0, raster.getWidth(), 1) && i == 1 && iArr == null) ? raster : raster.createChild(((rectangle.f97732x + i) - 1) / i, 0, ((rectangle.width + i) - 1) / i, 1, 0, 0, iArr);
    }

    /* renamed from: e */
    public final WritableRaster m60628e(WritableRaster writableRaster, Rectangle rectangle, int[] iArr) {
        return (rectangle.contains(writableRaster.getMinX(), writableRaster.getMinY(), writableRaster.getWidth(), writableRaster.getHeight()) && iArr == null) ? writableRaster : writableRaster.createWritableChild(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height, 0, 0, iArr);
    }

    /* renamed from: f */
    public final void m60629f(short[] sArr, short[] sArr2, double[] dArr, double[] dArr2, int i) {
        double d;
        double d2;
        double d3;
        if (dArr2 == null) {
            d = sArr[i] & 65535;
            d2 = (sArr[i + 1] & 65535) + JsonParser.f21215g;
            d3 = (65535 & sArr[i + 2]) + JsonParser.f21215g;
        } else {
            double d4 = sArr[i] & 65535;
            double d5 = dArr2[0];
            d = ((d4 - d5) * 65535.0d) / (dArr2[1] - d5);
            double d6 = sArr[i + 1] & 65535;
            double d7 = dArr2[2];
            d2 = ((d6 - d7) * 32767.0d) / (dArr2[3] - d7);
            double d8 = 65535 & sArr[i + 2];
            double d9 = dArr2[4];
            d3 = ((d8 - d9) * 32767.0d) / (dArr2[5] - d9);
        }
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        int round = (int) Math.round((d3 * (2.0d - (d10 * 2.0d))) + d);
        int round2 = (int) Math.round((d2 * (2.0d - (d12 * 2.0d))) + d);
        int round3 = (int) Math.round(((d - (d10 * round)) - (d12 * round2)) / d11);
        short m60626c = m60626c(round);
        short m60626c2 = m60626c(round3);
        short m60626c3 = m60626c(round2);
        sArr2[i] = m60626c;
        sArr2[i + 1] = m60626c2;
        sArr2[i + 2] = m60626c3;
    }

    /* renamed from: g */
    public final InputStream m60630g(int i, int i2, int i3, InputStream inputStream) throws IOException {
        if (i == 1) {
            return inputStream;
        }
        if (i == 2 || i == 3 || i == 4) {
            return new z00(inputStream, i2, i, m60643v(266, 1), m60635n(i));
        }
        if (i == 5) {
            return new DecoderStream(inputStream, qui.m56767c(qui.m56768g(inputStream)), Math.max(i2 * i3, 4096));
        }
        if (i != 8) {
            if (i == 32773) {
                return new DecoderStream(inputStream, new PackBitsDecoder(), 1024);
            }
            if (i != 32946) {
                throw new IllegalArgumentException("Unsupported TIFF compression: " + i);
            }
        }
        return new InflaterInputStream(inputStream, new Inflater(), 1024);
    }

    @Override // javax.imageio.ImageReader
    public int getHeight(int i) throws IOException {
        m60623J(i);
        return m60642u(257, "ImageHeight");
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public IIOMetadata getImageMetadata(int i) throws IOException {
        m60623J(i);
        return new TIFFImageMetadata(this.f94169g);
    }

    @Override // javax.imageio.ImageReader
    public Iterator<ImageTypeSpecifier> getImageTypes(int i) throws IOException {
        m60623J(i);
        ImageTypeSpecifier rawImageType = getRawImageType(i);
        LinkedHashSet linkedHashSet = new LinkedHashSet(5);
        if (rawImageType.getColorModel().getColorSpace().getType() == 5) {
            if (rawImageType.getNumBands() == 3 && rawImageType.getBitsPerBand(0) == 8) {
                linkedHashSet.add(ImageTypeSpecifier.createFromBufferedImageType(5));
            } else if (rawImageType.getNumBands() == 4 && rawImageType.getBitsPerBand(0) == 8) {
                linkedHashSet.add(ImageTypeSpecifier.createFromBufferedImageType(6));
                linkedHashSet.add(ImageTypeSpecifier.createFromBufferedImageType(7));
            }
        }
        linkedHashSet.add(rawImageType);
        return linkedHashSet.iterator();
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public int getNumImages(boolean z) throws IOException {
        readMetadata();
        return this.f94168f.directoryCount();
    }

    @Override // javax.imageio.ImageReader
    public ImageTypeSpecifier getRawImageType(int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        m60623J(i);
        int m60640s = m60640s();
        int m60643v = m60643v(284, 1);
        int m60639r = m60639r();
        int m60643v2 = m60643v(277, 1);
        int m60634m = m60634m();
        int m60636o = m60636o(m60640s, m60634m);
        int m60638q = m60638q(m60639r);
        long[] m60645x = m60645x(338, "ExtraSamples", false);
        if (m60645x == null && m60643v2 > m60638q) {
            m60645x = new long[m60643v2 - m60638q];
            m60645x[0] = 2;
        }
        int i7 = m60645x != null ? 1 : 0;
        boolean z = i7 != 0 && m60645x[0] == 1;
        int i8 = m60638q + i7;
        ICC_Profile m60637p = m60637p();
        if (m60639r != 32803 && m60639r != 34892) {
            switch (m60639r) {
                case 0:
                case 1:
                    boolean z2 = z;
                    if (i8 == 1) {
                        if (m60637p != null && m60637p.getColorSpaceType() != 6) {
                            processWarningOccurred(String.format("Embedded ICC color profile (type %s), is incompatible with image data (GRAY/type 6). Ignoring profile.", Integer.valueOf(m60637p.getColorSpaceType())));
                            m60637p = null;
                        }
                        ColorSpace colorSpace = m60637p == null ? ColorSpace.getInstance(1003) : ColorSpaces.createColorSpace(m60637p);
                        if (colorSpace == ColorSpace.getInstance(1003) && (m60634m == 1 || m60634m == 2 || m60634m == 4 || m60634m == 8 || m60634m == 16 || m60634m == 32)) {
                            return ImageTypeSpecifiers.createGrayscale(m60634m, m60636o);
                        }
                        if (m60634m == 1 || m60634m == 2 || m60634m == 4) {
                            return ImageTypeSpecifiers.createPackedGrayscale(colorSpace, m60634m, m60636o);
                        }
                        if (m60634m == 8 || m60634m == 16 || m60634m == 32) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace, new int[]{0}, m60636o, false, false);
                        }
                        throw new IIOException(String.format("Unsupported BitsPerSample for Bi-level/Gray TIFF (expected 1, 2, 4, 8, 16 or 32): %d", Integer.valueOf(m60634m)));
                    }
                    if (i8 != 2) {
                        throw new IIOException(String.format("Unsupported SamplesPerPixel/BitsPerSample combination for Bi-level/Gray TIFF (expected 1/1, 1/2, 1/4, 1/8, 1/16 or 1/32, or 2/8, 2/16 or 2/32): %d/%d", Integer.valueOf(m60643v2), Integer.valueOf(m60634m)));
                    }
                    if (m60637p != null && m60637p.getColorSpaceType() != 6) {
                        processWarningOccurred(String.format("Embedded ICC color profile (type %s), is incompatible with image data (GRAY/type 6). Ignoring profile.", Integer.valueOf(m60637p.getColorSpaceType())));
                        m60637p = null;
                    }
                    ColorSpace colorSpace2 = m60637p == null ? ColorSpace.getInstance(1003) : ColorSpaces.createColorSpace(m60637p);
                    if (colorSpace2 == ColorSpace.getInstance(1003) && (m60634m == 8 || m60634m == 16 || m60634m == 32)) {
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createGrayscale(m60634m, m60636o, z2);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace2, new int[]{0, 1}, new int[]{0, 0}, m60636o, true, z2);
                        }
                    } else if (m60634m == 8 || m60634m == 16 || m60634m == 32) {
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace2, new int[]{0, 1}, m60636o, true, z2);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace2, new int[]{0, 1}, new int[]{0, 0}, m60636o, true, z2);
                        }
                    }
                    throw new IIOException(String.format("Unsupported BitsPerSample for Gray + Alpha TIFF (expected 8, 16 or 32): %d", Integer.valueOf(m60634m)));
                case 2:
                case 6:
                    if (m60637p != null && m60637p.getColorSpaceType() != 5) {
                        processWarningOccurred(String.format("Embedded ICC color profile (type %s), is incompatible with image data (RGB/type 5). Ignoring profile.", Integer.valueOf(m60637p.getColorSpaceType())));
                        m60637p = null;
                    }
                    ColorSpace colorSpace3 = m60637p == null ? ColorSpace.getInstance(1000) : ColorSpaces.createColorSpace(m60637p);
                    if (i8 != 3) {
                        if (i8 == 4) {
                            i2 = 8;
                            i3 = 16;
                            i4 = 32;
                        }
                        throw new IIOException(String.format("Unsupported SamplesPerPixel/BitsPerSample combination for RGB TIFF (expected 3/8, 4/8, 3/16 or 4/16): %d/%d", Integer.valueOf(m60643v2), Integer.valueOf(m60634m)));
                    }
                    i2 = 8;
                    i3 = 16;
                    i4 = 32;
                    if (m60634m == 8 || m60634m == 16 || m60634m == 32) {
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace3, new int[]{0, 1, 2}, m60636o, false, false);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace3, new int[]{0, 1, 2}, new int[]{0, 0, 0}, m60636o, false, false);
                        }
                    }
                    if (m60634m == i2 || m60634m == i3 || m60634m == i4) {
                        boolean z3 = z;
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace3, new int[]{0, 1, 2, 3}, m60636o, true, z3);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace3, new int[]{0, 1, 2, 3}, new int[]{0, 0, 0, 0}, m60636o, true, z3);
                        }
                    } else if (i8 == 4 && m60634m == 4) {
                        return ImageTypeSpecifiers.createPacked(colorSpace3, 61440, 3840, 240, 15, 1, z);
                    }
                    throw new IIOException(String.format("Unsupported SamplesPerPixel/BitsPerSample combination for RGB TIFF (expected 3/8, 4/8, 3/16 or 4/16): %d/%d", Integer.valueOf(m60643v2), Integer.valueOf(m60634m)));
                case 3:
                    if (m60643v2 != 1) {
                        throw new IIOException("Bad SamplesPerPixel value for Palette TIFF (expected 1): " + m60643v2);
                    }
                    if (m60634m <= 0 || m60634m > 16) {
                        throw new IIOException("Bad BitsPerSample value for Palette TIFF (expected <= 16): " + m60634m);
                    }
                    Entry entryById = this.f94169g.getEntryById(320);
                    if (entryById != null) {
                        return ImageTypeSpecifiers.createFromIndexColorModel(m60631h(m60634m, m60636o, (int[]) entryById.getValue()));
                    }
                    throw new IIOException("Missing ColorMap for Palette TIFF");
                case 4:
                    break;
                case 5:
                    int m60643v3 = m60643v(332, 1);
                    int m60643v4 = m60643v(334, 4);
                    if (m60643v3 != 1 && (m60637p == null || m60637p.getNumComponents() != m60643v4)) {
                        Object[] objArr = new Object[2];
                        objArr[0] = m60637p != null ? Integer.valueOf(m60637p.getNumComponents()) : "null";
                        objArr[1] = Integer.valueOf(m60643v4);
                        throw new IIOException(String.format("Embedded ICC color profile for Photometric Separated is missing or is incompatible with image data: %s != NumberOfInks (%s).", objArr));
                    }
                    if (m60637p != null && m60643v3 == 1 && m60637p.getColorSpaceType() != 9) {
                        processWarningOccurred(String.format("Embedded ICC color profile (type %s), is incompatible with image data (CMYK/type 9). Ignoring profile.", Integer.valueOf(m60637p.getColorSpaceType())));
                        m60637p = null;
                    }
                    ColorSpace colorSpace4 = m60637p == null ? ColorSpaces.getColorSpace(5001) : ColorSpaces.createColorSpace(m60637p);
                    if (i8 != 4) {
                        if (i8 == 5) {
                            i5 = 8;
                            i6 = 16;
                        }
                        throw new IIOException(String.format("Unsupported SamplesPerPixel/BitsPerSample combination for Separated TIFF (expected 4/8, 4/16, 5/8 or 5/16): %d/%s", Integer.valueOf(m60643v2), Integer.valueOf(m60634m)));
                    }
                    i5 = 8;
                    i6 = 16;
                    if (m60634m == 8 || m60634m == 16) {
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace4, new int[]{0, 1, 2, 3}, m60636o, false, false);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace4, new int[]{0, 1, 2, 3}, new int[]{0, 0, 0, 0}, m60636o, false, false);
                        }
                    }
                    if (m60634m == i5 || m60634m == i6) {
                        if (m60643v == 1) {
                            return ImageTypeSpecifiers.createInterleaved(colorSpace4, new int[]{0, 1, 2, 3, 4}, m60636o, true, z);
                        }
                        if (m60643v == 2) {
                            return ImageTypeSpecifiers.createBanded(colorSpace4, new int[]{0, 1, 2, 3, 4}, new int[]{0, 0, 0, 0, 0}, m60636o, true, z);
                        }
                    }
                    throw new IIOException(String.format("Unsupported SamplesPerPixel/BitsPerSample combination for Separated TIFF (expected 4/8, 4/16, 5/8 or 5/16): %d/%s", Integer.valueOf(m60643v2), Integer.valueOf(m60634m)));
                default:
                    switch (m60639r) {
                        case 8:
                        case 9:
                        case 10:
                            ColorSpace colorSpace5 = ColorSpace.getInstance(1000);
                            if (m60643v == 1) {
                                return ImageTypeSpecifiers.createInterleaved(colorSpace5, new int[]{0, 1, 2}, m60636o, false, false);
                            }
                            throw new IIOException(String.format("Unsupported PlanarConfiguration for Lab color TIFF (expected 1): %d", Integer.valueOf(m60643v)));
                        default:
                            switch (m60639r) {
                                case b7n.f65494o /* 32844 */:
                                case b7n.f65495p /* 32845 */:
                                    break;
                                default:
                                    throw new IIOException("Unknown TIFF PhotometricInterpretation value: " + m60639r);
                            }
                    }
            }
        }
        throw new IIOException("Unsupported TIFF PhotometricInterpretation value: " + m60639r);
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase, javax.imageio.ImageReader
    public IIOMetadata getStreamMetadata() throws IOException {
        return super.getStreamMetadata();
    }

    @Override // javax.imageio.ImageReader
    public int getWidth(int i) throws IOException {
        m60623J(i);
        return m60642u(256, ExifInterface.TAG_IMAGE_WIDTH);
    }

    /* renamed from: h */
    public final IndexColorModel m60631h(int i, int i2, int[] iArr) {
        int length = iArr.length / 3;
        int[] iArr2 = new int[length];
        boolean z = true;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = ((iArr[i3] / 256) << 16) | ((iArr[i3 + length] / 256) << 8) | (iArr[(length * 2) + i3] / 256);
            iArr2[i3] = i4;
            if (z && i4 != 0) {
                z = false;
            }
        }
        if (z) {
            processWarningOccurred("8 bit ColorMap detected.");
            for (int i5 = 0; i5 < length; i5++) {
                iArr2[i5] = (iArr[i5] << 16) | (iArr[i5 + length] << 8) | iArr[(length * 2) + i5];
            }
        }
        return new IndexColorModel(i, length, iArr2, 0, false, -1, i2);
    }

    /* renamed from: j */
    public final ImageReader m60632j() throws IIOException {
        try {
            return (ImageReader) Class.forName("com.sun.imageio.plugins.jpeg.JPEGImageReader").getConstructor(ImageReaderSpi.class).newInstance(getOriginatingProvider());
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            if (f94165h) {
                e.printStackTrace();
            }
            Iterator<ImageReader> imageReadersByFormatName = ImageIO.getImageReadersByFormatName("JPEG");
            if (imageReadersByFormatName.hasNext()) {
                return imageReadersByFormatName.next();
            }
            throw new IIOException("Could not instantiate JPEGImageReader");
        }
    }

    /* renamed from: k */
    public final InputStream m60633k(int i, int i2, int i3, int i4, InputStream inputStream, ByteOrder byteOrder) throws IOException {
        if (i == 1) {
            return inputStream;
        }
        if (i == 2) {
            return new mzh(inputStream, i2, i3, i4, byteOrder);
        }
        if (i != 3) {
            throw new IIOException("Unknown TIFF Predictor value: " + i);
        }
        throw new IIOException("Unsupported TIFF Predictor value: " + i);
    }

    /* renamed from: m */
    public final int m60634m() throws IIOException {
        long[] m60645x = m60645x(258, ExifInterface.TAG_BITS_PER_SAMPLE, false);
        if (m60645x == null || m60645x.length == 0) {
            return 1;
        }
        long j = m60645x[0];
        int i = (int) j;
        if (m60645x.length != 3 || j != 5 || m60645x[1] != 6 || m60645x[2] != 5) {
            for (int i2 = 1; i2 < m60645x.length; i2++) {
                if (m60645x[i2] != i) {
                    throw new IIOException("Variable BitsPerSample not supported: " + Arrays.toString(m60645x));
                }
            }
        }
        return i;
    }

    /* renamed from: n */
    public final long m60635n(int i) throws IIOException {
        if (i == 2) {
            return 0L;
        }
        if (i == 3) {
            return m60646y(292, 0L);
        }
        if (i == 4) {
            return m60646y(293, 0L);
        }
        throw new IllegalArgumentException("No CCITT options for compression: " + i);
    }

    /* renamed from: o */
    public final int m60636o(int i, int i2) throws IIOException {
        if (i != 1) {
            if (i == 2) {
                if (i2 == 8) {
                    return 0;
                }
                if (i2 == 16) {
                    return 2;
                }
                if (i2 == 32) {
                    return 3;
                }
                throw new IIOException("Unsupported BitsPerSample for SampleFormat 2/Signed Integer (expected 8/16/32): " + i2);
            }
            if (i == 3) {
                if (i2 == 32) {
                    return 4;
                }
                throw new IIOException("Unsupported BitsPerSample for SampleFormat 3/Floating Point (expected 32): " + i2);
            }
            if (i != 4) {
                throw new IIOException("Unknown TIFF SampleFormat (expected 1, 2, 3 or 4): " + i);
            }
        }
        if (i2 <= 8) {
            return 0;
        }
        return i2 <= 16 ? 1 : 3;
    }

    /* renamed from: p */
    public final ICC_Profile m60637p() throws IOException {
        Entry entryById = this.f94169g.getEntryById(34675);
        if (entryById == null) {
            return null;
        }
        try {
            return ColorSpaces.validateProfile(ICC_Profile.getInstance(new ByteArrayInputStream((byte[]) entryById.getValue())));
        } catch (CMMException | IllegalArgumentException e) {
            this.processWarningOccurred("Ignoring broken/incompatible ICC profile: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: q */
    public final int m60638q(int i) throws IIOException {
        if (i != 32803 && i != 34892) {
            switch (i) {
                case 0:
                case 1:
                case 3:
                case 4:
                    return 1;
                case 2:
                case 6:
                    return 3;
                case 5:
                    return m60643v(334, 4);
                default:
                    switch (i) {
                        case 8:
                        case 9:
                        case 10:
                            return 3;
                        default:
                            switch (i) {
                                case b7n.f65494o /* 32844 */:
                                case b7n.f65495p /* 32845 */:
                                    break;
                                default:
                                    throw new IIOException("Unknown TIFF PhotometricInterpretation value: " + i);
                            }
                    }
            }
        }
        throw new IIOException("Unsupported TIFF PhotometricInterpretation value: " + i);
    }

    /* renamed from: r */
    public final int m60639r() throws IIOException {
        int m60644w = m60644w(262, ExifInterface.TAG_PHOTOMETRIC_INTERPRETATION, -1);
        if (m60644w == -1) {
            m60644w = 1;
            int m60643v = m60643v(259, 1);
            int m60643v2 = m60643v(277, 1);
            Entry entryById = this.f94169g.getEntryById(338);
            int valueCount = entryById == null ? 0 : entryById.valueCount();
            if (m60643v == 2 || m60643v == 3 || m60643v == 4) {
                m60644w = 0;
            } else if (this.f94169g.getEntryById(320) != null) {
                m60644w = 3;
            } else {
                int i = m60643v2 - valueCount;
                if (i == 3) {
                    m60644w = 2;
                } else if (i == 4) {
                    m60644w = 5;
                }
            }
            processWarningOccurred("Missing PhotometricInterpretation, determining fallback: " + m60644w);
        }
        return m60644w;
    }

    /* JADX WARN: Code restructure failed: missing block: B:307:0x0a2d, code lost:
    
        r1 = r21 + r22;
        r2 = (r1 * r34) / r0;
        r3 = r0;
        r0 = r50;
        r0.processImageProgress(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0a3e, code lost:
    
        if (abortRequested() == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0a44, code lost:
    
        r10 = r30 + 1;
        r21 = r1;
        r14 = r3;
        r8 = r24;
        r9 = r27;
        r15 = r28;
        r2 = r29;
        r40 = r31;
        r4 = r35;
        r13 = r38;
        r12 = r39;
        r27 = r42;
        r6 = r43;
        r5 = r45;
        r11 = r46;
        r7 = r47;
        r39 = r20;
        r20 = r23;
        r42 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0a40, code lost:
    
        processReadAborted();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0145. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x046b A[Catch: all -> 0x04a0, TryCatch #0 {all -> 0x04a0, blocks: (B:125:0x044d, B:127:0x046b, B:131:0x0473), top: B:124:0x044d }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0473 A[Catch: all -> 0x04a0, TRY_LEAVE, TryCatch #0 {all -> 0x04a0, blocks: (B:125:0x044d, B:127:0x046b, B:131:0x0473), top: B:124:0x044d }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03f5  */
    @Override // javax.imageio.ImageReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.awt.image.BufferedImage read(int r51, javax.imageio.ImageReadParam r52) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader.read(int, javax.imageio.ImageReadParam):java.awt.image.BufferedImage");
    }

    public final void readMetadata() throws IOException {
        if (this.imageInput == null) {
            throw new IllegalStateException("input not set");
        }
        if (this.f94168f == null) {
            this.f94168f = (CompoundDirectory) new EXIFReader().read(this.imageInput);
            if (f94165h) {
                System.err.println("Byte order: " + this.imageInput.getByteOrder());
                System.err.println("Number of images: " + this.f94168f.directoryCount());
                for (int i = 0; i < this.f94168f.directoryCount(); i++) {
                    System.err.printf("IFD %d: %s\n", Integer.valueOf(i), this.f94168f.getDirectory(i));
                }
                Entry entryById = this.f94168f.getEntryById(700);
                if (entryById != null) {
                    byte[] bArr = (byte[]) entryById.getValue();
                    int length = bArr.length;
                    for (int i2 = length - 1; i2 > 0 && bArr[i2] == 0; i2--) {
                        length--;
                    }
                    Directory read = new XMPReader().read(new ByteArrayImageInputStream(bArr, 0, length));
                    System.err.println("-----------------------------------------------------------------------------");
                    System.err.println("xmp: " + read);
                }
                Entry entryById2 = this.f94168f.getEntryById(Integer.valueOf(TIFF.TAG_IPTC));
                if (entryById2 != null) {
                    Object value = entryById2.getValue();
                    if (value instanceof short[]) {
                        System.err.println("short[]: " + value);
                    }
                    if (value instanceof long[]) {
                        System.err.println("long[]: " + value);
                        long[] jArr = (long[]) value;
                        byte[] bArr2 = new byte[jArr.length * 8];
                        ByteBuffer.wrap(bArr2).asLongBuffer().put(jArr);
                        value = bArr2;
                    }
                    if (value instanceof float[]) {
                        System.err.println("float[]: " + value);
                    }
                    if (value instanceof double[]) {
                        System.err.println("double[]: " + value);
                    }
                    Directory read2 = new IPTCReader().read(new ByteArrayImageInputStream((byte[]) value));
                    System.err.println("-----------------------------------------------------------------------------");
                    System.err.println("iptc: " + read2);
                }
                Entry entryById3 = this.f94168f.getEntryById(Integer.valueOf(TIFF.TAG_PHOTOSHOP));
                if (entryById3 != null) {
                    Directory read3 = new PSDReader().read(new ByteArrayImageInputStream((byte[]) entryById3.getValue()));
                    System.err.println("-----------------------------------------------------------------------------");
                    System.err.println("psd: " + read3);
                }
                Entry entryById4 = this.f94168f.getEntryById(Integer.valueOf(TIFF.TAG_PHOTOSHOP_IMAGE_SOURCE_DATA));
                if (entryById4 != null) {
                    if (Arrays.equals("Adobe Photoshop Document Data Block".getBytes(StandardCharsets.US_ASCII), Arrays.copyOf((byte[]) entryById4.getValue(), 35))) {
                        System.err.println("foo: Adobe Photoshop Document Data Block");
                    }
                }
            }
        }
    }

    @Override // com.twelvemonkeys.imageio.ImageReaderBase
    public void resetMembers() {
        this.f94168f = null;
        this.f94169g = null;
    }

    /* renamed from: s */
    public final int m60640s() throws IIOException {
        long[] m60645x = m60645x(339, "SampleFormat", false);
        if (m60645x == null) {
            return 1;
        }
        long j = m60645x[0];
        for (int i = 1; i < m60645x.length; i++) {
            if (m60645x[i] != j) {
                throw new IIOException("Variable TIFF SampleFormat not supported: " + Arrays.toString(m60645x));
            }
        }
        return (int) j;
    }

    /* renamed from: t */
    public final double[] m60641t(int i, String str, boolean z, int i2) throws IIOException {
        double[] dArr;
        Entry entryById = this.f94169g.getEntryById(Integer.valueOf(i));
        if (entryById == null) {
            if (!z) {
                return null;
            }
            throw new IIOException("Missing TIFF tag " + str);
        }
        if (i2 > 0 && entryById.valueCount() != i2) {
            if (z) {
                throw new IIOException(String.format("Unexpected value count for %s: %d (expected %d values)", str, Integer.valueOf(entryById.valueCount()), Integer.valueOf(i2)));
            }
            return null;
        }
        int i3 = 0;
        if (entryById.valueCount() == 1) {
            return new double[]{((Number) entryById.getValue()).doubleValue()};
        }
        if (entryById.getValue() instanceof float[]) {
            int length = ((float[]) entryById.getValue()).length;
            dArr = new double[length];
            while (i3 < length) {
                dArr[i3] = r2[i3];
                i3++;
            }
        } else {
            if (entryById.getValue() instanceof double[]) {
                return (double[]) entryById.getValue();
            }
            if (!(entryById.getValue() instanceof Rational[])) {
                throw new IIOException(String.format("Unsupported %s type: %s (%s)", str, entryById.getTypeName(), entryById.getValue().getClass()));
            }
            Rational[] rationalArr = (Rational[]) entryById.getValue();
            int length2 = rationalArr.length;
            dArr = new double[length2];
            while (i3 < length2) {
                dArr[i3] = rationalArr[i3].doubleValue();
                i3++;
            }
        }
        return dArr;
    }

    /* renamed from: u */
    public final int m60642u(int i, String str) throws IIOException {
        return m60644w(i, str, null);
    }

    /* renamed from: v */
    public final int m60643v(int i, Integer num) throws IIOException {
        return m60644w(i, null, num);
    }

    /* renamed from: w */
    public final int m60644w(int i, String str, Integer num) throws IIOException {
        return m60614A(i, str, num).intValue();
    }

    /* renamed from: x */
    public final long[] m60645x(int i, String str, boolean z) throws IIOException {
        long[] jArr;
        Entry entryById = this.f94169g.getEntryById(Integer.valueOf(i));
        if (entryById == null) {
            if (!z) {
                return null;
            }
            throw new IIOException("Missing TIFF tag " + str);
        }
        int i2 = 0;
        if (entryById.valueCount() == 1) {
            return new long[]{((Number) entryById.getValue()).longValue()};
        }
        if (entryById.getValue() instanceof short[]) {
            int length = ((short[]) entryById.getValue()).length;
            jArr = new long[length];
            while (i2 < length) {
                jArr[i2] = r2[i2];
                i2++;
            }
        } else {
            if (!(entryById.getValue() instanceof int[])) {
                if (entryById.getValue() instanceof long[]) {
                    return (long[]) entryById.getValue();
                }
                throw new IIOException(String.format("Unsupported %s type: %s (%s)", str, entryById.getTypeName(), entryById.getValue().getClass()));
            }
            int length2 = ((int[]) entryById.getValue()).length;
            jArr = new long[length2];
            while (i2 < length2) {
                jArr[i2] = r2[i2];
                i2++;
            }
        }
        return jArr;
    }

    /* renamed from: y */
    public final long m60646y(int i, Long l) throws IIOException {
        return m60647z(i, null, l);
    }

    /* renamed from: z */
    public final long m60647z(int i, String str, Long l) throws IIOException {
        return m60614A(i, str, l).longValue();
    }
}
