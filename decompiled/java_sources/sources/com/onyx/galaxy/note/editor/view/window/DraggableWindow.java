package com.onyx.galaxy.note.editor.view.window;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.hjq.window.EasyWindow;
import com.hjq.window.draggable.BaseDraggable;
import com.hjq.window.draggable.MovingDraggable;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.theme.utils.SystemThemeChangedEvent;
import com.onyx.android.sdk.theme.utils.ThemeBundle;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.EditDoneEvent;
import com.onyx.android.sdk.universal.common.events.EditFocusEvent;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.editor.event.ContainerRectChangedEvent;
import com.onyx.galaxy.note.editor.event.WindowLocationChangedEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u00106\u001a\u000203\u0012\u0006\u0010:\u001a\u000207¢\u0006\u0004\ba\u0010bJ\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J#\u0010\u0012\u001a\u00020\u00002\u001b\u0010\u0011\u001a\u0017\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\u0014\u001a\u00020\u000fH\u0014J\b\u0010\u0015\u001a\u00020\u000fH\u0014J\u0016\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eH\u0016J\u0016\u0010\u0018\u001a\u00020\u000f2\f\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eH\u0016J\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\b\u0010\u001b\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0014J\u0018\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0017J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020'H\u0007J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020)H\u0007J\b\u0010+\u001a\u00020\u000fH\u0014J\u000e\u0010.\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020,J\u0006\u0010/\u001a\u00020\u000fJ\u0006\u00100\u001a\u00020\u000fJ\u0006\u00101\u001a\u00020\u000fJ\u0006\u00102\u001a\u00020\u0007R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R(\u0010A\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R$\u0010-\u001a\u00020,2\u0006\u0010B\u001a\u00020,8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0004\u0010C\u001a\u0004\bD\u0010ER$\u0010M\u001a\u0004\u0018\u00010F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0016\u0010N\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010CR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010CR\u0016\u0010Y\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010[\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010XR\u0016\u0010\\\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010OR\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;", "Lcom/hjq/window/draggable/MovingDraggable;", "Lcom/hjq/window/EasyWindow$OnWindowLifecycle;", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", C6999h.f39688c, "", "x", "y", C6998g.f39679a, "Lkotlin/Function1;", "Lcom/hjq/window/EasyWindow;", "", "Lkotlin/ExtensionFunctionType;", BreakpointSQLiteHelper.f39283i, "setupWindow", "updateWindowCoordinate", "dispatchStartDraggingCallback", "dispatchStopDraggingCallback", "easyWindow", "onWindowShow", "onWindowCancel", "getWindowWidthSafely", "getWindowHeightSafely", "isTouchMoving", "", "getMinTouchDistance", "onTouch", "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;", "onContainerRectChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;", "onEditFocusEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;", "onSystemThemeChangedEvent", "Lcom/onyx/galaxy/note/editor/event/WindowLocationChangedEvent;", "onWindowLocationChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "onScreenRotateInfluenceCoordinateChangeFinish", "Landroid/graphics/Rect;", "limitRect", "updateLimitRect", "autoAvoidanceMove", "show", "dismiss", "isShowing", "Landroid/app/Activity;", "s", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;", "t", "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;", "delegate", "u", "Lcom/hjq/window/EasyWindow;", "getWindow", "()Lcom/hjq/window/EasyWindow;", "setWindow", "(Lcom/hjq/window/EasyWindow;)V", "window", "<set-?>", "Landroid/graphics/Rect;", "getLimitRect", "()Landroid/graphics/Rect;", "", "w", Constants.TYPES_INDEX_SIG, "getLimitRectLocation", "()[I", "setLimitRectLocation", "([I)V", "limitRectLocation", "tempRect", Constants.HASIDCALL_INDEX_SIG, "interceptEvent", "Landroid/view/View$OnLayoutChangeListener;", "z", "Landroid/view/View$OnLayoutChangeListener;", "locationChangedListener", "J", "focusEditRect", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "F", "viewDownX", "Q", "viewDownY", "touchMoving", "Landroid/graphics/Point;", "k0", "Landroid/graphics/Point;", "currentPosition", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DraggableWindow extends MovingDraggable implements EasyWindow.OnWindowLifecycle {

    /* renamed from: J, reason: from kotlin metadata */
    @Nullable
    public Rect focusEditRect;

    /* renamed from: O, reason: from kotlin metadata */
    public float viewDownX;

    /* renamed from: Q, reason: from kotlin metadata */
    public float viewDownY;

    /* renamed from: Z, reason: from kotlin metadata */
    public boolean touchMoving;

    /* renamed from: k0, reason: from kotlin metadata */
    @NotNull
    public Point currentPosition;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Activity activity;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final IMovingDelegate delegate;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public EasyWindow<?> window;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public Rect limitRect;

    /* renamed from: w, reason: from kotlin metadata */
    @Nullable
    public int[] limitRectLocation;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public Rect tempRect;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean interceptEvent;

    /* renamed from: z, reason: from kotlin metadata */
    @Nullable
    public View.OnLayoutChangeListener locationChangedListener;

    public DraggableWindow(@NotNull Activity activity, @NotNull IMovingDelegate delegate) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.activity = activity;
        this.delegate = delegate;
        this.limitRect = new Rect();
        this.tempRect = new Rect();
        this.currentPosition = new Point();
    }

    public final void autoAvoidanceMove() {
        BaseDraggable draggable;
        EasyWindow<?> easyWindow = this.window;
        if (easyWindow == null || easyWindow.getWindowParams() == null) {
            return;
        }
        EasyWindow<?> easyWindow2 = this.window;
        if (((easyWindow2 == null || (draggable = easyWindow2.getDraggable()) == null) ? null : draggable.getEasyWindow()) != null) {
            Point point = this.currentPosition;
            updateWindowCoordinate(point.x, point.y);
        }
    }

    public final void dismiss() {
        View safeDecorView;
        if (isShowing()) {
            EasyWindow<?> easyWindow = this.window;
            ContextKt.unregisterWindowLocationChangeListener(easyWindow != null ? EasyWindowKt.getSafeDecorView(easyWindow) : null, this.locationChangedListener);
            EasyWindow<?> easyWindow2 = this.window;
            if (easyWindow2 != null) {
                easyWindow2.cancel();
            }
            EasyWindow<?> easyWindow3 = this.window;
            if (easyWindow3 != null && (safeDecorView = EasyWindowKt.getSafeDecorView(easyWindow3)) != null) {
                ViewKt.removeAllViews(safeDecorView);
            }
            EasyWindow<?> easyWindow4 = this.window;
            if (easyWindow4 != null) {
                easyWindow4.recycle();
            }
        }
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public void dispatchStartDraggingCallback() {
        super.dispatchStartDraggingCallback();
        this.delegate.beforeDrag();
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public void dispatchStopDraggingCallback() {
        WindowManager.LayoutParams windowParams;
        super.dispatchStopDraggingCallback();
        EasyWindow<?> easyWindow = this.window;
        if (easyWindow != null && (windowParams = easyWindow.getWindowParams()) != null) {
            this.currentPosition.set(windowParams.x, windowParams.y);
        }
        this.delegate.afterDrag();
    }

    /* renamed from: g */
    public final boolean m50332g(int x, int y) {
        if (this.limitRect.isEmpty()) {
            return false;
        }
        this.tempRect.set(x, y, getWindowWidthSafely() + x, getWindowHeightSafely() + y);
        return !this.limitRect.contains(this.tempRect);
    }

    @NotNull
    public final Rect getLimitRect() {
        return this.limitRect;
    }

    @Nullable
    public final int[] getLimitRectLocation() {
        return this.limitRectLocation;
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public float getMinTouchDistance() {
        return ViewConfiguration.get(getDecorView().getContext()).getScaledTouchSlop() * 2.0f;
    }

    @Nullable
    public final EasyWindow<?> getWindow() {
        return this.window;
    }

    public final int getWindowHeightSafely() {
        if (!isShowing() || getDecorView() == null) {
            return 0;
        }
        if (getViewHeight() != 0) {
            return getViewHeight();
        }
        if (getDecorView().getHeight() != 0) {
            return getDecorView().getHeight();
        }
        if (getDecorView().getMeasuredHeight() != 0) {
            return getDecorView().getMeasuredHeight();
        }
        View decorView = getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        return ViewKt.getMeasureSize$default(decorView, 0, 0, 3, null).getHeight();
    }

    public final int getWindowWidthSafely() {
        if (!isShowing() || getDecorView() == null) {
            return 0;
        }
        if (getViewWidth() != 0) {
            return getViewWidth();
        }
        if (getDecorView().getWidth() != 0) {
            return getDecorView().getWidth();
        }
        if (getDecorView().getMeasuredWidth() != 0) {
            return getDecorView().getMeasuredWidth();
        }
        View decorView = getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        return ViewKt.getMeasureSize$default(decorView, 0, 0, 3, null).getWidth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r1 != 3) goto L29;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m50333h(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            int r6 = r5.getWindowInvisibleWidth()
            int r0 = r5.getWindowInvisibleHeight()
            int[] r1 = r5.limitRectLocation
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L12
            r6 = r1[r3]
            r0 = r1[r2]
        L12:
            int r1 = r7.getAction()
            if (r1 == 0) goto L6f
            if (r1 == r2) goto L5f
            r4 = 2
            if (r1 == r4) goto L21
            r6 = 3
            if (r1 == r6) goto L5f
            goto L7d
        L21:
            float r1 = r7.getRawX()
            float r6 = (float) r6
            float r1 = r1 - r6
            float r6 = r7.getRawY()
            float r0 = (float) r0
            float r6 = r6 - r0
            boolean r0 = r5.touchMoving
            if (r0 == 0) goto L47
            float r7 = r5.viewDownX
            float r1 = r1 - r7
            r7 = 0
            float r0 = java.lang.Math.max(r1, r7)
            float r1 = r5.viewDownY
            float r6 = r6 - r1
            float r6 = java.lang.Math.max(r6, r7)
            r5.updateLocation(r0, r6)
            r5.dispatchExecuteDraggingCallback()
            goto L7d
        L47:
            float r6 = r5.viewDownX
            float r0 = r7.getX()
            float r1 = r5.viewDownY
            float r7 = r7.getY()
            boolean r6 = r5.isFingerMove(r6, r0, r1, r7)
            if (r6 == 0) goto L7d
            r5.touchMoving = r2
            r5.dispatchStartDraggingCallback()
            goto L7d
        L5f:
            boolean r6 = r5.touchMoving
            if (r6 == 0) goto L66
            r5.dispatchStopDraggingCallback()
        L66:
            boolean r6 = r5.touchMoving     // Catch: java.lang.Throwable -> L6b
            r5.touchMoving = r3
            return r6
        L6b:
            r6 = move-exception
            r5.touchMoving = r3
            throw r6
        L6f:
            float r6 = r7.getX()
            r5.viewDownX = r6
            float r6 = r7.getY()
            r5.viewDownY = r6
            r5.touchMoving = r3
        L7d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.window.DraggableWindow.m50333h(android.view.View, android.view.MotionEvent):boolean");
    }

    public final boolean isShowing() {
        EasyWindow<?> easyWindow = this.window;
        return easyWindow != null && easyWindow.isShowing();
    }

    @Override // com.hjq.window.draggable.MovingDraggable
    /* renamed from: isTouchMoving, reason: from getter */
    public boolean getTouchMoving() {
        return this.touchMoving;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.delegate.onConfigurationChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onContainerRectChangedEvent(@NotNull ContainerRectChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        updateLimitRect(event.getContainerRect());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEditFocusEvent(@NotNull EditFocusEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.focusEditRect = event.getEditRect();
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public void onScreenRotateInfluenceCoordinateChangeFinish() {
        super.onScreenRotateInfluenceCoordinateChangeFinish();
        this.delegate.onOrientationChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSystemThemeChangedEvent(@NotNull SystemThemeChangedEvent event) {
        View safeDecorView;
        Intrinsics.checkNotNullParameter(event, "event");
        EasyWindow<?> easyWindow = this.window;
        if (easyWindow == null || (safeDecorView = EasyWindowKt.getSafeDecorView(easyWindow)) == null) {
            return;
        }
        ThemeUtils.refreshView(safeDecorView);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        View safeDecorView;
        Intrinsics.checkNotNullParameter(event, "event");
        EasyWindow<?> easyWindow = this.window;
        if (easyWindow == null || (safeDecorView = EasyWindowKt.getSafeDecorView(easyWindow)) == null) {
            return;
        }
        ThemeUtils.refreshView(safeDecorView);
    }

    @Override // com.hjq.window.draggable.MovingDraggable, android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        Rect rect = this.focusEditRect;
        if (rect != null && RectKt.touchDownOutside(rect, event)) {
            GlobalBundle.INSTANCE.postEvent(new EditDoneEvent());
            this.focusEditRect = null;
            return false;
        }
        if (event.getAction() == 0) {
            this.interceptEvent = false;
        }
        if (!this.delegate.onInterceptTouchEvent(event)) {
            return !this.interceptEvent && m50333h(v, event);
        }
        this.interceptEvent = true;
        return false;
    }

    @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
    public void onWindowCancel(@Nullable EasyWindow<?> easyWindow) {
        super.onWindowCancel(easyWindow);
        GlobalBundle.INSTANCE.unregister(this);
        ThemeBundle.INSTANCE.unRegister(this);
        this.delegate.onWindowDismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onWindowLocationChangedEvent(@NotNull WindowLocationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.limitRectLocation = event.getLocation();
    }

    @Override // com.hjq.window.EasyWindow.OnWindowLifecycle
    public void onWindowShow(@Nullable EasyWindow<?> easyWindow) {
        WindowManager.LayoutParams windowParams;
        super.onWindowShow(easyWindow);
        GlobalBundle.INSTANCE.register(this);
        ThemeBundle.INSTANCE.register(this);
        EasyWindow<?> easyWindow2 = this.window;
        if (easyWindow2 != null && (windowParams = easyWindow2.getWindowParams()) != null) {
            this.currentPosition.set(windowParams.x, windowParams.y);
        }
        autoAvoidanceMove();
        this.delegate.onWindowShow();
    }

    public final void setLimitRectLocation(@Nullable int[] iArr) {
        this.limitRectLocation = iArr;
    }

    public final void setWindow(@Nullable EasyWindow<?> easyWindow) {
        this.window = easyWindow;
    }

    @NotNull
    public final DraggableWindow setupWindow(@NotNull Function1<? super EasyWindow<?>, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        EasyWindow<?> with = EasyWindow.with(this.activity);
        Intrinsics.checkNotNull(with);
        EasyWindowKt.addFullScreenFlag(with);
        with.setDraggable(this);
        with.setTag(Reflection.getOrCreateKotlinClass(DraggableWindow.class).getQualifiedName());
        with.setOnWindowLifecycle(this);
        with.setDuration(86400000);
        with.setAnimStyle(C10651R.style.popupWindowAnimationLong);
        with.setOutsideTouchable(true);
        block.invoke(with);
        this.window = with;
        return this;
    }

    public final void show() {
        View safeDecorView;
        if (isShowing()) {
            return;
        }
        EasyWindow<?> easyWindow = this.window;
        if (easyWindow != null) {
            easyWindow.show();
        }
        EasyWindow<?> easyWindow2 = this.window;
        this.locationChangedListener = (easyWindow2 == null || (safeDecorView = EasyWindowKt.getSafeDecorView(easyWindow2)) == null) ? null : ContextKt.registerWindowLocationChangeListener(safeDecorView, new DraggableWindow$show$1(this.delegate));
    }

    public final void updateLimitRect(@NotNull Rect limitRect) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        this.limitRect.set(limitRect);
        autoAvoidanceMove();
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public void updateWindowCoordinate(int x, int y) {
        int coerceAtMost;
        int coerceAtLeast;
        int coerceAtMost2;
        int coerceAtLeast2;
        this.currentPosition.set(x, y);
        if (!m50332g(x, y)) {
            super.updateWindowCoordinate(x, y);
            return;
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(x, this.limitRect.right - getWindowWidthSafely());
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(coerceAtMost, this.limitRect.left);
        coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(y, this.limitRect.bottom - getWindowHeightSafely());
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(coerceAtMost2, this.limitRect.top);
        super.updateWindowCoordinate(coerceAtLeast, coerceAtLeast2);
    }
}
