package com.onyx.android.sdk.base.utils;

import com.onyx.android.sdk.base.data.Size;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ImageSizeManager;", "", "", Constants.CLEAR_ATTRIBUTES, "", "path", "Lcom/onyx/android/sdk/base/data/Size;", "loadImageSize", "size", "b", "a", "", "Ljava/util/Map;", "sizeCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ImageSizeManager {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Size> sizeCache = new LinkedHashMap();

    /* renamed from: a */
    public final Size m32094a(String path) {
        Size size = this.sizeCache.get(path);
        return size == null ? Size.INSTANCE.getEmpty() : size;
    }

    /* renamed from: b */
    public final void m32095b(String path, Size size) {
        this.sizeCache.put(path, size);
    }

    public final void clear() {
        this.sizeCache.clear();
    }

    @NotNull
    public final Size loadImageSize(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!this.sizeCache.containsKey(path)) {
            Size size = new Size(0, 0, 3, null);
            if (!BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(path, size)) {
                return size;
            }
            m32095b(path, size);
        }
        return m32094a(path);
    }
}
