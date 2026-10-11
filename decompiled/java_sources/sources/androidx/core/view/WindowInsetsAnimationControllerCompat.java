package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;

/* loaded from: classes3.dex */
public final class WindowInsetsAnimationControllerCompat {

    /* renamed from: a */
    public final C0812b f5957a;

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsAnimationControllerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0811a extends C0812b {

        /* renamed from: a */
        public final WindowInsetsAnimationController f5958a;

        public C0811a(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f5958a = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: a */
        public void mo3575a(boolean z) {
            this.f5958a.finish(z);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: b */
        public float mo3576b() {
            float currentAlpha;
            currentAlpha = this.f5958a.getCurrentAlpha();
            return currentAlpha;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: c */
        public float mo3577c() {
            float currentFraction;
            currentFraction = this.f5958a.getCurrentFraction();
            return currentFraction;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        @NonNull
        /* renamed from: d */
        public Insets mo3578d() {
            android.graphics.Insets currentInsets;
            currentInsets = this.f5958a.getCurrentInsets();
            return Insets.toCompatInsets(currentInsets);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        @NonNull
        /* renamed from: e */
        public Insets mo3579e() {
            android.graphics.Insets hiddenStateInsets;
            hiddenStateInsets = this.f5958a.getHiddenStateInsets();
            return Insets.toCompatInsets(hiddenStateInsets);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        @NonNull
        /* renamed from: f */
        public Insets mo3580f() {
            android.graphics.Insets shownStateInsets;
            shownStateInsets = this.f5958a.getShownStateInsets();
            return Insets.toCompatInsets(shownStateInsets);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        @SuppressLint({"WrongConstant"})
        /* renamed from: g */
        public int mo3581g() {
            int types;
            types = this.f5958a.getTypes();
            return types;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: h */
        public boolean mo3582h() {
            boolean isCancelled;
            isCancelled = this.f5958a.isCancelled();
            return isCancelled;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: i */
        public boolean mo3583i() {
            boolean isFinished;
            isFinished = this.f5958a.isFinished();
            return isFinished;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.C0812b
        /* renamed from: j */
        public void mo3584j(@Nullable Insets insets, float f, float f2) {
            this.f5958a.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f, f2);
        }
    }

    /* renamed from: androidx.core.view.WindowInsetsAnimationControllerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0812b {
        /* renamed from: a */
        public void mo3575a(boolean z) {
        }

        /* renamed from: b */
        public float mo3576b() {
            return 0.0f;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        /* renamed from: c */
        public float mo3577c() {
            return 0.0f;
        }

        @NonNull
        /* renamed from: d */
        public Insets mo3578d() {
            return Insets.NONE;
        }

        @NonNull
        /* renamed from: e */
        public Insets mo3579e() {
            return Insets.NONE;
        }

        @NonNull
        /* renamed from: f */
        public Insets mo3580f() {
            return Insets.NONE;
        }

        /* renamed from: g */
        public int mo3581g() {
            return 0;
        }

        /* renamed from: h */
        public boolean mo3582h() {
            return true;
        }

        /* renamed from: i */
        public boolean mo3583i() {
            return false;
        }

        /* renamed from: j */
        public void mo3584j(@Nullable Insets insets, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
        }
    }

    @RequiresApi(30)
    public WindowInsetsAnimationControllerCompat(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f5957a = new C0811a(windowInsetsAnimationController);
    }

    public void finish(boolean z) {
        this.f5957a.mo3575a(z);
    }

    public float getCurrentAlpha() {
        return this.f5957a.mo3576b();
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getCurrentFraction() {
        return this.f5957a.mo3577c();
    }

    @NonNull
    public Insets getCurrentInsets() {
        return this.f5957a.mo3578d();
    }

    @NonNull
    public Insets getHiddenStateInsets() {
        return this.f5957a.mo3579e();
    }

    @NonNull
    public Insets getShownStateInsets() {
        return this.f5957a.mo3580f();
    }

    public int getTypes() {
        return this.f5957a.mo3581g();
    }

    public boolean isCancelled() {
        return this.f5957a.mo3582h();
    }

    public boolean isFinished() {
        return this.f5957a.mo3583i();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(@Nullable Insets insets, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2) {
        this.f5957a.mo3584j(insets, f, f2);
    }
}
