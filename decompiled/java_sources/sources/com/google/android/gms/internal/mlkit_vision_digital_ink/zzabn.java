package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzabn implements zzaaq {
    private final Context zza;
    private final Executor zzb;
    private final String zzc;
    private final zzaha zzd;
    private SharedPreferences zze;
    private final zzabg zzf;

    public /* synthetic */ zzabn(zzabi zzabiVar, zzabm zzabmVar) {
        Context context;
        Executor executor;
        String str;
        zzabg zzabgVar;
        zzaha zzahaVar;
        context = zzabiVar.zza;
        this.zza = context;
        executor = zzabiVar.zzb;
        this.zzb = executor;
        str = zzabiVar.zzc;
        this.zzc = str;
        zzabgVar = zzabiVar.zzf;
        this.zzf = zzabgVar;
        zzahaVar = zzabiVar.zze;
        this.zzd = zzahaVar;
    }

    public static zzabi zzd(Context context, Executor executor) {
        return new zzabi(context.getApplicationContext(), executor, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaq
    public final zzasi zza() {
        return ((Boolean) this.zzd.zza()).booleanValue() ? zzarx.zzi() : zzarx.zzl(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabe
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzabn.this.zzf();
                return null;
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaq
    public final zzasi zzb(zzbvu zzbvuVar) {
        zzabg zzabgVar = this.zzf;
        return zzarx.zzh(zzabgVar.zza.zza(new zzabl(this.zze, null, null), zzbvuVar));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaq
    public final zzasi zzc() {
        return zzarx.zzl(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzabn.this.zze();
            }
        }, this.zzb);
    }

    public final /* synthetic */ Boolean zze() throws Exception {
        this.zze = this.zza.getSharedPreferences(this.zzc, 0);
        return Boolean.valueOf(!r0.getAll().isEmpty());
    }

    public final /* synthetic */ Void zzf() throws Exception {
        Set<String> keySet = this.zze.getAll().keySet();
        SharedPreferences.Editor edit = this.zze.edit();
        Iterator<String> it2 = keySet.iterator();
        while (it2.hasNext()) {
            edit.remove(it2.next());
        }
        if (edit.commit()) {
            return null;
        }
        throw new IOException("Failed to remove migrated SharedPreferences keys: ".concat(String.valueOf(this.zzc)));
    }
}
