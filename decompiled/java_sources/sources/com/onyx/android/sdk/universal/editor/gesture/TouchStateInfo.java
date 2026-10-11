package com.onyx.android.sdk.universal.editor.gesture;

import android.graphics.Point;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\bR\"\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\"\u0010\u0018\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\"\u0010\u001b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\"\u0010\u001e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010R\"\u0010!\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\f\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;", "", "", "resetState", "resetStateAboutScale", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "", "isScrollFinishedAtReleaseTouch", "isUserInteracting", "a", Constants.HASIDCALL_INDEX_SIG, "isLongPress", Constants.BOOLEAN_VALUE_SIG, "setLongPress", "(Z)V", "b", "isPinchZooming", "setPinchZooming", "c", "isScrolling", "setScrolling", "d", "isTouch", "setTouch", "e", "isShapeTouchEnabled", "setShapeTouchEnabled", C6997f.f39671c, "isTextSelectionTouchEnabled", "setTextSelectionTouchEnabled", C6998g.f39679a, "isStylusLongPress", "setStylusLongPress", "Landroid/graphics/Point;", C6999h.f39688c, "Landroid/graphics/Point;", "getStartPoint", "()Landroid/graphics/Point;", "setStartPoint", "(Landroid/graphics/Point;)V", "startPoint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TouchStateInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isLongPress;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isPinchZooming;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isScrolling;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isTouch;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isStylusLongPress;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isShapeTouchEnabled = true;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isTextSelectionTouchEnabled = true;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Point startPoint = new Point();

    @NotNull
    public final Point getStartPoint() {
        return this.startPoint;
    }

    /* renamed from: isLongPress, reason: from getter */
    public final boolean getIsLongPress() {
        return this.isLongPress;
    }

    /* renamed from: isPinchZooming, reason: from getter */
    public final boolean getIsPinchZooming() {
        return this.isPinchZooming;
    }

    public final boolean isScrollFinishedAtReleaseTouch() {
        return (this.isLongPress || !this.isScrolling || this.isPinchZooming) ? false : true;
    }

    /* renamed from: isScrolling, reason: from getter */
    public final boolean getIsScrolling() {
        return this.isScrolling;
    }

    /* renamed from: isShapeTouchEnabled, reason: from getter */
    public final boolean getIsShapeTouchEnabled() {
        return this.isShapeTouchEnabled;
    }

    /* renamed from: isStylusLongPress, reason: from getter */
    public final boolean getIsStylusLongPress() {
        return this.isStylusLongPress;
    }

    /* renamed from: isTextSelectionTouchEnabled, reason: from getter */
    public final boolean getIsTextSelectionTouchEnabled() {
        return this.isTextSelectionTouchEnabled;
    }

    /* renamed from: isTouch, reason: from getter */
    public final boolean getIsTouch() {
        return this.isTouch;
    }

    public final boolean isUserInteracting() {
        return this.isScrolling || this.isPinchZooming || this.isTouch;
    }

    public final void onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (MotionEventKt.isDownAction(event)) {
            this.isTouch = true;
        } else if (MotionEventKt.isUpAction(event) || MotionEventKt.isCancelAction(event)) {
            this.isTouch = false;
        }
    }

    public final void resetState() {
        this.isLongPress = false;
        this.isScrolling = false;
        this.isPinchZooming = false;
        this.isTouch = false;
    }

    public final void resetStateAboutScale() {
        this.isScrolling = false;
        this.isPinchZooming = false;
    }

    public final void setLongPress(boolean z) {
        this.isLongPress = z;
    }

    public final void setPinchZooming(boolean z) {
        this.isPinchZooming = z;
    }

    public final void setScrolling(boolean z) {
        this.isScrolling = z;
    }

    public final void setShapeTouchEnabled(boolean z) {
        this.isShapeTouchEnabled = z;
    }

    public final void setStartPoint(@NotNull Point point) {
        Intrinsics.checkNotNullParameter(point, "<set-?>");
        this.startPoint = point;
    }

    public final void setStylusLongPress(boolean z) {
        this.isStylusLongPress = z;
    }

    public final void setTextSelectionTouchEnabled(boolean z) {
        this.isTextSelectionTouchEnabled = z;
    }

    public final void setTouch(boolean z) {
        this.isTouch = z;
    }
}
