package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.skp;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzgf extends elp {

    /* renamed from: b */
    public final skp f29744b;

    /* renamed from: c */
    public boolean f29745c;

    public zzgf(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29744b = new skp(this, zza(), "google_app_measurement_local.db");
    }

    /* renamed from: b */
    public static long m22424b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query(NotificationCompat.CarExtender.f4975k, new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!cursor.moveToFirst()) {
                cursor.close();
                return -1L;
            }
            long j = cursor.getLong(0);
            cursor.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f A[Catch: all -> 0x004b, SQLiteException -> 0x004e, SQLiteFullException -> 0x0050, SQLiteDatabaseLockedException -> 0x00b0, TRY_ENTER, TryCatch #7 {SQLiteDatabaseLockedException -> 0x00b0, SQLiteFullException -> 0x0050, SQLiteException -> 0x004e, all -> 0x004b, blocks: (B:74:0x0040, B:76:0x0046, B:17:0x005f, B:19:0x0083, B:20:0x009d), top: B:73:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00a8  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    @androidx.annotation.WorkerThread
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m22425c(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgf.m22425c(int, byte[]):boolean");
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: d */
    public final SQLiteDatabase m22426d() throws SQLiteException {
        if (this.f29745c) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f29744b.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f29745c = true;
        return null;
    }

    @VisibleForTesting
    /* renamed from: e */
    public final boolean m22427e() {
        return zza().getDatabasePath("google_app_measurement_local.db").exists();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @WorkerThread
    public final void zzaa() {
        int delete;
        zzt();
        try {
            SQLiteDatabase m22426d = m22426d();
            if (m22426d == null || (delete = m22426d.delete(NotificationCompat.CarExtender.f4975k, null, null) + 0) <= 0) {
                return;
            }
            zzj().zzp().zza("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error resetting local analytics data. error", e);
        }
    }

    @WorkerThread
    public final boolean zzab() {
        return m22425c(3, new byte[0]);
    }

    @WorkerThread
    public final boolean zzac() {
        zzt();
        if (this.f29745c || !m22427e()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                try {
                    SQLiteDatabase m22426d = m22426d();
                    if (m22426d == null) {
                        this.f29745c = true;
                        if (m22426d != null) {
                            m22426d.close();
                        }
                        return false;
                    }
                    m22426d.beginTransaction();
                    m22426d.delete(NotificationCompat.CarExtender.f4975k, "type == ?", new String[]{Integer.toString(3)});
                    m22426d.setTransactionSuccessful();
                    m22426d.endTransaction();
                    m22426d.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i);
                    i += 20;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteFullException e) {
                zzj().zzg().zza("Error deleting app launch break from local database", e);
                this.f29745c = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e2) {
                if (0 != 0) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                zzj().zzg().zza("Error deleting app launch break from local database", e2);
                this.f29745c = true;
                if (0 != 0) {
                    sQLiteDatabase.close();
                }
            }
        }
        zzj().zzu().zza("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ hlp zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.sunia.HTREnginev2.elp
    public final boolean zzz() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0212  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable>] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r23) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgf.zza(int):java.util.List");
    }

    public final boolean zza(zzae zzaeVar) {
        zzq();
        byte[] m22722E = zzos.m22722E(zzaeVar);
        if (m22722E.length > 131072) {
            zzj().zzn().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return m22425c(2, m22722E);
    }

    public final boolean zza(zzbf zzbfVar) {
        Parcel obtain = Parcel.obtain();
        zzbfVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzj().zzn().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return m22425c(0, marshall);
    }

    public final boolean zza(zzon zzonVar) {
        Parcel obtain = Parcel.obtain();
        zzonVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzj().zzn().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return m22425c(1, marshall);
    }
}
