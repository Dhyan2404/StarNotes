package com.onyx.android.sdk.hwr.utils;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0006\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010!\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\u001c¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;", "", "", "hasSingleArrow", "hasDoubleArrow", "a", Constants.HASIDCALL_INDEX_SIG, "getHasStartArrow", Constants.BOOLEAN_VALUE_SIG, "setHasStartArrow", "(Z)V", "hasStartArrow", "b", "getHasEndArrow", "setHasEndArrow", "hasEndArrow", "c", "isMainSegmentStraight", "setMainSegmentStraight", "d", "isMainSegmentEnoughLong", "setMainSegmentEnoughLong", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "e", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getCenterPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCenterPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "centerPoint", C6997f.f39671c, "getStartArrowPoint", "setStartArrowPoint", "startArrowPoint", C6998g.f39679a, "getEndArrowPoint", "setEndArrowPoint", "endArrowPoint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ArrowFeature {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean hasStartArrow;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean hasEndArrow;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isMainSegmentStraight;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isMainSegmentEnoughLong;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public TouchPoint centerPoint;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public TouchPoint startArrowPoint;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TouchPoint endArrowPoint;

    @Nullable
    public final TouchPoint getCenterPoint() {
        return this.centerPoint;
    }

    @Nullable
    public final TouchPoint getEndArrowPoint() {
        return this.endArrowPoint;
    }

    public final boolean getHasEndArrow() {
        return this.hasEndArrow;
    }

    public final boolean getHasStartArrow() {
        return this.hasStartArrow;
    }

    @Nullable
    public final TouchPoint getStartArrowPoint() {
        return this.startArrowPoint;
    }

    public final boolean hasDoubleArrow() {
        return this.hasStartArrow && this.hasEndArrow;
    }

    public final boolean hasSingleArrow() {
        return this.hasStartArrow != this.hasEndArrow;
    }

    /* renamed from: isMainSegmentEnoughLong, reason: from getter */
    public final boolean getIsMainSegmentEnoughLong() {
        return this.isMainSegmentEnoughLong;
    }

    /* renamed from: isMainSegmentStraight, reason: from getter */
    public final boolean getIsMainSegmentStraight() {
        return this.isMainSegmentStraight;
    }

    public final void setCenterPoint(@Nullable TouchPoint touchPoint) {
        this.centerPoint = touchPoint;
    }

    public final void setEndArrowPoint(@Nullable TouchPoint touchPoint) {
        this.endArrowPoint = touchPoint;
    }

    public final void setHasEndArrow(boolean z) {
        this.hasEndArrow = z;
    }

    public final void setHasStartArrow(boolean z) {
        this.hasStartArrow = z;
    }

    public final void setMainSegmentEnoughLong(boolean z) {
        this.isMainSegmentEnoughLong = z;
    }

    public final void setMainSegmentStraight(boolean z) {
        this.isMainSegmentStraight = z;
    }

    public final void setStartArrowPoint(@Nullable TouchPoint touchPoint) {
        this.startArrowPoint = touchPoint;
    }
}
