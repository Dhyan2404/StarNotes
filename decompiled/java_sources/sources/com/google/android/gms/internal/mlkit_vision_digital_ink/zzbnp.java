package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes5.dex */
final class zzbnp extends zzbio {
    static final zzbip zza = new zzbnn();
    private final DateFormat zzb = new SimpleDateFormat("hh:mm:ss a");

    private zzbnp() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final Time zza(zzbny zzbnyVar) throws IOException {
        Time time;
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        String zzi = zzbnyVar.zzi();
        try {
            synchronized (this) {
                time = new Time(this.zzb.parse(zzi).getTime());
            }
            return time;
        } catch (ParseException e) {
            throw new zzbif("Failed parsing '" + zzi + "' as SQL Time; at path " + zzbnyVar.zzf(), e);
        }
    }

    public /* synthetic */ zzbnp(zzbno zzbnoVar) {
    }
}
