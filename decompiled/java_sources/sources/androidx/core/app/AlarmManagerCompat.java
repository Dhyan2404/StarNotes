package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class AlarmManagerCompat {

    @RequiresApi(21)
    /* renamed from: androidx.core.app.AlarmManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0527a {
        @DoNotInline
        /* renamed from: a */
        public static AlarmManager.AlarmClockInfo m2328a(long j, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j, pendingIntent);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2329b(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.AlarmManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0528b {
        @DoNotInline
        /* renamed from: a */
        public static void m2330a(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(i, j, pendingIntent);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m2331b(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(i, j, pendingIntent);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.app.AlarmManagerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0529c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2332a(AlarmManager alarmManager) {
            return alarmManager.canScheduleExactAlarms();
        }
    }

    public static boolean canScheduleExactAlarms(@NonNull AlarmManager alarmManager) {
        if (Build.VERSION.SDK_INT >= 31) {
            return C0529c.m2332a(alarmManager);
        }
        return true;
    }

    @SuppressLint({"MissingPermission"})
    public static void setAlarmClock(@NonNull AlarmManager alarmManager, long j, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        C0527a.m2329b(alarmManager, C0527a.m2328a(j, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i, long j, @NonNull PendingIntent pendingIntent) {
        C0528b.m2330a(alarmManager, i, j, pendingIntent);
    }

    public static void setExact(@NonNull AlarmManager alarmManager, int i, long j, @NonNull PendingIntent pendingIntent) {
        alarmManager.setExact(i, j, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i, long j, @NonNull PendingIntent pendingIntent) {
        C0528b.m2331b(alarmManager, i, j, pendingIntent);
    }
}
