package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.note.common.shape.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;", "", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "flushPageCount", "", "(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V", "getFlushPageCount", "()I", "setFlushPageCount", "(I)V", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "clearOnPageFlushFinish", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FlushShapeReference {
    private int flushPageCount;

    @NotNull
    private final Shape shape;

    public FlushShapeReference(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.flushPageCount = i;
    }

    public final boolean clearOnPageFlushFinish() {
        int i = this.flushPageCount - 1;
        this.flushPageCount = i;
        if (i > 0) {
            return false;
        }
        this.shape.clearLowLatencyData();
        return true;
    }

    public final int getFlushPageCount() {
        return this.flushPageCount;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    public final void setFlushPageCount(int i) {
        this.flushPageCount = i;
    }

    public /* synthetic */ FlushShapeReference(Shape shape, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(shape, (i2 & 2) != 0 ? 1 : i);
    }
}
