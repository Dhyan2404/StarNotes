package com.onyx.android.sdk.base.data.font;

import android.icu.text.Transliterator;
import com.onyx.android.sdk.base.extension.StringKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/CJKCompat;", "", "()V", "CJKToStandard", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CJKCompat {

    @NotNull
    public static final CJKCompat INSTANCE = new CJKCompat();

    private CJKCompat() {
    }

    @NotNull
    public final String CJKToStandard(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String transliterate = Transliterator.getInstance("Hant-Hans").transliterate(str);
        Intrinsics.checkNotNull(transliterate);
        return StringKt.replaceWithMap(transliterate, EquivalentUnifiedIdeograph.INSTANCE.getMapper());
    }
}
