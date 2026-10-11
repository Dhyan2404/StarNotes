package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.room.migration.Migration;
import androidx.sqlite.p004db.SupportSQLiteDatabase;

/* loaded from: classes3.dex */
public class gao extends Migration {
    public gao() {
        super(18, 19);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NonNull final SupportSQLiteDatabase database) {
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256");
    }
}
