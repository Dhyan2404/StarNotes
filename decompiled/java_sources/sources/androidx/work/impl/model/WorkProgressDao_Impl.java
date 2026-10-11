package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import androidx.work.Data;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {

    /* renamed from: a */
    public final RoomDatabase f11797a;

    /* renamed from: b */
    public final EntityInsertionAdapter<WorkProgress> f11798b;

    /* renamed from: c */
    public final SharedSQLiteStatement f11799c;

    /* renamed from: d */
    public final SharedSQLiteStatement f11800d;

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1628a extends EntityInsertionAdapter<WorkProgress> {
        public C1628a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, WorkProgress value) {
            if (value.getWorkSpecId() == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, value.getWorkSpecId());
            }
            byte[] byteArrayInternal = Data.toByteArrayInternal(value.getProgress());
            if (byteArrayInternal == null) {
                stmt.bindNull(2);
            } else {
                stmt.bindBlob(2, byteArrayInternal);
            }
        }
    }

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$b */
    /* loaded from: classes3.dex */
    public class C1629b extends SharedSQLiteStatement {
        public C1629b(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkProgressDao_Impl$c */
    /* loaded from: classes3.dex */
    public class C1630c extends SharedSQLiteStatement {
        public C1630c(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM WorkProgress";
        }
    }

    public WorkProgressDao_Impl(RoomDatabase __db) {
        this.f11797a = __db;
        this.f11798b = new C1628a(__db);
        this.f11799c = new C1629b(__db);
        this.f11800d = new C1630c(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void delete(final String workSpecId) {
        this.f11797a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11799c.acquire();
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.f11797a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11797a.setTransactionSuccessful();
        } finally {
            this.f11797a.endTransaction();
            this.f11799c.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void deleteAll() {
        this.f11797a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11800d.acquire();
        this.f11797a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11797a.setTransactionSuccessful();
        } finally {
            this.f11797a.endTransaction();
            this.f11800d.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public Data getProgressForWorkSpecId(final String workSpecId) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT progress FROM WorkProgress WHERE work_spec_id=?", 1);
        if (workSpecId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, workSpecId);
        }
        this.f11797a.assertNotSuspendingTransaction();
        Data data = null;
        Cursor query = DBUtil.query(this.f11797a, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                byte[] blob = query.isNull(0) ? null : query.getBlob(0);
                if (blob != null) {
                    data = Data.fromByteArray(blob);
                }
            }
            return data;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void insert(final WorkProgress progress) {
        this.f11797a.assertNotSuspendingTransaction();
        this.f11797a.beginTransaction();
        try {
            this.f11798b.insert((EntityInsertionAdapter<WorkProgress>) progress);
            this.f11797a.setTransactionSuccessful();
        } finally {
            this.f11797a.endTransaction();
        }
    }
}
