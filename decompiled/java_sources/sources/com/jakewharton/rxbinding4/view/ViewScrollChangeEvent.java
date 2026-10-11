package com.jakewharton.rxbinding4.view;

import android.view.View;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001c¨\u0006%"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;", "", "Landroid/view/View;", "component1", "", "component2", "component3", "component4", "component5", "view", "scrollX", "scrollY", "oldScrollX", "oldScrollY", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/view/View;", "getView", "()Landroid/view/View;", "b", "I", "getScrollX", "()I", "c", "getScrollY", "d", "getOldScrollX", "e", "getOldScrollY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;IIII)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class ViewScrollChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final View view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int scrollX;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int scrollY;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int oldScrollX;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int oldScrollY;

    public ViewScrollChangeEvent(@NotNull View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.scrollX = i;
        this.scrollY = i2;
        this.oldScrollX = i3;
        this.oldScrollY = i4;
    }

    public static /* synthetic */ ViewScrollChangeEvent copy$default(ViewScrollChangeEvent viewScrollChangeEvent, View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            view = viewScrollChangeEvent.view;
        }
        if ((i5 & 2) != 0) {
            i = viewScrollChangeEvent.scrollX;
        }
        int i6 = i;
        if ((i5 & 4) != 0) {
            i2 = viewScrollChangeEvent.scrollY;
        }
        int i7 = i2;
        if ((i5 & 8) != 0) {
            i3 = viewScrollChangeEvent.oldScrollX;
        }
        int i8 = i3;
        if ((i5 & 16) != 0) {
            i4 = viewScrollChangeEvent.oldScrollY;
        }
        return viewScrollChangeEvent.copy(view, i6, i7, i8, i4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final View getView() {
        return this.view;
    }

    /* renamed from: component2, reason: from getter */
    public final int getScrollX() {
        return this.scrollX;
    }

    /* renamed from: component3, reason: from getter */
    public final int getScrollY() {
        return this.scrollY;
    }

    /* renamed from: component4, reason: from getter */
    public final int getOldScrollX() {
        return this.oldScrollX;
    }

    /* renamed from: component5, reason: from getter */
    public final int getOldScrollY() {
        return this.oldScrollY;
    }

    @NotNull
    public final ViewScrollChangeEvent copy(@NotNull View view, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new ViewScrollChangeEvent(view, scrollX, scrollY, oldScrollX, oldScrollY);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewScrollChangeEvent)) {
            return false;
        }
        ViewScrollChangeEvent viewScrollChangeEvent = (ViewScrollChangeEvent) other;
        return Intrinsics.areEqual(this.view, viewScrollChangeEvent.view) && this.scrollX == viewScrollChangeEvent.scrollX && this.scrollY == viewScrollChangeEvent.scrollY && this.oldScrollX == viewScrollChangeEvent.oldScrollX && this.oldScrollY == viewScrollChangeEvent.oldScrollY;
    }

    public final int getOldScrollX() {
        return this.oldScrollX;
    }

    public final int getOldScrollY() {
        return this.oldScrollY;
    }

    public final int getScrollX() {
        return this.scrollX;
    }

    public final int getScrollY() {
        return this.scrollY;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    public int hashCode() {
        View view = this.view;
        return ((((((((view != null ? view.hashCode() : 0) * 31) + Integer.hashCode(this.scrollX)) * 31) + Integer.hashCode(this.scrollY)) * 31) + Integer.hashCode(this.oldScrollX)) * 31) + Integer.hashCode(this.oldScrollY);
    }

    @NotNull
    public String toString() {
        return "ViewScrollChangeEvent(view=" + this.view + ", scrollX=" + this.scrollX + ", scrollY=" + this.scrollY + ", oldScrollX=" + this.oldScrollX + ", oldScrollY=" + this.oldScrollY + MotionUtils.f31762d;
    }
}
