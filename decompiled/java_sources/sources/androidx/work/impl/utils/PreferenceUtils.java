package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Transformations;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.utils.PreferenceUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class PreferenceUtils {
    public static final String CREATE_PREFERENCE = "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))";
    public static final String INSERT_PREFERENCE = "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)";
    public static final String KEY_LAST_CANCEL_ALL_TIME_MS = "last_cancel_all_time_ms";
    public static final String KEY_RESCHEDULE_NEEDED = "reschedule_needed";
    public static final String PREFERENCES_FILE_NAME = "androidx.work.util.preferences";

    /* renamed from: b */
    public static final String f11941b = "last_force_stop_ms";

    /* renamed from: a */
    public final WorkDatabase f11942a;

    public PreferenceUtils(@NonNull WorkDatabase workDatabase) {
        this.f11942a = workDatabase;
    }

    /* renamed from: b */
    public static /* synthetic */ Long m7151b(Long l) {
        return Long.valueOf(l != null ? l.longValue() : 0L);
    }

    public static void migrateLegacyPreferences(@NonNull Context context, @NonNull SupportSQLiteDatabase sqLiteDatabase) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCES_FILE_NAME, 0);
        if (sharedPreferences.contains(KEY_RESCHEDULE_NEEDED) || sharedPreferences.contains(KEY_LAST_CANCEL_ALL_TIME_MS)) {
            long j = sharedPreferences.getLong(KEY_LAST_CANCEL_ALL_TIME_MS, 0L);
            long j2 = sharedPreferences.getBoolean(KEY_RESCHEDULE_NEEDED, false) ? 1L : 0L;
            sqLiteDatabase.beginTransaction();
            try {
                sqLiteDatabase.execSQL(INSERT_PREFERENCE, new Object[]{KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(j)});
                sqLiteDatabase.execSQL(INSERT_PREFERENCE, new Object[]{KEY_RESCHEDULE_NEEDED, Long.valueOf(j2)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.setTransactionSuccessful();
            } finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }

    public long getLastCancelAllTimeMillis() {
        Long longValue = this.f11942a.preferenceDao().getLongValue(KEY_LAST_CANCEL_ALL_TIME_MS);
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    @NonNull
    public LiveData<Long> getLastCancelAllTimeMillisLiveData() {
        return Transformations.map(this.f11942a.preferenceDao().getObservableLongValue(KEY_LAST_CANCEL_ALL_TIME_MS), new Function() { // from class: com.sunia.HTREnginev2.w6l
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Long m7151b;
                m7151b = PreferenceUtils.m7151b((Long) obj);
                return m7151b;
            }
        });
    }

    public long getLastForceStopEventMillis() {
        Long longValue = this.f11942a.preferenceDao().getLongValue(f11941b);
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public boolean getNeedsReschedule() {
        Long longValue = this.f11942a.preferenceDao().getLongValue(KEY_RESCHEDULE_NEEDED);
        return longValue != null && longValue.longValue() == 1;
    }

    public void setLastCancelAllTimeMillis(final long timeMillis) {
        this.f11942a.preferenceDao().insertPreference(new Preference(KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(timeMillis)));
    }

    public void setLastForceStopEventMillis(long lastForceStopTimeMillis) {
        this.f11942a.preferenceDao().insertPreference(new Preference(f11941b, Long.valueOf(lastForceStopTimeMillis)));
    }

    public void setNeedsReschedule(boolean needsReschedule) {
        this.f11942a.preferenceDao().insertPreference(new Preference(KEY_RESCHEDULE_NEEDED, needsReschedule));
    }
}
