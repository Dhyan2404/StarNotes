package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzbqw implements zzgo {
    private final Context zza;
    private final zzxs zzb;
    private final zzyg zzc;

    public zzbqw(Context context, zzxs zzxsVar, zzyg zzygVar, @Nullable zzbqy zzbqyVar, byte[] bArr) {
        this.zza = context;
        this.zzb = zzxsVar;
        this.zzc = zzygVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgo
    public final zzasi zza(zzgn zzgnVar) {
        String lastPathSegment = zzgnVar.zzb().getLastPathSegment();
        lastPathSegment.getClass();
        try {
            File parentFile = zzys.zza(zzgnVar.zzb(), this.zza).getParentFile();
            parentFile.getClass();
            try {
                return zzbrt.zza(new zzbqv(this, zzgnVar, parentFile, lastPathSegment, (zzxu) this.zzc.zzc(zzgnVar.zzb(), zzzv.zza())));
            } catch (IOException e) {
                Log.e("OffroadFileDownloader", String.format("Unable to create mobstore ResponseWriter for file %s", zzgnVar.zzb()), e);
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.UNABLE_TO_CREATE_MOBSTORE_RESPONSE_WRITER_ERROR);
                zzbgVar.zza(e);
                return zzarx.zzg(zzbgVar.zze());
            }
        } catch (IOException e2) {
            Log.e("OffroadFileDownloader", String.format("The file uri is malformed, uri = %s", zzgnVar.zzb()));
            zzbg zzbgVar2 = new zzbg();
            zzbgVar2.zzb(zzbh.MALFORMED_FILE_URI_ERROR);
            zzbgVar2.zza(e2);
            return zzarx.zzg(zzbgVar2.zze());
        }
    }

    public final /* synthetic */ Object zzb(zzgn zzgnVar, final File file, final String str, zzxu zzxuVar, zzbrp zzbrpVar) throws zzbj {
        zzxh zzxhVar = new zzxh(this.zzb, zzgnVar.zzf(), file, str, new zzbpt(zzbrpVar), zzxuVar, null);
        zzxhVar.zzp(null);
        if (zzgl.zzc == zzgnVar.zzc()) {
            zzxhVar.zzd(zzxg.WIFI_OR_CELLULAR);
        } else {
            zzxhVar.zzd(zzxg.WIFI_ONLY);
        }
        if (zzgnVar.zza() > 0) {
            zzxhVar.zze(zzgnVar.zza());
        }
        zzajm zze = zzgnVar.zze();
        int size = zze.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) zze.get(i);
            zzxhVar.zzc((String) pair.first, (String) pair.second);
        }
        zzbrpVar.zza(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqu
            @Override // java.lang.Runnable
            public final void run() {
                zzbqw.this.zzc(file, str);
            }
        }, zzasq.zzb());
        zzxhVar.zzm();
        Log.d("OffroadFileDownloader", String.format("Data download scheduled for file: %s", zzgnVar.zzf()));
        return "Data download scheduled for file ".concat(zzgnVar.zzf());
    }

    public final /* synthetic */ void zzc(File file, String str) {
        this.zzb.zzd(file, str);
    }
}
