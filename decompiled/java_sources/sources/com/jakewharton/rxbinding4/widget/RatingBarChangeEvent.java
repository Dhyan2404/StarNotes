package com.jakewharton.rxbinding4.widget;

import android.widget.RatingBar;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;", "", "Landroid/widget/RatingBar;", "component1", "", "component2", "", "component3", "view", "rating", "fromUser", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Landroid/widget/RatingBar;", "getView", "()Landroid/widget/RatingBar;", "b", "F", "getRating", "()F", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getFromUser", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/RatingBar;FZ)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class RatingBarChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final RatingBar view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final float rating;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean fromUser;

    public RatingBarChangeEvent(@NotNull RatingBar view, float f, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.rating = f;
        this.fromUser = z;
    }

    public static /* synthetic */ RatingBarChangeEvent copy$default(RatingBarChangeEvent ratingBarChangeEvent, RatingBar ratingBar, float f, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            ratingBar = ratingBarChangeEvent.view;
        }
        if ((i & 2) != 0) {
            f = ratingBarChangeEvent.rating;
        }
        if ((i & 4) != 0) {
            z = ratingBarChangeEvent.fromUser;
        }
        return ratingBarChangeEvent.copy(ratingBar, f, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RatingBar getView() {
        return this.view;
    }

    /* renamed from: component2, reason: from getter */
    public final float getRating() {
        return this.rating;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getFromUser() {
        return this.fromUser;
    }

    @NotNull
    public final RatingBarChangeEvent copy(@NotNull RatingBar view, float rating, boolean fromUser) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new RatingBarChangeEvent(view, rating, fromUser);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RatingBarChangeEvent)) {
            return false;
        }
        RatingBarChangeEvent ratingBarChangeEvent = (RatingBarChangeEvent) other;
        return Intrinsics.areEqual(this.view, ratingBarChangeEvent.view) && Float.compare(this.rating, ratingBarChangeEvent.rating) == 0 && this.fromUser == ratingBarChangeEvent.fromUser;
    }

    public final boolean getFromUser() {
        return this.fromUser;
    }

    public final float getRating() {
        return this.rating;
    }

    @NotNull
    public final RatingBar getView() {
        return this.view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        RatingBar ratingBar = this.view;
        int hashCode = (((ratingBar != null ? ratingBar.hashCode() : 0) * 31) + Float.hashCode(this.rating)) * 31;
        boolean z = this.fromUser;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "RatingBarChangeEvent(view=" + this.view + ", rating=" + this.rating + ", fromUser=" + this.fromUser + MotionUtils.f31762d;
    }
}
