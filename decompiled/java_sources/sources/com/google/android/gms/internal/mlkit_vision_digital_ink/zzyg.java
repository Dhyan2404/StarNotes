package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzyg {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final List zzc = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    public zzyg(List list, List list2, List list3) {
        zzaly listIterator = ((zzajm) list).listIterator(0);
        while (listIterator.hasNext()) {
            zzaaf zzaafVar = (zzaaf) listIterator.next();
            if (TextUtils.isEmpty(zzaafVar.zzh())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                zzaaf zzaafVar2 = (zzaaf) this.zza.put(zzaafVar.zzh(), zzaafVar);
                if (zzaafVar2 != null) {
                    throw new IllegalArgumentException("Cannot override Backend " + zzaafVar2.getClass().getCanonicalName() + " with " + zzaafVar.getClass().getCanonicalName());
                }
            }
        }
        zzaly listIterator2 = ((zzajm) list2).listIterator(0);
        while (listIterator2.hasNext()) {
            zzaaj zzaajVar = (zzaaj) listIterator2.next();
            if (TextUtils.isEmpty("compress")) {
                Log.w("MobStore.FileStorage", "Cannot register transform, name empty");
            } else if (((zzaaj) this.zzb.put("compress", zzaajVar)) != null) {
                throw new IllegalArgumentException("Cannot to override Transform " + zzaaj.class.getCanonicalName() + " with " + zzaajVar.getClass().getCanonicalName());
            }
        }
        this.zzc.addAll(list3);
    }

    private static final Uri zzk(Uri uri) {
        return uri.buildUpon().fragment(null).build();
    }

    private final zzye zzl(Uri uri) throws IOException {
        zzajm zzn = zzn(uri);
        zzyd zzydVar = new zzyd(null);
        zzydVar.zzg(this);
        zzydVar.zzc(zzm(uri.getScheme()));
        zzydVar.zze(this.zzc);
        zzydVar.zzh(zzn);
        zzydVar.zzf(uri);
        if (!zzn.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str = (String) arrayList.get(arrayList.size() - 1);
                ListIterator listIterator = zzn.listIterator(zzn.size());
                while (listIterator.hasPrevious()) {
                }
                arrayList.set(arrayList.size() - 1, str);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        zzydVar.zzd(uri);
        return new zzye(zzydVar);
    }

    private final zzaaf zzm(String str) throws IOException {
        zzaaf zzaafVar = (zzaaf) this.zza.get(str);
        if (zzaafVar != null) {
            return zzaafVar;
        }
        throw new zzzm(String.format("Cannot open, unregistered backend: %s", str));
    }

    private final zzajm zzn(Uri uri) throws zzzm {
        zzaji zze = zzajm.zze();
        zzaji zze2 = zzajm.zze();
        String encodedFragment = uri.getEncodedFragment();
        zzajm zzq = (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) ? zzajm.zzq() : zzajm.zzi(zzagw.zzd("+").zzb().zze(encodedFragment.substring(10)));
        int size = zzq.size();
        for (int i = 0; i < size; i++) {
            zze2.zze(zzzs.zzb((String) zzq.get(i)));
        }
        zzajm zzh = zze2.zzh();
        int size2 = zzh.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String str = (String) zzh.get(i2);
            zzaaj zzaajVar = (zzaaj) this.zzb.get(str);
            if (zzaajVar == null) {
                throw new zzzm("No such transform: " + str + ": " + String.valueOf(uri));
            }
            zze.zze(zzaajVar);
        }
        return zze.zzh().zza();
    }

    public final long zza(Uri uri) throws IOException {
        zzye zzl = zzl(uri);
        return zzl.zzd().zzq(zzl.zza());
    }

    public final Iterable zzb(Uri uri) throws IOException {
        zzaaf zzm = zzm(uri.getScheme());
        zzajm<zzaaj> zzn = zzn(uri);
        ArrayList arrayList = new ArrayList();
        String encodedFragment = uri.getEncodedFragment();
        Iterator it2 = zzm.zzt(zzk(uri)).iterator();
        while (it2.hasNext()) {
            Uri build = ((Uri) it2.next()).buildUpon().encodedFragment(encodedFragment).build();
            if (!zzn.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(build.getPathSegments());
                if (!arrayList2.isEmpty() && !build.getPath().endsWith("/")) {
                    String str = (String) zzakf.zza(arrayList2);
                    for (zzaaj zzaajVar : zzn) {
                    }
                    arrayList2.set(arrayList2.size() - 1, str);
                    build = build.buildUpon().path(TextUtils.join("/", arrayList2)).build();
                }
            }
            arrayList.add(build);
        }
        return arrayList;
    }

    public final Object zzc(Uri uri, zzyf zzyfVar) throws IOException {
        return zzyfVar.zzb(zzl(uri));
    }

    public final void zzd(Uri uri) throws IOException {
        zzm(uri.getScheme()).zzj(zzk(uri));
    }

    public final void zze(Uri uri) throws IOException {
        zzm(uri.getScheme()).zzk(zzk(uri));
    }

    public final void zzf(Uri uri) throws IOException {
        zzye zzl = zzl(uri);
        zzl.zzd().zzl(zzl.zza());
    }

    public final void zzg(Uri uri, Uri uri2) throws IOException {
        zzye zzl = zzl(uri);
        zzye zzl2 = zzl(uri2);
        if (zzl.zzd() != zzl2.zzd()) {
            throw new zzzm("Cannot rename file across backends");
        }
        zzl.zzd().zzm(zzl.zza(), zzl2.zza());
    }

    @Deprecated
    public final boolean zzh(Uri uri) throws IOException {
        if (!zzi(uri)) {
            return false;
        }
        if (!zzj(uri)) {
            zzf(uri);
            return true;
        }
        Iterator it2 = zzb(uri).iterator();
        while (it2.hasNext()) {
            zzh((Uri) it2.next());
        }
        zze(uri);
        return true;
    }

    public final boolean zzi(Uri uri) throws IOException {
        zzye zzl = zzl(uri);
        return zzl.zzd().zzi(zzl.zza());
    }

    public final boolean zzj(Uri uri) throws IOException {
        return zzm(uri.getScheme()).zzn(zzk(uri));
    }
}
