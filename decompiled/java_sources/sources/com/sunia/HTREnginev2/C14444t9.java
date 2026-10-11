package com.sunia.HTREnginev2;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.CommandHandler;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.IdGenerator;
import com.google.android.material.motion.MotionUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.sunia.HTREnginev2.t9 */
/* loaded from: classes3.dex */
public class C14444t9 {

    /* renamed from: a */
    public static final String f84997a = Logger.tagWithPrefix("Alarms");

    @RequiresApi(19)
    /* renamed from: com.sunia.HTREnginev2.t9$a */
    /* loaded from: classes3.dex */
    public static class a {
        @DoNotInline
        /* renamed from: a */
        public static void m57320a(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
            alarmManager.setExact(type, triggerAtMillis, operation);
        }
    }

    /* renamed from: a */
    public static void m57316a(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId id) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(id);
        if (systemIdInfo != null) {
            m57317b(context, id, systemIdInfo.systemId);
            Logger.get().debug(f84997a, "Removing SystemIdInfo for workSpecId (" + id + MotionUtils.f31762d);
            systemIdInfoDao.removeSystemIdInfo(id);
        }
    }

    /* renamed from: b */
    public static void m57317b(@NonNull Context context, @NonNull WorkGenerationalId id, int alarmId) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.m7031b(context, id), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        Logger.get().debug(f84997a, "Cancelling existing alarm with (workSpecId, systemId) (" + id + ", " + alarmId + MotionUtils.f31762d);
        alarmManager.cancel(service);
    }

    /* renamed from: c */
    public static void m57318c(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId id, long triggerAtMillis) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(id);
        if (systemIdInfo != null) {
            m57317b(context, id, systemIdInfo.systemId);
            m57319d(context, id, systemIdInfo.systemId, triggerAtMillis);
        } else {
            int nextAlarmManagerId = new IdGenerator(workDatabase).nextAlarmManagerId();
            systemIdInfoDao.insertSystemIdInfo(SystemIdInfoKt.systemIdInfo(id, nextAlarmManagerId));
            m57319d(context, id, nextAlarmManagerId, triggerAtMillis);
        }
    }

    /* renamed from: d */
    public static void m57319d(@NonNull Context context, @NonNull WorkGenerationalId id, int alarmId, long triggerAtMillis) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.m7031b(context, id), 201326592);
        if (alarmManager != null) {
            a.m57320a(alarmManager, 0, triggerAtMillis, service);
        }
    }
}
