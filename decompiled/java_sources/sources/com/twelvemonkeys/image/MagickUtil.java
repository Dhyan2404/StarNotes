package com.twelvemonkeys.image;

import com.sunia.HTREnginev2.k6j;
import java.awt.AlphaComposite;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.util.Hashtable;
import magick.MagickException;
import magick.MagickImage;
import magick.PixelPacket;

/* loaded from: classes10.dex */
public final class MagickUtil {

    /* renamed from: a */
    public static final IndexColorModel f93951a = MonochromeColorModel.getInstance();

    /* renamed from: b */
    public static final ColorModel f93952b = new ComponentColorModel(ColorSpace.getInstance(1000), new int[]{8, 8, 8, 8}, true, true, 3, 0);

    /* renamed from: c */
    public static final ColorModel f93953c = new ComponentColorModel(ColorSpace.getInstance(1000), new int[]{8, 8, 8}, false, false, 1, 0);

    /* renamed from: d */
    public static final ColorModel f93954d = new ComponentColorModel(ColorSpace.getInstance(1003), true, true, 3, 0);

    /* renamed from: e */
    public static final ColorModel f93955e = new ComponentColorModel(ColorSpace.getInstance(1003), false, false, 1, 0);

    /* renamed from: f */
    public static final int[] f93956f = {3, 2, 1, 0};

    /* renamed from: g */
    public static final int[] f93957g = {2, 1, 0};

    /* renamed from: h */
    public static final Point f93958h = new Point(0, 0);

    /* renamed from: i */
    public static final boolean f93959i = k6j.f75139a;

    /* renamed from: a */
    public static BufferedImage m60374a(MagickImage magickImage) throws MagickException {
        BufferedImage m60376c = m60376c(magickImage, false);
        BufferedImage bufferedImage = new BufferedImage(m60376c.getWidth(), m60376c.getHeight(), 12, f93951a);
        ImageUtil.m60362l(bufferedImage, m60376c);
        return bufferedImage;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v0 ??, still in use, count: 1, list:
          (r12v0 ?? I:??[OBJECT, ARRAY]) from 0x003f: MOVE (r4v2 ?? I:??[OBJECT, ARRAY]) = (r12v0 ?? I:??[OBJECT, ARRAY])
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:72)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:54)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:34)
        */
    /* renamed from: b */
    public static java.awt.image.BufferedImage m60375b(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v0 ??, still in use, count: 1, list:
          (r12v0 ?? I:??[OBJECT, ARRAY]) from 0x003f: MOVE (r4v2 ?? I:??[OBJECT, ARRAY]) = (r12v0 ?? I:??[OBJECT, ARRAY])
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:72)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:54)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r19v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:237)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    /* renamed from: c */
    public static BufferedImage m60376c(MagickImage magickImage, boolean z) throws MagickException {
        Dimension dimension = magickImage.getDimension();
        int i = dimension.width;
        int i2 = dimension.height;
        int i3 = i * i2;
        int i4 = z ? 2 : 1;
        int i5 = i3 * i4;
        byte[] bArr = new byte[i5];
        magickImage.dispatchImage(0, 0, i, i2, z ? "AI" : "I", bArr);
        DataBufferByte dataBufferByte = new DataBufferByte(bArr, i5);
        int[] iArr = z ? new int[]{1, 0} : new int[]{0};
        int i6 = dimension.width;
        return new BufferedImage(z ? f93954d : f93955e, Raster.createInterleavedRaster(dataBufferByte, i6, dimension.height, i6 * i4, i4, iArr, f93958h), z, (Hashtable<?, ?>) null);
    }

    public static IndexColorModel createIndexColorModel(PixelPacket[] pixelPacketArr, boolean z) {
        int length = pixelPacketArr.length;
        int[] iArr = new int[length];
        int i = z ? length - 1 : -1;
        for (int length2 = pixelPacketArr.length - 1; length2 != 0; length2--) {
            PixelPacket pixelPacket = pixelPacketArr[length2];
            if (z) {
                iArr[length2] = (pixelPacket.getBlue() & 255) | ((255 - (pixelPacket.getOpacity() & 255)) << 24) | ((pixelPacket.getRed() & 255) << 16) | ((pixelPacket.getGreen() & 255) << 8);
            } else {
                iArr[length2] = (pixelPacket.getBlue() & 255) | ((pixelPacket.getRed() & 255) << 16) | ((pixelPacket.getGreen() & 255) << 8);
            }
        }
        return new InverseColorMapIndexColorModel(8, length, iArr, 0, z, i, 0);
    }

    /* renamed from: d */
    public static MagickImage m60377d(BufferedImage bufferedImage, boolean z) throws MagickException {
        MagickImage magickImage = new MagickImage();
        BufferedImage buffered = ImageUtil.toBuffered(bufferedImage, z ? 6 : 10);
        magickImage.constituteImage(buffered.getWidth(), buffered.getHeight(), z ? "ABGR" : "I", ((DataBufferByte) (buffered.getRaster().getParent() != null ? buffered.getData(new Rectangle(buffered.getWidth(), buffered.getHeight())) : buffered.getRaster()).getDataBuffer()).getData());
        return magickImage;
    }

    /* renamed from: e */
    public static MagickImage m60378e(BufferedImage bufferedImage, IndexColorModel indexColorModel, boolean z) throws MagickException {
        MagickImage m60381h = m60381h(bufferedImage, z);
        m60381h.setNumberColors(indexColorModel.getMapSize());
        return m60381h;
    }

    /* renamed from: f */
    public static BufferedImage m60379f(MagickImage magickImage, boolean z) throws MagickException {
        try {
            IndexColorModel createIndexColorModel = createIndexColorModel(magickImage.getColormap(), z);
            BufferedImage m60380g = m60380g(magickImage, z);
            BufferedImage bufferedImage = createIndexColorModel.getMapSize() <= 16 ? new BufferedImage(m60380g.getWidth(), m60380g.getHeight(), 12, createIndexColorModel) : new BufferedImage(m60380g.getWidth(), m60380g.getHeight(), 13, createIndexColorModel);
            if (z) {
                Graphics2D createGraphics = bufferedImage.createGraphics();
                try {
                    createGraphics.setComposite(AlphaComposite.Clear);
                    createGraphics.fillRect(0, 0, m60380g.getWidth(), m60380g.getHeight());
                } finally {
                    createGraphics.dispose();
                }
            }
            new CopyDither(createIndexColorModel).filter(m60380g, bufferedImage);
            return bufferedImage;
        } catch (MagickException unused) {
            return m60380g(magickImage, z);
        }
    }

    /* renamed from: g */
    public static BufferedImage m60380g(MagickImage magickImage, boolean z) throws MagickException {
        Dimension dimension = magickImage.getDimension();
        int i = dimension.width;
        int i2 = dimension.height;
        int i3 = i * i2;
        int i4 = z ? 4 : 3;
        int i5 = i3 * i4;
        byte[] bArr = new byte[i5];
        magickImage.dispatchImage(0, 0, i, i2, z ? "ABGR" : "BGR", bArr);
        DataBufferByte dataBufferByte = new DataBufferByte(bArr, i5);
        int[] iArr = z ? f93956f : f93957g;
        int i6 = dimension.width;
        return new BufferedImage(z ? f93952b : f93953c, Raster.createInterleavedRaster(dataBufferByte, i6, dimension.height, i6 * i4, i4, iArr, f93958h), z, (Hashtable<?, ?>) null);
    }

    /* renamed from: h */
    public static MagickImage m60381h(BufferedImage bufferedImage, boolean z) throws MagickException {
        MagickImage magickImage = new MagickImage();
        BufferedImage buffered = ImageUtil.toBuffered(bufferedImage, z ? 6 : 5);
        magickImage.constituteImage(buffered.getWidth(), buffered.getHeight(), z ? "ABGR" : "BGR", ((DataBufferByte) (buffered.getRaster().getParent() != null ? buffered.getData(new Rectangle(buffered.getWidth(), buffered.getHeight())) : buffered.getRaster()).getDataBuffer()).getData());
        return magickImage;
    }

    public static BufferedImage toBuffered(MagickImage magickImage) throws MagickException {
        BufferedImage m60374a;
        if (magickImage == null) {
            throw new IllegalArgumentException("image == null");
        }
        boolean z = f93959i;
        long currentTimeMillis = z ? System.currentTimeMillis() : 0L;
        try {
            switch (magickImage.getImageType()) {
                case 1:
                    m60374a = m60374a(magickImage);
                    break;
                case 2:
                    m60374a = m60376c(magickImage, false);
                    break;
                case 3:
                    m60374a = m60376c(magickImage, true);
                    break;
                case 4:
                    m60374a = m60379f(magickImage, false);
                    break;
                case 5:
                    m60374a = m60379f(magickImage, true);
                    break;
                case 6:
                    m60374a = m60380g(magickImage, false);
                    break;
                case 7:
                    m60374a = m60380g(magickImage, true);
                    break;
                case 8:
                    m60374a = m60375b(magickImage, false);
                    break;
                case 9:
                    m60374a = m60375b(magickImage, true);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown JMagick image type: " + magickImage.getImageType());
            }
            if (z) {
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                System.out.println("Converted JMagick image type: " + magickImage.getImageType() + " to BufferedImage: " + m60374a);
                System.out.println("Conversion to BufferedImage: " + currentTimeMillis2 + " ms");
            }
            return m60374a;
        } catch (Throwable th) {
            if (f93959i) {
                long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                System.out.println("Converted JMagick image type: " + magickImage.getImageType() + " to BufferedImage: " + ((Object) null));
                System.out.println("Conversion to BufferedImage: " + currentTimeMillis3 + " ms");
            }
            throw th;
        }
    }

    public static MagickImage toMagick(BufferedImage bufferedImage) throws MagickException {
        if (bufferedImage == null) {
            throw new IllegalArgumentException("image == null");
        }
        boolean z = f93959i;
        long currentTimeMillis = z ? System.currentTimeMillis() : 0L;
        try {
            ColorModel colorModel = bufferedImage.getColorModel();
            if (colorModel instanceof IndexColorModel) {
                MagickImage m60378e = m60378e(bufferedImage, (IndexColorModel) colorModel, colorModel.hasAlpha());
                if (z) {
                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                    System.out.println("Conversion to MagickImage: " + currentTimeMillis2 + " ms");
                }
                return m60378e;
            }
            int type = colorModel.getColorSpace().getType();
            if (type == 5) {
                MagickImage m60381h = m60381h(bufferedImage, colorModel.hasAlpha());
                if (z) {
                    long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                    System.out.println("Conversion to MagickImage: " + currentTimeMillis3 + " ms");
                }
                return m60381h;
            }
            if (type != 6) {
                throw new IllegalArgumentException("Unknown buffered image type: " + bufferedImage);
            }
            MagickImage m60377d = m60377d(bufferedImage, colorModel.hasAlpha());
            if (z) {
                long currentTimeMillis4 = System.currentTimeMillis() - currentTimeMillis;
                System.out.println("Conversion to MagickImage: " + currentTimeMillis4 + " ms");
            }
            return m60377d;
        } catch (Throwable th) {
            if (f93959i) {
                long currentTimeMillis5 = System.currentTimeMillis() - currentTimeMillis;
                System.out.println("Conversion to MagickImage: " + currentTimeMillis5 + " ms");
            }
            throw th;
        }
    }
}
