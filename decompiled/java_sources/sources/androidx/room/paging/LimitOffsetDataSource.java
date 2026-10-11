package androidx.room.paging;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.paging.PositionalDataSource;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.p004db.SupportSQLiteQuery;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public abstract class LimitOffsetDataSource<T> extends PositionalDataSource<T> {

    /* renamed from: a */
    public final RoomSQLiteQuery f10218a;

    /* renamed from: b */
    public final String f10219b;

    /* renamed from: c */
    public final String f10220c;

    /* renamed from: d */
    public final RoomDatabase f10221d;

    /* renamed from: e */
    public final InvalidationTracker.Observer f10222e;

    /* renamed from: f */
    public final boolean f10223f;

    /* renamed from: g */
    public final AtomicBoolean f10224g;

    /* renamed from: androidx.room.paging.LimitOffsetDataSource$a */
    /* loaded from: classes3.dex */
    public class C1428a extends InvalidationTracker.Observer {
        public C1428a(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.InvalidationTracker.Observer
        public void onInvalidated(@NonNull Set<String> set) {
            LimitOffsetDataSource.this.invalidate();
        }
    }

    public LimitOffsetDataSource(@NonNull RoomDatabase roomDatabase, @NonNull SupportSQLiteQuery supportSQLiteQuery, boolean z, @NonNull String... strArr) {
        this(roomDatabase, RoomSQLiteQuery.copyFrom(supportSQLiteQuery), z, strArr);
    }

    /* renamed from: a */
    public final RoomSQLiteQuery m6365a(int i, int i2) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(this.f10220c, this.f10218a.getArgCount() + 2);
        acquire.copyArgumentsFrom(this.f10218a);
        acquire.bindLong(acquire.getArgCount() - 1, i2);
        acquire.bindLong(acquire.getArgCount(), i);
        return acquire;
    }

    /* renamed from: b */
    public final void m6366b() {
        if (this.f10224g.compareAndSet(false, true)) {
            this.f10221d.getInvalidationTracker().addWeakObserver(this.f10222e);
        }
    }

    @NonNull
    public abstract List<T> convertRows(@NonNull Cursor cursor);

    public int countItems() {
        m6366b();
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(this.f10219b, this.f10218a.getArgCount());
        acquire.copyArgumentsFrom(this.f10218a);
        Cursor query = this.f10221d.query(acquire);
        try {
            if (query.moveToFirst()) {
                return query.getInt(0);
            }
            return 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public boolean isInvalid() {
        m6366b();
        this.f10221d.getInvalidationTracker().refreshVersionsSync();
        return super.isInvalid();
    }

    public void loadInitial(@NonNull PositionalDataSource.LoadInitialParams loadInitialParams, @NonNull PositionalDataSource.LoadInitialCallback<T> loadInitialCallback) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        RoomSQLiteQuery roomSQLiteQuery2;
        m6366b();
        List<T> emptyList = Collections.emptyList();
        this.f10221d.beginTransaction();
        Cursor cursor = null;
        try {
            int countItems = countItems();
            if (countItems != 0) {
                int computeInitialLoadPosition = computeInitialLoadPosition(loadInitialParams, countItems);
                roomSQLiteQuery = m6365a(computeInitialLoadPosition, computeInitialLoadSize(loadInitialParams, computeInitialLoadPosition, countItems));
                try {
                    cursor = this.f10221d.query(roomSQLiteQuery);
                    List<T> convertRows = convertRows(cursor);
                    this.f10221d.setTransactionSuccessful();
                    roomSQLiteQuery2 = roomSQLiteQuery;
                    i = computeInitialLoadPosition;
                    emptyList = convertRows;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.f10221d.endTransaction();
                    if (roomSQLiteQuery != null) {
                        roomSQLiteQuery.release();
                    }
                    throw th;
                }
            } else {
                i = 0;
                roomSQLiteQuery2 = null;
            }
            if (cursor != null) {
                cursor.close();
            }
            this.f10221d.endTransaction();
            if (roomSQLiteQuery2 != null) {
                roomSQLiteQuery2.release();
            }
            loadInitialCallback.onResult(emptyList, i, countItems);
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = null;
        }
    }

    public void loadRange(@NonNull PositionalDataSource.LoadRangeParams loadRangeParams, @NonNull PositionalDataSource.LoadRangeCallback<T> loadRangeCallback) {
        loadRangeCallback.onResult(loadRange(loadRangeParams.startPosition, loadRangeParams.loadSize));
    }

    public LimitOffsetDataSource(@NonNull RoomDatabase roomDatabase, @NonNull SupportSQLiteQuery supportSQLiteQuery, boolean z, boolean z2, @NonNull String... strArr) {
        this(roomDatabase, RoomSQLiteQuery.copyFrom(supportSQLiteQuery), z, z2, strArr);
    }

    @NonNull
    public List<T> loadRange(int i, int i2) {
        RoomSQLiteQuery m6365a = m6365a(i, i2);
        if (this.f10223f) {
            this.f10221d.beginTransaction();
            Cursor cursor = null;
            try {
                cursor = this.f10221d.query(m6365a);
                List<T> convertRows = convertRows(cursor);
                this.f10221d.setTransactionSuccessful();
                return convertRows;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
                this.f10221d.endTransaction();
                m6365a.release();
            }
        }
        Cursor query = this.f10221d.query(m6365a);
        try {
            return convertRows(query);
        } finally {
            query.close();
            m6365a.release();
        }
    }

    public LimitOffsetDataSource(@NonNull RoomDatabase roomDatabase, @NonNull RoomSQLiteQuery roomSQLiteQuery, boolean z, @NonNull String... strArr) {
        this(roomDatabase, roomSQLiteQuery, z, true, strArr);
    }

    public LimitOffsetDataSource(@NonNull RoomDatabase roomDatabase, @NonNull RoomSQLiteQuery roomSQLiteQuery, boolean z, boolean z2, @NonNull String... strArr) {
        this.f10224g = new AtomicBoolean(false);
        this.f10221d = roomDatabase;
        this.f10218a = roomSQLiteQuery;
        this.f10223f = z;
        this.f10219b = "SELECT COUNT(*) FROM ( " + roomSQLiteQuery.getQuery() + " )";
        this.f10220c = "SELECT * FROM ( " + roomSQLiteQuery.getQuery() + " ) LIMIT ? OFFSET ?";
        this.f10222e = new C1428a(strArr);
        if (z2) {
            m6366b();
        }
    }
}
