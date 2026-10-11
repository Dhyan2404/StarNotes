package com.jakewharton.rxbinding4.view;

import android.view.View;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b3\u00104J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\n\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0004HÆ\u0003J\t\u0010\f\u001a\u00020\u0004HÆ\u0003Jc\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b%\u0010\"\u001a\u0004\b&\u0010$R\u0017\u0010\u0010\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010$R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b)\u0010\"\u001a\u0004\b*\u0010$R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b+\u0010\"\u001a\u0004\b,\u0010$R\u0017\u0010\u0013\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b-\u0010\"\u001a\u0004\b.\u0010$R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b/\u0010\"\u001a\u0004\b0\u0010$R\u0017\u0010\u0015\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b1\u0010\"\u001a\u0004\b2\u0010$¨\u00065"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;", "", "Landroid/view/View;", "component1", "", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "view", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/view/View;", "getView", "()Landroid/view/View;", "b", "I", "getLeft", "()I", "c", "getTop", "d", "getRight", "e", "getBottom", C6997f.f39671c, "getOldLeft", C6998g.f39679a, "getOldTop", C6999h.f39688c, "getOldRight", "i", "getOldBottom", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;IIIIIIII)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class ViewLayoutChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final View view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int left;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int top;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int right;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int bottom;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final int oldLeft;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public final int oldTop;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public final int oldRight;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public final int oldBottom;

    public ViewLayoutChangeEvent(@NotNull View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
        this.oldLeft = i5;
        this.oldTop = i6;
        this.oldRight = i7;
        this.oldBottom = i8;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final View getView() {
        return this.view;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLeft() {
        return this.left;
    }

    /* renamed from: component3, reason: from getter */
    public final int getTop() {
        return this.top;
    }

    /* renamed from: component4, reason: from getter */
    public final int getRight() {
        return this.right;
    }

    /* renamed from: component5, reason: from getter */
    public final int getBottom() {
        return this.bottom;
    }

    /* renamed from: component6, reason: from getter */
    public final int getOldLeft() {
        return this.oldLeft;
    }

    /* renamed from: component7, reason: from getter */
    public final int getOldTop() {
        return this.oldTop;
    }

    /* renamed from: component8, reason: from getter */
    public final int getOldRight() {
        return this.oldRight;
    }

    /* renamed from: component9, reason: from getter */
    public final int getOldBottom() {
        return this.oldBottom;
    }

    @NotNull
    public final ViewLayoutChangeEvent copy(@NotNull View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        return new ViewLayoutChangeEvent(view, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewLayoutChangeEvent)) {
            return false;
        }
        ViewLayoutChangeEvent viewLayoutChangeEvent = (ViewLayoutChangeEvent) other;
        return Intrinsics.areEqual(this.view, viewLayoutChangeEvent.view) && this.left == viewLayoutChangeEvent.left && this.top == viewLayoutChangeEvent.top && this.right == viewLayoutChangeEvent.right && this.bottom == viewLayoutChangeEvent.bottom && this.oldLeft == viewLayoutChangeEvent.oldLeft && this.oldTop == viewLayoutChangeEvent.oldTop && this.oldRight == viewLayoutChangeEvent.oldRight && this.oldBottom == viewLayoutChangeEvent.oldBottom;
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getOldBottom() {
        return this.oldBottom;
    }

    public final int getOldLeft() {
        return this.oldLeft;
    }

    public final int getOldRight() {
        return this.oldRight;
    }

    public final int getOldTop() {
        return this.oldTop;
    }

    public final int getRight() {
        return this.right;
    }

    public final int getTop() {
        return this.top;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    public int hashCode() {
        View view = this.view;
        return ((((((((((((((((view != null ? view.hashCode() : 0) * 31) + Integer.hashCode(this.left)) * 31) + Integer.hashCode(this.top)) * 31) + Integer.hashCode(this.right)) * 31) + Integer.hashCode(this.bottom)) * 31) + Integer.hashCode(this.oldLeft)) * 31) + Integer.hashCode(this.oldTop)) * 31) + Integer.hashCode(this.oldRight)) * 31) + Integer.hashCode(this.oldBottom);
    }

    @NotNull
    public String toString() {
        return "ViewLayoutChangeEvent(view=" + this.view + ", left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ", oldLeft=" + this.oldLeft + ", oldTop=" + this.oldTop + ", oldRight=" + this.oldRight + ", oldBottom=" + this.oldBottom + MotionUtils.f31762d;
    }
}
