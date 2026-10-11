package com.twelvemonkeys.imageio.util;

import com.sunia.HTREnginev2.dci;
import com.sunia.HTREnginev2.gci;
import com.twelvemonkeys.image.ImageUtil;
import com.twelvemonkeys.imageio.spi.ProviderInfo;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.TreeSet;
import javax.imageio.IIOParam;
import javax.imageio.ImageIO;
import javax.imageio.spi.IIOServiceProvider;
import javax.imageio.spi.ServiceRegistry;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes10.dex */
public final class IIOUtil {
    /* renamed from: a */
    public static String[] m60668a(String[] strArr) {
        TreeSet treeSet = new TreeSet();
        for (String str : strArr) {
            treeSet.add(str.toUpperCase());
        }
        return (String[]) treeSet.toArray(new String[treeSet.size()]);
    }

    public static InputStream createStreamAdapter(ImageInputStream imageInputStream) {
        return new BufferedInputStream(new dci(imageInputStream));
    }

    public static <T> void deregisterProvider(ServiceRegistry serviceRegistry, IIOServiceProvider iIOServiceProvider, Class<T> cls) {
        serviceRegistry.deregisterServiceProvider(cls.cast(iIOServiceProvider), cls);
    }

    public static BufferedImage fakeAOI(BufferedImage bufferedImage, Rectangle rectangle) {
        if (bufferedImage == null) {
            return null;
        }
        return rectangle != null ? (rectangle.f97732x == 0 && rectangle.f97733y == 0 && rectangle.width == bufferedImage.getWidth() && rectangle.height == bufferedImage.getHeight()) ? bufferedImage : bufferedImage.getSubimage(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height) : bufferedImage;
    }

    public static Image fakeSubsampling(Image image, IIOParam iIOParam) {
        if (image == null) {
            return null;
        }
        if (iIOParam == null) {
            return image;
        }
        int sourceXSubsampling = iIOParam.getSourceXSubsampling();
        int sourceYSubsampling = iIOParam.getSourceYSubsampling();
        return (sourceXSubsampling > 1 || sourceYSubsampling > 1) ? image.getScaledInstance(((ImageUtil.getWidth(image) + sourceXSubsampling) - 1) / sourceXSubsampling, ((ImageUtil.getHeight(image) + sourceYSubsampling) - 1) / sourceYSubsampling, 2) : image;
    }

    public static String[] getNormalizedReaderFormatNames() {
        return m60668a(ImageIO.getReaderFormatNames());
    }

    public static String[] getNormalizedWriterFormatNames() {
        return m60668a(ImageIO.getWriterFormatNames());
    }

    public static ProviderInfo getProviderInfo(Class<? extends IIOServiceProvider> cls) {
        return new ProviderInfo(cls.getPackage());
    }

    public static Rectangle getSourceRegion(IIOParam iIOParam, int i, int i2) {
        Rectangle rectangle = new Rectangle(i, i2);
        if (iIOParam != null) {
            Rectangle sourceRegion = iIOParam.getSourceRegion();
            if (sourceRegion != null) {
                rectangle = rectangle.intersection(sourceRegion);
            }
            int subsamplingXOffset = iIOParam.getSubsamplingXOffset();
            int subsamplingYOffset = iIOParam.getSubsamplingYOffset();
            rectangle.f97732x += subsamplingXOffset;
            rectangle.f97733y += subsamplingYOffset;
            rectangle.width -= subsamplingXOffset;
            rectangle.height -= subsamplingYOffset;
        }
        return rectangle;
    }

    public static InputStream createStreamAdapter(ImageInputStream imageInputStream, long j) {
        return new BufferedInputStream(new dci(imageInputStream, j));
    }

    public static OutputStream createStreamAdapter(ImageOutputStream imageOutputStream) {
        return new BufferedOutputStream(new gci(imageOutputStream));
    }
}
