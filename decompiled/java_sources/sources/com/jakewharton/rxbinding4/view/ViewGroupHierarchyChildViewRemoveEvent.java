package com.jakewharton.rxbinding4.view;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003R\u001a\u0010\u0006\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;", "Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChangeEvent;", "Landroid/view/ViewGroup;", "component1", "Landroid/view/View;", "component2", "view", "child", "copy", "", "toString", "", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/view/ViewGroup;", "getView", "()Landroid/view/ViewGroup;", "b", "Landroid/view/View;", "getChild", "()Landroid/view/View;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;Landroid/view/View;)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class ViewGroupHierarchyChildViewRemoveEvent extends ViewGroupHierarchyChangeEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ViewGroup view;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final View child;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewGroupHierarchyChildViewRemoveEvent(@NotNull ViewGroup view, @NotNull View child) {
        super(null);
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(child, "child");
        this.view = view;
        this.child = child;
    }

    public static /* synthetic */ ViewGroupHierarchyChildViewRemoveEvent copy$default(ViewGroupHierarchyChildViewRemoveEvent viewGroupHierarchyChildViewRemoveEvent, ViewGroup viewGroup, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            viewGroup = viewGroupHierarchyChildViewRemoveEvent.getView();
        }
        if ((i & 2) != 0) {
            view = viewGroupHierarchyChildViewRemoveEvent.getChild();
        }
        return viewGroupHierarchyChildViewRemoveEvent.copy(viewGroup, view);
    }

    @NotNull
    public final ViewGroup component1() {
        return getView();
    }

    @NotNull
    public final View component2() {
        return getChild();
    }

    @NotNull
    public final ViewGroupHierarchyChildViewRemoveEvent copy(@NotNull ViewGroup view, @NotNull View child) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(child, "child");
        return new ViewGroupHierarchyChildViewRemoveEvent(view, child);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewGroupHierarchyChildViewRemoveEvent)) {
            return false;
        }
        ViewGroupHierarchyChildViewRemoveEvent viewGroupHierarchyChildViewRemoveEvent = (ViewGroupHierarchyChildViewRemoveEvent) other;
        return Intrinsics.areEqual(getView(), viewGroupHierarchyChildViewRemoveEvent.getView()) && Intrinsics.areEqual(getChild(), viewGroupHierarchyChildViewRemoveEvent.getChild());
    }

    @Override // com.jakewharton.rxbinding4.view.ViewGroupHierarchyChangeEvent
    @NotNull
    public View getChild() {
        return this.child;
    }

    @Override // com.jakewharton.rxbinding4.view.ViewGroupHierarchyChangeEvent
    @NotNull
    public ViewGroup getView() {
        return this.view;
    }

    public int hashCode() {
        ViewGroup view = getView();
        int hashCode = (view != null ? view.hashCode() : 0) * 31;
        View child = getChild();
        return hashCode + (child != null ? child.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "ViewGroupHierarchyChildViewRemoveEvent(view=" + getView() + ", child=" + getChild() + MotionUtils.f31762d;
    }
}
