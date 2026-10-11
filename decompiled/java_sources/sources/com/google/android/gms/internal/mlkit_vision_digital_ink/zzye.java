package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* loaded from: classes5.dex */
public final class zzye {
    private final zzyg zza;
    private final zzaaf zzb;
    private final List zzc;
    private final List zzd;
    private final Uri zze;
    private final Uri zzf;

    public zzye(zzyd zzydVar) {
        zzyg zzygVar;
        zzaaf zzaafVar;
        List list;
        List list2;
        Uri uri;
        Uri uri2;
        zzygVar = zzydVar.zza;
        this.zza = zzygVar;
        zzaafVar = zzydVar.zzb;
        this.zzb = zzaafVar;
        list = zzydVar.zzc;
        this.zzc = list;
        list2 = zzydVar.zzd;
        this.zzd = list2;
        uri = zzydVar.zze;
        this.zze = uri;
        uri2 = zzydVar.zzf;
        this.zzf = uri2;
    }

    public final Uri zza() {
        return this.zzf;
    }

    public final Uri zzb() {
        return this.zze;
    }

    public final zzyg zzc() {
        return this.zza;
    }

    public final zzaaf zzd() {
        return this.zzb;
    }

    public final List zze(OutputStream outputStream) throws IOException {
        zzyb zza;
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        if (!this.zzd.isEmpty() && (zza = zzyb.zza(this.zzd, this.zze, outputStream)) != null) {
            arrayList.add(zza);
        }
        Iterator it2 = this.zzc.iterator();
        if (!it2.hasNext()) {
            Collections.reverse(arrayList);
            return arrayList;
        }
        OutputStream outputStream2 = (OutputStream) zzakf.zza(arrayList);
        if (outputStream2 != null) {
            outputStream2.close();
        }
        throw new zzzm("wrapForAppend not supported by compress");
    }

    public final List zzf(InputStream inputStream) throws IOException {
        zzya zza;
        ArrayList arrayList = new ArrayList();
        arrayList.add(inputStream);
        if (!this.zzd.isEmpty() && (zza = zzya.zza(this.zzd, this.zze, inputStream)) != null) {
            arrayList.add(zza);
        }
        for (zzaaj zzaajVar : this.zzc) {
            arrayList.add(new InflaterInputStream((InputStream) zzakf.zza(arrayList)));
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final List zzg(OutputStream outputStream) throws IOException {
        zzyb zzb;
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        if (!this.zzd.isEmpty() && (zzb = zzyb.zzb(this.zzd, this.zze, outputStream)) != null) {
            arrayList.add(zzb);
        }
        for (zzaaj zzaajVar : this.zzc) {
            arrayList.add(new DeflaterOutputStream((OutputStream) zzakf.zza(arrayList)));
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final boolean zzh() {
        return !this.zzc.isEmpty();
    }
}
