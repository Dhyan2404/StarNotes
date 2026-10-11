package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class zzbkv extends zzbio {
    public static final zzbip zza = new zzbku();
    private final List zzb;

    public zzbkv() {
        ArrayList arrayList = new ArrayList();
        this.zzb = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (zzbjt.zza()) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    private final Date zzc(zzbny zzbnyVar) throws IOException {
        String zzi = zzbnyVar.zzi();
        synchronized (this.zzb) {
            Iterator it2 = this.zzb.iterator();
            while (it2.hasNext()) {
                try {
                    return ((DateFormat) it2.next()).parse(zzi);
                } catch (ParseException unused) {
                }
            }
            try {
                return zzbnc.zza(zzi, new ParsePosition(0));
            } catch (ParseException e) {
                throw new zzbif("Failed parsing '" + zzi + "' as Date; at path " + zzbnyVar.zzf(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() != 9) {
            return zzc(zzbnyVar);
        }
        zzbnyVar.zzn();
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
