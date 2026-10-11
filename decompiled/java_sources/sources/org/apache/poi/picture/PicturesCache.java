package org.apache.poi.picture;

import java.awt.Dimension;
import java.awt.Image;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.p114wp.draw.ImageCreator;
import org.apache.poi.util.CollectionUtils;

/* loaded from: classes12.dex */
public abstract class PicturesCache<IMAGE extends Image> implements ImageCreator<IMAGE>, Closeable {
    public static final float PICTURE_MAX_SCALE = 1.5f;
    protected String location;
    protected final Logger LOG = LogManager.getLogger(getClass().getSimpleName());
    protected Map<String, Dimension> sizeCache = new HashMap();

    public PicturesCache(String str) {
        this.location = str;
    }

    public void close() {
        CollectionUtils.clear(this.sizeCache);
    }

    public abstract boolean existCache(String str);

    public abstract String getFilename(String str, int i);

    public Dimension getImageSize(String str) {
        Dimension dimension = this.sizeCache.get(str);
        if (dimension != null) {
            return dimension;
        }
        Dimension readImageSize = readImageSize(str);
        this.sizeCache.put(str, readImageSize);
        return readImageSize;
    }

    public String getLocation() {
        return this.location;
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public float getScale() {
        return 1.5f;
    }

    public abstract InputStream getStream(String str);

    public abstract Dimension readImageSize(String str);

    public abstract boolean saveImage(IMAGE image, String str);

    public void setImageSize(String str, Dimension dimension) {
        this.sizeCache.put(str, dimension);
    }

    public void setLocation(String str) {
        this.location = str;
    }
}
