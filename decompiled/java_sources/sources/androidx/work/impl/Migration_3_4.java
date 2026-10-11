package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Landroidx/work/impl/Migration_3_4;", "Landroidx/room/migration/Migration;", "()V", "migrate", "", SyncConstant.LOCAL_DB_DIR_NAME, "Landroidx/sqlite/db/SupportSQLiteDatabase;", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class Migration_3_4 extends Migration {

    @NotNull
    public static final Migration_3_4 INSTANCE = new Migration_3_4();

    public Migration_3_4() {
        super(3, 4);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        db.execSQL(WorkDatabaseMigrationsKt.f11488c);
    }
}
