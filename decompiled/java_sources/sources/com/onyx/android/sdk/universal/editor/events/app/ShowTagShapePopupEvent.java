package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ShowTagShapePopupEvent;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component1", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component2", "boxInfo", "shape", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ShowTagShapePopupEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxInfo boxInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Shape shape;

    public ShowTagShapePopupEvent(@NotNull BoxInfo boxInfo, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.boxInfo = boxInfo;
        this.shape = shape;
    }

    public static /* synthetic */ ShowTagShapePopupEvent copy$default(ShowTagShapePopupEvent showTagShapePopupEvent, BoxInfo boxInfo, Shape shape, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = showTagShapePopupEvent.boxInfo;
        }
        if ((i & 2) != 0) {
            shape = showTagShapePopupEvent.shape;
        }
        return showTagShapePopupEvent.copy(boxInfo, shape);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final ShowTagShapePopupEvent copy(@NotNull BoxInfo boxInfo, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return new ShowTagShapePopupEvent(boxInfo, shape);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShowTagShapePopupEvent)) {
            return false;
        }
        ShowTagShapePopupEvent showTagShapePopupEvent = (ShowTagShapePopupEvent) other;
        return Intrinsics.areEqual(this.boxInfo, showTagShapePopupEvent.boxInfo) && Intrinsics.areEqual(this.shape, showTagShapePopupEvent.shape);
    }

    @NotNull
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    public int hashCode() {
        return (this.boxInfo.hashCode() * 31) + this.shape.hashCode();
    }

    @NotNull
    public String toString() {
        return "ShowTagShapePopupEvent(boxInfo=" + this.boxInfo + ", shape=" + this.shape + ')';
    }
}
