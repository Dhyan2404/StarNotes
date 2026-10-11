package com.sunia.HTREnginev2;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.fasterxml.jackson.core.base.ParserBase;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.measurement.internal.zzbc;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zznv;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class oop extends kqp {
    public oop(zznv zznvVar) {
        super(zznvVar);
    }

    public static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    @WorkerThread
    /* renamed from: b */
    public final byte[] m56138b(@NonNull zzbf zzbfVar, @Size(min = 1) String str) {
        yqp yqpVar;
        Bundle bundle;
        zzfy.zzk.zza zzaVar;
        zzfy.zzj.zza zzaVar2;
        okp okpVar;
        byte[] bArr;
        long j;
        vhp m57797a;
        zzt();
        this.zzu.m22506j();
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotEmpty(str);
        if (!zze().zze(str, zzbh.zzbl)) {
            zzj().zzc().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzbfVar.zza) && !"_iapx".equals(zzbfVar.zza)) {
            zzj().zzc().zza("Generating a payload for this event is not available. package_name, event_name", str, zzbfVar.zza);
            return null;
        }
        zzfy.zzj.zza zzb = zzfy.zzj.zzb();
        zzh().m54488E0();
        try {
            okp m54532o0 = zzh().m54532o0(str);
            if (m54532o0 == null) {
                zzj().zzc().zza("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!m54532o0.m55990A()) {
                zzj().zzc().zza("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            zzfy.zzk.zza zzp = zzfy.zzk.zzw().zzh(1).zzp("android");
            if (!TextUtils.isEmpty(m54532o0.m56051l())) {
                zzp.zzb(m54532o0.m56051l());
            }
            if (!TextUtils.isEmpty(m54532o0.m56055n())) {
                zzp.zzd((String) Preconditions.checkNotNull(m54532o0.m56055n()));
            }
            if (!TextUtils.isEmpty(m54532o0.m56057o())) {
                zzp.zze((String) Preconditions.checkNotNull(m54532o0.m56057o()));
            }
            if (m54532o0.m56023U() != ParserBase.f21225q) {
                zzp.zze((int) m54532o0.m56023U());
            }
            zzp.zzf(m54532o0.m56080z0()).zzd(m54532o0.m56072v0());
            String m56061q = m54532o0.m56061q();
            String m56047j = m54532o0.m56047j();
            if (!TextUtils.isEmpty(m56061q)) {
                zzp.zzm(m56061q);
            } else if (!TextUtils.isEmpty(m56047j)) {
                zzp.zza(m56047j);
            }
            zzp.zzj(m54532o0.m56009J0());
            zzje m22633N = this.zzg.m22633N(str);
            zzp.zzc(m54532o0.m56068t0());
            if (this.zzu.zzac() && zze().zzj(zzp.zzt()) && m22633N.zzg() && !TextUtils.isEmpty(null)) {
                zzp.zzj((String) null);
            }
            zzp.zzg(m22633N.zze());
            if (m22633N.zzg() && m54532o0.m56079z()) {
                Pair<String, Boolean> m22590c = zzn().m22590c(m54532o0.m56051l(), m22633N);
                if (m54532o0.m56079z() && m22590c != null && !TextUtils.isEmpty((CharSequence) m22590c.first)) {
                    zzp.zzq(zza((String) m22590c.first, Long.toString(zzbfVar.zzd)));
                    Object obj = m22590c.second;
                    if (obj != null) {
                        zzp.zzc(((Boolean) obj).booleanValue());
                    }
                }
            }
            zzf().zzac();
            zzfy.zzk.zza zzi = zzp.zzi(Build.MODEL);
            zzf().zzac();
            zzi.zzo(Build.VERSION.RELEASE).zzj((int) zzf().zzc()).zzs(zzf().zzg());
            if (m22633N.zzh() && m54532o0.m56053m() != null) {
                zzp.zzc(zza((String) Preconditions.checkNotNull(m54532o0.m56053m()), Long.toString(zzbfVar.zzd)));
            }
            if (!TextUtils.isEmpty(m54532o0.m56059p())) {
                zzp.zzl((String) Preconditions.checkNotNull(m54532o0.m56059p()));
            }
            String m56051l = m54532o0.m56051l();
            List<yqp> m54480A0 = zzh().m54480A0(m56051l);
            Iterator<yqp> it2 = m54480A0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    yqpVar = null;
                    break;
                }
                yqpVar = it2.next();
                if ("_lte".equals(yqpVar.f90992c)) {
                    break;
                }
            }
            if (yqpVar == null || yqpVar.f90994e == null) {
                yqp yqpVar2 = new yqp(m56051l, "auto", "_lte", zzb().currentTimeMillis(), 0L);
                m54480A0.add(yqpVar2);
                zzh().m54499K(yqpVar2);
            }
            zzfy.zzo[] zzoVarArr = new zzfy.zzo[m54480A0.size()];
            for (int i = 0; i < m54480A0.size(); i++) {
                zzfy.zzo.zza zzb2 = zzfy.zzo.zze().zza(m54480A0.get(i).f90992c).zzb(m54480A0.get(i).f90993d);
                mo22451g_().m22718x(zzb2, m54480A0.get(i).f90994e);
                zzoVarArr[i] = (zzfy.zzo) ((zzjt) zzb2.zzai());
            }
            zzp.zze(Arrays.asList(zzoVarArr));
            this.zzg.m22672t(m54532o0, zzp);
            if (zzov.zza() && zze().zza(zzbh.zzcu)) {
                this.zzg.m22639T(m54532o0, zzp);
            }
            zzgs zza = zzgs.zza(zzbfVar);
            zzq().m22765l(zza.zzc, zzh().m54530m0(str));
            zzq().m22767n(zza, zze().zzb(str));
            Bundle bundle2 = zza.zzc;
            bundle2.putLong("_c", 1L);
            zzj().zzc().zza("Marking in-app purchase as real-time");
            bundle2.putLong("_r", 1L);
            bundle2.putString("_o", zzbfVar.zzc);
            if (zzq().m22750P(zzp.zzt(), m54532o0.m56071v())) {
                zzq().m22766m(bundle2, "_dbg", 1L);
                zzq().m22766m(bundle2, "_r", 1L);
            }
            vhp m54531n0 = zzh().m54531n0(str, zzbfVar.zza);
            if (m54531n0 == null) {
                bundle = bundle2;
                zzaVar = zzp;
                zzaVar2 = zzb;
                okpVar = m54532o0;
                bArr = null;
                m57797a = new vhp(str, zzbfVar.zza, 0L, 0L, zzbfVar.zzd, 0L, null, null, null, null);
                j = 0;
            } else {
                bundle = bundle2;
                zzaVar = zzp;
                zzaVar2 = zzb;
                okpVar = m54532o0;
                bArr = null;
                j = m54531n0.f87515f;
                m57797a = m54531n0.m57797a(zzbfVar.zzd);
            }
            zzh().m54548x(m57797a);
            zzbc zzbcVar = new zzbc(this.zzu, zzbfVar.zzc, str, zzbfVar.zza, zzbfVar.zzd, j, bundle);
            zzfy.zzf.zza zza2 = zzfy.zzf.zze().zzb(zzbcVar.f29733d).zza(zzbcVar.f29731b).zza(zzbcVar.f29734e);
            Iterator<String> it3 = zzbcVar.f29735f.iterator();
            while (it3.hasNext()) {
                String next = it3.next();
                zzfy.zzh.zza zza3 = zzfy.zzh.zze().zza(next);
                Object zzc = zzbcVar.f29735f.zzc(next);
                if (zzc != null) {
                    mo22451g_().m22717w(zza3, zzc);
                    zza2.zza(zza3);
                }
            }
            zzfy.zzk.zza zzaVar3 = zzaVar;
            zzaVar3.zza(zza2).zza(zzfy.zzl.zza().zza(zzfy.zzg.zza().zza(m57797a.f87512c).zza(zzbfVar.zza)));
            zzaVar3.zza(zzg().m55508c(okpVar.m56051l(), Collections.emptyList(), zzaVar3.zzab(), Long.valueOf(zza2.zzc()), Long.valueOf(zza2.zzc())));
            if (zza2.zzg()) {
                zzaVar3.zzi(zza2.zzc()).zze(zza2.zzc());
            }
            long m55997D0 = okpVar.m55997D0();
            if (m55997D0 != 0) {
                zzaVar3.zzg(m55997D0);
            }
            long m56005H0 = okpVar.m56005H0();
            if (m56005H0 != 0) {
                zzaVar3.zzh(m56005H0);
            } else if (m55997D0 != 0) {
                zzaVar3.zzh(m55997D0);
            }
            String m56069u = okpVar.m56069u();
            if (zzpo.zza() && zze().zze(str, zzbh.zzbw) && m56069u != null) {
                zzaVar3.zzr(m56069u);
            }
            okpVar.m56077y();
            zzaVar3.zzf((int) okpVar.m56001F0()).zzl(106000L).zzk(zzb().currentTimeMillis()).zzd(true);
            this.zzg.m22677y(zzaVar3.zzt(), zzaVar3);
            zzfy.zzj.zza zzaVar4 = zzaVar2;
            zzaVar4.zza(zzaVar3);
            okp okpVar2 = okpVar;
            okpVar2.m55995C0(zzaVar3.zzf());
            okpVar2.m56078y0(zzaVar3.zze());
            zzh().m54550y(okpVar2, false, false);
            zzh().zzw();
            try {
                return mo22451g_().m22702J(((zzfy.zzj) ((zzjt) zzaVar4.zzai())).zzca());
            } catch (IOException e) {
                zzj().zzg().zza("Data loss. Failed to bundle and serialize. appId", zzgo.zza(str), e);
                return bArr;
            }
        } catch (SecurityException e2) {
            zzj().zzc().zza("app instance id encryption failed", e2.getMessage());
            return new byte[0];
        } catch (SecurityException e3) {
            zzj().zzc().zza("Resettable device id encryption failed", e3.getMessage());
            return new byte[0];
        } finally {
            zzh().zzu();
        }
    }

    @Override // com.sunia.HTREnginev2.kqp
    public final boolean zzc() {
        return false;
    }
}
