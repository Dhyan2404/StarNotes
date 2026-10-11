package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class PreferenceDao_Impl implements PreferenceDao {

    /* renamed from: a */
    public final RoomDatabase f11770a;

    /* renamed from: b */
    public final EntityInsertionAdapter<Preference> f11771b;

    /* renamed from: androidx.work.impl.model.PreferenceDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1620a extends EntityInsertionAdapter<Preference> {
        public C1620a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, Preference value) {
            if (value.getKey() == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, value.getKey());
            }
            if (value.getValue() == null) {
                stmt.bindNull(2);
            } else {
                stmt.bindLong(2, value.getValue().longValue());
            }
        }
    }

    /* renamed from: androidx.work.impl.model.PreferenceDao_Impl$b */
    /* loaded from: classes3.dex */
    public class CallableC1621b implements Callable<Long> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11773e;

        public CallableC1621b(final RoomSQLiteQuery val$_statement) {
            this.f11773e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long call() throws Exception {
            Long l = null;
            Cursor query = DBUtil.query(PreferenceDao_Impl.this.f11770a, this.f11773e, false, null);
            try {
                if (query.moveToFirst() && !query.isNull(0)) {
                    l = Long.valueOf(query.getLong(0));
                }
                return l;
            } finally {
                query.close();
            }
        }

        public void finalize() {
            this.f11773e.release();
        }
    }

    public PreferenceDao_Impl(RoomDatabase __db) {
        this.f11770a = __db;
        this.f11771b = new C1620a(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long getLongValue(final String key) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT long_value FROM Preference where `key`=?", 1);
        if (key == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, key);
        }
        this.f11770a.assertNotSuspendingTransaction();
        Long l = null;
        Cursor query = DBUtil.query(this.f11770a, acquire, false, null);
        try {
            if (query.moveToFirst() && !query.isNull(0)) {
                l = Long.valueOf(query.getLong(0));
            }
            return l;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public LiveData<Long> getObservableLongValue(final String key) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT long_value FROM Preference where `key`=?", 1);
        if (key == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, key);
        }
        return this.f11770a.getInvalidationTracker().createLiveData(new String[]{androidx.preference.Preference.f8761I0}, false, new CallableC1621b(acquire));
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void insertPreference(final Preference preference) {
        this.f11770a.assertNotSuspendingTransaction();
        this.f11770a.beginTransaction();
        try {
            this.f11771b.insert((EntityInsertionAdapter<Preference>) preference);
            this.f11770a.setTransactionSuccessful();
        } finally {
            this.f11770a.endTransaction();
        }
    }
}
