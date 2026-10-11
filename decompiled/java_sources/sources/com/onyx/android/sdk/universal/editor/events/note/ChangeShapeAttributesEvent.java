package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002HÆ\u0003J\u001f\u0010\u0007\u001a\u00020\u00002\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "component1", "shapeAttrPairs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/Map;", "getShapeAttrPairs", "()Ljava/util/Map;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ChangeShapeAttributesEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final Map<Shape, ShapeAttributesBean> shapeAttrPairs;

    public ChangeShapeAttributesEvent(@NotNull Map<Shape, ShapeAttributesBean> shapeAttrPairs) {
        Intrinsics.checkNotNullParameter(shapeAttrPairs, "shapeAttrPairs");
        this.shapeAttrPairs = shapeAttrPairs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChangeShapeAttributesEvent copy$default(ChangeShapeAttributesEvent changeShapeAttributesEvent, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = changeShapeAttributesEvent.shapeAttrPairs;
        }
        return changeShapeAttributesEvent.copy(map);
    }

    @NotNull
    public final Map<Shape, ShapeAttributesBean> component1() {
        return this.shapeAttrPairs;
    }

    @NotNull
    public final ChangeShapeAttributesEvent copy(@NotNull Map<Shape, ShapeAttributesBean> shapeAttrPairs) {
        Intrinsics.checkNotNullParameter(shapeAttrPairs, "shapeAttrPairs");
        return new ChangeShapeAttributesEvent(shapeAttrPairs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ChangeShapeAttributesEvent) && Intrinsics.areEqual(this.shapeAttrPairs, ((ChangeShapeAttributesEvent) other).shapeAttrPairs);
    }

    @NotNull
    public final Map<Shape, ShapeAttributesBean> getShapeAttrPairs() {
        return this.shapeAttrPairs;
    }

    public int hashCode() {
        return this.shapeAttrPairs.hashCode();
    }

    @NotNull
    public String toString() {
        return "ChangeShapeAttributesEvent(shapeAttrPairs=" + this.shapeAttrPairs + ')';
    }
}
