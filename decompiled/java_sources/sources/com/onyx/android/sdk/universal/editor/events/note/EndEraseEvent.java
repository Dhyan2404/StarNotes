package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J3\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\f\u001a\u00020\bHÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/EndEraseEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component1", "", "", "component2", "", "component3", "removedShapes", "hitTestShapeTypes", "singleTap", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Ljava/util/List;", "getRemovedShapes", "()Ljava/util/List;", "b", "Ljava/util/Set;", "getHitTestShapeTypes", "()Ljava/util/Set;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSingleTap", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/util/Set;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class EndEraseEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Shape> removedShapes;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Set<Integer> hitTestShapeTypes;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean singleTap;

    /* JADX WARN: Multi-variable type inference failed */
    public EndEraseEvent(@NotNull List<? extends Shape> removedShapes, @NotNull Set<Integer> hitTestShapeTypes, boolean z) {
        Intrinsics.checkNotNullParameter(removedShapes, "removedShapes");
        Intrinsics.checkNotNullParameter(hitTestShapeTypes, "hitTestShapeTypes");
        this.removedShapes = removedShapes;
        this.hitTestShapeTypes = hitTestShapeTypes;
        this.singleTap = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EndEraseEvent copy$default(EndEraseEvent endEraseEvent, List list, Set set, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = endEraseEvent.removedShapes;
        }
        if ((i & 2) != 0) {
            set = endEraseEvent.hitTestShapeTypes;
        }
        if ((i & 4) != 0) {
            z = endEraseEvent.singleTap;
        }
        return endEraseEvent.copy(list, set, z);
    }

    @NotNull
    public final List<Shape> component1() {
        return this.removedShapes;
    }

    @NotNull
    public final Set<Integer> component2() {
        return this.hitTestShapeTypes;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getSingleTap() {
        return this.singleTap;
    }

    @NotNull
    public final EndEraseEvent copy(@NotNull List<? extends Shape> removedShapes, @NotNull Set<Integer> hitTestShapeTypes, boolean singleTap) {
        Intrinsics.checkNotNullParameter(removedShapes, "removedShapes");
        Intrinsics.checkNotNullParameter(hitTestShapeTypes, "hitTestShapeTypes");
        return new EndEraseEvent(removedShapes, hitTestShapeTypes, singleTap);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EndEraseEvent)) {
            return false;
        }
        EndEraseEvent endEraseEvent = (EndEraseEvent) other;
        return Intrinsics.areEqual(this.removedShapes, endEraseEvent.removedShapes) && Intrinsics.areEqual(this.hitTestShapeTypes, endEraseEvent.hitTestShapeTypes) && this.singleTap == endEraseEvent.singleTap;
    }

    @NotNull
    public final Set<Integer> getHitTestShapeTypes() {
        return this.hitTestShapeTypes;
    }

    @NotNull
    public final List<Shape> getRemovedShapes() {
        return this.removedShapes;
    }

    public final boolean getSingleTap() {
        return this.singleTap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.removedShapes.hashCode() * 31) + this.hitTestShapeTypes.hashCode()) * 31;
        boolean z = this.singleTap;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "EndEraseEvent(removedShapes=" + this.removedShapes + ", hitTestShapeTypes=" + this.hitTestShapeTypes + ", singleTap=" + this.singleTap + ')';
    }
}
