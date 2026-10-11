package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import androidx.work.impl.model.WorkTagDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public final class WorkTagDao_Impl implements WorkTagDao {

    /* renamed from: a */
    public final RoomDatabase f11891a;

    /* renamed from: b */
    public final EntityInsertionAdapter<WorkTag> f11892b;

    /* renamed from: c */
    public final SharedSQLiteStatement f11893c;

    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1658a extends EntityInsertionAdapter<WorkTag> {
        public C1658a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement stmt, WorkTag value) {
            if (value.getTag() == null) {
                stmt.bindNull(1);
            } else {
                stmt.bindString(1, value.getTag());
            }
            if (value.getWorkSpecId() == null) {
                stmt.bindNull(2);
            } else {
                stmt.bindString(2, value.getWorkSpecId());
            }
        }
    }

    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$b */
    /* loaded from: classes3.dex */
    public class C1659b extends SharedSQLiteStatement {
        public C1659b(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM worktag WHERE work_spec_id=?";
        }
    }

    public WorkTagDao_Impl(RoomDatabase __db) {
        this.f11891a = __db;
        this.f11892b = new C1658a(__db);
        this.f11893c = new C1659b(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public void deleteByWorkSpecId(final String id) {
        this.f11891a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11893c.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11891a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11891a.setTransactionSuccessful();
        } finally {
            this.f11891a.endTransaction();
            this.f11893c.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public List<String> getTagsForWorkSpecId(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11891a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11891a, acquire, false, null);
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

    @Override // androidx.work.impl.model.WorkTagDao
    public List<String> getWorkSpecIdsWithTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT work_spec_id FROM worktag WHERE tag=?", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        this.f11891a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11891a, acquire, false, null);
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

    @Override // androidx.work.impl.model.WorkTagDao
    public void insert(final WorkTag workTag) {
        this.f11891a.assertNotSuspendingTransaction();
        this.f11891a.beginTransaction();
        try {
            this.f11892b.insert((EntityInsertionAdapter<WorkTag>) workTag);
            this.f11891a.setTransactionSuccessful();
        } finally {
            this.f11891a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public void insertTags(final String id, final Set<String> tags) {
        WorkTagDao.DefaultImpls.insertTags(this, id, tags);
    }
}
