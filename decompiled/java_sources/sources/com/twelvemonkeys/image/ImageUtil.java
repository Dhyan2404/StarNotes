package com.twelvemonkeys.image;

import com.sunia.HTREnginev2.qji;
import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Component;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsEnvironment;
import java.awt.Image;
import java.awt.MediaTracker;
import java.awt.Point;
import java.awt.RenderingHints;
import java.awt.TexturePaint;
import java.awt.Toolkit;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.ComponentSampleModel;
import java.awt.image.ConvolveOp;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.awt.image.ImageObserver;
import java.awt.image.IndexColorModel;
import java.awt.image.Kernel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public final class ImageUtil {
    public static final int COLOR_SELECTION_DEFAULT = 0;
    public static final int COLOR_SELECTION_FAST = 256;
    public static final int COLOR_SELECTION_QUALITY = 512;
    public static final int DITHER_DEFAULT = 0;
    public static final int DITHER_DIFFUSION = 2;
    public static final int DITHER_DIFFUSION_ALTSCANS = 3;
    public static final int DITHER_NONE = 1;
    public static final int EDGE_NO_OP = 1;
    public static final int EDGE_REFLECT = 2;
    public static final int EDGE_WRAP = 3;
    public static final int EDGE_ZERO_FILL = 0;
    public static final int FLIP_HORIZONTAL = 1;
    public static final int FLIP_VERTICAL = -1;
    protected static final AffineTransform IDENTITY_TRANSFORM;
    protected static final Point LOCATION_UPPER_LEFT;
    public static final int ROTATE_180 = 180;
    public static final int ROTATE_90_CCW = -90;
    public static final int ROTATE_90_CW = 90;
    public static final int TRANSPARENCY_BITMASK = 131072;
    public static final int TRANSPARENCY_DEFAULT = 0;
    public static final int TRANSPARENCY_OPAQUE = 65536;
    protected static final int TRANSPARENCY_TRANSLUCENT = 196608;

    /* renamed from: a */
    public static final int f93940a = -1;

    /* renamed from: b */
    public static boolean f93941b = true;

    /* renamed from: c */
    public static final float[] f93942c;

    /* renamed from: d */
    public static final Kernel f93943d;

    /* renamed from: e */
    public static final Component f93944e;

    /* renamed from: f */
    public static MediaTracker f93945f;

    /* renamed from: g */
    public static final GraphicsConfiguration f93946g;

    /* renamed from: com.twelvemonkeys.image.ImageUtil$a */
    /* loaded from: classes10.dex */
    public static class C16918a extends Component {
    }

    static {
        float[] fArr = {0.0f, -0.3f, 0.0f, -0.3f, 2.2f, -0.3f, 0.0f, -0.3f, 0.0f};
        f93942c = fArr;
        f93943d = new Kernel(3, 3, fArr);
        C16918a c16918a = new C16918a();
        f93944e = c16918a;
        f93945f = new MediaTracker(c16918a);
        IDENTITY_TRANSFORM = new AffineTransform();
        LOCATION_UPPER_LEFT = new Point(0, 0);
        f93946g = m60365o();
    }

    /* renamed from: a */
    public static BufferedImage m60351a(Image image, Color color, GraphicsConfiguration graphicsConfiguration) {
        if (image instanceof BufferedImage) {
            BufferedImage bufferedImage = (BufferedImage) image;
            if (bufferedImage.getType() != 0 && m60363m(bufferedImage.getColorModel(), graphicsConfiguration.getColorModel(bufferedImage.getTransparency()))) {
                return bufferedImage;
            }
        }
        if (image == null) {
            throw new IllegalArgumentException("image == null");
        }
        BufferedImage m60358h = m60358h(getWidth(image), getHeight(image), -1, m60367q(image), color, graphicsConfiguration);
        m60362l(m60358h, image);
        return m60358h;
    }

    public static BufferedImage accelerate(Image image) {
        return m60351a(image, null, f93946g);
    }

    /* renamed from: b */
    public static BufferedImage m60352b(BufferedImage bufferedImage, int i, int i2, int i3) {
        Graphics2D graphics2D;
        BufferedImage bufferedImage2;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        ColorModel colorModel = bufferedImage.getColorModel();
        int i4 = width + (i * 2);
        int i5 = height + (i2 * 2);
        BufferedImage bufferedImage3 = new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(i4, i5), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        Graphics2D createGraphics = bufferedImage3.createGraphics();
        try {
            createGraphics.setComposite(AlphaComposite.Src);
            createGraphics.setRenderingHint(RenderingHints.KEY_DITHERING, RenderingHints.VALUE_DITHER_DISABLE);
            createGraphics.drawImage(bufferedImage, i, i2, (ImageObserver) null);
            if (i3 == 2) {
                int i6 = i + width;
                graphics2D = createGraphics;
                bufferedImage2 = bufferedImage3;
                try {
                    createGraphics.drawImage(bufferedImage, i, 0, i6, i2, 0, 0, width, 1, null);
                    int i7 = height + i2;
                    graphics2D.drawImage(bufferedImage, (-width) + i, i2, i, i7, 0, 0, 1, height, null);
                    graphics2D.drawImage(bufferedImage, i6, i2, i4, i7, width - 1, 0, width, height, null);
                    graphics2D.drawImage(bufferedImage, i, i7, i6, i5, 0, height - 1, width, height, null);
                } catch (Throwable th) {
                    th = th;
                    graphics2D.dispose();
                    throw th;
                }
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Illegal edge operation " + i3);
                }
                int i8 = (-width) + i;
                int i9 = (-height) + i2;
                createGraphics.drawImage(bufferedImage, i8, i9, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i, i9, (ImageObserver) null);
                int i10 = width + i;
                createGraphics.drawImage(bufferedImage, i10, i9, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i8, i2, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i10, i2, (ImageObserver) null);
                int i11 = height + i2;
                createGraphics.drawImage(bufferedImage, i8, i11, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i, i11, (ImageObserver) null);
                createGraphics.drawImage(bufferedImage, i10, i11, (ImageObserver) null);
                graphics2D = createGraphics;
                bufferedImage2 = bufferedImage3;
            }
            graphics2D.dispose();
            return bufferedImage2;
        } catch (Throwable th2) {
            th = th2;
            graphics2D = createGraphics;
        }
    }

    public static Color blend(Color color, Color color2) {
        return new Color(m60353c(color.getRGB(), color2.getRGB()), true);
    }

    public static BufferedImage blur(BufferedImage bufferedImage) {
        return blur(bufferedImage, 1.5f);
    }

    public static Image brightness(Image image, float f) {
        return f == 0.0f ? image : filter(image, new BrightnessContrastFilter(f, 0.0f));
    }

    /* renamed from: c */
    public static int m60353c(int i, int i2) {
        return (((i ^ i2) & (-16843010)) >> 1) + (i & i2);
    }

    public static Image contrast(Image image) {
        return contrast(image, 0.3f);
    }

    public static BufferedImage convolve(BufferedImage bufferedImage, Kernel kernel, int i) {
        BufferedImage m60352b = (i == 2 || i == 3) ? m60352b(bufferedImage, kernel.getWidth() / 2, kernel.getHeight() / 2, i) : bufferedImage;
        BufferedImage filter = new ConvolveOp(kernel, i, null).filter(m60352b, m60352b.getType() == 5 ? m60356f(bufferedImage.getWidth(), bufferedImage.getHeight(), bufferedImage.getType(), bufferedImage.getColorModel().getTransparency()) : null);
        return bufferedImage != m60352b ? filter.getSubimage(kernel.getWidth() / 2, kernel.getHeight() / 2, bufferedImage.getWidth(), bufferedImage.getHeight()) : filter;
    }

    public static BufferedImage createClear(int i, int i2, Color color) {
        return createClear(i, i2, -1, color);
    }

    public static BufferedImage createCopy(BufferedImage bufferedImage) {
        if (bufferedImage == null) {
            throw new IllegalArgumentException("image == null");
        }
        ColorModel colorModel = bufferedImage.getColorModel();
        BufferedImage bufferedImage2 = new BufferedImage(colorModel, colorModel.createCompatibleWritableRaster(bufferedImage.getWidth(), bufferedImage.getHeight()), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
        m60362l(bufferedImage2, bufferedImage);
        return bufferedImage2;
    }

    public static BufferedImage createFlipped(Image image, int i) {
        AffineTransform translateInstance;
        if (i != -1 && i != 1) {
            throw new IllegalArgumentException("Illegal direction: " + i);
        }
        BufferedImage buffered = toBuffered(image);
        if (i == 1) {
            translateInstance = AffineTransform.getTranslateInstance(0.0d, buffered.getHeight());
            translateInstance.scale(1.0d, -1.0d);
        } else {
            translateInstance = AffineTransform.getTranslateInstance(buffered.getWidth(), 0.0d);
            translateInstance.scale(-1.0d, 1.0d);
        }
        return new AffineTransformOp(translateInstance, 1).filter(buffered, (BufferedImage) null);
    }

    public static BufferedImage createIndexed(Image image) {
        return qji.m56707h(toBuffered(image), 256, Color.black, 0);
    }

    public static BufferedImage createResampled(Image image, int i, int i2, int i3) {
        return createResampled(image instanceof BufferedImage ? (BufferedImage) image : toBuffered(image, 6), i, i2, i3);
    }

    public static BufferedImage createRotated(Image image, int i) {
        if (i != -90 && i != 90 && i != 180) {
            throw new IllegalArgumentException("Illegal direction: " + i);
        }
        return createRotated(image, Math.toRadians(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BufferedImage createScaled(Image image, int i, int i2, int i3) {
        ColorModel colorModel;
        int i4;
        BufferedImage createResampled;
        if (image instanceof RenderedImage) {
            colorModel = ((RenderedImage) image).getColorModel();
            if (image instanceof BufferedImage) {
                i4 = ((BufferedImage) image).getType();
                createResampled = createResampled(image, i, i2, i3);
                if ((i4 != createResampled.getType() || i4 == -1) && m60363m(createResampled.getColorModel(), colorModel)) {
                    return createResampled;
                }
                BufferedImage bufferedImage = new BufferedImage(colorModel, image instanceof BufferedImage ? m60359i((BufferedImage) image, colorModel, i, i2) : colorModel.createCompatibleWritableRaster(i, i2), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
                if ((colorModel instanceof IndexColorModel) && i3 == 4) {
                    new DiffusionDither((IndexColorModel) colorModel).filter(createResampled, bufferedImage);
                } else {
                    m60362l(bufferedImage, createResampled);
                }
                return bufferedImage;
            }
        } else {
            colorModel = new BufferedImageFactory(image).getColorModel();
        }
        i4 = -1;
        createResampled = createResampled(image, i, i2, i3);
        if (i4 != createResampled.getType()) {
        }
        return createResampled;
    }

    public static Color createTranslucent(Color color, int i) {
        return new Color((color.getRGB() & 16777215) | ((i & 255) << 24), true);
    }

    public static BufferedImage createTransparent(int i, int i2) {
        return createTransparent(i, i2, -1);
    }

    /* renamed from: d */
    public static int m60354d(float f) {
        return (int) f;
    }

    /* renamed from: e */
    public static int m60355e(int i) {
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 13;
        }
        if (i != 8) {
            return i != 16 ? 9 : 2;
        }
        return 1;
    }

    /* renamed from: f */
    public static BufferedImage m60356f(int i, int i2, int i3, int i4) {
        return m60357g(i, i2, i3, i4, f93946g);
    }

    public static Image filter(Image image, ImageFilter imageFilter) {
        return Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), imageFilter));
    }

    /* renamed from: g */
    public static BufferedImage m60357g(int i, int i2, int i3, int i4, GraphicsConfiguration graphicsConfiguration) {
        return (f93941b && i3 == -1 && m60370t(GraphicsEnvironment.getLocalGraphicsEnvironment())) ? m60364n(graphicsConfiguration).createCompatibleImage(i, i2, i4) : new BufferedImage(i, i2, m60366p(i3, i4));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.awt.Component, java.awt.image.ImageObserver] */
    public static int getHeight(Image image) {
        ?? r0 = f93944e;
        int height = image.getHeight(r0);
        if (height >= 0) {
            return height;
        }
        if (waitForImage(image)) {
            return image.getHeight(r0);
        }
        return -1;
    }

    public static IndexColorModel getIndexColorModel(Image image, int i, int i2) {
        return qji.m56703d(image, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.awt.Component, java.awt.image.ImageObserver] */
    public static int getWidth(Image image) {
        ?? r0 = f93944e;
        int width = image.getWidth(r0);
        if (width >= 0) {
            return width;
        }
        if (waitForImage(image)) {
            return image.getWidth(r0);
        }
        return -1;
    }

    public static Image grayscale(Image image) {
        return filter(image, new GrayFilter());
    }

    /* renamed from: h */
    public static BufferedImage m60358h(int i, int i2, int i3, int i4, Color color, GraphicsConfiguration graphicsConfiguration) {
        if (color != null) {
            i4 = color.getTransparency();
        }
        BufferedImage m60357g = m60357g(i, i2, i3, i4, graphicsConfiguration);
        if (color != null) {
            Graphics2D createGraphics = m60357g.createGraphics();
            try {
                createGraphics.setComposite(AlphaComposite.Src);
                createGraphics.setColor(color);
                createGraphics.fillRect(0, 0, i, i2);
            } finally {
                createGraphics.dispose();
            }
        }
        return m60357g;
    }

    public static boolean hasTransparentPixels(RenderedImage renderedImage, boolean z) {
        if (renderedImage == null) {
            return false;
        }
        ColorModel colorModel = renderedImage.getColorModel();
        if (!colorModel.hasAlpha()) {
            return false;
        }
        if (colorModel.getTransparency() != 2 && colorModel.getTransparency() != 3) {
            return false;
        }
        Object obj = null;
        for (int minTileY = renderedImage.getMinTileY(); minTileY < renderedImage.getNumYTiles(); minTileY++) {
            for (int minTileX = renderedImage.getMinTileX(); minTileX < renderedImage.getNumXTiles(); minTileX++) {
                Raster tile = renderedImage.getTile(minTileX, minTileY);
                int max = z ? Math.max(tile.getWidth() / 10, 1) : 1;
                int max2 = z ? Math.max(tile.getHeight() / 10, 1) : 1;
                for (int i = 0; i < tile.getHeight(); i += max2) {
                    for (int i2 = 0; i2 < tile.getWidth(); i2 += max) {
                        obj = tile.getDataElements(i2, i, obj);
                        if (colorModel.getAlpha(obj) != 255) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    public static WritableRaster m60359i(BufferedImage bufferedImage, ColorModel colorModel, int i, int i2) {
        if (colorModel != null && !m60363m(bufferedImage.getColorModel(), colorModel)) {
            return colorModel.createCompatibleWritableRaster(i, i2);
        }
        int type = bufferedImage.getType();
        if (type == 0) {
            SampleModel sampleModel = bufferedImage.getRaster().getSampleModel();
            if (sampleModel instanceof ComponentSampleModel) {
                int[] bandOffsets = ((ComponentSampleModel) sampleModel).getBandOffsets();
                return Raster.createInterleavedRaster(sampleModel.getDataType(), i, i2, i * bandOffsets.length, bandOffsets.length, bandOffsets, (Point) null);
            }
        } else {
            if (type == 5) {
                return Raster.createInterleavedRaster(0, i, i2, i * 3, 3, new int[]{2, 1, 0}, (Point) null);
            }
            if (type == 6 || type == 7) {
                return Raster.createInterleavedRaster(0, i, i2, i * 4, 4, new int[]{3, 2, 1, 0}, (Point) null);
            }
        }
        return bufferedImage.getColorModel().createCompatibleWritableRaster(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0052  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.WritableRaster m60360j(int r10, int r11, java.lang.Object r12, java.awt.image.ColorModel r13) {
        /*
            boolean r0 = r12 instanceof int[]
            r8 = 0
            if (r0 == 0) goto L15
            r0 = r12
            int[] r0 = (int[]) r0
            java.awt.image.DataBufferInt r1 = new java.awt.image.DataBufferInt
            int r2 = r0.length
            r1.<init>(r0, r2)
            int r0 = r13.getNumComponents()
        L12:
            r4 = r0
            r0 = r1
            goto L50
        L15:
            boolean r0 = r12 instanceof short[]
            if (r0 == 0) goto L27
            r0 = r12
            short[] r0 = (short[]) r0
            java.awt.image.DataBufferUShort r1 = new java.awt.image.DataBufferUShort
            int r2 = r0.length
            r1.<init>(r0, r2)
            int r0 = r0.length
            int r2 = r10 * r11
            int r0 = r0 / r2
            goto L12
        L27:
            boolean r0 = r12 instanceof byte[]
            if (r0 == 0) goto L3f
            r0 = r12
            byte[] r0 = (byte[]) r0
            java.awt.image.DataBufferByte r1 = new java.awt.image.DataBufferByte
            int r2 = r0.length
            r1.<init>(r0, r2)
            boolean r2 = r13 instanceof java.awt.image.IndexColorModel
            if (r2 == 0) goto L3a
            r0 = 1
            goto L12
        L3a:
            int r0 = r0.length
            int r2 = r10 * r11
            int r0 = r0 / r2
            goto L12
        L3f:
            java.awt.image.WritableRaster r9 = r13.createCompatibleWritableRaster(r10, r11)
            r1 = 0
            r2 = 0
            r0 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r0.setDataElements(r1, r2, r3, r4, r5)
            r0 = -1
            r4 = r0
            r0 = r8
            r8 = r9
        L50:
            if (r8 != 0) goto L97
            boolean r1 = r13 instanceof java.awt.image.IndexColorModel
            if (r1 == 0) goto L6a
            r1 = r13
            java.awt.image.IndexColorModel r1 = (java.awt.image.IndexColorModel) r1
            boolean r1 = m60368r(r1)
            if (r1 == 0) goto L6a
            int r1 = r13.getPixelSize()
            java.awt.Point r2 = com.twelvemonkeys.image.ImageUtil.LOCATION_UPPER_LEFT
            java.awt.image.WritableRaster r8 = java.awt.image.Raster.createPackedRaster(r0, r10, r11, r1, r2)
            goto L97
        L6a:
            boolean r1 = r13 instanceof java.awt.image.PackedColorModel
            if (r1 == 0) goto L7f
            r1 = r13
            java.awt.image.PackedColorModel r1 = (java.awt.image.PackedColorModel) r1
            int[] r4 = r1.getMasks()
            java.awt.Point r5 = com.twelvemonkeys.image.ImageUtil.LOCATION_UPPER_LEFT
            r1 = r10
            r2 = r11
            r3 = r10
            java.awt.image.WritableRaster r8 = java.awt.image.Raster.createPackedRaster(r0, r1, r2, r3, r4, r5)
            goto L97
        L7f:
            int[] r5 = new int[r4]
            r1 = 0
        L82:
            if (r1 >= r4) goto L8c
            int r2 = r1 + 1
            int r3 = r4 - r2
            r5[r1] = r3
            r1 = r2
            goto L82
        L8c:
            int r3 = r10 * r4
            java.awt.Point r7 = com.twelvemonkeys.image.ImageUtil.LOCATION_UPPER_LEFT
            r1 = r10
            r2 = r11
            r6 = r7
            java.awt.image.WritableRaster r8 = java.awt.image.Raster.createInterleavedRaster(r0, r1, r2, r3, r4, r5, r6)
        L97:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.image.ImageUtil.m60360j(int, int, java.lang.Object, java.awt.image.ColorModel):java.awt.image.WritableRaster");
    }

    /* renamed from: k */
    public static BufferedImage m60361k(BufferedImage bufferedImage, double d) {
        if (Math.abs(Math.toDegrees(d)) % 360.0d == 0.0d) {
            return bufferedImage;
        }
        boolean z = Math.abs(Math.toDegrees(d)) % 90.0d == 0.0d;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        double abs = Math.abs(Math.sin(d));
        double abs2 = Math.abs(Math.cos(d));
        double d2 = width;
        double d3 = height;
        int floor = (int) Math.floor((d2 * abs2) + (d3 * abs));
        int floor2 = (int) Math.floor((abs2 * d3) + (abs * d2));
        AffineTransform translateInstance = AffineTransform.getTranslateInstance((floor - width) / 2.0d, (floor2 - height) / 2.0d);
        translateInstance.rotate(d, d2 / 2.0d, d3 / 2.0d);
        BufferedImage createTransparent = createTransparent(floor, floor2);
        Graphics2D createGraphics = createTransparent.createGraphics();
        try {
            createGraphics.transform(translateInstance);
            if (z) {
                createGraphics.drawImage(bufferedImage, 0, 0, (ImageObserver) null);
            } else {
                createGraphics.setRenderingHint(RenderingHints.KEY_ALPHA_INTERPOLATION, RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY);
                createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
                createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                createGraphics.setPaint(new TexturePaint(bufferedImage, new Rectangle2D.Float(0.0f, 0.0f, bufferedImage.getWidth(), bufferedImage.getHeight())));
                createGraphics.fillRect(0, 0, bufferedImage.getWidth(), bufferedImage.getHeight());
            }
            return createTransparent;
        } finally {
            createGraphics.dispose();
        }
    }

    /* renamed from: l */
    public static void m60362l(BufferedImage bufferedImage, Image image) {
        Graphics2D createGraphics = bufferedImage.createGraphics();
        try {
            createGraphics.setComposite(AlphaComposite.Src);
            createGraphics.setRenderingHint(RenderingHints.KEY_DITHERING, RenderingHints.VALUE_DITHER_DISABLE);
            createGraphics.drawImage(image, 0, 0, (ImageObserver) null);
        } finally {
            createGraphics.dispose();
        }
    }

    /* renamed from: m */
    public static boolean m60363m(ColorModel colorModel, ColorModel colorModel2) {
        if (colorModel == colorModel2) {
            return true;
        }
        if (!colorModel.equals(colorModel2)) {
            return false;
        }
        if (colorModel instanceof IndexColorModel) {
            IndexColorModel indexColorModel = (IndexColorModel) colorModel;
            IndexColorModel indexColorModel2 = (IndexColorModel) colorModel2;
            int mapSize = indexColorModel.getMapSize();
            if (mapSize != indexColorModel2.getMapSize()) {
                return false;
            }
            for (int i = 0; i > mapSize; i++) {
                if (indexColorModel.getRGB(i) != indexColorModel2.getRGB(i)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: n */
    public static GraphicsConfiguration m60364n(GraphicsConfiguration graphicsConfiguration) {
        return graphicsConfiguration != null ? graphicsConfiguration : f93946g;
    }

    /* renamed from: o */
    public static GraphicsConfiguration m60365o() {
        try {
            GraphicsEnvironment localGraphicsEnvironment = GraphicsEnvironment.getLocalGraphicsEnvironment();
            if (localGraphicsEnvironment.isHeadlessInstance()) {
                return null;
            }
            return localGraphicsEnvironment.getDefaultScreenDevice().getDefaultConfiguration();
        } catch (LinkageError unused) {
            f93941b = false;
            return null;
        }
    }

    /* renamed from: p */
    public static int m60366p(int i, int i2) {
        if (i != -1) {
            return i;
        }
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2 && i2 != 3) {
                throw new IllegalArgumentException("Unknown transparency type: " + i2);
            }
        }
        return i3;
    }

    /* renamed from: q */
    public static int m60367q(Image image) {
        if (image instanceof BufferedImage) {
            return ((BufferedImage) image).getTransparency();
        }
        return 1;
    }

    /* renamed from: r */
    public static boolean m60368r(IndexColorModel indexColorModel) {
        return indexColorModel.getPixelSize() == 1 || indexColorModel.getPixelSize() == 2 || indexColorModel.getPixelSize() == 4;
    }

    /* renamed from: s */
    public static Kernel m60369s(float f) {
        int ceil = (int) Math.ceil(f);
        int i = (ceil * 2) + 1;
        float[] fArr = new float[i];
        float f2 = f / 3.0f;
        float f3 = 2.0f * f2 * f2;
        float sqrt = (float) Math.sqrt((float) (f2 * 6.283185307179586d));
        float f4 = f * f;
        float f5 = 0.0f;
        int i2 = 0;
        for (int i3 = -ceil; i3 <= ceil; i3++) {
            if (i3 * i3 > f4) {
                fArr[i2] = 0.0f;
            } else {
                fArr[i2] = ((float) Math.exp((-r11) / f3)) / sqrt;
            }
            f5 += fArr[i2];
            i2++;
        }
        for (int i4 = 0; i4 < i; i4++) {
            fArr[i4] = fArr[i4] / f5;
        }
        return new Kernel(i, 1, fArr);
    }

    public static BufferedImage sharpen(BufferedImage bufferedImage) {
        return convolve(bufferedImage, f93943d, 2);
    }

    /* renamed from: t */
    public static boolean m60370t(GraphicsEnvironment graphicsEnvironment) {
        try {
            return !graphicsEnvironment.isHeadlessInstance();
        } catch (LinkageError unused) {
            f93941b = false;
            return false;
        }
    }

    public static BufferedImage toBuffered(RenderedImage renderedImage) {
        Hashtable hashtable;
        WritableRaster copyData;
        if (renderedImage instanceof BufferedImage) {
            return (BufferedImage) renderedImage;
        }
        if (renderedImage != null) {
            String[] propertyNames = renderedImage.getPropertyNames();
            if (propertyNames == null || propertyNames.length <= 0) {
                hashtable = null;
            } else {
                hashtable = new Hashtable(propertyNames.length);
                for (String str : propertyNames) {
                    hashtable.put(str, renderedImage.getProperty(str));
                }
            }
            Raster data = renderedImage.getData();
            if (data instanceof WritableRaster) {
                copyData = (WritableRaster) data;
            } else {
                copyData = renderedImage.copyData(data.createCompatibleWritableRaster());
            }
            ColorModel colorModel = renderedImage.getColorModel();
            return new BufferedImage(colorModel, copyData, colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) hashtable);
        }
        throw new IllegalArgumentException("original == null");
    }

    /* renamed from: u */
    public static BufferedImage m60371u(Image image, int i, IndexColorModel indexColorModel) {
        if (image instanceof BufferedImage) {
            BufferedImage bufferedImage = (BufferedImage) image;
            if (bufferedImage.getType() == i && (indexColorModel == null || m60363m(bufferedImage.getColorModel(), indexColorModel))) {
                return bufferedImage;
            }
        }
        if (image == null) {
            throw new IllegalArgumentException("original == null");
        }
        BufferedImage m60356f = indexColorModel == null ? m60356f(getWidth(image), getHeight(image), i, 3) : new BufferedImage(getWidth(image), getHeight(image), i, indexColorModel);
        m60362l(m60356f, image);
        return m60356f;
    }

    public static boolean waitForImage(Image image) {
        return waitForImages(new Image[]{image}, -1L);
    }

    public static boolean waitForImages(Image[] imageArr) {
        return waitForImages(imageArr, -1L);
    }

    public static BufferedImage accelerate(Image image, GraphicsConfiguration graphicsConfiguration) {
        return m60351a(image, null, graphicsConfiguration);
    }

    public static Color blend(Color color, Color color2, float f) {
        float f2 = 1.0f - f;
        return new Color(m60354d((color.getRed() * f2) + (color2.getRed() * f)), m60354d((color.getGreen() * f2) + (color2.getGreen() * f)), m60354d((color.getBlue() * f2) + (color2.getBlue() * f)), m60354d((color.getAlpha() * f2) + (color2.getAlpha() * f)));
    }

    public static BufferedImage blur(BufferedImage bufferedImage, float f) {
        if (f <= 1.0f) {
            return bufferedImage;
        }
        Kernel m60369s = m60369s(f);
        Kernel kernel = new Kernel(m60369s.getHeight(), m60369s.getWidth(), m60369s.getKernelData(null));
        return convolve(convolve(m60352b(bufferedImage, m60369s.getWidth() / 2, kernel.getHeight() / 2, 2), m60369s, 1), kernel, 1).getSubimage(m60369s.getWidth() / 2, kernel.getHeight() / 2, bufferedImage.getWidth(), bufferedImage.getHeight());
    }

    public static Image contrast(Image image, float f) {
        return f == 0.0f ? image : filter(image, new BrightnessContrastFilter(0.0f, f));
    }

    public static BufferedImage createClear(int i, int i2, int i3, Color color) {
        return m60358h(i, i2, i3, 1, color, f93946g);
    }

    public static BufferedImage createIndexed(Image image, int i, Color color, int i2) {
        return qji.m56707h(toBuffered(image), i, color, i2);
    }

    public static BufferedImage createTransparent(int i, int i2, int i3) {
        BufferedImage m60356f = m60356f(i, i2, i3, 3);
        Graphics2D createGraphics = m60356f.createGraphics();
        try {
            createGraphics.setComposite(AlphaComposite.Clear);
            createGraphics.fillRect(0, 0, i, i2);
            return m60356f;
        } finally {
            createGraphics.dispose();
        }
    }

    public static BufferedImage sharpen(BufferedImage bufferedImage, float f) {
        if (f == 0.0f) {
            return bufferedImage;
        }
        float f2 = -f;
        return convolve(bufferedImage, new Kernel(3, 3, new float[]{0.0f, f2, 0.0f, f2, (f * 4.0f) + 1.0f, f2, 0.0f, f2, 0.0f}), 2);
    }

    public static boolean waitForImage(Image image, long j) {
        return waitForImages(new Image[]{image}, j);
    }

    public static boolean waitForImages(Image[] imageArr, long j) {
        boolean z;
        int identityHashCode = imageArr.length == 1 ? System.identityHashCode(imageArr[0]) : System.identityHashCode(imageArr);
        for (Image image : imageArr) {
            f93945f.addImage(image, identityHashCode);
            if (f93945f.checkID(identityHashCode, false)) {
                f93945f.removeImage(image, identityHashCode);
            }
        }
        try {
            if (j < 0) {
                f93945f.waitForID(identityHashCode);
                z = true;
            } else {
                z = f93945f.waitForID(identityHashCode, j);
            }
            for (Image image2 : imageArr) {
                f93945f.removeImage(image2, identityHashCode);
            }
        } catch (InterruptedException unused) {
            for (Image image3 : imageArr) {
                f93945f.removeImage(image3, identityHashCode);
            }
            z = false;
        } catch (Throwable th) {
            for (Image image4 : imageArr) {
                f93945f.removeImage(image4, identityHashCode);
            }
            throw th;
        }
        return z && !f93945f.isErrorID(identityHashCode);
    }

    public static BufferedImage createIndexed(Image image, IndexColorModel indexColorModel, Color color, int i) {
        return qji.m56711l(toBuffered(image), indexColorModel, color, i);
    }

    public static BufferedImage createResampled(RenderedImage renderedImage, int i, int i2, int i3) {
        BufferedImage buffered;
        if (renderedImage instanceof BufferedImage) {
            buffered = (BufferedImage) renderedImage;
        } else {
            buffered = toBuffered(renderedImage, renderedImage.getColorModel().hasAlpha() ? 6 : 5);
        }
        return createResampled(buffered, i, i2, i3);
    }

    public static BufferedImage createRotated(Image image, double d) {
        return m60361k(toBuffered(image), d);
    }

    public static BufferedImage createIndexed(Image image, Image image2, Color color, int i) {
        return qji.m56711l(toBuffered(image), qji.m56703d(image2, 255, i), color, i);
    }

    public static BufferedImage createResampled(BufferedImage bufferedImage, int i, int i2, int i3) {
        return new ResampleOp(i, i2, m60355e(i3)).filter(bufferedImage, null);
    }

    public static BufferedImage toBuffered(RenderedImage renderedImage, int i) {
        if (renderedImage instanceof BufferedImage) {
            BufferedImage bufferedImage = (BufferedImage) renderedImage;
            if (bufferedImage.getType() == i) {
                return bufferedImage;
            }
        }
        if (renderedImage != null) {
            BufferedImage m60356f = m60356f(renderedImage.getWidth(), renderedImage.getHeight(), i, 3);
            Graphics2D createGraphics = m60356f.createGraphics();
            try {
                createGraphics.setComposite(AlphaComposite.Src);
                createGraphics.drawRenderedImage(renderedImage, IDENTITY_TRANSFORM);
                return m60356f;
            } finally {
                createGraphics.dispose();
            }
        }
        throw new IllegalArgumentException("original == null");
    }

    public static BufferedImage toBuffered(BufferedImage bufferedImage, int i) {
        return toBuffered((RenderedImage) bufferedImage, i);
    }

    public static BufferedImage toBuffered(Image image) {
        if (image instanceof BufferedImage) {
            return (BufferedImage) image;
        }
        if (image != null) {
            return new BufferedImageFactory(image).getBufferedImage();
        }
        throw new IllegalArgumentException("original == null");
    }

    public static BufferedImage toBuffered(Image image, int i) {
        return m60371u(image, i, null);
    }
}
