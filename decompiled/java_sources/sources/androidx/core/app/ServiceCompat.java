package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public final class ServiceCompat {
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    /* renamed from: a */
    public static final int f5156a = 255;

    /* renamed from: b */
    public static final int f5157b = 1073745919;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface StopForegroundFlags {
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.ServiceCompat$a */
    /* loaded from: classes3.dex */
    public static class C0615a {
        @DoNotInline
        /* renamed from: a */
        public static void m2630a(Service service, int i) {
            service.stopForeground(i);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.ServiceCompat$b */
    /* loaded from: classes3.dex */
    public static class C0616b {
        @DoNotInline
        /* renamed from: a */
        public static void m2631a(Service service, int i, Notification notification, int i2) {
            if (i2 == 0 || i2 == -1) {
                service.startForeground(i, notification, i2);
            } else {
                service.startForeground(i, notification, i2 & 255);
            }
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.app.ServiceCompat$c */
    /* loaded from: classes3.dex */
    public static class C0617c {
        @DoNotInline
        /* renamed from: a */
        public static void m2632a(Service service, int i, Notification notification, int i2) {
            if (i2 == 0 || i2 == -1) {
                service.startForeground(i, notification, i2);
            } else {
                service.startForeground(i, notification, i2 & ServiceCompat.f5157b);
            }
        }
    }

    public static void startForeground(@NonNull Service service, int i, @NonNull Notification notification, int i2) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0617c.m2632a(service, i, notification, i2);
        } else {
            C0616b.m2631a(service, i, notification, i2);
        }
    }

    public static void stopForeground(@NonNull Service service, int i) {
        C0615a.m2630a(service, i);
    }
}
