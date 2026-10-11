package androidx.room.migration;

import androidx.annotation.NonNull;
import androidx.sqlite.p004db.SupportSQLiteDatabase;

/* loaded from: classes3.dex */
public interface AutoMigrationSpec {
    default void onPostMigrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
    }
}
