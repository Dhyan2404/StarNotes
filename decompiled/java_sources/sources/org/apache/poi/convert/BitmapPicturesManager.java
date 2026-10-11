package org.apache.poi.convert;

import com.trans.android.AndroidImage;
import org.apache.poi.picture.PicturesManager;

/* loaded from: classes12.dex */
public class BitmapPicturesManager extends PicturesManager<AndroidImage> {
    public BitmapPicturesManager(String str) {
        super(new BitmapPicturesCache(str));
    }
}
