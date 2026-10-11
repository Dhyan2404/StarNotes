package org.apache.poi.picture;

import java.awt.Image;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.p114wp.usermodel.IPicture;

/* loaded from: classes12.dex */
public class PictureTask<IMAGE extends Image> implements Runnable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) PictureTask.class);
    private final PicturesCache<IMAGE> cache;
    private final String filename;
    private final IPicture picture;

    public PictureTask(IPicture iPicture, PicturesCache<IMAGE> picturesCache, String str) {
        this.picture = iPicture;
        this.cache = picturesCache;
        this.filename = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        Image image = this.picture.getImage(this.cache);
        if (image != null) {
            this.cache.saveImage(image, this.filename);
        }
    }
}
