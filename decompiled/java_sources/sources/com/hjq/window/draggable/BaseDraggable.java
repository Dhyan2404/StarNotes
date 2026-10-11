package com.hjq.window.draggable;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.hjq.window.EasyWindow;
import com.hjq.window.draggable.BaseDraggable;

/* loaded from: classes4.dex */
public abstract class BaseDraggable implements View.OnTouchListener {

    /* renamed from: e */
    public EasyWindow<?> f38946e;

    /* renamed from: f */
    public View f38947f;

    /* renamed from: h */
    public DraggingCallback f38949h;

    /* renamed from: j */
    public int f38951j;

    /* renamed from: k */
    public int f38952k;

    /* renamed from: l */
    public int f38953l;

    /* renamed from: m */
    public int f38954m;

    /* renamed from: n */
    public int f38955n;

    /* renamed from: o */
    public int f38956o;

    /* renamed from: g */
    public boolean f38948g = true;

    /* renamed from: i */
    public final Rect f38950i = new Rect();

    /* loaded from: classes4.dex */
    public interface DraggingCallback {
        default void onExecuteDragging(EasyWindow<?> easyWindow) {
        }

        default void onStartDragging(EasyWindow<?> easyWindow) {
        }

        default void onStopDragging(EasyWindow<?> easyWindow) {
        }
    }

    /* renamed from: com.hjq.window.draggable.BaseDraggable$a */
    /* loaded from: classes4.dex */
    public class ViewOnLayoutChangeListenerC6943a implements View.OnLayoutChangeListener {

        /* renamed from: e */
        public final /* synthetic */ float f38957e;

        /* renamed from: f */
        public final /* synthetic */ int f38958f;

        /* renamed from: g */
        public final /* synthetic */ float f38959g;

        /* renamed from: h */
        public final /* synthetic */ long f38960h;

        public ViewOnLayoutChangeListenerC6943a(float f, int i, float f2, long j) {
            this.f38957e = f;
            this.f38958f = i;
            this.f38959g = f2;
            this.f38960h = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m30900c() {
            BaseDraggable.this.onScreenRotateInfluenceCoordinateChangeFinish();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m30901d(float f, int i, float f2, View view) {
            BaseDraggable.this.refreshWindowInfo();
            float f3 = BaseDraggable.this.f38951j * f;
            float f4 = i / 2.0f;
            BaseDraggable.this.updateLocation(Math.max((int) (f3 - f4), 0), Math.max((int) ((BaseDraggable.this.f38952k * f2) - f4), 0));
            view.post(new Runnable() { // from class: com.sunia.HTREnginev2.dn
                @Override // java.lang.Runnable
                public final void run() {
                    BaseDraggable.ViewOnLayoutChangeListenerC6943a.this.m30900c();
                }
            });
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(final View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            final float f = this.f38957e;
            final int i9 = this.f38958f;
            final float f2 = this.f38959g;
            view.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.cn
                @Override // java.lang.Runnable
                public final void run() {
                    BaseDraggable.ViewOnLayoutChangeListenerC6943a.this.m30901d(f, i9, f2, view);
                }
            }, this.f38960h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m30896e() {
        refreshWindowInfo();
        refreshLocationCoordinate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m30897f() {
        refreshWindowInfo();
        refreshLocationCoordinate();
    }

    public void dispatchExecuteDraggingCallback() {
        DraggingCallback draggingCallback = this.f38949h;
        if (draggingCallback == null) {
            return;
        }
        draggingCallback.onExecuteDragging(this.f38946e);
    }

    public void dispatchStartDraggingCallback() {
        DraggingCallback draggingCallback = this.f38949h;
        if (draggingCallback == null) {
            return;
        }
        draggingCallback.onStartDragging(this.f38946e);
    }

    public void dispatchStopDraggingCallback() {
        DraggingCallback draggingCallback = this.f38949h;
        if (draggingCallback == null) {
            return;
        }
        draggingCallback.onStopDragging(this.f38946e);
    }

    public View getDecorView() {
        return this.f38947f;
    }

    public EasyWindow<?> getEasyWindow() {
        return this.f38946e;
    }

    public float getMinTouchDistance() {
        return TypedValue.applyDimension(1, 1.0f, Resources.getSystem().getDisplayMetrics());
    }

    public Rect getSafeInsetRect() {
        Window window;
        Context context = this.f38946e.getContext();
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null) {
            return getSafeInsetRect(window);
        }
        return null;
    }

    public int getViewHeight() {
        return this.f38946e.getViewHeight();
    }

    public int getViewOnScreenX() {
        return this.f38953l;
    }

    public int getViewOnScreenY() {
        return this.f38954m;
    }

    public int getViewWidth() {
        return this.f38946e.getViewWidth();
    }

    public int getWindowHeight() {
        return this.f38952k;
    }

    public int getWindowInvisibleHeight() {
        return this.f38956o;
    }

    public int getWindowInvisibleWidth() {
        return this.f38955n;
    }

    public int getWindowWidth() {
        return this.f38951j;
    }

    public boolean isAllowMoveToScreenNotch() {
        return this.f38948g;
    }

    public boolean isFingerMove(float f, float f2, float f3, float f4) {
        float minTouchDistance = getMinTouchDistance();
        return Math.abs(f - f2) >= minTouchDistance || Math.abs(f3 - f4) >= minTouchDistance;
    }

    public boolean isFollowScreenRotationChanges() {
        return true;
    }

    public void onScreenOrientationChange() {
        if (!isFollowScreenRotationChanges()) {
            getEasyWindow().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.bn
                @Override // java.lang.Runnable
                public final void run() {
                    BaseDraggable.this.m30896e();
                }
            }, 100L);
            return;
        }
        int width = getDecorView().getWidth();
        int height = getDecorView().getHeight();
        int i = this.f38953l - this.f38955n;
        int i2 = this.f38954m - this.f38956o;
        float minTouchDistance = getMinTouchDistance();
        float f = i;
        float f2 = 1.0f;
        float f3 = f <= minTouchDistance ? 0.0f : ((float) Math.abs(this.f38951j - (i + width))) < minTouchDistance ? 1.0f : (f + (width / 2.0f)) / this.f38951j;
        float f4 = i2;
        if (f4 <= minTouchDistance) {
            f2 = 0.0f;
        } else if (Math.abs(this.f38952k - (i2 + height)) >= minTouchDistance) {
            f2 = (f4 + (height / 2.0f)) / this.f38952k;
        }
        View decorView = getDecorView();
        if (decorView == null) {
            return;
        }
        decorView.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC6943a(f3, width, f2, 100L));
    }

    public void onScreenRotateInfluenceCoordinateChangeFinish() {
        refreshWindowInfo();
        refreshLocationCoordinate();
    }

    public void refreshLocationCoordinate() {
        View decorView = getDecorView();
        if (decorView == null) {
            return;
        }
        int[] iArr = new int[2];
        decorView.getLocationOnScreen(iArr);
        this.f38953l = iArr[0];
        this.f38954m = iArr[1];
    }

    public void refreshWindowInfo() {
        View decorView = getDecorView();
        if (decorView == null) {
            return;
        }
        decorView.getWindowVisibleDisplayFrame(this.f38950i);
        Rect rect = this.f38950i;
        int i = rect.right;
        int i2 = rect.left;
        this.f38951j = i - i2;
        int i3 = rect.bottom;
        int i4 = rect.top;
        this.f38952k = i3 - i4;
        this.f38955n = i2;
        this.f38956o = i4;
    }

    public void setAllowMoveToScreenNotch(boolean z) {
        this.f38948g = z;
    }

    public void setDraggingCallback(DraggingCallback draggingCallback) {
        this.f38949h = draggingCallback;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void start(EasyWindow<?> easyWindow) {
        this.f38946e = easyWindow;
        View decorView = easyWindow.getDecorView();
        this.f38947f = decorView;
        decorView.setOnTouchListener(this);
        this.f38947f.post(new Runnable() { // from class: com.sunia.HTREnginev2.an
            @Override // java.lang.Runnable
            public final void run() {
                BaseDraggable.this.m30897f();
            }
        });
    }

    public void updateLocation(float f, float f2) {
        updateLocation(f, f2, isAllowMoveToScreenNotch());
    }

    public void updateWindowCoordinate(int i, int i2) {
        WindowManager.LayoutParams windowParams = this.f38946e.getWindowParams();
        if (windowParams == null) {
            return;
        }
        if (windowParams.gravity == 8388659 && windowParams.x == i && windowParams.y == i2) {
            return;
        }
        windowParams.x = i;
        windowParams.y = i2;
        windowParams.gravity = 8388659;
        this.f38946e.update();
        refreshLocationCoordinate();
    }

    public void updateLocation(float f, float f2, boolean z) {
        updateLocation((int) f, (int) f2, z);
    }

    public void updateLocation(int i, int i2, boolean z) {
        if (z) {
            updateWindowCoordinate(i, i2);
            return;
        }
        Rect safeInsetRect = getSafeInsetRect();
        if (safeInsetRect == null) {
            updateWindowCoordinate(i, i2);
            return;
        }
        if (safeInsetRect.left > 0 && safeInsetRect.right > 0 && safeInsetRect.top > 0 && safeInsetRect.bottom > 0) {
            updateWindowCoordinate(i, i2);
            return;
        }
        int viewWidth = this.f38946e.getViewWidth();
        int viewHeight = this.f38946e.getViewHeight();
        int windowWidth = getWindowWidth();
        int windowHeight = getWindowHeight();
        if (i < safeInsetRect.left - getWindowInvisibleWidth()) {
            i = safeInsetRect.left - getWindowInvisibleWidth();
        } else {
            int i3 = safeInsetRect.right;
            if (i > (windowWidth - i3) - viewWidth) {
                i = (windowWidth - i3) - viewWidth;
            }
        }
        if (i2 < safeInsetRect.top - getWindowInvisibleHeight()) {
            i2 = safeInsetRect.top - getWindowInvisibleHeight();
        } else {
            int i4 = safeInsetRect.bottom;
            if (i2 > (windowHeight - i4) - viewHeight) {
                i2 = (windowHeight - i4) - viewHeight;
            }
        }
        updateWindowCoordinate(i, i2);
    }

    public static Rect getSafeInsetRect(Window window) {
        View decorView = window != null ? window.getDecorView() : null;
        WindowInsets rootWindowInsets = decorView != null ? decorView.getRootWindowInsets() : null;
        DisplayCutout displayCutout = rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null;
        if (displayCutout != null) {
            return new Rect(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
        }
        return null;
    }
}
