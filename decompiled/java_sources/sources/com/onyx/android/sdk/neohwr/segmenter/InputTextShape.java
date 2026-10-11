package com.onyx.android.sdk.neohwr.segmenter;

import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;", "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;", "region", "Landroid/graphics/RectF;", "angle", "", "tag", "", "(Landroid/graphics/RectF;FLjava/lang/Object;)V", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class InputTextShape extends InputShape {

    @NotNull
    private Object tag;

    public InputTextShape(@NotNull RectF region, float f, @NotNull Object tag) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(tag, "tag");
        setPoints(new float[]{region.left, region.top, region.right, region.bottom, f});
        this.tag = tag;
    }

    @NotNull
    public final Object getTag() {
        return this.tag;
    }

    public final void setTag(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.tag = obj;
    }
}
