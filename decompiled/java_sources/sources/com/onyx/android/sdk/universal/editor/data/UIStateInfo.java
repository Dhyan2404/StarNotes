package com.onyx.android.sdk.universal.editor.data;

import android.util.Log;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000+\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u001d\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0006\"\u0004\b\r\u0010\bR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0006\"\u0004\b\u000f\u0010\bR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\bR\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR\u0010\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001e¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;", "", "()V", "animatingStartSplitScreen", "", "getAnimatingStartSplitScreen", Constants.BOOLEAN_VALUE_SIG, "setAnimatingStartSplitScreen", "(Z)V", "animationUpdateEditorView", "getAnimationUpdateEditorView", "setAnimationUpdateEditorView", "isClosingDocumentAfterExitSplitScreen", "setClosingDocumentAfterExitSplitScreen", "isDragAppendingPage", "setDragAppendingPage", "isDragStateIdle", "setDragStateIdle", "isEnabledAbortFlingAnimation", "setEnabledAbortFlingAnimation", "isEnabledTouch", "value", "isFling", "setFling", "isPageScrollerScrolling", "setPageScrollerScrolling", "isScaleEnding", "setScaleEnding", "resetDragStateIdleObserver", "com/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1", "Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;", "delayResetDragStateIdleIf", "", "isConsumeTouchEventWhenDisableTouchEvent", "isEnabledEditShape", "isEnabledTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "isEnabledTouchEventByUIState", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UIStateInfo {
    private boolean animatingStartSplitScreen;
    private boolean animationUpdateEditorView;
    private boolean isClosingDocumentAfterExitSplitScreen;
    private boolean isDragAppendingPage;
    private boolean isFling;
    private boolean isPageScrollerScrolling;
    private boolean isScaleEnding;
    private boolean isEnabledAbortFlingAnimation = true;
    private boolean isDragStateIdle = true;
    private boolean isEnabledTouch = true;

    @NotNull
    private final UIStateInfo$resetDragStateIdleObserver$1 resetDragStateIdleObserver = new RxTimerUtil.TimerObserver() { // from class: com.onyx.android.sdk.universal.editor.data.UIStateInfo$resetDragStateIdleObserver$1
        @Override // io.reactivex.rxjava3.core.Observer
        public /* bridge */ /* synthetic */ void onNext(Long l) {
            onNext(l.longValue());
        }

        public void onNext(long t) {
            Debug debug = Debug.INSTANCE;
            UIStateInfo uIStateInfo = UIStateInfo.this;
            if (debug.getDebug()) {
                Log.d(debug.getTAG(), "onViewDragStateChanged, ensure `isDragStateIdle=true` success, old = " + uIStateInfo.getIsDragStateIdle());
            }
            UIStateInfo.this.setDragStateIdle(true);
        }
    };

    public final void delayResetDragStateIdleIf() {
        if (this.isDragStateIdle) {
            return;
        }
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.resetDragStateIdleObserver);
        rxTimerUtil.shortTimer(this.resetDragStateIdleObserver);
    }

    public final boolean getAnimatingStartSplitScreen() {
        return this.animatingStartSplitScreen;
    }

    public final boolean getAnimationUpdateEditorView() {
        return this.animationUpdateEditorView;
    }

    /* renamed from: isClosingDocumentAfterExitSplitScreen, reason: from getter */
    public final boolean getIsClosingDocumentAfterExitSplitScreen() {
        return this.isClosingDocumentAfterExitSplitScreen;
    }

    public final boolean isConsumeTouchEventWhenDisableTouchEvent() {
        return true;
    }

    /* renamed from: isDragAppendingPage, reason: from getter */
    public final boolean getIsDragAppendingPage() {
        return this.isDragAppendingPage;
    }

    /* renamed from: isDragStateIdle, reason: from getter */
    public final boolean getIsDragStateIdle() {
        return this.isDragStateIdle;
    }

    /* renamed from: isEnabledAbortFlingAnimation, reason: from getter */
    public final boolean getIsEnabledAbortFlingAnimation() {
        return this.isEnabledAbortFlingAnimation;
    }

    public final boolean isEnabledEditShape() {
        return !this.isScaleEnding;
    }

    public final boolean isEnabledTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (MotionEventKt.isDoneAction(event)) {
            boolean z = this.isEnabledTouch;
            this.isEnabledTouch = true;
            return z;
        }
        if (isEnabledTouchEventByUIState()) {
            return this.isEnabledTouch;
        }
        this.isEnabledTouch = false;
        return false;
    }

    public final boolean isEnabledTouchEventByUIState() {
        return (this.animationUpdateEditorView || !this.isEnabledAbortFlingAnimation || this.isPageScrollerScrolling || !this.isDragStateIdle || this.isDragAppendingPage) ? false : true;
    }

    /* renamed from: isFling, reason: from getter */
    public final boolean getIsFling() {
        return this.isFling;
    }

    /* renamed from: isPageScrollerScrolling, reason: from getter */
    public final boolean getIsPageScrollerScrolling() {
        return this.isPageScrollerScrolling;
    }

    /* renamed from: isScaleEnding, reason: from getter */
    public final boolean getIsScaleEnding() {
        return this.isScaleEnding;
    }

    public final void setAnimatingStartSplitScreen(boolean z) {
        this.animatingStartSplitScreen = z;
    }

    public final void setAnimationUpdateEditorView(boolean z) {
        this.animationUpdateEditorView = z;
    }

    public final void setClosingDocumentAfterExitSplitScreen(boolean z) {
        this.isClosingDocumentAfterExitSplitScreen = z;
    }

    public final void setDragAppendingPage(boolean z) {
        this.isDragAppendingPage = z;
    }

    public final void setDragStateIdle(boolean z) {
        this.isDragStateIdle = z;
    }

    public final void setEnabledAbortFlingAnimation(boolean z) {
        this.isEnabledAbortFlingAnimation = z;
    }

    public final void setFling(boolean z) {
        this.isFling = z;
        if (z) {
            return;
        }
        this.isEnabledAbortFlingAnimation = true;
    }

    public final void setPageScrollerScrolling(boolean z) {
        this.isPageScrollerScrolling = z;
    }

    public final void setScaleEnding(boolean z) {
        this.isScaleEnding = z;
    }
}
