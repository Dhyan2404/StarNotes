package com.onyx.android.sdk.replicator.note.data.shape;

import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/StashShapeBean;", "", "shapeModel", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "touchPointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "getShapeModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "getTouchPointList", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class StashShapeBean {

    @NotNull
    private final ShapeModel shapeModel;

    @NotNull
    private final TouchPointList touchPointList;

    public StashShapeBean(@NotNull ShapeModel shapeModel, @NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        this.shapeModel = shapeModel;
        this.touchPointList = touchPointList;
    }

    public static /* synthetic */ StashShapeBean copy$default(StashShapeBean stashShapeBean, ShapeModel shapeModel, TouchPointList touchPointList, int i, Object obj) {
        if ((i & 1) != 0) {
            shapeModel = stashShapeBean.shapeModel;
        }
        if ((i & 2) != 0) {
            touchPointList = stashShapeBean.touchPointList;
        }
        return stashShapeBean.copy(shapeModel, touchPointList);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ShapeModel getShapeModel() {
        return this.shapeModel;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final TouchPointList getTouchPointList() {
        return this.touchPointList;
    }

    @NotNull
    public final StashShapeBean copy(@NotNull ShapeModel shapeModel, @NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        return new StashShapeBean(shapeModel, touchPointList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StashShapeBean)) {
            return false;
        }
        StashShapeBean stashShapeBean = (StashShapeBean) other;
        return Intrinsics.areEqual(this.shapeModel, stashShapeBean.shapeModel) && Intrinsics.areEqual(this.touchPointList, stashShapeBean.touchPointList);
    }

    @NotNull
    public final ShapeModel getShapeModel() {
        return this.shapeModel;
    }

    @NotNull
    public final TouchPointList getTouchPointList() {
        return this.touchPointList;
    }

    public int hashCode() {
        return (this.shapeModel.hashCode() * 31) + this.touchPointList.hashCode();
    }

    @NotNull
    public String toString() {
        return "StashShapeBean(shapeModel=" + this.shapeModel + ", touchPointList=" + this.touchPointList + ')';
    }
}
