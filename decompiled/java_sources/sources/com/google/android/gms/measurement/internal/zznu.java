package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzpu;
import com.sunia.HTREnginev2.hgp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.lqp;
import com.sunia.HTREnginev2.lrp;
import com.sunia.HTREnginev2.mqp;
import com.sunia.HTREnginev2.okp;
import java.util.HashMap;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zznu extends lqp {
    public zznu(zznv zznvVar) {
        super(zznvVar);
    }

    /* renamed from: a */
    public final String m22611a(String str) {
        String m22477q = zzm().m22477q(str);
        if (TextUtils.isEmpty(m22477q)) {
            return zzbh.zzq.zza(null);
        }
        Uri parse = Uri.parse(zzbh.zzq.zza(null));
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.authority(m22477q + "." + parse.getAuthority());
        return buildUpon.build().toString();
    }

    @Override // com.sunia.HTREnginev2.lqp
    /* renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzoo mo22451g_() {
        return super.mo22451g_();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
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

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ lrp zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ hgp zzh() {
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

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final mqp zza(String str) {
        okp m54532o0;
        if (zzpu.zza() && zze().zza(zzbh.zzbx)) {
            zzq();
            if (zzos.m22728S(str)) {
                zzj().zzp().zza("sgtm feature flag enabled.");
                okp m54532o02 = zzh().m54532o0(str);
                if (m54532o02 == null) {
                    return new mqp(m22611a(str), zznt.GOOGLE_ANALYTICS);
                }
                String m56053m = m54532o02.m56053m();
                zzfr.zzd zzc = zzm().zzc(str);
                boolean z = false;
                if (zzc != null && (m54532o0 = zzh().m54532o0(str)) != null && ((zzc.zzq() && zzc.zzh().zza() == 100) || zzq().m22750P(str, m54532o0.m56071v()) || (!zze().zza(zzbh.zzbz) ? !(TextUtils.isEmpty(m56053m) || m56053m.hashCode() % 100 >= zzc.zzh().zza()) : !(TextUtils.isEmpty(m56053m) || Math.abs(m56053m.hashCode() % 100) >= zzc.zzh().zza())))) {
                    z = true;
                }
                if (!z) {
                    return new mqp(m22611a(str), zznt.GOOGLE_ANALYTICS);
                }
                mqp mqpVar = null;
                if (m54532o02.m55994C()) {
                    zzj().zzp().zza("sgtm upload enabled in manifest.");
                    zzfr.zzd zzc2 = zzm().zzc(m54532o02.m56051l());
                    if (zzc2 != null && zzc2.zzq()) {
                        String zze = zzc2.zzh().zze();
                        if (!TextUtils.isEmpty(zze)) {
                            String zzd = zzc2.zzh().zzd();
                            zzj().zzp().zza("sgtm configured with upload_url, server_info", zze, TextUtils.isEmpty(zzd) ? "Y" : "N");
                            if (TextUtils.isEmpty(zzd)) {
                                mqpVar = new mqp(zze, zznt.SGTM);
                            } else {
                                HashMap hashMap = new HashMap();
                                hashMap.put("x-sgtm-server-info", zzd);
                                if (!TextUtils.isEmpty(m54532o02.m56071v())) {
                                    hashMap.put("x-gtm-server-preview", m54532o02.m56071v());
                                }
                                mqpVar = new mqp(zze, hashMap, zznt.SGTM);
                            }
                        }
                    }
                }
                if (mqpVar != null) {
                    return mqpVar;
                }
            }
        }
        return new mqp(m22611a(str), zznt.GOOGLE_ANALYTICS);
    }

    public final String zza(okp okpVar) {
        Uri.Builder builder = new Uri.Builder();
        String m56061q = okpVar.m56061q();
        if (TextUtils.isEmpty(m56061q)) {
            m56061q = okpVar.m56047j();
        }
        builder.scheme(zzbh.zze.zza(null)).encodedAuthority(zzbh.zzf.zza(null)).path("config/app/" + m56061q).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", "106000").appendQueryParameter("runtime_version", "0");
        return builder.build().toString();
    }
}
