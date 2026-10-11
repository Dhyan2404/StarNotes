package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    /* renamed from: androidx.core.app.ActivityOptionsCompat$a */
    /* loaded from: classes3.dex */
    public static class C0522a extends ActivityOptionsCompat {

        /* renamed from: a */
        public final ActivityOptions f4766a;

        public C0522a(ActivityOptions activityOptions) {
            this.f4766a = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Rect getLaunchBounds() {
            return C0525d.m2325a(this.f4766a);
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
            C0524c.m2324c(this.f4766a, pendingIntent);
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        @NonNull
        public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
            return new C0522a(C0525d.m2326b(this.f4766a, rect));
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public ActivityOptionsCompat setShareIdentityEnabled(boolean z) {
            return Build.VERSION.SDK_INT < 34 ? this : new C0522a(C0526e.m2327a(this.f4766a, z));
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.f4766a.toBundle();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof C0522a) {
                this.f4766a.update(((C0522a) activityOptionsCompat).f4766a);
            }
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.app.ActivityOptionsCompat$b */
    /* loaded from: classes3.dex */
    public static class C0523b {
        @DoNotInline
        /* renamed from: a */
        public static ActivityOptions m2319a(Activity activity, View view, String str) {
            return ActivityOptions.makeSceneTransitionAnimation(activity, view, str);
        }

        @SafeVarargs
        @DoNotInline
        /* renamed from: b */
        public static ActivityOptions m2320b(Activity activity, Pair<View, String>... pairArr) {
            return ActivityOptions.makeSceneTransitionAnimation(activity, pairArr);
        }

        @DoNotInline
        /* renamed from: c */
        public static ActivityOptions m2321c() {
            return ActivityOptions.makeTaskLaunchBehind();
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.ActivityOptionsCompat$c */
    /* loaded from: classes3.dex */
    public static class C0524c {
        @DoNotInline
        /* renamed from: a */
        public static ActivityOptions m2322a() {
            return ActivityOptions.makeBasic();
        }

        @DoNotInline
        /* renamed from: b */
        public static ActivityOptions m2323b(View view, int i, int i2, int i3, int i4) {
            return ActivityOptions.makeClipRevealAnimation(view, i, i2, i3, i4);
        }

        @DoNotInline
        /* renamed from: c */
        public static void m2324c(ActivityOptions activityOptions, PendingIntent pendingIntent) {
            activityOptions.requestUsageTimeReport(pendingIntent);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.ActivityOptionsCompat$d */
    /* loaded from: classes3.dex */
    public static class C0525d {
        @DoNotInline
        /* renamed from: a */
        public static Rect m2325a(ActivityOptions activityOptions) {
            return activityOptions.getLaunchBounds();
        }

        @DoNotInline
        /* renamed from: b */
        public static ActivityOptions m2326b(ActivityOptions activityOptions, Rect rect) {
            return activityOptions.setLaunchBounds(rect);
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.app.ActivityOptionsCompat$e */
    /* loaded from: classes3.dex */
    public static class C0526e {
        @DoNotInline
        /* renamed from: a */
        public static ActivityOptions m2327a(ActivityOptions activityOptions, boolean z) {
            return activityOptions.setShareIdentityEnabled(z);
        }
    }

    @NonNull
    public static ActivityOptionsCompat makeBasic() {
        return new C0522a(C0524c.m2322a());
    }

    @NonNull
    public static ActivityOptionsCompat makeClipRevealAnimation(@NonNull View view, int i, int i2, int i3, int i4) {
        return new C0522a(C0524c.m2323b(view, i, i2, i3, i4));
    }

    @NonNull
    public static ActivityOptionsCompat makeCustomAnimation(@NonNull Context context, int i, int i2) {
        return new C0522a(ActivityOptions.makeCustomAnimation(context, i, i2));
    }

    @NonNull
    public static ActivityOptionsCompat makeScaleUpAnimation(@NonNull View view, int i, int i2, int i3, int i4) {
        return new C0522a(ActivityOptions.makeScaleUpAnimation(view, i, i2, i3, i4));
    }

    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, @NonNull View view, @NonNull String str) {
        return new C0522a(C0523b.m2319a(activity, view, str));
    }

    @NonNull
    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        return new C0522a(C0523b.m2321c());
    }

    @NonNull
    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(@NonNull View view, @NonNull Bitmap bitmap, int i, int i2) {
        return new C0522a(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i, i2));
    }

    @Nullable
    public Rect getLaunchBounds() {
        return null;
    }

    public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
    }

    @NonNull
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return this;
    }

    @NonNull
    public ActivityOptionsCompat setShareIdentityEnabled(boolean z) {
        return this;
    }

    @Nullable
    public Bundle toBundle() {
        return null;
    }

    public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
    }

    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, @Nullable androidx.core.util.Pair<View, String>... pairArr) {
        Pair[] pairArr2;
        if (pairArr != null) {
            pairArr2 = new Pair[pairArr.length];
            for (int i = 0; i < pairArr.length; i++) {
                androidx.core.util.Pair<View, String> pair = pairArr[i];
                pairArr2[i] = Pair.create(pair.first, pair.second);
            }
        } else {
            pairArr2 = null;
        }
        return new C0522a(C0523b.m2320b(activity, pairArr2));
    }
}
