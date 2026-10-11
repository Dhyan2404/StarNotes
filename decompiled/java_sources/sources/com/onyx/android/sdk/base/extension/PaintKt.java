package com.onyx.android.sdk.base.extension;

import android.graphics.Paint;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\u0014\u0010\u0002\u001a\u00020\u0003*\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0001¨\u0006\b"}, m61528d2 = {"copy", "Landroid/graphics/Paint;", "getTextWidth", "", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "", "translucent", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PaintKt {
    @NotNull
    public static final Paint copy(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        return new Paint(paint);
    }

    public static final int getTextWidth(@NotNull Paint paint, @Nullable String str) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        if (!StringKt.isNotBlank(str)) {
            return 0;
        }
        int length = str.length();
        paint.getTextWidths(str, new float[length]);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i += (int) Math.ceil(r2[i2]);
        }
        return i;
    }

    public static final void translucent(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        paint.setAlpha(128);
    }
}
