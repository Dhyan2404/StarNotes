package com.onyx.poi.cache;

import android.util.LruCache;

/* loaded from: classes9.dex */
public class BitmapMemoryLruCache extends LruCache<String, BitmapHolder> {
    public BitmapMemoryLruCache(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean z, String str, BitmapHolder bitmapHolder, BitmapHolder bitmapHolder2) {
        if (bitmapHolder != null) {
            bitmapHolder.detach();
        }
    }

    @Override // android.util.LruCache
    public int sizeOf(String str, BitmapHolder bitmapHolder) {
        if (bitmapHolder == null) {
            return 0;
        }
        return bitmapHolder.getSize();
    }
}
