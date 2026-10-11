package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.room.migration.Migration;
import androidx.sqlite.p004db.SupportSQLiteDatabase;

/* loaded from: classes3.dex */
public class fao extends Migration {
    public fao() {
        super(17, 18);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NonNull final SupportSQLiteDatabase database) {
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807");
        database.execSQL("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0");
    }
}
