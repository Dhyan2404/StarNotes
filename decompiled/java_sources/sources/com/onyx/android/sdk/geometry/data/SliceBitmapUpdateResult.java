package com.onyx.android.sdk.geometry.data;

import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;", "", "sliceInfo", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "isSuccess", "", "dirtyPageDisplayRect", "Landroid/graphics/RectF;", "dirtyBitmapRect", "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;)V", "getDirtyBitmapRect", "()Landroid/graphics/RectF;", "setDirtyBitmapRect", "(Landroid/graphics/RectF;)V", "getDirtyPageDisplayRect", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", "getSliceInfo", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SliceBitmapUpdateResult {

    @Nullable
    private RectF dirtyBitmapRect;

    @Nullable
    private final RectF dirtyPageDisplayRect;
    private boolean isSuccess;

    @NotNull
    private final SliceInfo sliceInfo;

    public SliceBitmapUpdateResult(@NotNull SliceInfo sliceInfo, boolean z, @Nullable RectF rectF, @Nullable RectF rectF2) {
        Intrinsics.checkNotNullParameter(sliceInfo, "sliceInfo");
        this.sliceInfo = sliceInfo;
        this.isSuccess = z;
        this.dirtyPageDisplayRect = rectF;
        this.dirtyBitmapRect = rectF2;
    }

    @Nullable
    public final RectF getDirtyBitmapRect() {
        return this.dirtyBitmapRect;
    }

    @Nullable
    public final RectF getDirtyPageDisplayRect() {
        return this.dirtyPageDisplayRect;
    }

    @NotNull
    public final SliceInfo getSliceInfo() {
        return this.sliceInfo;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final void setDirtyBitmapRect(@Nullable RectF rectF) {
        this.dirtyBitmapRect = rectF;
    }

    public final void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public /* synthetic */ SliceBitmapUpdateResult(SliceInfo sliceInfo, boolean z, RectF rectF, RectF rectF2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(sliceInfo, (i & 2) != 0 ? false : z, (i & 4) != 0 ? null : rectF, (i & 8) != 0 ? null : rectF2);
    }
}
