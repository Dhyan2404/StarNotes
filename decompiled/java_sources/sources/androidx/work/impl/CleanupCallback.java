package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import androidx.work.Clock;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Landroidx/work/impl/CleanupCallback;", "Landroidx/room/RoomDatabase$Callback;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", SyncConstant.LOCAL_DB_DIR_NAME, "", "onOpen", "Landroidx/work/Clock;", "a", "Landroidx/work/Clock;", "getClock", "()Landroidx/work/Clock;", "clock", "", "b", "()Ljava/lang/String;", "pruneSQL", "", "()J", "pruneDate", Constants.CONSTRUCTOR_NAME, "(Landroidx/work/Clock;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CleanupCallback extends RoomDatabase.Callback {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Clock clock;

    public CleanupCallback(@NotNull Clock clock) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.clock = clock;
    }

    /* renamed from: a */
    public final long m6959a() {
        return this.clock.currentTimeMillis() - WorkDatabaseKt.PRUNE_THRESHOLD_MILLIS;
    }

    /* renamed from: b */
    public final String m6960b() {
        return WorkDatabaseKt.f11484a + m6959a() + WorkDatabaseKt.f11485b;
    }

    @NotNull
    public final Clock getClock() {
        return this.clock;
    }

    @Override // androidx.room.RoomDatabase.Callback
    public void onOpen(@NotNull SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        super.onOpen(db);
        db.beginTransaction();
        try {
            db.execSQL(m6960b());
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }
}
