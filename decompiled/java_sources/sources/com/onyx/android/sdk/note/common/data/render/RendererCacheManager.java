package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.utils.BitmapLruCache;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00152\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RendererCacheManager;", "", "Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;", "pageInfo", "Landroid/graphics/Bitmap;", "bitmap", "", "addRendererBitmap", "getRendererBitmap", "", "containsKey", "", CouchFieldKey.KEY_PAGE_ID, "clearPageCacheByUniqueId", "ensureClearPageDiffCache", "clearBitmapCache", "a", "b", "", "layerId", "c", "", "d", "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;", "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;", "renderBitmapCache", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRendererCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,85:1\n1855#2,2:86\n215#3,2:88\n215#3,2:90\n*S KotlinDebug\n*F\n+ 1 RendererCacheManager.kt\ncom/onyx/android/sdk/note/common/data/render/RendererCacheManager\n*L\n44#1:86,2\n61#1:88,2\n73#1:90,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RendererCacheManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BitmapLruCache renderBitmapCache = new BitmapLruCache(41943040);

    /* renamed from: a */
    public final String m33656a(RendererPageInfo pageInfo) {
        String json = JSONUtils.INSTANCE.toJson(pageInfo);
        return json == null ? "" : json;
    }

    public final void addRendererBitmap(@Nullable RendererPageInfo pageInfo, @Nullable Bitmap bitmap) {
        if (pageInfo == null || !BitmapUtils.INSTANCE.isValid(bitmap)) {
            return;
        }
        this.renderBitmapCache.put(m33656a(pageInfo), bitmap);
    }

    /* renamed from: b */
    public final void m33657b(RendererPageInfo pageInfo) {
        BitmapUtils.INSTANCE.recycle(this.renderBitmapCache.remove(m33656a(pageInfo)));
    }

    /* renamed from: c */
    public final RendererPageInfo m33658c(String pageUniqueId, int layerId) {
        Map<String, Bitmap> snapshot = this.renderBitmapCache.snapshot();
        Intrinsics.checkNotNullExpressionValue(snapshot, "snapshot(...)");
        Iterator<Map.Entry<String, Bitmap>> it2 = snapshot.entrySet().iterator();
        while (it2.hasNext()) {
            RendererPageInfo rendererPageInfo = (RendererPageInfo) JSONUtils.INSTANCE.parseObject(it2.next().getKey(), RendererPageInfo.class);
            if (rendererPageInfo != null && StringUtils.equals(rendererPageInfo.getPageUniqueId(), pageUniqueId) && rendererPageInfo.getLayerId() == layerId) {
                return rendererPageInfo;
            }
        }
        return null;
    }

    public final void clearBitmapCache() {
        this.renderBitmapCache.evictAll();
    }

    public final void clearPageCacheByUniqueId(@NotNull String pageUniqueId) {
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        List<RendererPageInfo> m33659d = m33659d(pageUniqueId);
        if (m33659d != null) {
            Iterator<T> it2 = m33659d.iterator();
            while (it2.hasNext()) {
                m33657b((RendererPageInfo) it2.next());
            }
        }
    }

    public final boolean containsKey(@NotNull RendererPageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return BitmapUtils.INSTANCE.isValid(getRendererBitmap(pageInfo));
    }

    /* renamed from: d */
    public final List<RendererPageInfo> m33659d(String pageUniqueId) {
        ArrayList arrayList = new ArrayList();
        Map<String, Bitmap> snapshot = this.renderBitmapCache.snapshot();
        Intrinsics.checkNotNullExpressionValue(snapshot, "snapshot(...)");
        Iterator<Map.Entry<String, Bitmap>> it2 = snapshot.entrySet().iterator();
        while (it2.hasNext()) {
            RendererPageInfo rendererPageInfo = (RendererPageInfo) JSONUtils.INSTANCE.parseObject(it2.next().getKey(), RendererPageInfo.class);
            if (rendererPageInfo != null && StringUtils.equals(rendererPageInfo.getPageUniqueId(), pageUniqueId)) {
                arrayList.add(rendererPageInfo);
            }
        }
        return arrayList;
    }

    public final void ensureClearPageDiffCache(@NotNull RendererPageInfo pageInfo) {
        RendererPageInfo m33658c;
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        String pageUniqueId = pageInfo.getPageUniqueId();
        if (pageUniqueId == null || (m33658c = m33658c(pageUniqueId, pageInfo.getLayerId())) == null || Intrinsics.areEqual(pageInfo, m33658c)) {
            return;
        }
        m33657b(m33658c);
    }

    @NotNull
    public final Bitmap getRendererBitmap(@NotNull RendererPageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Bitmap bitmap = this.renderBitmapCache.get(m33656a(pageInfo));
        Intrinsics.checkNotNullExpressionValue(bitmap, "get(...)");
        return bitmap;
    }
}
