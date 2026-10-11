package com.jakewharton.rxbinding4.widget;

import android.widget.AbsListView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001c¨\u0006%"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/AbsListViewScrollEvent;", "", "Landroid/widget/AbsListView;", "component1", "", "component2", "component3", "component4", "component5", "view", "scrollState", "firstVisibleItem", "visibleItemCount", "totalItemCount", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/AbsListView;", "getView", "()Landroid/widget/AbsListView;", "b", "I", "getScrollState", "()I", "c", "getFirstVisibleItem", "d", "getVisibleItemCount", "e", "getTotalItemCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/AbsListView;IIII)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class AbsListViewScrollEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final AbsListView view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int scrollState;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int firstVisibleItem;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int visibleItemCount;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int totalItemCount;

    public AbsListViewScrollEvent(@NotNull AbsListView view, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.scrollState = i;
        this.firstVisibleItem = i2;
        this.visibleItemCount = i3;
        this.totalItemCount = i4;
    }

    public static /* synthetic */ AbsListViewScrollEvent copy$default(AbsListViewScrollEvent absListViewScrollEvent, AbsListView absListView, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            absListView = absListViewScrollEvent.view;
        }
        if ((i5 & 2) != 0) {
            i = absListViewScrollEvent.scrollState;
        }
        int i6 = i;
        if ((i5 & 4) != 0) {
            i2 = absListViewScrollEvent.firstVisibleItem;
        }
        int i7 = i2;
        if ((i5 & 8) != 0) {
            i3 = absListViewScrollEvent.visibleItemCount;
        }
        int i8 = i3;
        if ((i5 & 16) != 0) {
            i4 = absListViewScrollEvent.totalItemCount;
        }
        return absListViewScrollEvent.copy(absListView, i6, i7, i8, i4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final AbsListView getView() {
        return this.view;
    }

    /* renamed from: component2, reason: from getter */
    public final int getScrollState() {
        return this.scrollState;
    }

    /* renamed from: component3, reason: from getter */
    public final int getFirstVisibleItem() {
        return this.firstVisibleItem;
    }

    /* renamed from: component4, reason: from getter */
    public final int getVisibleItemCount() {
        return this.visibleItemCount;
    }

    /* renamed from: component5, reason: from getter */
    public final int getTotalItemCount() {
        return this.totalItemCount;
    }

    @NotNull
    public final AbsListViewScrollEvent copy(@NotNull AbsListView view, int scrollState, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new AbsListViewScrollEvent(view, scrollState, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AbsListViewScrollEvent)) {
            return false;
        }
        AbsListViewScrollEvent absListViewScrollEvent = (AbsListViewScrollEvent) other;
        return Intrinsics.areEqual(this.view, absListViewScrollEvent.view) && this.scrollState == absListViewScrollEvent.scrollState && this.firstVisibleItem == absListViewScrollEvent.firstVisibleItem && this.visibleItemCount == absListViewScrollEvent.visibleItemCount && this.totalItemCount == absListViewScrollEvent.totalItemCount;
    }

    public final int getFirstVisibleItem() {
        return this.firstVisibleItem;
    }

    public final int getScrollState() {
        return this.scrollState;
    }

    public final int getTotalItemCount() {
        return this.totalItemCount;
    }

    @NotNull
    public final AbsListView getView() {
        return this.view;
    }

    public final int getVisibleItemCount() {
        return this.visibleItemCount;
    }

    public int hashCode() {
        AbsListView absListView = this.view;
        return ((((((((absListView != null ? absListView.hashCode() : 0) * 31) + Integer.hashCode(this.scrollState)) * 31) + Integer.hashCode(this.firstVisibleItem)) * 31) + Integer.hashCode(this.visibleItemCount)) * 31) + Integer.hashCode(this.totalItemCount);
    }

    @NotNull
    public String toString() {
        return "AbsListViewScrollEvent(view=" + this.view + ", scrollState=" + this.scrollState + ", firstVisibleItem=" + this.firstVisibleItem + ", visibleItemCount=" + this.visibleItemCount + ", totalItemCount=" + this.totalItemCount + MotionUtils.f31762d;
    }
}
