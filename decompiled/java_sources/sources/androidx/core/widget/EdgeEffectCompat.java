package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class EdgeEffectCompat {

    /* renamed from: a */
    public final EdgeEffect f6156a;

    @RequiresApi(21)
    /* renamed from: androidx.core.widget.EdgeEffectCompat$a */
    /* loaded from: classes3.dex */
    public static class C0862a {
        private C0862a() {
        }

        @DoNotInline
        /* renamed from: a */
        public static void m3790a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.widget.EdgeEffectCompat$b */
    /* loaded from: classes3.dex */
    public static class C0863b {
        private C0863b() {
        }

        @DoNotInline
        /* renamed from: a */
        public static EdgeEffect m3791a(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        @DoNotInline
        /* renamed from: b */
        public static float m3792b(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return 0.0f;
            }
        }

        @DoNotInline
        /* renamed from: c */
        public static float m3793c(EdgeEffect edgeEffect, float f, float f2) {
            try {
                return edgeEffect.onPullDistance(f, f2);
            } catch (Throwable unused) {
                edgeEffect.onPull(f, f2);
                return 0.0f;
            }
        }
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.f6156a = new EdgeEffect(context);
    }

    @NonNull
    public static EdgeEffect create(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return Build.VERSION.SDK_INT >= 31 ? C0863b.m3791a(context, attributeSet) : new EdgeEffect(context);
    }

    public static float getDistance(@NonNull EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return C0863b.m3792b(edgeEffect);
        }
        return 0.0f;
    }

    public static float onPullDistance(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return C0863b.m3793c(edgeEffect, f, f2);
        }
        onPull(edgeEffect, f, f2);
        return f;
    }

    @Deprecated
    public boolean draw(Canvas canvas) {
        return this.f6156a.draw(canvas);
    }

    @Deprecated
    public void finish() {
        this.f6156a.finish();
    }

    @Deprecated
    public boolean isFinished() {
        return this.f6156a.isFinished();
    }

    @Deprecated
    public boolean onAbsorb(int i) {
        this.f6156a.onAbsorb(i);
        return true;
    }

    @Deprecated
    public boolean onPull(float f) {
        this.f6156a.onPull(f);
        return true;
    }

    @Deprecated
    public boolean onRelease() {
        this.f6156a.onRelease();
        return this.f6156a.isFinished();
    }

    @Deprecated
    public void setSize(int i, int i2) {
        this.f6156a.setSize(i, i2);
    }

    @Deprecated
    public boolean onPull(float f, float f2) {
        onPull(this.f6156a, f, f2);
        return true;
    }

    public static void onPull(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        C0862a.m3790a(edgeEffect, f, f2);
    }
}
