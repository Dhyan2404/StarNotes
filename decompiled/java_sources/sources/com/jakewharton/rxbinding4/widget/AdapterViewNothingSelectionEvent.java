package com.jakewharton.rxbinding4.widget;

import android.widget.AdapterView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0003J\u0017\u0010\u0005\u001a\u00020\u00002\f\b\u0002\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001e\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/AdapterViewNothingSelectionEvent;", "Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;", "Landroid/widget/AdapterView;", "component1", "view", "copy", "", "toString", "", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/widget/AdapterView;", "getView", "()Landroid/widget/AdapterView;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/AdapterView;)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class AdapterViewNothingSelectionEvent extends AdapterViewSelectionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AdapterView<?> view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdapterViewNothingSelectionEvent(@NotNull AdapterView<?> view) {
        super(null);
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdapterViewNothingSelectionEvent copy$default(AdapterViewNothingSelectionEvent adapterViewNothingSelectionEvent, AdapterView adapterView, int i, Object obj) {
        if ((i & 1) != 0) {
            adapterView = adapterViewNothingSelectionEvent.getView();
        }
        return adapterViewNothingSelectionEvent.copy(adapterView);
    }

    @NotNull
    public final AdapterView<?> component1() {
        return getView();
    }

    @NotNull
    public final AdapterViewNothingSelectionEvent copy(@NotNull AdapterView<?> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new AdapterViewNothingSelectionEvent(view);
    }

    public boolean equals(@Nullable Object other) {
        if (this != other) {
            return (other instanceof AdapterViewNothingSelectionEvent) && Intrinsics.areEqual(getView(), ((AdapterViewNothingSelectionEvent) other).getView());
        }
        return true;
    }

    @Override // com.jakewharton.rxbinding4.widget.AdapterViewSelectionEvent
    @NotNull
    public AdapterView<?> getView() {
        return this.view;
    }

    public int hashCode() {
        AdapterView<?> view = getView();
        if (view != null) {
            return view.hashCode();
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "AdapterViewNothingSelectionEvent(view=" + getView() + MotionUtils.f31762d;
    }
}
