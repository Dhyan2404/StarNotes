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
public final class DependencyDao_Impl implements DependencyDao {

    /* renamed from: a */
    public final RoomDatabase f11765a;

    /* renamed from: b */
    public final EntityInsertionAdapter<Dependency> f11766b;

    /* renamed from: androidx.work.impl.model.DependencyDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1619a extends EntityInsertionAdapter<Dependency> {
        public C1619a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, Dependency value) {
            if (value.getWorkSpecId() == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, value.getWorkSpecId());
            }
            if (value.getPrerequisiteId() == null) {
                stmt.bindNull(2);
            } else {
                stmt.bindString(2, value.getPrerequisiteId());
            }
        }
    }

    public DependencyDao_Impl(RoomDatabase __db) {
        this.f11765a = __db;
        this.f11766b = new C1619a(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.DependencyDao
    public List<String> getDependentWorkIds(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11765a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11765a, acquire, false, null);
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

    @Override // androidx.work.impl.model.DependencyDao
    public List<String> getPrerequisites(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT prerequisite_id FROM dependency WHERE work_spec_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11765a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11765a, acquire, false, null);
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

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasCompletedAllPrerequisites(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11765a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor query = DBUtil.query(this.f11765a, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z = query.getInt(0) != 0;
            }
            return z;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasDependents(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11765a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor query = DBUtil.query(this.f11765a, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z = query.getInt(0) != 0;
            }
            return z;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public void insertDependency(final Dependency dependency) {
        this.f11765a.assertNotSuspendingTransaction();
        this.f11765a.beginTransaction();
        try {
            this.f11766b.insert((EntityInsertionAdapter<Dependency>) dependency);
            this.f11765a.setTransactionSuccessful();
        } finally {
            this.f11765a.endTransaction();
        }
    }
}
