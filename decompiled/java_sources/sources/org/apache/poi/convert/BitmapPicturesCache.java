package org.apache.poi.convert;

import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.FileUtils;
import com.trans.android.AndroidImage;
import com.trans.android.util.ImageUtils;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.picture.PicturesCache;
import org.apache.poi.sl.draw.AndroidImageRenderer;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.CollectionUtils;

/* loaded from: classes12.dex */
public class BitmapPicturesCache extends PicturesCache<AndroidImage> {
    private AndroidImageRenderer renderer;
    private Map<String, Dimension> sizeCache;

    public BitmapPicturesCache(String str) {
        super(str);
        this.sizeCache = new HashMap();
        this.renderer = new AndroidImageRenderer();
    }

    @Override // org.apache.poi.picture.PicturesCache, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CollectionUtils.clear(this.sizeCache);
    }

    @Override // org.apache.poi.picture.PicturesCache
    public boolean existCache(String str) {
        return FileUtils.fileExist(new File(this.location, str));
    }

    @Override // org.apache.poi.picture.PicturesCache
    public String getFilename(String str, int i) {
        return "image_" + i + ".png";
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public ImageRenderer getImageRenderer(String str) {
        return this.renderer;
    }

    @Override // org.apache.poi.picture.PicturesCache
    public Dimension getImageSize(String str) {
        return this.sizeCache.get(str);
    }

    @Override // org.apache.poi.picture.PicturesCache
    public String getLocation() {
        return this.location;
    }

    @Override // org.apache.poi.picture.PicturesCache
    public InputStream getStream(String str) {
        try {
            return new FileInputStream(new File(this.location, str));
        } catch (IOException e) {
            this.LOG.atError().withThrowable(e).log();
            return null;
        }
    }

    @Override // org.apache.poi.picture.PicturesCache
    public Dimension readImageSize(String str) {
        return ImageUtils.readImageSize(getStream(str));
    }

    @Override // org.apache.poi.picture.PicturesCache
    public void setImageSize(String str, Dimension dimension) {
        this.sizeCache.put(str, dimension);
    }

    @Override // org.apache.poi.picture.PicturesCache
    public void setLocation(String str) {
        this.location = str;
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public AndroidImage createImage(int i, int i2) {
        return new AndroidImage(i, i2);
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public Graphics2D getGraphics(AndroidImage androidImage) {
        Graphics2D graphics2D = (Graphics2D) androidImage.getGraphics();
        graphics2D.setRenderingHint(Drawable.IMAGE_RENDERER, this.renderer);
        return graphics2D;
    }

    @Override // org.apache.poi.picture.PicturesCache
    public boolean saveImage(AndroidImage androidImage, String str) {
        BitmapUtils.compress(androidImage.getAndroidBitmap(), new File(this.location, str).getAbsolutePath());
        return true;
    }
}
