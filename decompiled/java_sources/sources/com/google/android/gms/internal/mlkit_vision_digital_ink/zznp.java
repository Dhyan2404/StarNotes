package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;

/* loaded from: classes5.dex */
public final class zznp {
    public static void zza(Context context, boolean z) {
        zzuw.zzc("%s: Setting migration to new file key to %s", "Migrations", Boolean.TRUE);
        context.getSharedPreferences("gms_icing_mdd_migrations", 0).edit().putBoolean("migrated_to_new_file_key", true).commit();
    }

    public static boolean zzb(Context context) {
        return context.getSharedPreferences("gms_icing_mdd_migrations", 0).getBoolean("migrated_to_new_file_key", false);
    }

    public static boolean zzc(Context context, zzno zznoVar) {
        zzuw.zzc("%s: Setting FileKeyVersion to %s", "Migrations", zznoVar.name());
        return context.getSharedPreferences("gms_icing_mdd_migrations", 0).edit().putInt("mdd_file_key_version", zznoVar.zzd).commit();
    }

    public static zzno zzd(Context context, zzsp zzspVar) {
        try {
            return zzno.zza(context.getSharedPreferences("gms_icing_mdd_migrations", 0).getInt("mdd_file_key_version", zzno.NEW_FILE_KEY.zzd));
        } catch (IllegalArgumentException unused) {
            context.getSharedPreferences("gms_icing_mdd_migrations", 0).edit().clear().commit();
            return zzno.USE_CHECKSUM_ONLY;
        }
    }
}
