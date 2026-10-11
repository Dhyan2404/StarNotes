package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b&\u0010'J\r\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J7\u0010\u000e\u001a\u00020\u00002\f\b\u0002\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003R\u001e\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;", "Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;", "Landroid/widget/AdapterView;", "component1", "Landroid/view/View;", "component2", "", "component3", "", "component4", "view", "selectedView", "position", "id", "copy", "", "toString", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/AdapterView;", "getView", "()Landroid/widget/AdapterView;", "b", "Landroid/view/View;", "getSelectedView", "()Landroid/view/View;", "c", "I", "getPosition", "()I", "d", "J", "getId", "()J", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class AdapterViewItemSelectionEvent extends AdapterViewSelectionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AdapterView<?> view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final View selectedView;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int position;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final long id;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdapterViewItemSelectionEvent(@NotNull AdapterView<?> view, @Nullable View view2, int i, long j) {
        super(null);
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.selectedView = view2;
        this.position = i;
        this.id = j;
    }

    public static /* synthetic */ AdapterViewItemSelectionEvent copy$default(AdapterViewItemSelectionEvent adapterViewItemSelectionEvent, AdapterView adapterView, View view, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            adapterView = adapterViewItemSelectionEvent.getView();
        }
        if ((i2 & 2) != 0) {
            view = adapterViewItemSelectionEvent.selectedView;
        }
        View view2 = view;
        if ((i2 & 4) != 0) {
            i = adapterViewItemSelectionEvent.position;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            j = adapterViewItemSelectionEvent.id;
        }
        return adapterViewItemSelectionEvent.copy(adapterView, view2, i3, j);
    }

    @NotNull
    public final AdapterView<?> component1() {
        return getView();
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final View getSelectedView() {
        return this.selectedView;
    }

    /* renamed from: component3, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    /* renamed from: component4, reason: from getter */
    public final long getId() {
        return this.id;
    }

    @NotNull
    public final AdapterViewItemSelectionEvent copy(@NotNull AdapterView<?> view, @Nullable View selectedView, int position, long id) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new AdapterViewItemSelectionEvent(view, selectedView, position, id);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdapterViewItemSelectionEvent)) {
            return false;
        }
        AdapterViewItemSelectionEvent adapterViewItemSelectionEvent = (AdapterViewItemSelectionEvent) other;
        return Intrinsics.areEqual(getView(), adapterViewItemSelectionEvent.getView()) && Intrinsics.areEqual(this.selectedView, adapterViewItemSelectionEvent.selectedView) && this.position == adapterViewItemSelectionEvent.position && this.id == adapterViewItemSelectionEvent.id;
    }

    public final long getId() {
        return this.id;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final View getSelectedView() {
        return this.selectedView;
    }

    @Override // com.jakewharton.rxbinding4.widget.AdapterViewSelectionEvent
    @NotNull
    public AdapterView<?> getView() {
        return this.view;
    }

    public int hashCode() {
        AdapterView<?> view = getView();
        int hashCode = (view != null ? view.hashCode() : 0) * 31;
        View view2 = this.selectedView;
        return ((((hashCode + (view2 != null ? view2.hashCode() : 0)) * 31) + Integer.hashCode(this.position)) * 31) + Long.hashCode(this.id);
    }

    @NotNull
    public String toString() {
        return "AdapterViewItemSelectionEvent(view=" + getView() + ", selectedView=" + this.selectedView + ", position=" + this.position + ", id=" + this.id + MotionUtils.f31762d;
    }
}
