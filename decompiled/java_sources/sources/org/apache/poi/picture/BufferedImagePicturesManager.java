package org.apache.poi.picture;

import java.awt.image.BufferedImage;

/* loaded from: classes12.dex */
public class BufferedImagePicturesManager extends PicturesManager<BufferedImage> {
    public BufferedImagePicturesManager(String str) {
        super(new BufferedImagePicturesCache(str));
    }

    public BufferedImagePicturesManager(BufferedImagePicturesCache bufferedImagePicturesCache) {
        super(bufferedImagePicturesCache);
    }
}
