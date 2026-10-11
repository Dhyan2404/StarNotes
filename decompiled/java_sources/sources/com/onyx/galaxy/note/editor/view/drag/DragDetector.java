package com.onyx.galaxy.note.editor.view.drag;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.rxgesture.VelocityTrackerWrapper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0012\u0006\u00106\u001a\u000205¢\u0006\u0004\b7\u00108J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bJ\u001c\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000eJ\b\u0010\u0011\u001a\u00020\u0006H\u0002J\u0016\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\"\u0010(\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001b\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u001b\u001a\u0004\b*\u0010%\"\u0004\b+\u0010'R\"\u00100\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u001b\u001a\u0004\b.\u0010%\"\u0004\b/\u0010'R\"\u00104\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u001b\u001a\u0004\b2\u0010%\"\u0004\b3\u0010'¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;", "", "", "orientation", "", "setOrientation", "", "isVerticalOrientation", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onDown", "onMove", "onUp", "motionEvent", "Lkotlin/Function0;", "quickDetector", "detect", "a", IStyleSheet.CLASS_SELECTOR, "d", "b", "c", "I", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "touchVelocityTracker", "touchSlop", Constants.HASIDCALL_INDEX_SIG, "touchDown", "", "e", "F", "downX", C6997f.f39671c, "downY", C6998g.f39679a, "getHasMoved", Constants.BOOLEAN_VALUE_SIG, "setHasMoved", "(Z)V", "hasMoved", C6999h.f39688c, "getTouchSlopCanDrag", "setTouchSlopCanDrag", "touchSlopCanDrag", "i", "getQuickDetect", "setQuickDetect", "quickDetect", "j", "getEnableDetect", "setEnableDetect", "enableDetect", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DragDetector {

    /* renamed from: k */
    public static final double f59963k = 20.0d;

    /* renamed from: l */
    public static final int f59964l = 3500;

    /* renamed from: a, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final VelocityTrackerWrapper touchVelocityTracker;

    /* renamed from: c, reason: from kotlin metadata */
    public int touchSlop;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean touchDown;

    /* renamed from: e, reason: from kotlin metadata */
    public float downX;

    /* renamed from: f, reason: from kotlin metadata */
    public float downY;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean hasMoved;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean touchSlopCanDrag;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean quickDetect;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean enableDetect;

    public DragDetector(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.orientation = 1;
        this.touchVelocityTracker = new VelocityTrackerWrapper();
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.enableDetect = true;
    }

    /* renamed from: a */
    public final boolean m48254a() {
        return this.enableDetect && this.touchDown && !this.touchSlopCanDrag;
    }

    /* renamed from: b */
    public final void m48255b(MotionEvent event) {
        onMove(event);
        this.touchSlopCanDrag = m48256c(event);
    }

    /* renamed from: c */
    public final boolean m48256c(MotionEvent event) {
        float first;
        float last;
        float x = event.getX() - this.downX;
        float y = event.getY() - this.downY;
        boolean isVerticalOrientation = isVerticalOrientation();
        if (!(!isVerticalOrientation ? x >= ((float) (-this.touchSlop)) : y >= ((float) (-this.touchSlop)))) {
            return false;
        }
        double abs = Math.abs(Math.toDegrees(Math.atan2(y, x)));
        if (!(!isVerticalOrientation ? !(abs >= 160.0d || abs <= 20.0d) : !(70.0d <= abs && abs <= 110.0d))) {
            return false;
        }
        float[] realtimeVelocity = this.touchVelocityTracker.getRealtimeVelocity();
        if (isVerticalOrientation) {
            last = ArraysKt___ArraysKt.last(realtimeVelocity);
            if (Math.abs(last) < 3500.0f) {
                return true;
            }
        } else {
            first = ArraysKt___ArraysKt.first(realtimeVelocity);
            if (Math.abs(first) < 3500.0f) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final void m48257d(Function0<Boolean> selector) {
        if (this.quickDetect || !this.hasMoved) {
            return;
        }
        this.quickDetect = true;
        this.enableDetect = selector.invoke().booleanValue();
    }

    public final void detect(@NotNull MotionEvent motionEvent, @NotNull Function0<Boolean> quickDetector) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        Intrinsics.checkNotNullParameter(quickDetector, "quickDetector");
        m48257d(quickDetector);
        if (m48254a()) {
            m48255b(motionEvent);
        }
    }

    public final boolean getEnableDetect() {
        return this.enableDetect;
    }

    public final boolean getHasMoved() {
        return this.hasMoved;
    }

    public final boolean getQuickDetect() {
        return this.quickDetect;
    }

    public final boolean getTouchSlopCanDrag() {
        return this.touchSlopCanDrag;
    }

    public final boolean isVerticalOrientation() {
        return this.orientation == 1;
    }

    public final void onDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.downX = event.getX();
        this.downY = event.getY();
        this.touchDown = true;
        this.touchSlopCanDrag = false;
        this.hasMoved = false;
        this.quickDetect = false;
        this.enableDetect = true;
        this.touchVelocityTracker.onRelease();
        this.touchVelocityTracker.onDown(event);
    }

    public final void onMove(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.hasMoved = true;
        this.touchVelocityTracker.onMove(event);
    }

    public final void onUp(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.touchVelocityTracker.onUp(event);
        this.touchVelocityTracker.onRelease();
    }

    public final void setEnableDetect(boolean z) {
        this.enableDetect = z;
    }

    public final void setHasMoved(boolean z) {
        this.hasMoved = z;
    }

    public final void setOrientation(int orientation) {
        this.orientation = orientation;
    }

    public final void setQuickDetect(boolean z) {
        this.quickDetect = z;
    }

    public final void setTouchSlopCanDrag(boolean z) {
        this.touchSlopCanDrag = z;
    }
}
