package com.onyx.android.sdk.reader.cbox.page;

import android.util.LruCache;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/ScreenDataLruCache;", "Landroid/util/LruCache;", "", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;", "maxSize", "", "(I)V", Constants.CLEAR_ATTRIBUTES, "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ScreenDataLruCache extends LruCache<String, CBoxDataOnScreen> {
    public ScreenDataLruCache(int i) {
        super(i);
    }

    public final void clear() {
        evictAll();
    }
}
