package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J#\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component1", "", "component2", "shapes", "layerId", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "b", "I", "getLayerId", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class MoveShapesToLayerEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int layerId;

    /* JADX WARN: Multi-variable type inference failed */
    public MoveShapesToLayerEvent(@NotNull List<? extends Shape> shapes, int i) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.layerId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MoveShapesToLayerEvent copy$default(MoveShapesToLayerEvent moveShapesToLayerEvent, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = moveShapesToLayerEvent.shapes;
        }
        if ((i2 & 2) != 0) {
            i = moveShapesToLayerEvent.layerId;
        }
        return moveShapesToLayerEvent.copy(list, i);
    }

    @NotNull
    public final List<Shape> component1() {
        return this.shapes;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLayerId() {
        return this.layerId;
    }

    @NotNull
    public final MoveShapesToLayerEvent copy(@NotNull List<? extends Shape> shapes, int layerId) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return new MoveShapesToLayerEvent(shapes, layerId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MoveShapesToLayerEvent)) {
            return false;
        }
        MoveShapesToLayerEvent moveShapesToLayerEvent = (MoveShapesToLayerEvent) other;
        return Intrinsics.areEqual(this.shapes, moveShapesToLayerEvent.shapes) && this.layerId == moveShapesToLayerEvent.layerId;
    }

    public final int getLayerId() {
        return this.layerId;
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    public int hashCode() {
        return (this.shapes.hashCode() * 31) + Integer.hashCode(this.layerId);
    }

    @NotNull
    public String toString() {
        return "MoveShapesToLayerEvent(shapes=" + this.shapes + ", layerId=" + this.layerId + ')';
    }
}
