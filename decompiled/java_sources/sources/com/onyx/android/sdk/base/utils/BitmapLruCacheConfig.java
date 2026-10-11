package com.onyx.android.sdk.base.utils;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;", "", "", "getBytePerScreen", "screenSize", "bitmapCacheMaxByteCount", "a", "I", "BYTE_PER_PIXEL", "b", "DEFAULT_SCREEN_SIZE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BitmapLruCacheConfig {

    @NotNull
    public static final BitmapLruCacheConfig INSTANCE = new BitmapLruCacheConfig();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int BYTE_PER_PIXEL = 4;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int DEFAULT_SCREEN_SIZE = 3;

    public static /* synthetic */ int bitmapCacheMaxByteCount$default(BitmapLruCacheConfig bitmapLruCacheConfig, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 3;
        }
        return bitmapLruCacheConfig.bitmapCacheMaxByteCount(i);
    }

    public final int bitmapCacheMaxByteCount(int screenSize) {
        return screenSize * getBytePerScreen();
    }

    public final int getBytePerScreen() {
        return ResManager.INSTANCE.getScreenArea() * 4;
    }
}
