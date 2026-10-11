package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes5.dex */
final class zzbnm extends zzbio {
    static final zzbip zza = new zzbnk();
    private final DateFormat zzb = new SimpleDateFormat("MMM d, yyyy");

    private zzbnm() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final Date zza(zzbny zzbnyVar) throws IOException {
        java.util.Date parse;
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        String zzi = zzbnyVar.zzi();
        try {
            synchronized (this) {
                parse = this.zzb.parse(zzi);
            }
            return new Date(parse.getTime());
        } catch (ParseException e) {
            throw new zzbif("Failed parsing '" + zzi + "' as SQL Date; at path " + zzbnyVar.zzf(), e);
        }
    }

    public /* synthetic */ zzbnm(zzbnl zzbnlVar) {
    }
}
