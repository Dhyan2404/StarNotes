package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;

@RequiresApi(19)
/* loaded from: classes3.dex */
final class ImmLeaksCleaner implements LifecycleEventObserver {

    /* renamed from: f */
    public static final int f471f = 0;

    /* renamed from: g */
    public static final int f472g = 1;

    /* renamed from: h */
    public static final int f473h = 2;

    /* renamed from: i */
    public static int f474i;

    /* renamed from: j */
    public static Field f475j;

    /* renamed from: k */
    public static Field f476k;

    /* renamed from: l */
    public static Field f477l;

    /* renamed from: e */
    public Activity f478e;

    public ImmLeaksCleaner(Activity activity) {
        this.f478e = activity;
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    @MainThread
    /* renamed from: a */
    public static void m254a() {
        try {
            f474i = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f476k = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f477l = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f475j = declaredField3;
            declaredField3.setAccessible(true);
            f474i = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        if (f474i == 0) {
            m254a();
        }
        if (f474i == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f478e.getSystemService("input_method");
            try {
                Object obj = f475j.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f476k.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f477l.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }
}
