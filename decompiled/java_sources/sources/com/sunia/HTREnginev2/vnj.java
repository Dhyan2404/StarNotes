package com.sunia.HTREnginev2;

import androidx.room.migration.Migration;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes3.dex */
public final class vnj extends Migration {

    /* renamed from: a */
    @NotNull
    public final Function1<SupportSQLiteDatabase, Unit> f87726a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public vnj(int i, int i2, @NotNull Function1<? super SupportSQLiteDatabase, Unit> migrateCallback) {
        super(i, i2);
        Intrinsics.checkNotNullParameter(migrateCallback, "migrateCallback");
        this.f87726a = migrateCallback;
    }

    @NotNull
    /* renamed from: a */
    public final Function1<SupportSQLiteDatabase, Unit> m57851a() {
        return this.f87726a;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.f87726a.invoke(database);
    }
}
