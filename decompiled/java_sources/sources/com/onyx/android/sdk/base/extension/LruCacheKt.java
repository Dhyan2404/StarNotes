package com.onyx.android.sdk.base.extension;

import android.util.LruCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¨\u0006\u0003"}, m61528d2 = {"sizeMBString", "", "Landroid/util/LruCache;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LruCacheKt {
    @NotNull
    public static final String sizeMBString(@NotNull LruCache<?, ?> lruCache) {
        Intrinsics.checkNotNullParameter(lruCache, "<this>");
        return (lruCache.size() / 1048576) + " MB";
    }
}
