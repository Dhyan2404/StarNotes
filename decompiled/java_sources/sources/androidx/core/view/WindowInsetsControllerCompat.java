package androidx.core.view;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.WindowInsetsControllerCompat;
import com.sunia.HTREnginev2.b9o;

/* loaded from: classes3.dex */
public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_DEFAULT = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;

    /* renamed from: a */
    public final C0829e f6004a;

    /* loaded from: classes3.dex */
    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(@NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, int i);
    }

    @RequiresApi(20)
    /* renamed from: androidx.core.view.WindowInsetsControllerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0825a extends C0829e {

        /* renamed from: a */
        @NonNull
        public final Window f6005a;

        /* renamed from: b */
        @NonNull
        public final SoftwareKeyboardControllerCompat f6006b;

        public C0825a(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f6005a = window;
            this.f6006b = softwareKeyboardControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: a */
        public void mo3634a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: b */
        public void mo3635b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: c */
        public int mo3636c() {
            return 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: d */
        public void mo3637d(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    m3641l(i2);
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: g */
        public void mo3638g(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: j */
        public void mo3639j(int i) {
            if (i == 0) {
                m3645p(6144);
                return;
            }
            if (i == 1) {
                m3645p(4096);
                m3642m(2048);
            } else {
                if (i != 2) {
                    return;
                }
                m3645p(2048);
                m3642m(4096);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: k */
        public void mo3640k(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    m3644o(i2);
                }
            }
        }

        /* renamed from: l */
        public final void m3641l(int i) {
            if (i == 1) {
                m3642m(4);
            } else if (i == 2) {
                m3642m(2);
            } else {
                if (i != 8) {
                    return;
                }
                this.f6006b.hide();
            }
        }

        /* renamed from: m */
        public void m3642m(int i) {
            View decorView = this.f6005a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        /* renamed from: n */
        public void m3643n(int i) {
            this.f6005a.addFlags(i);
        }

        /* renamed from: o */
        public final void m3644o(int i) {
            if (i == 1) {
                m3645p(4);
                m3646q(1024);
            } else if (i == 2) {
                m3645p(2);
            } else {
                if (i != 8) {
                    return;
                }
                this.f6006b.show();
            }
        }

        /* renamed from: p */
        public void m3645p(int i) {
            View decorView = this.f6005a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        /* renamed from: q */
        public void m3646q(int i) {
            this.f6005a.clearFlags(i);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.view.WindowInsetsControllerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0826b extends C0825a {
        public C0826b(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, softwareKeyboardControllerCompat);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: f */
        public boolean mo3647f() {
            return (this.f6005a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: i */
        public void mo3648i(boolean z) {
            if (!z) {
                m3645p(8192);
                return;
            }
            m3646q(67108864);
            m3643n(Integer.MIN_VALUE);
            m3642m(8192);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.view.WindowInsetsControllerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0827c extends C0826b {
        public C0827c(@NonNull Window window, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, softwareKeyboardControllerCompat);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: e */
        public boolean mo3649e() {
            return (this.f6005a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: h */
        public void mo3650h(boolean z) {
            if (!z) {
                m3645p(16);
                return;
            }
            m3646q(134217728);
            m3643n(Integer.MIN_VALUE);
            m3642m(16);
        }
    }

    /* renamed from: androidx.core.view.WindowInsetsControllerCompat$e */
    /* loaded from: classes3.dex */
    public static class C0829e {
        /* renamed from: a */
        public void mo3634a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        /* renamed from: b */
        public void mo3635b(int i, long j, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        /* renamed from: c */
        public int mo3636c() {
            return 0;
        }

        /* renamed from: d */
        public void mo3637d(int i) {
        }

        /* renamed from: e */
        public boolean mo3649e() {
            return false;
        }

        /* renamed from: f */
        public boolean mo3647f() {
            return false;
        }

        /* renamed from: g */
        public void mo3638g(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        /* renamed from: h */
        public void mo3650h(boolean z) {
        }

        /* renamed from: i */
        public void mo3648i(boolean z) {
        }

        /* renamed from: j */
        public void mo3639j(int i) {
        }

        /* renamed from: k */
        public void mo3640k(int i) {
        }
    }

    @RequiresApi(30)
    @Deprecated
    public WindowInsetsControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        this.f6004a = new C0828d(windowInsetsController, this, new SoftwareKeyboardControllerCompat(windowInsetsController));
    }

    @NonNull
    @RequiresApi(30)
    @Deprecated
    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(@NonNull WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void addOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f6004a.mo3634a(onControllableInsetsChangedListener);
    }

    public void controlWindowInsetsAnimation(int i, long j, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.f6004a.mo3635b(i, j, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    @SuppressLint({"WrongConstant"})
    public int getSystemBarsBehavior() {
        return this.f6004a.mo3636c();
    }

    public void hide(int i) {
        this.f6004a.mo3637d(i);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.f6004a.mo3649e();
    }

    public boolean isAppearanceLightStatusBars() {
        return this.f6004a.mo3647f();
    }

    public void removeOnControllableInsetsChangedListener(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.f6004a.mo3638g(onControllableInsetsChangedListener);
    }

    public void setAppearanceLightNavigationBars(boolean z) {
        this.f6004a.mo3650h(z);
    }

    public void setAppearanceLightStatusBars(boolean z) {
        this.f6004a.mo3648i(z);
    }

    public void setSystemBarsBehavior(int i) {
        this.f6004a.mo3639j(i);
    }

    public void show(int i) {
        this.f6004a.mo3640k(i);
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsControllerCompat$d */
    /* loaded from: classes3.dex */
    public static class C0828d extends C0829e {

        /* renamed from: a */
        public final WindowInsetsControllerCompat f6007a;

        /* renamed from: b */
        public final WindowInsetsController f6008b;

        /* renamed from: c */
        public final SoftwareKeyboardControllerCompat f6009c;

        /* renamed from: d */
        public final SimpleArrayMap<OnControllableInsetsChangedListener, WindowInsetsController.OnControllableInsetsChangedListener> f6010d;

        /* renamed from: e */
        public Window f6011e;

        /* renamed from: androidx.core.view.WindowInsetsControllerCompat$d$a */
        /* loaded from: classes3.dex */
        public class a implements WindowInsetsAnimationControlListener {

            /* renamed from: a */
            public WindowInsetsAnimationControllerCompat f6012a = null;

            /* renamed from: b */
            public final /* synthetic */ WindowInsetsAnimationControlListenerCompat f6013b;

            public a(WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
                this.f6013b = windowInsetsAnimationControlListenerCompat;
            }

            public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
                this.f6013b.onCancelled(windowInsetsAnimationController == null ? null : this.f6012a);
            }

            public void onFinished(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
                this.f6013b.onFinished(this.f6012a);
            }

            public void onReady(@NonNull WindowInsetsAnimationController windowInsetsAnimationController, int i) {
                WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                this.f6012a = windowInsetsAnimationControllerCompat;
                this.f6013b.onReady(windowInsetsAnimationControllerCompat, i);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0828d(@androidx.annotation.NonNull android.view.Window r2, @androidx.annotation.NonNull androidx.core.view.WindowInsetsControllerCompat r3, @androidx.annotation.NonNull androidx.core.view.SoftwareKeyboardControllerCompat r4) {
            /*
                r1 = this;
                android.view.WindowInsetsController r0 = com.sunia.HTREnginev2.a9o.m52982a(r2)
                r1.<init>(r0, r3, r4)
                r1.f6011e = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.WindowInsetsControllerCompat.C0828d.<init>(android.view.Window, androidx.core.view.WindowInsetsControllerCompat, androidx.core.view.SoftwareKeyboardControllerCompat):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m3652m(OnControllableInsetsChangedListener onControllableInsetsChangedListener, WindowInsetsController windowInsetsController, int i) {
            if (this.f6008b == windowInsetsController) {
                onControllableInsetsChangedListener.onControllableInsetsChanged(this.f6007a, i);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: a */
        public void mo3634a(@NonNull final OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            if (this.f6010d.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener2 = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: com.sunia.HTREnginev2.h9o
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i) {
                    WindowInsetsControllerCompat.C0828d.this.m3652m(onControllableInsetsChangedListener, windowInsetsController, i);
                }
            };
            this.f6010d.put(onControllableInsetsChangedListener, onControllableInsetsChangedListener2);
            this.f6008b.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener2);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: b */
        public void mo3635b(int i, long j, @Nullable Interpolator interpolator, @Nullable CancellationSignal cancellationSignal, @NonNull WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.f6008b.controlWindowInsetsAnimation(i, j, interpolator, cancellationSignal, new a(windowInsetsAnimationControlListenerCompat));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        @SuppressLint({"WrongConstant"})
        /* renamed from: c */
        public int mo3636c() {
            int systemBarsBehavior;
            systemBarsBehavior = this.f6008b.getSystemBarsBehavior();
            return systemBarsBehavior;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: d */
        public void mo3637d(int i) {
            if ((i & 8) != 0) {
                this.f6009c.hide();
            }
            this.f6008b.hide(i & (-9));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: e */
        public boolean mo3649e() {
            int systemBarsAppearance;
            this.f6008b.setSystemBarsAppearance(0, 0);
            systemBarsAppearance = this.f6008b.getSystemBarsAppearance();
            return (systemBarsAppearance & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: f */
        public boolean mo3647f() {
            int systemBarsAppearance;
            this.f6008b.setSystemBarsAppearance(0, 0);
            systemBarsAppearance = this.f6008b.getSystemBarsAppearance();
            return (systemBarsAppearance & 8) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: g */
        public void mo3638g(@NonNull OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener m53218a = b9o.m53218a(this.f6010d.remove(onControllableInsetsChangedListener));
            if (m53218a != null) {
                this.f6008b.removeOnControllableInsetsChangedListener(m53218a);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: h */
        public void mo3650h(boolean z) {
            if (z) {
                if (this.f6011e != null) {
                    m3653n(16);
                }
                this.f6008b.setSystemBarsAppearance(16, 16);
            } else {
                if (this.f6011e != null) {
                    m3654o(16);
                }
                this.f6008b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: i */
        public void mo3648i(boolean z) {
            if (z) {
                if (this.f6011e != null) {
                    m3653n(8192);
                }
                this.f6008b.setSystemBarsAppearance(8, 8);
            } else {
                if (this.f6011e != null) {
                    m3654o(8192);
                }
                this.f6008b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: j */
        public void mo3639j(int i) {
            this.f6008b.setSystemBarsBehavior(i);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.C0829e
        /* renamed from: k */
        public void mo3640k(int i) {
            if ((i & 8) != 0) {
                this.f6009c.show();
            }
            this.f6008b.show(i & (-9));
        }

        /* renamed from: n */
        public void m3653n(int i) {
            View decorView = this.f6011e.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        /* renamed from: o */
        public void m3654o(int i) {
            View decorView = this.f6011e.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        public C0828d(@NonNull WindowInsetsController windowInsetsController, @NonNull WindowInsetsControllerCompat windowInsetsControllerCompat, @NonNull SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f6010d = new SimpleArrayMap<>();
            this.f6008b = windowInsetsController;
            this.f6007a = windowInsetsControllerCompat;
            this.f6009c = softwareKeyboardControllerCompat;
        }
    }

    public WindowInsetsControllerCompat(@NonNull Window window, @NonNull View view) {
        SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat = new SoftwareKeyboardControllerCompat(view);
        if (Build.VERSION.SDK_INT >= 30) {
            this.f6004a = new C0828d(window, this, softwareKeyboardControllerCompat);
        } else {
            this.f6004a = new C0827c(window, softwareKeyboardControllerCompat);
        }
    }
}
