package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import androidx.work.impl.model.SystemIdInfoDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {

    /* renamed from: a */
    public final RoomDatabase f11781a;

    /* renamed from: b */
    public final EntityInsertionAdapter<SystemIdInfo> f11782b;

    /* renamed from: c */
    public final SharedSQLiteStatement f11783c;

    /* renamed from: d */
    public final SharedSQLiteStatement f11784d;

    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1624a extends EntityInsertionAdapter<SystemIdInfo> {
        public C1624a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, SystemIdInfo value) {
            String str = value.workSpecId;
            if (str == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, str);
            }
            stmt.bindLong(2, value.getGeneration());
            stmt.bindLong(3, value.systemId);
        }
    }

    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$b */
    /* loaded from: classes3.dex */
    public class C1625b extends SharedSQLiteStatement {
        public C1625b(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
        }
    }

    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$c */
    /* loaded from: classes3.dex */
    public class C1626c extends SharedSQLiteStatement {
        public C1626c(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public SystemIdInfoDao_Impl(RoomDatabase __db) {
        this.f11781a = __db;
        this.f11782b = new C1624a(__db);
        this.f11783c = new C1625b(__db);
        this.f11784d = new C1626c(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(String str, int i) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        acquire.bindLong(2, i);
        this.f11781a.assertNotSuspendingTransaction();
        SystemIdInfo systemIdInfo = null;
        String string = null;
        Cursor query = DBUtil.query(this.f11781a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "work_spec_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "system_id");
            if (query.moveToFirst()) {
                if (!query.isNull(columnIndexOrThrow)) {
                    string = query.getString(columnIndexOrThrow);
                }
                systemIdInfo = new SystemIdInfo(string, query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3));
            }
            return systemIdInfo;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List<String> getWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f11781a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11781a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(final SystemIdInfo systemIdInfo) {
        this.f11781a.assertNotSuspendingTransaction();
        this.f11781a.beginTransaction();
        try {
            this.f11782b.insert((EntityInsertionAdapter<SystemIdInfo>) systemIdInfo);
            this.f11781a.setTransactionSuccessful();
        } finally {
            this.f11781a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final String workSpecId, final int generation) {
        this.f11781a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11783c.acquire();
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        acquire.bindLong(2, generation);
        this.f11781a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11781a.setTransactionSuccessful();
        } finally {
            this.f11781a.endTransaction();
            this.f11783c.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final String workSpecId) {
        this.f11781a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11784d.acquire();
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.f11781a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11781a.setTransactionSuccessful();
        } finally {
            this.f11781a.endTransaction();
            this.f11784d.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(final WorkGenerationalId id) {
        return SystemIdInfoDao.DefaultImpls.getSystemIdInfo(this, id);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final WorkGenerationalId id) {
        SystemIdInfoDao.DefaultImpls.removeSystemIdInfo(this, id);
    }
}
