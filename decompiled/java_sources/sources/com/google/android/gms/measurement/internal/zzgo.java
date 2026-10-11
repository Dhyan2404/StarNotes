package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sunia.HTREnginev2.bnp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.tkp;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzgo extends bnp {

    /* renamed from: b */
    public char f29771b;

    /* renamed from: c */
    public long f29772c;

    /* renamed from: d */
    @GuardedBy("this")
    public String f29773d;

    /* renamed from: e */
    public final zzgq f29774e;

    /* renamed from: f */
    public final zzgq f29775f;

    /* renamed from: g */
    public final zzgq f29776g;

    /* renamed from: h */
    public final zzgq f29777h;

    /* renamed from: i */
    public final zzgq f29778i;

    /* renamed from: j */
    public final zzgq f29779j;

    /* renamed from: k */
    public final zzgq f29780k;

    /* renamed from: l */
    public final zzgq f29781l;

    /* renamed from: m */
    public final zzgq f29782m;

    public zzgo(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29771b = (char) 0;
        this.f29772c = -1L;
        this.f29774e = new zzgq(this, 6, false, false);
        this.f29775f = new zzgq(this, 6, true, false);
        this.f29776g = new zzgq(this, 6, false, true);
        this.f29777h = new zzgq(this, 5, false, false);
        this.f29778i = new zzgq(this, 5, true, false);
        this.f29779j = new zzgq(this, 5, false, true);
        this.f29780k = new zzgq(this, 4, false, false);
        this.f29781l = new zzgq(this, 3, false, false);
        this.f29782m = new zzgq(this, 2, false, false);
    }

    @VisibleForTesting
    /* renamed from: c */
    public static String m22442c(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            return str2 + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + RemoveAudioAction.f58149k + str2 + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            if (!(obj instanceof tkp)) {
                return z ? "-" : String.valueOf(obj);
            }
            str = ((tkp) obj).f85401a;
            return str;
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String m22447h = m22447h(zzhy.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m22447h(className).equals(m22447h)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static String m22443d(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String m22442c = m22442c(z, obj);
        String m22442c2 = m22442c(z, obj2);
        String m22442c3 = m22442c(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(m22442c)) {
            sb.append(str2);
            sb.append(m22442c);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(m22442c2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(m22442c2);
        }
        if (!TextUtils.isEmpty(m22442c3)) {
            sb.append(str3);
            sb.append(m22442c3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: h */
    public static String m22447h(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? (com.google.android.gms.internal.measurement.zzok.zza() && zzbh.zzcg.zza(null).booleanValue()) ? "" : str : str.substring(0, lastIndexOf);
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    @VisibleForTesting
    /* renamed from: i */
    public final String m22448i() {
        String str;
        synchronized (this) {
            if (this.f29773d == null) {
                this.f29773d = this.zzu.zzw() != null ? this.zzu.zzw() : "FA";
            }
            Preconditions.checkNotNull(this.f29773d);
            str = this.f29773d;
        }
        return str;
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

    public final zzgq zzc() {
        return this.f29781l;
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

    public final zzgq zzg() {
        return this.f29774e;
    }

    @Override // com.sunia.HTREnginev2.bnp
    public final boolean zzh() {
        return false;
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

    public final zzgq zzm() {
        return this.f29776g;
    }

    public final zzgq zzn() {
        return this.f29775f;
    }

    public final zzgq zzo() {
        return this.f29780k;
    }

    public final zzgq zzp() {
        return this.f29782m;
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

    public final zzgq zzu() {
        return this.f29777h;
    }

    public final zzgq zzv() {
        return this.f29779j;
    }

    public final zzgq zzw() {
        return this.f29778i;
    }

    public final String zzx() {
        Pair<String, Long> zza;
        if (zzk().f72323e == null || (zza = zzk().f72323e.zza()) == null || zza == hlp.f72319A) {
            return null;
        }
        return String.valueOf(zza.second) + ":" + ((String) zza.first);
    }

    public static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new tkp(str);
    }

    public final void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && zza(i)) {
            zza(i, m22443d(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzhv m22505i = this.zzu.m22505i();
        if (m22505i == null) {
            zza(6, "Scheduler not set. Not logging error/warn");
            return;
        }
        if (!m22505i.m53287a()) {
            zza(6, "Scheduler not initialized. Not logging error/warn");
            return;
        }
        if (i < 0) {
            i = 0;
        }
        if (i >= 9) {
            i = 8;
        }
        m22505i.zzb(new RunnableC5114b(this, i, str, obj, obj2, obj3));
    }

    @VisibleForTesting
    public final void zza(int i, String str) {
        Log.println(i, m22448i(), str);
    }

    @VisibleForTesting
    public final boolean zza(int i) {
        return Log.isLoggable(m22448i(), i);
    }
}
