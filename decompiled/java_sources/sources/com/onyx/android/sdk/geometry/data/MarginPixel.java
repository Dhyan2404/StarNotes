package com.onyx.android.sdk.geometry.data;

import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/MarginPixel;", "Landroid/graphics/RectF;", "()V", "hasMargin", "", "scale", "", "", "toMarginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "rectF", "width", "height", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MarginPixel extends RectF {
    public final boolean hasMargin() {
        if (!(((RectF) this).left == 0.0f)) {
            return true;
        }
        if (!(((RectF) this).top == 0.0f)) {
            return true;
        }
        if (((RectF) this).right == 0.0f) {
            return !((((RectF) this).bottom > 0.0f ? 1 : (((RectF) this).bottom == 0.0f ? 0 : -1)) == 0);
        }
        return true;
    }

    public final void scale(float scale) {
        ((RectF) this).left *= scale;
        ((RectF) this).top *= scale;
        ((RectF) this).right *= scale;
        ((RectF) this).bottom *= scale;
    }

    @NotNull
    public final MarginPercent toMarginPercent(float width, float height) {
        MarginPercent marginPercent = new MarginPercent();
        marginPercent.setLeft(((RectF) this).left / width);
        marginPercent.setTop(((RectF) this).top / height);
        marginPercent.setRight(((RectF) this).right / width);
        marginPercent.setBottom(((RectF) this).bottom / height);
        return marginPercent;
    }

    @NotNull
    public final MarginPercent toMarginPercent(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return toMarginPercent(rectF.width(), rectF.height());
    }
}
