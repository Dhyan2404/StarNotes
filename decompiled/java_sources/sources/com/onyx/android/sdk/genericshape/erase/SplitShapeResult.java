package com.onyx.android.sdk.genericshape.erase;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.genericshape.IGeometry;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0014\u0010\r\u001a\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "", "()V", "removeShapes", "", "Lcom/onyx/android/sdk/genericshape/IGeometry;", "shapeErased", "", "splitShapes", "getRemoveShapes", "getSplitShapes", "isErased", "isShapeErased", "setRemoveShapes", "setShapeErased", "setSplitShapes", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SplitShapeResult {

    @Nullable
    private List<? extends IGeometry> removeShapes;
    private boolean shapeErased;

    @Nullable
    private List<? extends IGeometry> splitShapes;

    @Nullable
    public final List<IGeometry> getRemoveShapes() {
        return this.removeShapes;
    }

    @Nullable
    public final List<IGeometry> getSplitShapes() {
        return this.splitShapes;
    }

    public final boolean isErased() {
        return CollectionKt.isNonBlank(getRemoveShapes()) || CollectionKt.isNonBlank(getSplitShapes());
    }

    /* renamed from: isShapeErased, reason: from getter */
    public final boolean getShapeErased() {
        return this.shapeErased;
    }

    @NotNull
    public final SplitShapeResult setRemoveShapes(@NotNull List<? extends IGeometry> removeShapes) {
        Intrinsics.checkNotNullParameter(removeShapes, "removeShapes");
        this.removeShapes = removeShapes;
        return this;
    }

    @NotNull
    public final SplitShapeResult setShapeErased(boolean shapeErased) {
        this.shapeErased = shapeErased;
        return this;
    }

    @NotNull
    public final SplitShapeResult setSplitShapes(@NotNull List<? extends IGeometry> splitShapes) {
        Intrinsics.checkNotNullParameter(splitShapes, "splitShapes");
        this.splitShapes = splitShapes;
        return this;
    }
}
