package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.v6l;

/* loaded from: classes5.dex */
public final class zzu {

    /* renamed from: a */
    public final zzhy f30044a;

    public zzu(zzhy zzhyVar) {
        this.f30044a = zzhyVar;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m22774a() {
        this.f30044a.zzl().zzt();
        if (m22777d()) {
            if (m22778e()) {
                this.f30044a.zzn().f72342x.zza(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString(FirebaseAnalytics.Param.MEDIUM, "(not set)");
                bundle.putString("_cis", v6l.f87196g);
                bundle.putLong("_cc", 1L);
                this.f30044a.zzp().m22544I("auto", "_cmpx", bundle);
            } else {
                String zza = this.f30044a.zzn().f72342x.zza();
                if (TextUtils.isEmpty(zza)) {
                    this.f30044a.zzj().zzn().zza("Cache still valid but referrer not found");
                } else {
                    long zza2 = ((this.f30044a.zzn().f72343y.zza() / 3600000) - 1) * 3600000;
                    Uri parse = Uri.parse(zza);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", zza2);
                    Object obj = pair.first;
                    this.f30044a.zzp().m22544I(obj == null ? "app" : (String) obj, "_cmp", (Bundle) pair.second);
                }
                this.f30044a.zzn().f72342x.zza(null);
            }
            this.f30044a.zzn().f72343y.zza(0L);
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m22775b(String str, Bundle bundle) {
        String str2;
        this.f30044a.zzl().zzt();
        if (this.f30044a.zzac()) {
            return;
        }
        if (bundle == null || bundle.isEmpty()) {
            str2 = null;
        } else {
            if (str == null || str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str3 : bundle.keySet()) {
                builder.appendQueryParameter(str3, bundle.getString(str3));
            }
            str2 = builder.build().toString();
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f30044a.zzn().f72342x.zza(str2);
        this.f30044a.zzn().f72343y.zza(this.f30044a.zzb().currentTimeMillis());
    }

    /* renamed from: c */
    public final void m22776c() {
        if (m22777d() && m22778e()) {
            this.f30044a.zzn().f72342x.zza(null);
        }
    }

    /* renamed from: d */
    public final boolean m22777d() {
        return this.f30044a.zzn().f72343y.zza() > 0;
    }

    /* renamed from: e */
    public final boolean m22778e() {
        return m22777d() && this.f30044a.zzb().currentTimeMillis() - this.f30044a.zzn().f72343y.zza() > this.f30044a.zzf().zzc((String) null, zzbh.zzav);
    }
}
