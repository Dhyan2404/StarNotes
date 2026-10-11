package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class WorkNameDao_Impl implements WorkNameDao {

    /* renamed from: a */
    public final RoomDatabase f11792a;

    /* renamed from: b */
    public final EntityInsertionAdapter<WorkName> f11793b;

    /* renamed from: androidx.work.impl.model.WorkNameDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1627a extends EntityInsertionAdapter<WorkName> {
        public C1627a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, WorkName value) {
            if (value.getName() == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, value.getName());
            }
            if (value.getWorkSpecId() == null) {
                stmt.bindNull(2);
            } else {
                stmt.bindString(2, value.getWorkSpecId());
            }
        }
    }

    public WorkNameDao_Impl(RoomDatabase __db) {
        this.f11792a = __db;
        this.f11793b = new C1627a(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public List<String> getNamesForWorkSpecId(final String workSpecId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.f11792a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11792a, acquire, false, null);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public List<String> getWorkSpecIdsWithName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT work_spec_id FROM workname WHERE name=?", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.f11792a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11792a, acquire, false, null);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public void insert(final WorkName workName) {
        this.f11792a.assertNotSuspendingTransaction();
        this.f11792a.beginTransaction();
        try {
            this.f11793b.insert((EntityInsertionAdapter<WorkName>) workName);
            this.f11792a.setTransactionSuccessful();
        } finally {
            this.f11792a.endTransaction();
        }
    }
}
