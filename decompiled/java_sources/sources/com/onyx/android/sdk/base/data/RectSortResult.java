package com.onyx.android.sdk.base.data;

import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/RectSortResult;", "", "boundingRectList", "", "Landroid/graphics/RectF;", "sortResultList", "(Ljava/util/List;Ljava/util/List;)V", "getBoundingRectList", "()Ljava/util/List;", "setBoundingRectList", "(Ljava/util/List;)V", "getSortResultList", "setSortResultList", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class RectSortResult {

    @Nullable
    private List<? extends RectF> boundingRectList;

    @Nullable
    private List<? extends RectF> sortResultList;

    /* JADX WARN: Multi-variable type inference failed */
    public RectSortResult() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RectSortResult copy$default(RectSortResult rectSortResult, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = rectSortResult.boundingRectList;
        }
        if ((i & 2) != 0) {
            list2 = rectSortResult.sortResultList;
        }
        return rectSortResult.copy(list, list2);
    }

    @Nullable
    public final List<RectF> component1() {
        return this.boundingRectList;
    }

    @Nullable
    public final List<RectF> component2() {
        return this.sortResultList;
    }

    @NotNull
    public final RectSortResult copy(@Nullable List<? extends RectF> boundingRectList, @Nullable List<? extends RectF> sortResultList) {
        return new RectSortResult(boundingRectList, sortResultList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RectSortResult)) {
            return false;
        }
        RectSortResult rectSortResult = (RectSortResult) other;
        return Intrinsics.areEqual(this.boundingRectList, rectSortResult.boundingRectList) && Intrinsics.areEqual(this.sortResultList, rectSortResult.sortResultList);
    }

    @Nullable
    public final List<RectF> getBoundingRectList() {
        return this.boundingRectList;
    }

    @Nullable
    public final List<RectF> getSortResultList() {
        return this.sortResultList;
    }

    public int hashCode() {
        List<? extends RectF> list = this.boundingRectList;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<? extends RectF> list2 = this.sortResultList;
        return hashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setBoundingRectList(@Nullable List<? extends RectF> list) {
        this.boundingRectList = list;
    }

    public final void setSortResultList(@Nullable List<? extends RectF> list) {
        this.sortResultList = list;
    }

    @NotNull
    public String toString() {
        return "RectSortResult(boundingRectList=" + this.boundingRectList + ", sortResultList=" + this.sortResultList + ')';
    }

    public RectSortResult(@Nullable List<? extends RectF> list, @Nullable List<? extends RectF> list2) {
        this.boundingRectList = list;
        this.sortResultList = list2;
    }

    public /* synthetic */ RectSortResult(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2);
    }
}
