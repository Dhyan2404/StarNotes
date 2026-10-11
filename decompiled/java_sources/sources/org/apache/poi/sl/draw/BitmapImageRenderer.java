package org.apache.poi.sl.draw;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.awt.image.RescaleOp;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;
import org.apache.commons.collections4.iterators.IteratorIterable;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class BitmapImageRenderer implements ImageRenderer {
    private static final String UNSUPPORTED_IMAGE_TYPE = "Unsupported Image Type";
    private String cachedContentType;
    private byte[] cachedImage;
    private boolean doCache;
    protected BufferedImage img;
    private static final Logger LOG = LogManager.getLogger((Class<?>) BitmapImageRenderer.class);
    private static final ImageLoader[] IMAGE_LOADERS = {new ImageLoader() { // from class: org.apache.poi.sl.draw.a
        @Override // org.apache.poi.sl.draw.BitmapImageRenderer.ImageLoader
        public final BufferedImage load(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) {
            BufferedImage loadColored;
            loadColored = BitmapImageRenderer.loadColored(imageReader, imageInputStream, imageReadParam);
            return loadColored;
        }
    }, new ImageLoader() { // from class: org.apache.poi.sl.draw.b
        @Override // org.apache.poi.sl.draw.BitmapImageRenderer.ImageLoader
        public final BufferedImage load(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) {
            BufferedImage loadGrayScaled;
            loadGrayScaled = BitmapImageRenderer.loadGrayScaled(imageReader, imageInputStream, imageReadParam);
            return loadGrayScaled;
        }
    }, new ImageLoader() { // from class: org.apache.poi.sl.draw.c
        @Override // org.apache.poi.sl.draw.BitmapImageRenderer.ImageLoader
        public final BufferedImage load(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) {
            BufferedImage loadTruncated;
            loadTruncated = BitmapImageRenderer.loadTruncated(imageReader, imageInputStream, imageReadParam);
            return loadTruncated;
        }
    }};
    private static final PictureData.PictureType[] ALLOWED_TYPES = {PictureData.PictureType.JPEG, PictureData.PictureType.PNG, PictureData.PictureType.BMP, PictureData.PictureType.GIF, PictureData.PictureType.TIFF};

    /* loaded from: classes12.dex */
    public interface ImageLoader {
        BufferedImage load(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) throws IOException;
    }

    private static int findTruncatedBlackBox(BufferedImage bufferedImage, int i, int i2) {
        for (int i3 = i2 - 1; i3 > 0; i3--) {
            int i4 = i - 1;
            while (i4 > 0) {
                if (bufferedImage.getRGB(i4, i3) != -16777216) {
                    return i3 + 1;
                }
                i4 -= i / 10;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$canRender$0(String str, PictureData.PictureType pictureType) {
        return pictureType.contentType.equalsIgnoreCase(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$loadGrayScaled$1(ImageTypeSpecifier imageTypeSpecifier) {
        return imageTypeSpecifier.getBufferedImageType() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BufferedImage loadColored(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) throws IOException {
        imageReader.setInput(imageInputStream, false, true);
        return imageReader.read(0, imageReadParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BufferedImage loadGrayScaled(ImageReader imageReader, ImageInputStream imageInputStream, final ImageReadParam imageReadParam) throws IOException {
        Optional findFirst = StreamSupport.stream(new IteratorIterable(imageReader.getImageTypes(0)).spliterator(), false).filter(new Predicate() { // from class: com.sunia.HTREnginev2.hs
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$loadGrayScaled$1;
                lambda$loadGrayScaled$1 = BitmapImageRenderer.lambda$loadGrayScaled$1((ImageTypeSpecifier) obj);
                return lambda$loadGrayScaled$1;
            }
        }).findFirst();
        imageReadParam.getClass();
        findFirst.ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.is
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ImageReadParam.this.setDestinationType((ImageTypeSpecifier) obj);
            }
        });
        imageReader.setInput(imageInputStream, false, true);
        return imageReader.read(0, imageReadParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BufferedImage loadTruncated(ImageReader imageReader, ImageInputStream imageInputStream, ImageReadParam imageReadParam) throws IOException {
        int findTruncatedBlackBox;
        imageReader.setInput(imageInputStream, false, true);
        int height = imageReader.getHeight(0);
        int width = imageReader.getWidth(0);
        Iterator<ImageTypeSpecifier> imageTypes = imageReader.getImageTypes(0);
        if (!imageTypes.hasNext()) {
            return null;
        }
        BufferedImage createBufferedImage = imageTypes.next().createBufferedImage(width, height);
        imageReadParam.setDestination(createBufferedImage);
        try {
            imageReader.read(0, imageReadParam);
        } catch (IOException unused) {
        }
        if (createBufferedImage.getColorModel().hasAlpha() || (findTruncatedBlackBox = findTruncatedBlackBox(createBufferedImage, width, height)) >= height) {
            return createBufferedImage;
        }
        BufferedImage bufferedImage = new BufferedImage(width, height, 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.clipRect(0, 0, width, findTruncatedBlackBox);
        createGraphics.drawImage(createBufferedImage, 0, 0, (ImageObserver) null);
        createGraphics.dispose();
        createBufferedImage.flush();
        return bufferedImage;
    }

    private static BufferedImage readImage(InputStream inputStream, String str) throws IOException {
        MemoryCacheImageInputStream memoryCacheImageInputStream = new MemoryCacheImageInputStream(inputStream);
        try {
            Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(memoryCacheImageInputStream);
            BufferedImage bufferedImage = null;
            IOException iOException = null;
            while (true) {
                if (bufferedImage != null) {
                    break;
                }
                if (!imageReaders.hasNext()) {
                    break;
                }
                ImageReader next = imageReaders.next();
                ImageReadParam defaultReadParam = next.getDefaultReadParam();
                IOException e = null;
                for (ImageLoader imageLoader : IMAGE_LOADERS) {
                    memoryCacheImageInputStream.reset();
                    memoryCacheImageInputStream.mark();
                    try {
                        bufferedImage = imageLoader.load(next, memoryCacheImageInputStream, defaultReadParam);
                    } catch (IOException e2) {
                        e = e2;
                        if (UNSUPPORTED_IMAGE_TYPE.equals(e.getMessage())) {
                            break;
                        }
                    } catch (RuntimeException e3) {
                        e = new IOException("ImageIO runtime exception", e3);
                    }
                    if (bufferedImage != null) {
                        break;
                    }
                }
                next.dispose();
                iOException = e;
            }
            memoryCacheImageInputStream.close();
            if (bufferedImage == null) {
                if (iOException != null) {
                    throw iOException;
                }
                LOG.atWarn().log("Content-type: {} is not supported. Image ignored.", str);
                return null;
            }
            if (bufferedImage.getColorModel().hasAlpha()) {
                return bufferedImage;
            }
            BufferedImage bufferedImage2 = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 2);
            Graphics graphics = bufferedImage2.getGraphics();
            graphics.drawImage(bufferedImage, 0, 0, null);
            graphics.dispose();
            return bufferedImage2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    memoryCacheImageInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(final String str) {
        return Stream.of((Object[]) ALLOWED_TYPES).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.gs
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$canRender$0;
                lambda$canRender$0 = BitmapImageRenderer.lambda$canRender$0(str, (PictureData.PictureType) obj);
                return lambda$canRender$0;
            }
        });
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        return drawImage(graphics2D, rectangle2D, null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        return this.img == null ? new Rectangle2D.Double() : new Rectangle2D.Double(0.0d, 0.0d, r0.getWidth(), this.img.getHeight());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public String getCachedContentType() {
        return this.cachedContentType;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public byte[] getCachedImage() {
        return this.cachedImage;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage() {
        return this.img;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getNativeBounds() {
        return new Rectangle2D.Double(0.0d, 0.0d, this.img.getWidth(), this.img.getHeight());
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        if (this.doCache) {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                IOUtils.copy(inputStream, unsynchronizedByteArrayOutputStream);
                this.cachedImage = unsynchronizedByteArrayOutputStream.toByteArray();
                this.cachedContentType = str;
                inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
                unsynchronizedByteArrayOutputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        this.img = readImage(inputStream, str);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setAlpha(double d) {
        this.img = setAlpha(this.img, d);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void setCacheInput(boolean z) {
        this.doCache = z;
        if (z) {
            return;
        }
        this.cachedContentType = null;
        this.cachedImage = null;
    }

    public static BufferedImage setAlpha(BufferedImage bufferedImage, double d) {
        if (bufferedImage == null) {
            return new BufferedImage(1, 1, 2);
        }
        return d == 0.0d ? bufferedImage : new RescaleOp(new float[]{1.0f, 1.0f, 1.0f, (float) d}, new float[]{0.0f, 0.0f, 0.0f, 0.0f}, (RenderingHints) null).filter(bufferedImage, (BufferedImage) null);
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets) {
        Insets insets2;
        boolean z = false;
        if (this.img == null) {
            return false;
        }
        if (insets == null) {
            insets2 = new Insets(0, 0, 0, 0);
        } else {
            insets2 = insets;
            z = true;
        }
        int width = this.img.getWidth();
        int height = this.img.getHeight();
        boolean z2 = z;
        double d = width;
        double width2 = rectangle2D.getWidth() / ((((100000 - insets2.left) - insets2.right) / 100000.0d) * d);
        double d2 = height;
        double height2 = rectangle2D.getHeight() / ((((100000 - insets2.top) - insets2.bottom) / 100000.0d) * d2);
        AffineTransform affineTransform = new AffineTransform(width2, 0.0d, 0.0d, height2, rectangle2D.getX() - (((d * width2) * insets2.left) / 100000.0d), rectangle2D.getY() - (((d2 * height2) * insets2.top) / 100000.0d));
        Shape clip = graphics2D.getClip();
        if (z2) {
            graphics2D.clip(rectangle2D.getBounds2D());
        }
        graphics2D.drawRenderedImage(this.img, affineTransform);
        graphics2D.setClip(clip);
        return true;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public BufferedImage getImage(Dimension2D dimension2D) {
        BufferedImage bufferedImage = this.img;
        if (bufferedImage == null) {
            return null;
        }
        double width = bufferedImage.getWidth();
        double height = this.img.getHeight();
        double width2 = dimension2D.getWidth();
        double height2 = dimension2D.getHeight();
        if (width == width2 && height == height2) {
            return this.img;
        }
        BufferedImage bufferedImage2 = new BufferedImage((int) width2, (int) height2, 2);
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.scale(width2 / width, height2 / height);
        new AffineTransformOp(affineTransform, 2).filter(this.img, bufferedImage2);
        return bufferedImage2;
    }

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) throws IOException {
        if (bArr == null) {
            return;
        }
        if (this.doCache) {
            this.cachedImage = (byte[]) bArr.clone();
            this.cachedContentType = str;
        }
        this.img = readImage(new UnsynchronizedByteArrayInputStream(bArr), str);
    }
}
