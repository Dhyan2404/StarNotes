package com.sunia.HTREnginev2;

import com.twelvemonkeys.image.BufferedImageFactory;
import com.twelvemonkeys.image.CopyDither;
import com.twelvemonkeys.image.DiffusionDither;
import com.twelvemonkeys.image.ImageConversionException;
import com.twelvemonkeys.image.ImageUtil;
import com.twelvemonkeys.image.InverseColorMapIndexColorModel;
import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.IndexColorModel;
import java.awt.image.RenderedImage;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class qji {

    /* renamed from: a */
    public static final int f82115a = 255;

    /* renamed from: b */
    public static final int f82116b = 0;

    /* renamed from: c */
    public static final int f82117c = 1;

    /* renamed from: d */
    public static final int f82118d = 2;

    /* renamed from: e */
    public static final int f82119e = 3;

    /* renamed from: f */
    public static final int f82120f = 65280;

    /* renamed from: g */
    public static final int f82121g = 0;

    /* renamed from: h */
    public static final int f82122h = 256;

    /* renamed from: i */
    public static final int f82123i = 512;

    /* renamed from: j */
    public static final int f82124j = 16711680;

    /* renamed from: k */
    public static final int f82125k = 0;

    /* renamed from: l */
    public static final int f82126l = 65536;

    /* renamed from: m */
    public static final int f82127m = 131072;

    /* renamed from: n */
    public static final int f82128n = 196608;

    /* renamed from: com.sunia.HTREnginev2.qji$a */
    /* loaded from: classes10.dex */
    public static class C14307a {

        /* renamed from: a */
        public int f82129a;

        /* renamed from: b */
        public int f82130b = 1;

        public C14307a(int i) {
            this.f82129a = i;
        }

        /* renamed from: a */
        public boolean m56715a(int i) {
            if (this.f82129a != i) {
                return false;
            }
            this.f82130b++;
            return true;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.qji$b */
    /* loaded from: classes10.dex */
    public static class C14308b {

        /* renamed from: f */
        public static final int f82131f = 0;

        /* renamed from: g */
        public static final int f82132g = 1;

        /* renamed from: h */
        public static final int f82133h = 2;

        /* renamed from: a */
        public int[] f82134a = {0, 0, 0};

        /* renamed from: b */
        public int[] f82135b = {255, 255, 255};

        /* renamed from: c */
        public boolean f82136c = false;

        /* renamed from: d */
        public List<C14307a>[] f82137d;

        /* renamed from: e */
        public int f82138e;

        public C14308b(List<C14307a>[] listArr, int i) {
            this.f82137d = listArr;
            this.f82138e = i;
        }

        /* renamed from: a */
        public int m56716a() {
            int i;
            char c = 0;
            if (this.f82138e == 0) {
                return 0;
            }
            int[] iArr = this.f82134a;
            int i2 = iArr[0];
            char c2 = 1;
            int i3 = iArr[1];
            int i4 = iArr[2];
            int[] iArr2 = this.f82135b;
            int i5 = iArr2[0];
            int i6 = iArr2[1];
            int i7 = iArr2[2];
            int[] iArr3 = {i2 >> 4, i3 >> 4, i4 >> 4};
            int[] iArr4 = {i5 >> 4, i6 >> 4, i7 >> 4};
            int i8 = iArr3[0];
            float f = 0.0f;
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (i8 <= iArr4[c]) {
                int i9 = i8 << 8;
                float f4 = f;
                int i10 = iArr3[c2];
                while (i10 <= iArr4[c2]) {
                    int i11 = (i10 << 4) | i9;
                    int i12 = i9;
                    int i13 = iArr3[2];
                    while (i13 <= iArr4[2]) {
                        int[] iArr5 = iArr3;
                        List<C14307a> list = this.f82137d[i11 | i13];
                        if (list != null) {
                            Iterator<C14307a> it2 = list.iterator();
                            while (it2.hasNext()) {
                                Iterator<C14307a> it3 = it2;
                                int i14 = it2.next().f82129a;
                                int[] iArr6 = iArr4;
                                int i15 = (i14 & 16711680) >> 16;
                                int i16 = i11;
                                int i17 = (i14 & 65280) >> 8;
                                int i18 = i14 & 255;
                                if (i15 < i2 || i15 > i5 || i17 < i3 || i17 > i6 || i18 < i4 || i18 > i7) {
                                    i = i4;
                                } else {
                                    i = i4;
                                    float f5 = r10.f82130b / this.f82138e;
                                    f4 += i15 * f5;
                                    f2 += i17 * f5;
                                    f3 += i18 * f5;
                                }
                                it2 = it3;
                                i4 = i;
                                iArr4 = iArr6;
                                i11 = i16;
                            }
                        }
                        i13++;
                        iArr3 = iArr5;
                        i4 = i4;
                        iArr4 = iArr4;
                        i11 = i11;
                    }
                    i10++;
                    i9 = i12;
                    c2 = 1;
                }
                i8++;
                f = f4;
                c = 0;
                c2 = 1;
            }
            return ((int) (f3 + 0.5f)) | (((int) (f + 0.5f)) << 16) | (((int) (f2 + 0.5f)) << 8);
        }

        /* renamed from: b */
        public boolean m56717b() {
            return this.f82136c;
        }

        /* renamed from: c */
        public C14308b m56718c() {
            int i;
            int[] iArr = this.f82135b;
            int i2 = 0;
            int i3 = iArr[0];
            int[] iArr2 = this.f82134a;
            int i4 = (i3 - iArr2[0]) + 1;
            int i5 = (iArr[1] - iArr2[1]) + 1;
            int i6 = 2;
            int i7 = (iArr[2] - iArr2[2]) + 1;
            if (i4 >= i5) {
                if (i4 >= i7) {
                    i = 1;
                } else {
                    i = 1;
                    i6 = 0;
                    i2 = 2;
                }
            } else if (i5 >= i7) {
                i = 0;
                i2 = 1;
            } else {
                i = 0;
                i2 = 2;
                i6 = 1;
            }
            C14308b m56719d = m56719d(i2, i, i6);
            if (m56719d != null) {
                return m56719d;
            }
            C14308b m56719d2 = m56719d(i, i2, i6);
            if (m56719d2 != null) {
                return m56719d2;
            }
            C14308b m56719d3 = m56719d(i6, i2, i);
            if (m56719d3 != null) {
                return m56719d3;
            }
            this.f82136c = true;
            return null;
        }

        /* renamed from: d */
        public C14308b m56719d(int i, int i2, int i3) {
            int i4;
            int i5;
            int[] iArr = this.f82134a;
            int i6 = iArr[i];
            int[] iArr2 = this.f82135b;
            if (i6 == iArr2[i]) {
                return null;
            }
            int i7 = (2 - i) * 4;
            int i8 = (2 - i2) * 4;
            int i9 = (2 - i3) * 4;
            int i10 = this.f82138e / 2;
            int[] iArr3 = new int[256];
            int i11 = iArr[0];
            int i12 = iArr[1];
            int i13 = iArr[2];
            int[] iArr4 = {i11 >> 4, i12 >> 4, i13 >> 4};
            int i14 = iArr2[0];
            int i15 = iArr2[1];
            int i16 = iArr2[2];
            int[] iArr5 = {i14 >> 4, i15 >> 4, i16 >> 4};
            int[] iArr6 = {0, 0, 0};
            int i17 = iArr4[i];
            int i18 = i10;
            int i19 = 0;
            while (true) {
                if (i17 > iArr5[i]) {
                    i4 = i18;
                    i5 = 0;
                    break;
                }
                int i20 = i17 << i7;
                int i21 = i7;
                int i22 = i19;
                int i23 = i17;
                int i24 = iArr4[i2];
                int i25 = i22;
                while (i24 <= iArr5[i2]) {
                    int i26 = (i24 << i8) | i20;
                    int[] iArr7 = iArr4;
                    int i27 = i8;
                    int i28 = iArr4[i3];
                    while (i28 <= iArr5[i3]) {
                        int i29 = i26;
                        List<C14307a> list = this.f82137d[(i28 << i9) | i26];
                        if (list != null) {
                            Iterator<C14307a> it2 = list.iterator();
                            while (it2.hasNext()) {
                                C14307a next = it2.next();
                                Iterator<C14307a> it3 = it2;
                                int i30 = next.f82129a;
                                int i31 = i9;
                                int i32 = (i30 & 16711680) >> 16;
                                iArr6[0] = i32;
                                int i33 = i20;
                                int i34 = (i30 & 65280) >> 8;
                                iArr6[1] = i34;
                                int i35 = i30 & 255;
                                iArr6[2] = i35;
                                if (i32 >= i11 && i32 <= i14 && i34 >= i12 && i34 <= i15 && i35 >= i13 && i35 <= i16) {
                                    int i36 = iArr6[i];
                                    int i37 = iArr3[i36];
                                    int i38 = next.f82130b;
                                    iArr3[i36] = i37 + i38;
                                    i25 += i38;
                                }
                                it2 = it3;
                                i9 = i31;
                                i20 = i33;
                            }
                        }
                        i28++;
                        i26 = i29;
                        i9 = i9;
                        i20 = i20;
                    }
                    i24++;
                    i8 = i27;
                    iArr4 = iArr7;
                }
                int i39 = i8;
                int[] iArr8 = iArr4;
                int i40 = i9;
                i4 = i18;
                int i41 = i25;
                i5 = 0;
                if (i41 >= i4) {
                    break;
                }
                i17 = i23 + 1;
                i19 = i41;
                i18 = i4;
                i7 = i21;
                i8 = i39;
                iArr4 = iArr8;
                i9 = i40;
            }
            int i42 = this.f82134a[i];
            int i43 = this.f82135b[i];
            int i44 = i42;
            int i45 = -1;
            int i46 = i5;
            while (true) {
                int[] iArr9 = this.f82135b;
                int i47 = iArr9[i];
                if (i44 > i47) {
                    break;
                }
                int i48 = iArr3[i44];
                if (i48 != 0) {
                    int i49 = i46 + i48;
                    if (i49 < i4) {
                        i45 = i44;
                        i46 = i49;
                    } else if (i4 - i46 <= i49 - i4) {
                        if (i45 == -1) {
                            if (i48 == this.f82138e) {
                                iArr9[i] = i44;
                                return null;
                            }
                            i43 = i44 + 1;
                            i42 = i44;
                        }
                        i43 = i44;
                        i42 = i45;
                    } else if (i44 == i47) {
                        if (i48 == this.f82138e) {
                            return null;
                        }
                        i43 = i44;
                        i42 = i45;
                    } else {
                        i43 = i44 + 1;
                        i42 = i44;
                        i46 = i49;
                    }
                } else if (i46 == 0 && i44 < i47) {
                    this.f82134a[i] = i44 + 1;
                }
                i44++;
            }
            C14308b c14308b = new C14308b(this.f82137d, i46);
            this.f82138e -= i46;
            int[] iArr10 = c14308b.f82134a;
            int[] iArr11 = this.f82134a;
            iArr10[i] = iArr11[i];
            int[] iArr12 = c14308b.f82135b;
            iArr12[i] = i42;
            iArr11[i] = i43;
            iArr10[i2] = iArr11[i2];
            int[] iArr13 = this.f82135b;
            iArr12[i2] = iArr13[i2];
            iArr10[i3] = iArr11[i3];
            iArr12[i3] = iArr13[i3];
            return c14308b;
        }
    }

    /* renamed from: a */
    public static void m56700a(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        for (int i = 0; i < bufferedImage2.getHeight(); i++) {
            for (int i2 = 0; i2 < bufferedImage2.getWidth(); i2++) {
                if (((bufferedImage2.getRGB(i2, i) >> 24) & 255) < 64) {
                    bufferedImage.setRGB(i2, i, 16777215);
                }
            }
        }
    }

    /* renamed from: b */
    public static IndexColorModel m56701b(BufferedImage bufferedImage, int i, int i2) {
        boolean m56713n = m56713n(i2);
        int i3 = m56713n ? i - 1 : i;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        List[] listArr = new List[4096];
        int i4 = 1;
        int i5 = m56712m(i2) ? ((width * height) / 16384) + 1 : 1;
        int i6 = 0;
        for (int i7 = 0; i7 < width; i7++) {
            for (int i8 = i7 % i5; i8 < height; i8 += i5) {
                i6++;
                int rgb = bufferedImage.getRGB(i7, i8) & 16777215;
                int i9 = ((15728640 & rgb) >>> 12) | ((61440 & rgb) >>> 8) | ((rgb & 240) >>> 4);
                List list = listArr[i9];
                if (list != null) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            list.add(new C14307a(rgb));
                            break;
                        }
                        if (((C14307a) it2.next()).m56715a(rgb)) {
                            break;
                        }
                    }
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new C14307a(rgb));
                    listArr[i9] = arrayList;
                }
            }
        }
        C14308b[] c14308bArr = new C14308b[i3];
        c14308bArr[0] = new C14308b(listArr, i6);
        int i10 = 0;
        while (i4 < i3) {
            while (c14308bArr[i10].m56717b() && (i10 = i10 + 1) != i4) {
            }
            if (i10 == i4) {
                break;
            }
            C14308b c14308b = c14308bArr[i10];
            C14308b m56718c = c14308b.m56718c();
            if (m56718c != null) {
                if (m56718c.f82138e > c14308b.f82138e) {
                    m56718c = c14308b;
                    c14308b = m56718c;
                }
                int i11 = c14308b.f82138e;
                int i12 = i10 + 1;
                int i13 = i10;
                while (i12 < i4) {
                    C14308b c14308b2 = c14308bArr[i12];
                    if (c14308b2.f82138e < i11) {
                        break;
                    }
                    c14308bArr[i13] = c14308b2;
                    i12++;
                    i13++;
                }
                int i14 = i13 + 1;
                c14308bArr[i13] = c14308b;
                int i15 = m56718c.f82138e;
                while (i14 < i4 && c14308bArr[i14].f82138e >= i15) {
                    i14++;
                }
                System.arraycopy(c14308bArr, i14, c14308bArr, i14 + 1, i4 - i14);
                c14308bArr[i14] = m56718c;
                i4++;
            }
        }
        int i16 = m56713n ? i4 + 1 : i4;
        byte[] bArr = new byte[i16];
        byte[] bArr2 = new byte[m56713n ? i4 + 1 : i4];
        byte[] bArr3 = new byte[m56713n ? i4 + 1 : i4];
        for (int i17 = 0; i17 < i4; i17++) {
            int m56716a = c14308bArr[i17].m56716a();
            bArr[i17] = (byte) ((m56716a >> 16) & 255);
            bArr2[i17] = (byte) ((m56716a >> 8) & 255);
            bArr3[i17] = (byte) (m56716a & 255);
        }
        return m56713n ? new InverseColorMapIndexColorModel(8, i16, bArr, bArr2, bArr3, i16 - 1) : new InverseColorMapIndexColorModel(8, i16, bArr, bArr2, bArr3);
    }

    /* renamed from: c */
    public static BufferedImage m56702c(BufferedImage bufferedImage, Color color) {
        BufferedImage bufferedImage2 = new BufferedImage(bufferedImage.getColorModel(), bufferedImage.copyData(null), bufferedImage.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        Graphics2D createGraphics = bufferedImage2.createGraphics();
        try {
            createGraphics.setColor(color);
            createGraphics.setComposite(AlphaComposite.DstOver);
            createGraphics.fillRect(0, 0, bufferedImage.getWidth(), bufferedImage.getHeight());
            return bufferedImage2;
        } finally {
            createGraphics.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static IndexColorModel m56703d(Image image, int i, int i2) throws ImageConversionException {
        RenderedImage bufferedImage;
        IndexColorModel indexColorModel = null;
        if (image instanceof RenderedImage) {
            bufferedImage = (RenderedImage) image;
            ColorModel colorModel = bufferedImage.getColorModel();
            if (colorModel instanceof IndexColorModel) {
                IndexColorModel indexColorModel2 = (IndexColorModel) colorModel;
                if (indexColorModel2.getMapSize() <= i) {
                    indexColorModel = indexColorModel2;
                }
            }
        } else {
            BufferedImageFactory bufferedImageFactory = new BufferedImageFactory(image);
            ColorModel colorModel2 = bufferedImageFactory.getColorModel();
            if (colorModel2 instanceof IndexColorModel) {
                IndexColorModel indexColorModel3 = (IndexColorModel) colorModel2;
                if (indexColorModel3.getMapSize() <= i) {
                    indexColorModel = indexColorModel3;
                    bufferedImage = null;
                }
            }
            bufferedImage = bufferedImageFactory.getBufferedImage();
        }
        return indexColorModel == null ? m56701b(ImageUtil.toBuffered(bufferedImage), i, i2) : !(indexColorModel instanceof InverseColorMapIndexColorModel) ? new InverseColorMapIndexColorModel(indexColorModel) : indexColorModel;
    }

    /* renamed from: e */
    public static IndexColorModel m56704e(Image image, int i, boolean z) {
        return m56703d(image, i, z ? 256 : 512);
    }

    /* renamed from: f */
    public static BufferedImage m56705f(BufferedImage bufferedImage) {
        return m56706g(bufferedImage, 256, 0);
    }

    /* renamed from: g */
    public static BufferedImage m56706g(BufferedImage bufferedImage, int i, int i2) {
        return m56707h(bufferedImage, i, null, i2);
    }

    /* renamed from: h */
    public static BufferedImage m56707h(BufferedImage bufferedImage, int i, Color color, int i2) {
        IndexColorModel m56703d = color != null ? m56703d(m56702c(bufferedImage, color), i, i2) : m56703d(bufferedImage, i, i2);
        if ((i2 & 255) != 1 && m56703d.getMapSize() < i) {
            i2 = (i2 & (-256)) | 1;
        }
        return m56711l(bufferedImage, m56703d, color, i2);
    }

    /* renamed from: i */
    public static BufferedImage m56708i(BufferedImage bufferedImage, Image image, int i) {
        return m56709j(bufferedImage, image, null, i);
    }

    /* renamed from: j */
    public static BufferedImage m56709j(BufferedImage bufferedImage, Image image, Color color, int i) throws ImageConversionException {
        return m56711l(bufferedImage, m56703d(image, 256, i), color, i);
    }

    /* renamed from: k */
    public static BufferedImage m56710k(BufferedImage bufferedImage, IndexColorModel indexColorModel, int i) {
        return m56711l(bufferedImage, indexColorModel, null, i);
    }

    /* renamed from: l */
    public static BufferedImage m56711l(BufferedImage bufferedImage, IndexColorModel indexColorModel, Color color, int i) {
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        boolean z = (!m56713n(i) || bufferedImage.getColorModel().getTransparency() == 1 || indexColorModel.getTransparency() == 1) ? false : true;
        BufferedImage m56702c = color != null ? m56702c(bufferedImage, color) : bufferedImage;
        BufferedImage bufferedImage2 = indexColorModel.getMapSize() > 2 ? new BufferedImage(width, height, 13, indexColorModel) : new BufferedImage(width, height, 12, indexColorModel);
        int i2 = i & 255;
        if (i2 == 1) {
            new CopyDither(indexColorModel).filter(m56702c, bufferedImage2);
        } else if (i2 == 2 || i2 == 3) {
            DiffusionDither diffusionDither = new DiffusionDither(indexColorModel);
            if (i2 == 3) {
                diffusionDither.setAlternateScans(true);
            }
            diffusionDither.filter(m56702c, bufferedImage2);
        } else {
            Graphics2D createGraphics = bufferedImage2.createGraphics();
            try {
                createGraphics.setRenderingHints(new RenderingHints(RenderingHints.KEY_DITHERING, RenderingHints.VALUE_DITHER_ENABLE));
                createGraphics.drawImage(m56702c, 0, 0, (ImageObserver) null);
            } finally {
                createGraphics.dispose();
            }
        }
        if (z) {
            m56700a(bufferedImage2, bufferedImage);
        }
        return bufferedImage2;
    }

    /* renamed from: m */
    public static boolean m56712m(int i) {
        return (i & 65280) != 512;
    }

    /* renamed from: n */
    public static boolean m56713n(int i) {
        return ((131072 & i) == 0 && (i & 196608) == 0) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0352 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0376 A[Catch: IOException -> 0x0372, TRY_LEAVE, TryCatch #1 {IOException -> 0x0372, blocks: (B:135:0x0352, B:56:0x0376), top: B:134:0x0352 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03ea A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0472 A[Catch: IOException -> 0x048c, TRY_LEAVE, TryCatch #4 {IOException -> 0x048c, blocks: (B:78:0x046c, B:80:0x0472), top: B:77:0x046c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0494  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m56714o(java.lang.String[] r23) {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qji.m56714o(java.lang.String[]):void");
    }
}
