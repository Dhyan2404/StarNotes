package com.sunia.HTREnginev2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.measurement.internal.zzaw;
import com.google.android.gms.measurement.internal.zzgf;

/* loaded from: classes5.dex */
public final class skp extends zzck {

    /* renamed from: e */
    public final /* synthetic */ zzgf f84246e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public skp(zzgf zzgfVar, Context context, String str) {
        super(context, str, null, 1);
        this.f84246e = zzgfVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            this.f84246e.zzj().zzg().zza("Opening the local database failed, dropping and recreating it");
            if (!this.f84246e.zza().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f84246e.zzj().zzg().zza("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                this.f84246e.zzj().zzg().zza("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzaw.m22292b(this.f84246e.zzj(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        zzaw.m22293c(this.f84246e.zzj(), sQLiteDatabase, NotificationCompat.CarExtender.f4975k, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @WorkerThread
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
