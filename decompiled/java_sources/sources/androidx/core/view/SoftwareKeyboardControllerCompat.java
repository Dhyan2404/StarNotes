package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class SoftwareKeyboardControllerCompat {

    /* renamed from: a */
    public final C0778c f5860a;

    @RequiresApi(20)
    /* renamed from: androidx.core.view.SoftwareKeyboardControllerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0776a extends C0778c {

        /* renamed from: a */
        @Nullable
        public final View f5861a;

        public C0776a(@Nullable View view) {
            this.f5861a = view;
        }

        /* renamed from: d */
        public static /* synthetic */ void m3359d(View view) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.C0778c
        /* renamed from: a */
        public void mo3360a() {
            View view = this.f5861a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f5861a.getWindowToken(), 0);
            }
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.C0778c
        /* renamed from: b */
        public void mo3361b() {
            final View view = this.f5861a;
            if (view == null) {
                return;
            }
            if (view.isInEditMode() || view.onCheckIsTextEditor()) {
                view.requestFocus();
            } else {
                view = view.getRootView().findFocus();
            }
            if (view == null) {
                view = this.f5861a.getRootView().findViewById(R.id.content);
            }
            if (view == null || !view.hasWindowFocus()) {
                return;
            }
            view.post(new Runnable() { // from class: com.sunia.HTREnginev2.hvm
                @Override // java.lang.Runnable
                public final void run() {
                    SoftwareKeyboardControllerCompat.C0776a.m3359d(view);
                }
            });
        }
    }

    /* renamed from: androidx.core.view.SoftwareKeyboardControllerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0778c {
        /* renamed from: a */
        public void mo3360a() {
        }

        /* renamed from: b */
        public void mo3361b() {
        }
    }

    public SoftwareKeyboardControllerCompat(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f5860a = new C0777b(view);
        } else {
            this.f5860a = new C0776a(view);
        }
    }

    public void hide() {
        this.f5860a.mo3360a();
    }

    public void show() {
        this.f5860a.mo3361b();
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.SoftwareKeyboardControllerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0777b extends C0776a {

        /* renamed from: b */
        @Nullable
        public View f5862b;

        /* renamed from: c */
        @Nullable
        public WindowInsetsController f5863c;

        public C0777b(@NonNull View view) {
            super(view);
            this.f5862b = view;
        }

        /* renamed from: f */
        public static /* synthetic */ void m3363f(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i) {
            atomicBoolean.set((i & 8) != 0);
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.C0776a, androidx.core.view.SoftwareKeyboardControllerCompat.C0778c
        /* renamed from: a */
        public void mo3360a() {
            int ime;
            View view;
            WindowInsetsController windowInsetsController = this.f5863c;
            if (windowInsetsController == null) {
                View view2 = this.f5862b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.mo3360a();
                return;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: com.sunia.HTREnginev2.ovm
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i) {
                    SoftwareKeyboardControllerCompat.C0777b.m3363f(atomicBoolean, windowInsetsController2, i);
                }
            };
            windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            if (!atomicBoolean.get() && (view = this.f5862b) != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f5862b.getWindowToken(), 0);
            }
            windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            ime = WindowInsets.Type.ime();
            windowInsetsController.hide(ime);
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.C0776a, androidx.core.view.SoftwareKeyboardControllerCompat.C0778c
        /* renamed from: b */
        public void mo3361b() {
            int ime;
            View view = this.f5862b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f5863c;
            if (windowInsetsController == null) {
                View view2 = this.f5862b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                ime = WindowInsets.Type.ime();
                windowInsetsController.show(ime);
            }
            super.mo3361b();
        }

        public C0777b(@Nullable WindowInsetsController windowInsetsController) {
            super(null);
            this.f5863c = windowInsetsController;
        }
    }

    @RequiresApi(30)
    @Deprecated
    public SoftwareKeyboardControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        this.f5860a = new C0777b(windowInsetsController);
    }
}
