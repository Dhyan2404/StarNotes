package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0005\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00002\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "splitShapes", "setSplitShapes", "", "shapeErased", "setShapeErased", "removeShapes", "setRemoveShapes", "getRemoveShapes", "getSplitShapes", "isShapeErased", "isErased", "a", "Ljava/util/List;", "b", "c", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitShapeResult {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public List<? extends Shape> splitShapes;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public List<? extends Shape> removeShapes;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean shapeErased;

    @Nullable
    public final List<Shape> getRemoveShapes() {
        return this.removeShapes;
    }

    @Nullable
    public final List<Shape> getSplitShapes() {
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
    public final SplitShapeResult setRemoveShapes(@Nullable List<? extends Shape> removeShapes) {
        this.removeShapes = removeShapes;
        return this;
    }

    @NotNull
    public final SplitShapeResult setShapeErased(boolean shapeErased) {
        this.shapeErased = shapeErased;
        return this;
    }

    @NotNull
    public final SplitShapeResult setSplitShapes(@Nullable List<? extends Shape> splitShapes) {
        this.splitShapes = splitShapes;
        return this;
    }
}
