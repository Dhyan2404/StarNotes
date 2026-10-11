package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class KeyboardUtils {

    /* renamed from: a */
    public static final int f13774a = -8;

    /* renamed from: b */
    public static long f13775b;

    /* renamed from: c */
    public static int f13776c;

    /* loaded from: classes3.dex */
    public interface OnSoftInputChangedListener {
        void onSoftInputChanged(int i);
    }

    /* renamed from: com.blankj.utilcode.util.KeyboardUtils$a */
    /* loaded from: classes3.dex */
    public static class ViewTreeObserverOnGlobalLayoutListenerC1817a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: e */
        public final /* synthetic */ Window f13777e;

        /* renamed from: f */
        public final /* synthetic */ int[] f13778f;

        /* renamed from: g */
        public final /* synthetic */ OnSoftInputChangedListener f13779g;

        public ViewTreeObserverOnGlobalLayoutListenerC1817a(Window window, int[] iArr, OnSoftInputChangedListener onSoftInputChangedListener) {
            this.f13777e = window;
            this.f13778f = iArr;
            this.f13779g = onSoftInputChangedListener;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int m8117d = KeyboardUtils.m8117d(this.f13777e);
            if (this.f13778f[0] != m8117d) {
                this.f13779g.onSoftInputChanged(m8117d);
                this.f13778f[0] = m8117d;
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.KeyboardUtils$b */
    /* loaded from: classes3.dex */
    public static class ViewTreeObserverOnGlobalLayoutListenerC1818b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: e */
        public final /* synthetic */ Window f13780e;

        /* renamed from: f */
        public final /* synthetic */ int[] f13781f;

        /* renamed from: g */
        public final /* synthetic */ View f13782g;

        /* renamed from: h */
        public final /* synthetic */ int f13783h;

        public ViewTreeObserverOnGlobalLayoutListenerC1818b(Window window, int[] iArr, View view, int i) {
            this.f13780e = window;
            this.f13781f = iArr;
            this.f13782g = view;
            this.f13783h = i;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int m8116c = KeyboardUtils.m8116c(this.f13780e);
            if (this.f13781f[0] != m8116c) {
                View view = this.f13782g;
                view.setPadding(view.getPaddingLeft(), this.f13782g.getPaddingTop(), this.f13782g.getPaddingRight(), this.f13783h + KeyboardUtils.m8117d(this.f13780e));
                this.f13781f[0] = m8116c;
            }
        }
    }

    public KeyboardUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: c */
    public static int m8116c(Window window) {
        View findViewById = window.findViewById(R.id.content);
        if (findViewById == null) {
            return 0;
        }
        Rect rect = new Rect();
        findViewById.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getContentViewInvisibleHeight: " + (findViewById.getBottom() - rect.bottom));
        int abs = Math.abs(findViewById.getBottom() - rect.bottom);
        if (abs <= C1887b.m8496e0() + C1887b.m8484a0()) {
            return 0;
        }
        return abs;
    }

    public static void clickBlankArea2HideSoftInput() {
        Log.i("KeyboardUtils", "Please refer to the following code.");
    }

    /* renamed from: d */
    public static int m8117d(@NonNull Window window) {
        View decorView = window.getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        Log.d("KeyboardUtils", "getDecorViewInvisibleHeight: " + (decorView.getBottom() - rect.bottom));
        int abs = Math.abs(decorView.getBottom() - rect.bottom);
        if (abs > C1887b.m8484a0() + C1887b.m8496e0()) {
            return abs - f13776c;
        }
        f13776c = abs;
        return 0;
    }

    public static void fixAndroidBug5497(@NonNull Activity activity) {
        fixAndroidBug5497(activity.getWindow());
    }

    public static void fixSoftInputLeaks(@NonNull Activity activity) {
        fixSoftInputLeaks(activity.getWindow());
    }

    public static void hideSoftInput(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        hideSoftInput(activity.getWindow());
    }

    public static void hideSoftInputByToggle(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (Math.abs(elapsedRealtime - f13775b) > 500 && isSoftInputVisible(activity)) {
            toggleSoftInput();
        }
        f13775b = elapsedRealtime;
    }

    public static boolean isSoftInputVisible(@NonNull Activity activity) {
        return m8117d(activity.getWindow()) > 0;
    }

    public static void registerSoftInputChangedListener(@NonNull Activity activity, @NonNull OnSoftInputChangedListener onSoftInputChangedListener) {
        registerSoftInputChangedListener(activity.getWindow(), onSoftInputChangedListener);
    }

    public static void showSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void toggleSoftInput() {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(0, 0);
    }

    public static void unregisterSoftInputChangedListener(@NonNull Window window) {
        View findViewById = window.findViewById(R.id.content);
        if (findViewById == null) {
            return;
        }
        Object tag = findViewById.getTag(-8);
        if (tag instanceof ViewTreeObserver.OnGlobalLayoutListener) {
            findViewById.getViewTreeObserver().removeOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener) tag);
            findViewById.setTag(-8, null);
        }
    }

    public static void fixAndroidBug5497(@NonNull Window window) {
        window.setSoftInputMode(window.getAttributes().softInputMode & (-17));
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        View childAt = frameLayout.getChildAt(0);
        int paddingBottom = childAt.getPaddingBottom();
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC1818b(window, new int[]{m8116c(window)}, childAt, paddingBottom));
    }

    public static void fixSoftInputLeaks(@NonNull Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 4; i++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void hideSoftInput(@Nullable Window window) {
        if (window == null) {
            return;
        }
        View currentFocus = window.getCurrentFocus();
        if (currentFocus == null) {
            View decorView = window.getDecorView();
            View findViewWithTag = decorView.findViewWithTag("keyboardTagView");
            if (findViewWithTag == null) {
                findViewWithTag = new EditText(window.getContext());
                findViewWithTag.setTag("keyboardTagView");
                ((ViewGroup) decorView).addView(findViewWithTag, 0, 0);
            }
            currentFocus = findViewWithTag;
            currentFocus.requestFocus();
        }
        hideSoftInput(currentFocus);
    }

    public static void registerSoftInputChangedListener(@NonNull Window window, @NonNull OnSoftInputChangedListener onSoftInputChangedListener) {
        if ((window.getAttributes().flags & 512) != 0) {
            window.clearFlags(512);
        }
        FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.content);
        ViewTreeObserverOnGlobalLayoutListenerC1817a viewTreeObserverOnGlobalLayoutListenerC1817a = new ViewTreeObserverOnGlobalLayoutListenerC1817a(window, new int[]{m8117d(window)}, onSoftInputChangedListener);
        frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC1817a);
        frameLayout.setTag(-8, viewTreeObserverOnGlobalLayoutListenerC1817a);
    }

    public static void showSoftInput(@Nullable Activity activity) {
        if (activity == null || isSoftInputVisible(activity)) {
            return;
        }
        toggleSoftInput();
    }

    public static void showSoftInput(@NonNull View view) {
        showSoftInput(view, 0);
    }

    public static void showSoftInput(@NonNull View view, int i) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        inputMethodManager.showSoftInput(view, i, new ResultReceiver(new Handler()) { // from class: com.blankj.utilcode.util.KeyboardUtils.1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i2, Bundle bundle) {
                if (i2 == 1 || i2 == 3) {
                    KeyboardUtils.toggleSoftInput();
                }
            }
        });
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void hideSoftInput(@NonNull View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.getApp().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
