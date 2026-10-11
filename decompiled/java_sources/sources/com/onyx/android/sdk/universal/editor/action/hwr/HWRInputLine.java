package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getRegion", "()Landroid/graphics/RectF;", "region", "Landroid/graphics/Matrix;", "b", "Landroid/graphics/Matrix;", "getMtx", "()Landroid/graphics/Matrix;", "mtx", "", "c", "F", "getCharacterSize", "()F", "characterSize", "", "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;", "d", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/RectF;Landroid/graphics/Matrix;FLjava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRInputLine {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RectF region;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Matrix mtx;

    /* renamed from: c, reason: from kotlin metadata */
    public final float characterSize;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<HWRInputShape> shapes;

    public HWRInputLine(@NotNull RectF region, @NotNull Matrix mtx, float f, @NotNull List<HWRInputShape> shapes) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(mtx, "mtx");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.region = region;
        this.mtx = mtx;
        this.characterSize = f;
        this.shapes = shapes;
    }

    public final float getCharacterSize() {
        return this.characterSize;
    }

    @NotNull
    public final Matrix getMtx() {
        return this.mtx;
    }

    @NotNull
    public final RectF getRegion() {
        return this.region;
    }

    @NotNull
    public final List<HWRInputShape> getShapes() {
        return this.shapes;
    }
}
