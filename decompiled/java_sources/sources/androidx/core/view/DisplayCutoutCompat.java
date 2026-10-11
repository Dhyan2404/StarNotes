package androidx.core.view;

import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import java.util.List;

/* loaded from: classes3.dex */
public final class DisplayCutoutCompat {

    /* renamed from: a */
    public final DisplayCutout f5819a;

    @RequiresApi(28)
    /* renamed from: androidx.core.view.DisplayCutoutCompat$a */
    /* loaded from: classes3.dex */
    public static class C0766a {
        @DoNotInline
        /* renamed from: a */
        public static DisplayCutout m3315a(Rect rect, List<Rect> list) {
            return new DisplayCutout(rect, list);
        }

        @DoNotInline
        /* renamed from: b */
        public static List<Rect> m3316b(DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m3317c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        @DoNotInline
        /* renamed from: d */
        public static int m3318d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        @DoNotInline
        /* renamed from: e */
        public static int m3319e(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        @DoNotInline
        /* renamed from: f */
        public static int m3320f(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.view.DisplayCutoutCompat$b */
    /* loaded from: classes3.dex */
    public static class C0767b {
        @DoNotInline
        /* renamed from: a */
        public static DisplayCutout m3321a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.DisplayCutoutCompat$c */
    /* loaded from: classes3.dex */
    public static class C0768c {
        @DoNotInline
        /* renamed from: a */
        public static DisplayCutout m3322a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        @DoNotInline
        /* renamed from: b */
        public static Insets m3323b(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    public DisplayCutoutCompat(@Nullable Rect rect, @Nullable List<Rect> list) {
        this(C0766a.m3315a(rect, list));
    }

    /* renamed from: a */
    public static DisplayCutout m3312a(@NonNull androidx.core.graphics.Insets insets, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Rect rect3, @Nullable Rect rect4, @NonNull androidx.core.graphics.Insets insets2) {
        return Build.VERSION.SDK_INT >= 30 ? C0768c.m3322a(insets.toPlatformInsets(), rect, rect2, rect3, rect4, insets2.toPlatformInsets()) : C0767b.m3321a(insets.toPlatformInsets(), rect, rect2, rect3, rect4);
    }

    /* renamed from: c */
    public static DisplayCutoutCompat m3313c(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompat(displayCutout);
    }

    @RequiresApi(28)
    /* renamed from: b */
    public DisplayCutout m3314b() {
        return this.f5819a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return ObjectsCompat.equals(this.f5819a, ((DisplayCutoutCompat) obj).f5819a);
    }

    @NonNull
    public List<Rect> getBoundingRects() {
        return C0766a.m3316b(this.f5819a);
    }

    public int getSafeInsetBottom() {
        return C0766a.m3317c(this.f5819a);
    }

    public int getSafeInsetLeft() {
        return C0766a.m3318d(this.f5819a);
    }

    public int getSafeInsetRight() {
        return C0766a.m3319e(this.f5819a);
    }

    public int getSafeInsetTop() {
        return C0766a.m3320f(this.f5819a);
    }

    @NonNull
    public androidx.core.graphics.Insets getWaterfallInsets() {
        return Build.VERSION.SDK_INT >= 30 ? androidx.core.graphics.Insets.toCompatInsets(C0768c.m3323b(this.f5819a)) : androidx.core.graphics.Insets.NONE;
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.f5819a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    @NonNull
    public String toString() {
        return "DisplayCutoutCompat{" + this.f5819a + "}";
    }

    public DisplayCutoutCompat(@NonNull androidx.core.graphics.Insets insets, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Rect rect3, @Nullable Rect rect4, @NonNull androidx.core.graphics.Insets insets2) {
        this(m3312a(insets, rect, rect2, rect3, rect4, insets2));
    }

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.f5819a = displayCutout;
    }
}
