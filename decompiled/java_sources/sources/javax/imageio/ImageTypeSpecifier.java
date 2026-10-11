package javax.imageio;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.image.BandedSampleModel;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBuffer;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.MultiPixelPackedSampleModel;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.util.Hashtable;

/* loaded from: classes5.dex */
public class ImageTypeSpecifier {
    protected ColorModel colorModel;
    protected SampleModel sampleModel;

    /* renamed from: b */
    public static ColorSpace f97832b = ColorSpace.getInstance(1000);

    /* renamed from: a */
    public static ImageTypeSpecifier[] f97831a = new ImageTypeSpecifier[14];

    /* renamed from: javax.imageio.ImageTypeSpecifier$b */
    /* loaded from: classes5.dex */
    public static class C17695b extends ImageTypeSpecifier {

        /* renamed from: c */
        public ColorSpace f97833c;

        /* renamed from: d */
        public int[] f97834d;

        /* renamed from: e */
        public int[] f97835e;

        /* renamed from: f */
        public int f97836f;

        /* renamed from: g */
        public boolean f97837g;

        /* renamed from: h */
        public boolean f97838h;

        public C17695b(ColorSpace colorSpace, int[] iArr, int[] iArr2, int i, boolean z, boolean z2) {
            super();
            if (colorSpace == null) {
                throw new IllegalArgumentException("colorSpace == null!");
            }
            if (iArr == null) {
                throw new IllegalArgumentException("bankIndices == null!");
            }
            if (iArr2 == null) {
                throw new IllegalArgumentException("bandOffsets == null!");
            }
            if (iArr.length != iArr2.length) {
                throw new IllegalArgumentException("bankIndices.length != bandOffsets.length!");
            }
            if (i != 0 && i != 2 && i != 1 && i != 3 && i != 4 && i != 5) {
                throw new IllegalArgumentException("Bad value for dataType!");
            }
            if (iArr2.length != colorSpace.getNumComponents() + (z ? 1 : 0)) {
                throw new IllegalArgumentException("bandOffsets.length is wrong!");
            }
            this.f97833c = colorSpace;
            this.f97834d = (int[]) iArr.clone();
            this.f97835e = (int[]) iArr2.clone();
            this.f97836f = i;
            this.f97837g = z;
            this.f97838h = z2;
            this.colorModel = ImageTypeSpecifier.m61461a(colorSpace, iArr.length, i, z, z2);
            this.sampleModel = new BandedSampleModel(i, 1, 1, 1, iArr, iArr2);
        }

        @Override // javax.imageio.ImageTypeSpecifier
        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C17695b)) {
                C17695b c17695b = (C17695b) obj;
                if (this.f97833c.equals(c17695b.f97833c) && this.f97836f == c17695b.f97836f && this.f97837g == c17695b.f97837g && this.f97838h == c17695b.f97838h && this.f97834d.length == c17695b.f97834d.length && this.f97835e.length == c17695b.f97835e.length) {
                    int i = 0;
                    while (true) {
                        int[] iArr = this.f97834d;
                        if (i >= iArr.length) {
                            int i2 = 0;
                            while (true) {
                                int[] iArr2 = this.f97835e;
                                if (i2 >= iArr2.length) {
                                    return true;
                                }
                                if (iArr2[i2] != c17695b.f97835e[i2]) {
                                    return false;
                                }
                                i2++;
                            }
                        } else {
                            if (iArr[i] != c17695b.f97834d[i]) {
                                return false;
                            }
                            i++;
                        }
                    }
                }
            }
            return false;
        }

        @Override // javax.imageio.ImageTypeSpecifier
        public int hashCode() {
            return super.hashCode() + (this.f97835e.length * 3) + (this.f97834d.length * 7) + (this.f97836f * 21) + (this.f97837g ? 19 : 29);
        }
    }

    /* renamed from: javax.imageio.ImageTypeSpecifier$c */
    /* loaded from: classes5.dex */
    public static class C17696c extends ImageTypeSpecifier {

        /* renamed from: c */
        public int f97839c;

        /* renamed from: d */
        public int f97840d;

        /* renamed from: e */
        public boolean f97841e;

        /* renamed from: f */
        public boolean f97842f;

        /* renamed from: g */
        public boolean f97843g;

        public C17696c(int i, int i2, boolean z, boolean z2, boolean z3) {
            super();
            if (i != 1 && i != 2 && i != 4 && i != 8 && i != 16) {
                throw new IllegalArgumentException("Bad value for bits!");
            }
            if (i2 != 0 && i2 != 2 && i2 != 1) {
                throw new IllegalArgumentException("Bad value for dataType!");
            }
            if (i > 8 && i2 == 0) {
                throw new IllegalArgumentException("Too many bits for dataType!");
            }
            this.f97839c = i;
            this.f97840d = i2;
            this.f97841e = z;
            this.f97842f = z2;
            this.f97843g = z3;
            ColorSpace colorSpace = ColorSpace.getInstance(1003);
            if ((i != 8 || i2 != 0) && (i != 16 || (i2 != 2 && i2 != 1))) {
                int i3 = 1 << i;
                byte[] bArr = new byte[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    bArr[i4] = (byte) ((i4 * 255) / (i3 - 1));
                }
                this.colorModel = new IndexColorModel(i, i3, bArr, bArr, bArr);
                this.sampleModel = new MultiPixelPackedSampleModel(i2, 1, 1, i);
                return;
            }
            int i5 = z2 ? 2 : 1;
            int i6 = z2 ? 3 : 1;
            int[] iArr = new int[i5];
            iArr[0] = i;
            if (i5 == 2) {
                iArr[1] = i;
            }
            this.colorModel = new ComponentColorModel(colorSpace, iArr, z2, z3, i6, i2);
            int[] iArr2 = new int[i5];
            iArr2[0] = 0;
            if (i5 == 2) {
                iArr2[1] = 1;
            }
            this.sampleModel = new PixelInterleavedSampleModel(i2, 1, 1, i5, i5 * 1, iArr2);
        }
    }

    /* renamed from: javax.imageio.ImageTypeSpecifier$d */
    /* loaded from: classes5.dex */
    public static class C17697d extends ImageTypeSpecifier {

        /* renamed from: c */
        public byte[] f97844c;

        /* renamed from: d */
        public byte[] f97845d;

        /* renamed from: e */
        public byte[] f97846e;

        /* renamed from: f */
        public byte[] f97847f;

        /* renamed from: g */
        public int f97848g;

        /* renamed from: h */
        public int f97849h;

        public C17697d(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2) {
            super();
            this.f97847f = null;
            if (bArr == null || bArr2 == null || bArr3 == null) {
                throw new IllegalArgumentException("LUT is null!");
            }
            if (i != 1 && i != 2 && i != 4 && i != 8 && i != 16) {
                throw new IllegalArgumentException("Bad value for bits!");
            }
            if (i2 != 0 && i2 != 2 && i2 != 1 && i2 != 3) {
                throw new IllegalArgumentException("Bad value for dataType!");
            }
            if ((i > 8 && i2 == 0) || (i > 16 && i2 != 3)) {
                throw new IllegalArgumentException("Too many bits for dataType!");
            }
            int i3 = 1 << i;
            if (bArr.length != i3 || bArr2.length != i3 || bArr3.length != i3 || (bArr4 != null && bArr4.length != i3)) {
                throw new IllegalArgumentException("LUT has improper length!");
            }
            this.f97844c = (byte[]) bArr.clone();
            this.f97845d = (byte[]) bArr2.clone();
            this.f97846e = (byte[]) bArr3.clone();
            if (bArr4 != null) {
                this.f97847f = (byte[]) bArr4.clone();
            }
            this.f97848g = i;
            this.f97849h = i2;
            if (bArr4 == null) {
                this.colorModel = new IndexColorModel(i, bArr.length, bArr, bArr2, bArr3);
            } else {
                this.colorModel = new IndexColorModel(i, bArr.length, bArr, bArr2, bArr3, bArr4);
            }
            if ((i == 8 && i2 == 0) || (i == 16 && (i2 == 2 || i2 == 1))) {
                this.sampleModel = new PixelInterleavedSampleModel(i2, 1, 1, 1, 1, new int[]{0});
            } else {
                this.sampleModel = new MultiPixelPackedSampleModel(i2, 1, 1, i);
            }
        }
    }

    /* renamed from: javax.imageio.ImageTypeSpecifier$e */
    /* loaded from: classes5.dex */
    public static class C17698e extends ImageTypeSpecifier {

        /* renamed from: c */
        public ColorSpace f97850c;

        /* renamed from: d */
        public int[] f97851d;

        /* renamed from: e */
        public int f97852e;

        /* renamed from: f */
        public boolean f97853f;

        /* renamed from: g */
        public boolean f97854g;

        public C17698e(ColorSpace colorSpace, int[] iArr, int i, boolean z, boolean z2) {
            super();
            if (colorSpace == null) {
                throw new IllegalArgumentException("colorSpace == null!");
            }
            if (iArr == null) {
                throw new IllegalArgumentException("bandOffsets == null!");
            }
            if (iArr.length != colorSpace.getNumComponents() + (z ? 1 : 0)) {
                throw new IllegalArgumentException("bandOffsets.length is wrong!");
            }
            if (i != 0 && i != 2 && i != 1 && i != 3 && i != 4 && i != 5) {
                throw new IllegalArgumentException("Bad value for dataType!");
            }
            this.f97850c = colorSpace;
            this.f97851d = (int[]) iArr.clone();
            this.f97852e = i;
            this.f97853f = z;
            this.f97854g = z2;
            this.colorModel = ImageTypeSpecifier.m61461a(colorSpace, iArr.length, i, z, z2);
            int i2 = iArr[0];
            int i3 = i2;
            for (int i4 : iArr) {
                i3 = Math.min(i4, i3);
                i2 = Math.max(i4, i2);
            }
            int i5 = (i2 - i3) + 1;
            this.sampleModel = new PixelInterleavedSampleModel(i, 1, 1, i5, i5 * 1, iArr);
        }

        @Override // javax.imageio.ImageTypeSpecifier
        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C17698e)) {
                C17698e c17698e = (C17698e) obj;
                if (this.f97850c.equals(c17698e.f97850c) && this.f97852e == c17698e.f97852e && this.f97853f == c17698e.f97853f && this.f97854g == c17698e.f97854g && this.f97851d.length == c17698e.f97851d.length) {
                    int i = 0;
                    while (true) {
                        int[] iArr = this.f97851d;
                        if (i >= iArr.length) {
                            return true;
                        }
                        if (iArr[i] != c17698e.f97851d[i]) {
                            return false;
                        }
                        i++;
                    }
                }
            }
            return false;
        }

        @Override // javax.imageio.ImageTypeSpecifier
        public int hashCode() {
            return super.hashCode() + (this.f97851d.length * 4) + (this.f97852e * 25) + (this.f97853f ? 17 : 18);
        }
    }

    /* renamed from: javax.imageio.ImageTypeSpecifier$f */
    /* loaded from: classes5.dex */
    public static class C17699f extends ImageTypeSpecifier {

        /* renamed from: c */
        public ColorSpace f97855c;

        /* renamed from: d */
        public int f97856d;

        /* renamed from: e */
        public int f97857e;

        /* renamed from: f */
        public int f97858f;

        /* renamed from: g */
        public int f97859g;

        /* renamed from: h */
        public int f97860h;

        /* renamed from: i */
        public boolean f97861i;

        public C17699f(ColorSpace colorSpace, int i, int i2, int i3, int i4, int i5, boolean z) {
            super();
            if (colorSpace == null) {
                throw new IllegalArgumentException("colorSpace == null!");
            }
            if (colorSpace.getType() != 5) {
                throw new IllegalArgumentException("colorSpace is not of type TYPE_RGB!");
            }
            if (i5 != 0 && i5 != 1 && i5 != 3) {
                throw new IllegalArgumentException("Bad value for transferType!");
            }
            if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
                throw new IllegalArgumentException("No mask has at least 1 bit set!");
            }
            this.f97855c = colorSpace;
            this.f97856d = i;
            this.f97857e = i2;
            this.f97858f = i3;
            this.f97859g = i4;
            this.f97860h = i5;
            this.f97861i = z;
            DirectColorModel directColorModel = new DirectColorModel(colorSpace, 32, i, i2, i3, i4, z, i5);
            this.colorModel = directColorModel;
            this.sampleModel = directColorModel.createCompatibleSampleModel(1, 1);
        }
    }

    /* renamed from: a */
    public static ColorModel m61461a(ColorSpace colorSpace, int i, int i2, boolean z, boolean z2) {
        int i3 = z ? 3 : 1;
        int[] iArr = new int[i];
        int dataTypeSize = DataBuffer.getDataTypeSize(i2);
        for (int i4 = 0; i4 < i; i4++) {
            iArr[i4] = dataTypeSize;
        }
        return new ComponentColorModel(colorSpace, iArr, z, z2, i3, i2);
    }

    /* renamed from: b */
    public static ImageTypeSpecifier m61462b(int i) {
        switch (i) {
            case 1:
                return createPacked(f97832b, 16711680, 65280, 255, 0, 3, false);
            case 2:
                return createPacked(f97832b, 16711680, 65280, 255, -16777216, 3, false);
            case 3:
                return createPacked(f97832b, 16711680, 65280, 255, -16777216, 3, true);
            case 4:
                return createPacked(f97832b, 255, 65280, 16711680, 0, 3, false);
            case 5:
                return createInterleaved(f97832b, new int[]{2, 1, 0}, 0, false, false);
            case 6:
                return createInterleaved(f97832b, new int[]{3, 2, 1, 0}, 0, true, false);
            case 7:
                return createInterleaved(f97832b, new int[]{3, 2, 1, 0}, 0, true, true);
            case 8:
                return createPacked(f97832b, BufferedImage.DCM_565_RED_MASK, BufferedImage.DCM_565_GRN_MASK, 31, 0, 1, false);
            case 9:
                return createPacked(f97832b, 31744, 992, 31, 0, 1, false);
            case 10:
                return createGrayscale(8, 0, false);
            case 11:
                return createGrayscale(16, 1, false);
            case 12:
                return createGrayscale(1, 0, false);
            case 13:
                IndexColorModel indexColorModel = (IndexColorModel) new BufferedImage(1, 1, 13).getColorModel();
                int mapSize = indexColorModel.getMapSize();
                byte[] bArr = new byte[mapSize];
                byte[] bArr2 = new byte[mapSize];
                byte[] bArr3 = new byte[mapSize];
                byte[] bArr4 = new byte[mapSize];
                indexColorModel.getReds(bArr);
                indexColorModel.getGreens(bArr2);
                indexColorModel.getBlues(bArr3);
                indexColorModel.getAlphas(bArr4);
                return createIndexed(bArr, bArr2, bArr3, bArr4, 8, 0);
            default:
                throw new IllegalArgumentException("Invalid BufferedImage type!");
        }
    }

    /* renamed from: c */
    public static ImageTypeSpecifier m61463c(int i) {
        ImageTypeSpecifier[] imageTypeSpecifierArr = f97831a;
        if (imageTypeSpecifierArr[i] == null) {
            imageTypeSpecifierArr[i] = m61462b(i);
        }
        return f97831a[i];
    }

    public static ImageTypeSpecifier createBanded(ColorSpace colorSpace, int[] iArr, int[] iArr2, int i, boolean z, boolean z2) {
        return new C17695b(colorSpace, iArr, iArr2, i, z, z2);
    }

    public static ImageTypeSpecifier createFromBufferedImageType(int i) {
        if (i >= 1 && i <= 13) {
            return m61463c(i);
        }
        if (i == 0) {
            throw new IllegalArgumentException("Cannot create from TYPE_CUSTOM!");
        }
        throw new IllegalArgumentException("Invalid BufferedImage type!");
    }

    public static ImageTypeSpecifier createFromRenderedImage(RenderedImage renderedImage) {
        int type;
        if (renderedImage != null) {
            return (!(renderedImage instanceof BufferedImage) || (type = ((BufferedImage) renderedImage).getType()) == 0) ? new ImageTypeSpecifier(renderedImage) : m61463c(type);
        }
        throw new IllegalArgumentException("image == null!");
    }

    public static ImageTypeSpecifier createGrayscale(int i, int i2, boolean z) {
        return new C17696c(i, i2, z, false, false);
    }

    public static ImageTypeSpecifier createIndexed(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2) {
        return new C17697d(bArr, bArr2, bArr3, bArr4, i, i2);
    }

    public static ImageTypeSpecifier createInterleaved(ColorSpace colorSpace, int[] iArr, int i, boolean z, boolean z2) {
        return new C17698e(colorSpace, iArr, i, z, z2);
    }

    public static ImageTypeSpecifier createPacked(ColorSpace colorSpace, int i, int i2, int i3, int i4, int i5, boolean z) {
        return new C17699f(colorSpace, i, i2, i3, i4, i5, z);
    }

    public BufferedImage createBufferedImage(int i, int i2) {
        try {
            WritableRaster createWritableRaster = Raster.createWritableRaster(getSampleModel(i, i2), new Point(0, 0));
            ColorModel colorModel = this.colorModel;
            return new BufferedImage(colorModel, createWritableRaster, colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) new Hashtable());
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("Array size > Integer.MAX_VALUE!");
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ImageTypeSpecifier)) {
            return false;
        }
        ImageTypeSpecifier imageTypeSpecifier = (ImageTypeSpecifier) obj;
        return this.colorModel.equals(imageTypeSpecifier.colorModel) && this.sampleModel.equals(imageTypeSpecifier.sampleModel);
    }

    public int getBitsPerBand(int i) {
        if (i < 0 || i >= getNumBands()) {
            throw new IllegalArgumentException("band out of range!");
        }
        return this.sampleModel.getSampleSize(i);
    }

    public int getBufferedImageType() {
        return createBufferedImage(1, 1).getType();
    }

    public ColorModel getColorModel() {
        return this.colorModel;
    }

    public int getNumBands() {
        return this.sampleModel.getNumBands();
    }

    public int getNumComponents() {
        return this.colorModel.getNumComponents();
    }

    public SampleModel getSampleModel() {
        return this.sampleModel;
    }

    public int hashCode() {
        return (this.colorModel.hashCode() * 9) + (this.sampleModel.hashCode() * 14);
    }

    private ImageTypeSpecifier() {
    }

    public static ImageTypeSpecifier createGrayscale(int i, int i2, boolean z, boolean z2) {
        return new C17696c(i, i2, z, true, z2);
    }

    public SampleModel getSampleModel(int i, int i2) {
        if (i * i2 <= 2147483647L) {
            return this.sampleModel.createCompatibleSampleModel(i, i2);
        }
        throw new IllegalArgumentException("width*height > Integer.MAX_VALUE!");
    }

    public ImageTypeSpecifier(ColorModel colorModel, SampleModel sampleModel) {
        if (colorModel == null) {
            throw new IllegalArgumentException("colorModel == null!");
        }
        if (sampleModel != null) {
            if (colorModel.isCompatibleSampleModel(sampleModel)) {
                this.colorModel = colorModel;
                this.sampleModel = sampleModel;
                return;
            }
            throw new IllegalArgumentException("sampleModel is incompatible with colorModel!");
        }
        throw new IllegalArgumentException("sampleModel == null!");
    }

    public ImageTypeSpecifier(RenderedImage renderedImage) {
        if (renderedImage != null) {
            this.colorModel = renderedImage.getColorModel();
            this.sampleModel = renderedImage.getSampleModel();
            return;
        }
        throw new IllegalArgumentException("image == null!");
    }
}
