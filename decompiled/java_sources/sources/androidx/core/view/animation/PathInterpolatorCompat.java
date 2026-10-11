package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class PathInterpolatorCompat {

    @RequiresApi(21)
    /* renamed from: androidx.core.view.animation.PathInterpolatorCompat$a */
    /* loaded from: classes3.dex */
    public static class C0846a {
        @DoNotInline
        /* renamed from: a */
        public static Interpolator m3720a(float f, float f2) {
            return new PathInterpolator(f, f2);
        }

        @DoNotInline
        /* renamed from: b */
        public static Interpolator m3721b(float f, float f2, float f3, float f4) {
            return new PathInterpolator(f, f2, f3, f4);
        }

        @DoNotInline
        /* renamed from: c */
        public static Interpolator m3722c(Path path) {
            return new PathInterpolator(path);
        }
    }

    @NonNull
    public static Interpolator create(@NonNull Path path) {
        return C0846a.m3722c(path);
    }

    @NonNull
    public static Interpolator create(float f, float f2) {
        return C0846a.m3720a(f, f2);
    }

    @NonNull
    public static Interpolator create(float f, float f2, float f3, float f4) {
        return C0846a.m3721b(f, f2, f3, f4);
    }
}
