package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes3.dex */
public class WindowInsetsCompat {

    @NonNull
    public static final WindowInsetsCompat CONSUMED;

    /* renamed from: b */
    public static final String f5959b = "WindowInsetsCompat";

    /* renamed from: a */
    public final C0823k f5960a;

    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: a */
        public static final int f5962a = 1;

        /* renamed from: b */
        public static final int f5963b = 1;

        /* renamed from: c */
        public static final int f5964c = 2;

        /* renamed from: d */
        public static final int f5965d = 4;

        /* renamed from: e */
        public static final int f5966e = 8;

        /* renamed from: f */
        public static final int f5967f = 16;

        /* renamed from: g */
        public static final int f5968g = 32;

        /* renamed from: h */
        public static final int f5969h = 64;

        /* renamed from: i */
        public static final int f5970i = 128;

        /* renamed from: j */
        public static final int f5971j = 256;

        /* renamed from: k */
        public static final int f5972k = 9;

        /* renamed from: l */
        public static final int f5973l = 256;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes3.dex */
        public @interface InsetsType {
        }

        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* renamed from: a */
        public static int m3591a() {
            return -1;
        }

        /* renamed from: b */
        public static int m3592b(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 7;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    @RequiresApi(21)
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: androidx.core.view.WindowInsetsCompat$a */
    /* loaded from: classes3.dex */
    public static class C0813a {

        /* renamed from: a */
        public static Field f5974a;

        /* renamed from: b */
        public static Field f5975b;

        /* renamed from: c */
        public static Field f5976c;

        /* renamed from: d */
        public static boolean f5977d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f5974a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f5975b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f5976c = declaredField3;
                declaredField3.setAccessible(true);
                f5977d = true;
            } catch (ReflectiveOperationException e) {
                Log.w(WindowInsetsCompat.f5959b, "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }

        @Nullable
        /* renamed from: a */
        public static WindowInsetsCompat m3593a(@NonNull View view) {
            if (f5977d && view.isAttachedToWindow()) {
                try {
                    Object obj = f5974a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f5975b.get(obj);
                        Rect rect2 = (Rect) f5976c.get(obj);
                        if (rect != null && rect2 != null) {
                            WindowInsetsCompat build = new Builder().setStableInsets(Insets.m2909of(rect)).setSystemWindowInsets(Insets.m2909of(rect2)).build();
                            build.m3589e(build);
                            build.m3586a(view.getRootView());
                            return build;
                        }
                    }
                } catch (IllegalAccessException e) {
                    Log.w(WindowInsetsCompat.f5959b, "Failed to get insets from AttachInfo. " + e.getMessage(), e);
                }
            }
            return null;
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsCompat$d */
    /* loaded from: classes3.dex */
    public static class C0816d extends C0815c {
        public C0816d() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: d */
        public void mo3602d(int i, @NonNull Insets insets) {
            this.f5984c.setInsets(C0824l.m3633a(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: e */
        public void mo3603e(int i, @NonNull Insets insets) {
            this.f5984c.setInsetsIgnoringVisibility(C0824l.m3633a(i), insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: k */
        public void mo3604k(int i, boolean z) {
            this.f5984c.setVisible(C0824l.m3633a(i), z);
        }

        public C0816d(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    /* renamed from: androidx.core.view.WindowInsetsCompat$e */
    /* loaded from: classes3.dex */
    public static class C0817e {

        /* renamed from: a */
        public final WindowInsetsCompat f5985a;

        /* renamed from: b */
        public Insets[] f5986b;

        public C0817e() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        /* renamed from: a */
        public final void m3605a() {
            Insets[] insetsArr = this.f5986b;
            if (insetsArr != null) {
                Insets insets = insetsArr[Type.m3592b(1)];
                Insets insets2 = this.f5986b[Type.m3592b(2)];
                if (insets2 == null) {
                    insets2 = this.f5985a.getInsets(2);
                }
                if (insets == null) {
                    insets = this.f5985a.getInsets(1);
                }
                mo3597i(Insets.max(insets, insets2));
                Insets insets3 = this.f5986b[Type.m3592b(16)];
                if (insets3 != null) {
                    mo3600h(insets3);
                }
                Insets insets4 = this.f5986b[Type.m3592b(32)];
                if (insets4 != null) {
                    mo3599f(insets4);
                }
                Insets insets5 = this.f5986b[Type.m3592b(64)];
                if (insets5 != null) {
                    mo3601j(insets5);
                }
            }
        }

        @NonNull
        /* renamed from: b */
        public WindowInsetsCompat mo3595b() {
            m3605a();
            return this.f5985a;
        }

        /* renamed from: c */
        public void mo3598c(@Nullable DisplayCutoutCompat displayCutoutCompat) {
        }

        /* renamed from: d */
        public void mo3602d(int i, @NonNull Insets insets) {
            if (this.f5986b == null) {
                this.f5986b = new Insets[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.f5986b[Type.m3592b(i2)] = insets;
                }
            }
        }

        /* renamed from: e */
        public void mo3603e(int i, @NonNull Insets insets) {
            if (i == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        /* renamed from: f */
        public void mo3599f(@NonNull Insets insets) {
        }

        /* renamed from: g */
        public void mo3596g(@NonNull Insets insets) {
        }

        /* renamed from: h */
        public void mo3600h(@NonNull Insets insets) {
        }

        /* renamed from: i */
        public void mo3597i(@NonNull Insets insets) {
        }

        /* renamed from: j */
        public void mo3601j(@NonNull Insets insets) {
        }

        /* renamed from: k */
        public void mo3604k(int i, boolean z) {
        }

        public C0817e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f5985a = windowInsetsCompat;
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.view.WindowInsetsCompat$h */
    /* loaded from: classes3.dex */
    public static class C0820h extends C0819g {
        public C0820h(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: a */
        public WindowInsetsCompat mo3628a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f5992c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0820h)) {
                return false;
            }
            C0820h c0820h = (C0820h) obj;
            return Objects.equals(this.f5992c, c0820h.f5992c) && Objects.equals(this.f5996g, c0820h.f5996g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @Nullable
        /* renamed from: f */
        public DisplayCutoutCompat mo3629f() {
            return DisplayCutoutCompat.m3313c(this.f5992c.getDisplayCutout());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        public int hashCode() {
            return this.f5992c.hashCode();
        }

        public C0820h(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull C0820h c0820h) {
            super(windowInsetsCompat, c0820h);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsCompat$j */
    /* loaded from: classes3.dex */
    public static class C0822j extends C0821i {

        /* renamed from: q */
        @NonNull
        public static final WindowInsetsCompat f6001q;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            f6001q = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        }

        public C0822j(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: d */
        public final void mo3610d(@NonNull View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: g */
        public Insets mo3612g(int i) {
            android.graphics.Insets insets;
            insets = this.f5992c.getInsets(C0824l.m3633a(i));
            return Insets.toCompatInsets(insets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: h */
        public Insets mo3613h(int i) {
            android.graphics.Insets insetsIgnoringVisibility;
            insetsIgnoringVisibility = this.f5992c.getInsetsIgnoringVisibility(C0824l.m3633a(i));
            return Insets.toCompatInsets(insetsIgnoringVisibility);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: q */
        public boolean mo3617q(int i) {
            boolean isVisible;
            isVisible = this.f5992c.isVisible(C0824l.m3633a(i));
            return isVisible;
        }

        public C0822j(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull C0822j c0822j) {
            super(windowInsetsCompat, c0822j);
        }
    }

    /* renamed from: androidx.core.view.WindowInsetsCompat$k */
    /* loaded from: classes3.dex */
    public static class C0823k {

        /* renamed from: b */
        @NonNull
        public static final WindowInsetsCompat f6002b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        /* renamed from: a */
        public final WindowInsetsCompat f6003a;

        public C0823k(@NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f6003a = windowInsetsCompat;
        }

        @NonNull
        /* renamed from: a */
        public WindowInsetsCompat mo3628a() {
            return this.f6003a;
        }

        @NonNull
        /* renamed from: b */
        public WindowInsetsCompat mo3623b() {
            return this.f6003a;
        }

        @NonNull
        /* renamed from: c */
        public WindowInsetsCompat mo3624c() {
            return this.f6003a;
        }

        /* renamed from: d */
        public void mo3610d(@NonNull View view) {
        }

        /* renamed from: e */
        public void mo3611e(@NonNull WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0823k)) {
                return false;
            }
            C0823k c0823k = (C0823k) obj;
            return mo3616p() == c0823k.mo3616p() && mo3626o() == c0823k.mo3626o() && ObjectsCompat.equals(mo3614l(), c0823k.mo3614l()) && ObjectsCompat.equals(mo3625j(), c0823k.mo3625j()) && ObjectsCompat.equals(mo3629f(), c0823k.mo3629f());
        }

        @Nullable
        /* renamed from: f */
        public DisplayCutoutCompat mo3629f() {
            return null;
        }

        @NonNull
        /* renamed from: g */
        public Insets mo3612g(int i) {
            return Insets.NONE;
        }

        @NonNull
        /* renamed from: h */
        public Insets mo3613h(int i) {
            if ((i & 8) == 0) {
                return Insets.NONE;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        public int hashCode() {
            return ObjectsCompat.hash(Boolean.valueOf(mo3616p()), Boolean.valueOf(mo3626o()), mo3614l(), mo3625j(), mo3629f());
        }

        @NonNull
        /* renamed from: i */
        public Insets mo3630i() {
            return mo3614l();
        }

        @NonNull
        /* renamed from: j */
        public Insets mo3625j() {
            return Insets.NONE;
        }

        @NonNull
        /* renamed from: k */
        public Insets mo3631k() {
            return mo3614l();
        }

        @NonNull
        /* renamed from: l */
        public Insets mo3614l() {
            return Insets.NONE;
        }

        @NonNull
        /* renamed from: m */
        public Insets mo3632m() {
            return mo3614l();
        }

        @NonNull
        /* renamed from: n */
        public WindowInsetsCompat mo3615n(int i, int i2, int i3, int i4) {
            return f6002b;
        }

        /* renamed from: o */
        public boolean mo3626o() {
            return false;
        }

        /* renamed from: p */
        public boolean mo3616p() {
            return false;
        }

        /* renamed from: q */
        public boolean mo3617q(int i) {
            return true;
        }

        /* renamed from: r */
        public void mo3618r(Insets[] insetsArr) {
        }

        /* renamed from: s */
        public void mo3619s(@NonNull Insets insets) {
        }

        /* renamed from: t */
        public void mo3620t(@Nullable WindowInsetsCompat windowInsetsCompat) {
        }

        /* renamed from: u */
        public void mo3627u(Insets insets) {
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsCompat$l */
    /* loaded from: classes3.dex */
    public static final class C0824l {
        private C0824l() {
        }

        /* renamed from: a */
        public static int m3633a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            CONSUMED = C0822j.f6001q;
        } else {
            CONSUMED = C0823k.f6002b;
        }
    }

    @RequiresApi(20)
    public WindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f5960a = new C0822j(this, windowInsets);
        } else {
            this.f5960a = new C0821i(this, windowInsets);
        }
    }

    /* renamed from: b */
    public static Insets m3585b(@NonNull Insets insets, int i, int i2, int i3, int i4) {
        int max = Math.max(0, insets.left - i);
        int max2 = Math.max(0, insets.top - i2);
        int max3 = Math.max(0, insets.right - i3);
        int max4 = Math.max(0, insets.bottom - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? insets : Insets.m2908of(max, max2, max3, max4);
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    /* renamed from: a */
    public void m3586a(@NonNull View view) {
        this.f5960a.mo3610d(view);
    }

    /* renamed from: c */
    public void m3587c(Insets[] insetsArr) {
        this.f5960a.mo3618r(insetsArr);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.f5960a.mo3628a();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.f5960a.mo3623b();
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.f5960a.mo3624c();
    }

    /* renamed from: d */
    public void m3588d(@NonNull Insets insets) {
        this.f5960a.mo3619s(insets);
    }

    /* renamed from: e */
    public void m3589e(@Nullable WindowInsetsCompat windowInsetsCompat) {
        this.f5960a.mo3620t(windowInsetsCompat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return ObjectsCompat.equals(this.f5960a, ((WindowInsetsCompat) obj).f5960a);
        }
        return false;
    }

    /* renamed from: f */
    public void m3590f(@Nullable Insets insets) {
        this.f5960a.mo3627u(insets);
    }

    @Nullable
    public DisplayCutoutCompat getDisplayCutout() {
        return this.f5960a.mo3629f();
    }

    @NonNull
    public Insets getInsets(int i) {
        return this.f5960a.mo3612g(i);
    }

    @NonNull
    public Insets getInsetsIgnoringVisibility(int i) {
        return this.f5960a.mo3613h(i);
    }

    @NonNull
    @Deprecated
    public Insets getMandatorySystemGestureInsets() {
        return this.f5960a.mo3630i();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.f5960a.mo3625j().bottom;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.f5960a.mo3625j().left;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.f5960a.mo3625j().right;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.f5960a.mo3625j().top;
    }

    @NonNull
    @Deprecated
    public Insets getStableInsets() {
        return this.f5960a.mo3625j();
    }

    @NonNull
    @Deprecated
    public Insets getSystemGestureInsets() {
        return this.f5960a.mo3631k();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.f5960a.mo3614l().bottom;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.f5960a.mo3614l().left;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.f5960a.mo3614l().right;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.f5960a.mo3614l().top;
    }

    @NonNull
    @Deprecated
    public Insets getSystemWindowInsets() {
        return this.f5960a.mo3614l();
    }

    @NonNull
    @Deprecated
    public Insets getTappableElementInsets() {
        return this.f5960a.mo3632m();
    }

    public boolean hasInsets() {
        Insets insets = getInsets(Type.m3591a());
        Insets insets2 = Insets.NONE;
        return (insets.equals(insets2) && getInsetsIgnoringVisibility(Type.m3591a() ^ Type.ime()).equals(insets2) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.f5960a.mo3625j().equals(Insets.NONE);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.f5960a.mo3614l().equals(Insets.NONE);
    }

    public int hashCode() {
        C0823k c0823k = this.f5960a;
        if (c0823k == null) {
            return 0;
        }
        return c0823k.hashCode();
    }

    @NonNull
    public WindowInsetsCompat inset(@NonNull Insets insets) {
        return inset(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean isConsumed() {
        return this.f5960a.mo3626o();
    }

    public boolean isRound() {
        return this.f5960a.mo3616p();
    }

    public boolean isVisible(int i) {
        return this.f5960a.mo3617q(i);
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        return new Builder(this).setSystemWindowInsets(Insets.m2908of(i, i2, i3, i4)).build();
    }

    @Nullable
    @RequiresApi(20)
    public WindowInsets toWindowInsets() {
        C0823k c0823k = this.f5960a;
        if (c0823k instanceof C0818f) {
            return ((C0818f) c0823k).f5992c;
        }
        return null;
    }

    @RequiresApi(api = 20)
    /* renamed from: androidx.core.view.WindowInsetsCompat$b */
    /* loaded from: classes3.dex */
    public static class C0814b extends C0817e {

        /* renamed from: e */
        public static Field f5978e;

        /* renamed from: f */
        public static boolean f5979f;

        /* renamed from: g */
        public static Constructor<WindowInsets> f5980g;

        /* renamed from: h */
        public static boolean f5981h;

        /* renamed from: c */
        public WindowInsets f5982c;

        /* renamed from: d */
        public Insets f5983d;

        public C0814b() {
            this.f5982c = m3594l();
        }

        @Nullable
        /* renamed from: l */
        private static WindowInsets m3594l() {
            if (!f5979f) {
                try {
                    f5978e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i(WindowInsetsCompat.f5959b, "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f5979f = true;
            }
            Field field = f5978e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i(WindowInsetsCompat.f5959b, "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!f5981h) {
                try {
                    f5980g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i(WindowInsetsCompat.f5959b, "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f5981h = true;
            }
            Constructor<WindowInsets> constructor = f5980g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i(WindowInsetsCompat.f5959b, "Could not invoke WindowInsets(Rect) constructor", e4);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        @NonNull
        /* renamed from: b */
        public WindowInsetsCompat mo3595b() {
            m3605a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f5982c);
            windowInsetsCompat.m3587c(this.f5986b);
            windowInsetsCompat.m3590f(this.f5983d);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: g */
        public void mo3596g(@Nullable Insets insets) {
            this.f5983d = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: i */
        public void mo3597i(@NonNull Insets insets) {
            WindowInsets windowInsets = this.f5982c;
            if (windowInsets != null) {
                this.f5982c = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
            }
        }

        public C0814b(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.f5982c = windowInsetsCompat.toWindowInsets();
        }
    }

    @RequiresApi(api = 29)
    /* renamed from: androidx.core.view.WindowInsetsCompat$c */
    /* loaded from: classes3.dex */
    public static class C0815c extends C0817e {

        /* renamed from: c */
        public final WindowInsets.Builder f5984c;

        public C0815c() {
            this.f5984c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        @NonNull
        /* renamed from: b */
        public WindowInsetsCompat mo3595b() {
            m3605a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f5984c.build());
            windowInsetsCompat.m3587c(this.f5986b);
            return windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: c */
        public void mo3598c(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.f5984c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.m3314b() : null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: f */
        public void mo3599f(@NonNull Insets insets) {
            this.f5984c.setMandatorySystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: g */
        public void mo3596g(@NonNull Insets insets) {
            this.f5984c.setStableInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: h */
        public void mo3600h(@NonNull Insets insets) {
            this.f5984c.setSystemGestureInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: i */
        public void mo3597i(@NonNull Insets insets) {
            this.f5984c.setSystemWindowInsets(insets.toPlatformInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0817e
        /* renamed from: j */
        public void mo3601j(@NonNull Insets insets) {
            this.f5984c.setTappableElementInsets(insets.toPlatformInsets());
        }

        public C0815c(@NonNull WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets.Builder builder;
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                builder = new WindowInsets.Builder(windowInsets);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f5984c = builder;
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.view.WindowInsetsCompat$g */
    /* loaded from: classes3.dex */
    public static class C0819g extends C0818f {

        /* renamed from: m */
        public Insets f5997m;

        public C0819g(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f5997m = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: b */
        public WindowInsetsCompat mo3623b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f5992c.consumeStableInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: c */
        public WindowInsetsCompat mo3624c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f5992c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: j */
        public final Insets mo3625j() {
            if (this.f5997m == null) {
                this.f5997m = Insets.m2908of(this.f5992c.getStableInsetLeft(), this.f5992c.getStableInsetTop(), this.f5992c.getStableInsetRight(), this.f5992c.getStableInsetBottom());
            }
            return this.f5997m;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: o */
        public boolean mo3626o() {
            return this.f5992c.isConsumed();
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: u */
        public void mo3627u(@Nullable Insets insets) {
            this.f5997m = insets;
        }

        public C0819g(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull C0819g c0819g) {
            super(windowInsetsCompat, c0819g);
            this.f5997m = null;
            this.f5997m = c0819g.f5997m;
        }
    }

    @NonNull
    @RequiresApi(20)
    public static WindowInsetsCompat toWindowInsetsCompat(@NonNull WindowInsets windowInsets, @Nullable View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) Preconditions.checkNotNull(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            windowInsetsCompat.m3589e(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.m3586a(view.getRootView());
        }
        return windowInsetsCompat;
    }

    @NonNull
    public WindowInsetsCompat inset(@IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, @IntRange(from = 0) int i4) {
        return this.f5960a.mo3615n(i, i2, i3, i4);
    }

    @RequiresApi(20)
    /* renamed from: androidx.core.view.WindowInsetsCompat$f */
    /* loaded from: classes3.dex */
    public static class C0818f extends C0823k {

        /* renamed from: h */
        public static boolean f5987h;

        /* renamed from: i */
        public static Method f5988i;

        /* renamed from: j */
        public static Class<?> f5989j;

        /* renamed from: k */
        public static Field f5990k;

        /* renamed from: l */
        public static Field f5991l;

        /* renamed from: c */
        @NonNull
        public final WindowInsets f5992c;

        /* renamed from: d */
        public Insets[] f5993d;

        /* renamed from: e */
        public Insets f5994e;

        /* renamed from: f */
        public WindowInsetsCompat f5995f;

        /* renamed from: g */
        public Insets f5996g;

        public C0818f(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f5994e = null;
            this.f5992c = windowInsets;
        }

        @SuppressLint({"PrivateApi"})
        /* renamed from: A */
        private static void m3606A() {
            try {
                f5988i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f5989j = cls;
                f5990k = cls.getDeclaredField("mVisibleInsets");
                f5991l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f5990k.setAccessible(true);
                f5991l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e(WindowInsetsCompat.f5959b, "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            f5987h = true;
        }

        @NonNull
        @SuppressLint({"WrongConstant"})
        /* renamed from: v */
        private Insets m3607v(int i, boolean z) {
            Insets insets = Insets.NONE;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    insets = Insets.max(insets, m3621w(i2, z));
                }
            }
            return insets;
        }

        /* renamed from: x */
        private Insets m3608x() {
            WindowInsetsCompat windowInsetsCompat = this.f5995f;
            return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : Insets.NONE;
        }

        @Nullable
        /* renamed from: y */
        private Insets m3609y(@NonNull View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f5987h) {
                m3606A();
            }
            Method method = f5988i;
            if (method != null && f5989j != null && f5990k != null) {
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        Log.w(WindowInsetsCompat.f5959b, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f5990k.get(f5991l.get(invoke));
                    if (rect != null) {
                        return Insets.m2909of(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    Log.e(WindowInsetsCompat.f5959b, "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                }
            }
            return null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: d */
        public void mo3610d(@NonNull View view) {
            Insets m3609y = m3609y(view);
            if (m3609y == null) {
                m3609y = Insets.NONE;
            }
            mo3619s(m3609y);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: e */
        public void mo3611e(@NonNull WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.m3589e(this.f5995f);
            windowInsetsCompat.m3588d(this.f5996g);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f5996g, ((C0818f) obj).f5996g);
            }
            return false;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: g */
        public Insets mo3612g(int i) {
            return m3607v(i, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: h */
        public Insets mo3613h(int i) {
            return m3607v(i, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: l */
        public final Insets mo3614l() {
            if (this.f5994e == null) {
                this.f5994e = Insets.m2908of(this.f5992c.getSystemWindowInsetLeft(), this.f5992c.getSystemWindowInsetTop(), this.f5992c.getSystemWindowInsetRight(), this.f5992c.getSystemWindowInsetBottom());
            }
            return this.f5994e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: n */
        public WindowInsetsCompat mo3615n(int i, int i2, int i3, int i4) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.f5992c));
            builder.setSystemWindowInsets(WindowInsetsCompat.m3585b(mo3614l(), i, i2, i3, i4));
            builder.setStableInsets(WindowInsetsCompat.m3585b(mo3625j(), i, i2, i3, i4));
            return builder.build();
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: p */
        public boolean mo3616p() {
            return this.f5992c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @SuppressLint({"WrongConstant"})
        /* renamed from: q */
        public boolean mo3617q(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0 && !m3622z(i2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: r */
        public void mo3618r(Insets[] insetsArr) {
            this.f5993d = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: s */
        public void mo3619s(@NonNull Insets insets) {
            this.f5996g = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: t */
        public void mo3620t(@Nullable WindowInsetsCompat windowInsetsCompat) {
            this.f5995f = windowInsetsCompat;
        }

        @NonNull
        /* renamed from: w */
        public Insets m3621w(int i, boolean z) {
            Insets stableInsets;
            int i2;
            if (i == 1) {
                return z ? Insets.m2908of(0, Math.max(m3608x().top, mo3614l().top), 0, 0) : Insets.m2908of(0, mo3614l().top, 0, 0);
            }
            if (i == 2) {
                if (z) {
                    Insets m3608x = m3608x();
                    Insets mo3625j = mo3625j();
                    return Insets.m2908of(Math.max(m3608x.left, mo3625j.left), 0, Math.max(m3608x.right, mo3625j.right), Math.max(m3608x.bottom, mo3625j.bottom));
                }
                Insets mo3614l = mo3614l();
                WindowInsetsCompat windowInsetsCompat = this.f5995f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int i3 = mo3614l.bottom;
                if (stableInsets != null) {
                    i3 = Math.min(i3, stableInsets.bottom);
                }
                return Insets.m2908of(mo3614l.left, 0, mo3614l.right, i3);
            }
            if (i != 8) {
                if (i == 16) {
                    return mo3631k();
                }
                if (i == 32) {
                    return mo3630i();
                }
                if (i == 64) {
                    return mo3632m();
                }
                if (i != 128) {
                    return Insets.NONE;
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f5995f;
                DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : mo3629f();
                return displayCutout != null ? Insets.m2908of(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : Insets.NONE;
            }
            Insets[] insetsArr = this.f5993d;
            stableInsets = insetsArr != null ? insetsArr[Type.m3592b(8)] : null;
            if (stableInsets != null) {
                return stableInsets;
            }
            Insets mo3614l2 = mo3614l();
            Insets m3608x2 = m3608x();
            int i4 = mo3614l2.bottom;
            if (i4 > m3608x2.bottom) {
                return Insets.m2908of(0, 0, 0, i4);
            }
            Insets insets = this.f5996g;
            return (insets == null || insets.equals(Insets.NONE) || (i2 = this.f5996g.bottom) <= m3608x2.bottom) ? Insets.NONE : Insets.m2908of(0, 0, 0, i2);
        }

        /* renamed from: z */
        public boolean m3622z(int i) {
            if (i != 1 && i != 2) {
                if (i == 4) {
                    return false;
                }
                if (i != 8 && i != 128) {
                    return true;
                }
            }
            return !m3621w(i, false).equals(Insets.NONE);
        }

        public C0818f(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull C0818f c0818f) {
            this(windowInsetsCompat, new WindowInsets(c0818f.f5992c));
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public final C0817e f5961a;

        public Builder() {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f5961a = new C0816d();
            } else {
                this.f5961a = new C0815c();
            }
        }

        @NonNull
        public WindowInsetsCompat build() {
            return this.f5961a.mo3595b();
        }

        @NonNull
        public Builder setDisplayCutout(@Nullable DisplayCutoutCompat displayCutoutCompat) {
            this.f5961a.mo3598c(displayCutoutCompat);
            return this;
        }

        @NonNull
        public Builder setInsets(int i, @NonNull Insets insets) {
            this.f5961a.mo3602d(i, insets);
            return this;
        }

        @NonNull
        public Builder setInsetsIgnoringVisibility(int i, @NonNull Insets insets) {
            this.f5961a.mo3603e(i, insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setMandatorySystemGestureInsets(@NonNull Insets insets) {
            this.f5961a.mo3599f(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setStableInsets(@NonNull Insets insets) {
            this.f5961a.mo3596g(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSystemGestureInsets(@NonNull Insets insets) {
            this.f5961a.mo3600h(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSystemWindowInsets(@NonNull Insets insets) {
            this.f5961a.mo3597i(insets);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTappableElementInsets(@NonNull Insets insets) {
            this.f5961a.mo3601j(insets);
            return this;
        }

        @NonNull
        public Builder setVisible(int i, boolean z) {
            this.f5961a.mo3604k(i, z);
            return this;
        }

        public Builder(@NonNull WindowInsetsCompat windowInsetsCompat) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f5961a = new C0816d(windowInsetsCompat);
            } else {
                this.f5961a = new C0815c(windowInsetsCompat);
            }
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.view.WindowInsetsCompat$i */
    /* loaded from: classes3.dex */
    public static class C0821i extends C0820h {

        /* renamed from: n */
        public Insets f5998n;

        /* renamed from: o */
        public Insets f5999o;

        /* renamed from: p */
        public Insets f6000p;

        public C0821i(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f5998n = null;
            this.f5999o = null;
            this.f6000p = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: i */
        public Insets mo3630i() {
            if (this.f5999o == null) {
                this.f5999o = Insets.toCompatInsets(this.f5992c.getMandatorySystemGestureInsets());
            }
            return this.f5999o;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: k */
        public Insets mo3631k() {
            if (this.f5998n == null) {
                this.f5998n = Insets.toCompatInsets(this.f5992c.getSystemGestureInsets());
            }
            return this.f5998n;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: m */
        public Insets mo3632m() {
            if (this.f6000p == null) {
                this.f6000p = Insets.toCompatInsets(this.f5992c.getTappableElementInsets());
            }
            return this.f6000p;
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0818f, androidx.core.view.WindowInsetsCompat.C0823k
        @NonNull
        /* renamed from: n */
        public WindowInsetsCompat mo3615n(int i, int i2, int i3, int i4) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f5992c.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.WindowInsetsCompat.C0819g, androidx.core.view.WindowInsetsCompat.C0823k
        /* renamed from: u */
        public void mo3627u(@Nullable Insets insets) {
        }

        public C0821i(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull C0821i c0821i) {
            super(windowInsetsCompat, c0821i);
            this.f5998n = null;
            this.f5999o = null;
            this.f6000p = null;
        }
    }

    @NonNull
    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(@NonNull Rect rect) {
        return new Builder(this).setSystemWindowInsets(Insets.m2909of(rect)).build();
    }

    public WindowInsetsCompat(@Nullable WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            C0823k c0823k = windowInsetsCompat.f5960a;
            if (Build.VERSION.SDK_INT >= 30 && (c0823k instanceof C0822j)) {
                this.f5960a = new C0822j(this, (C0822j) c0823k);
            } else if (c0823k instanceof C0821i) {
                this.f5960a = new C0821i(this, (C0821i) c0823k);
            } else if (c0823k instanceof C0820h) {
                this.f5960a = new C0820h(this, (C0820h) c0823k);
            } else if (c0823k instanceof C0819g) {
                this.f5960a = new C0819g(this, (C0819g) c0823k);
            } else if (c0823k instanceof C0818f) {
                this.f5960a = new C0818f(this, (C0818f) c0823k);
            } else {
                this.f5960a = new C0823k(this);
            }
            c0823k.mo3611e(this);
            return;
        }
        this.f5960a = new C0823k(this);
    }
}
