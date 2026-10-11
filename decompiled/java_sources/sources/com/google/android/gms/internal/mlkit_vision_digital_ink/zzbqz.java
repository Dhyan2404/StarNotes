package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbqz implements zzaha {
    final /* synthetic */ zzagb zza;
    final /* synthetic */ Executor zzb;
    final /* synthetic */ Context zzc;
    final /* synthetic */ zzagb zzd;
    final /* synthetic */ zzyg zze;
    final /* synthetic */ zzagb zzf;

    public zzbqz(zzagb zzagbVar, Executor executor, Context context, zzagb zzagbVar2, zzyg zzygVar, zzagb zzagbVar3) {
        this.zza = zzagbVar;
        this.zzb = executor;
        this.zzc = context;
        this.zzd = zzagbVar2;
        this.zze = zzygVar;
        this.zzf = zzagbVar3;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
    public final /* bridge */ /* synthetic */ Object zza() {
        long j;
        long j2;
        long j3;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        j = zzbra.zza;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient.Builder connectTimeout = builder.connectTimeout(j, timeUnit);
        j2 = zzbra.zzb;
        OkHttpClient.Builder readTimeout = connectTimeout.readTimeout(j2, timeUnit);
        j3 = zzbra.zzc;
        OkHttpClient.Builder retryOnConnectionFailure = readTimeout.writeTimeout(j3, timeUnit).retryOnConnectionFailure(true);
        return new zzbqw(this.zzc, new zzxs(new zzbqx(retryOnConnectionFailure.build()), this.zzc, new zzbrc(this.zzb, 2)), this.zze, null, null);
    }
}
