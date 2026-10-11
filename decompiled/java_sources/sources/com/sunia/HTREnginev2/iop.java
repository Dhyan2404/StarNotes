package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzafu;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbof;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbog;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzboi;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbok;
import com.google.mlkit.common.MlKitException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes6.dex */
public final class iop {

    /* renamed from: a */
    public final String f73450a;

    /* renamed from: b */
    @Nullable
    public final String f73451b;

    /* renamed from: c */
    @Nullable
    public final String f73452c;

    /* renamed from: d */
    @Nullable
    public final String f73453d;

    /* renamed from: e */
    @Nullable
    public final String f73454e;

    /* renamed from: f */
    @Nullable
    public final String f73455f;

    public /* synthetic */ iop(String str, com.google.mlkit.vision.digitalink.zzk zzkVar) {
        String zzb;
        try {
            zzboi zza = zzboi.zza(str);
            String zzd = com.google.mlkit.vision.digitalink.internal.zzn.zzd(zza.zzb().toString());
            this.f73450a = zzd;
            this.f73453d = com.google.mlkit.vision.digitalink.internal.zzn.zzc(zzd);
            if (zza.zze()) {
                int zzg = zza.zzg();
                zzb = zzbok.zza(zzg);
                if (zzg == 0) {
                    throw null;
                }
            } else {
                zzb = com.google.mlkit.vision.digitalink.internal.zzn.zzb(zzd);
            }
            this.f73451b = zzb;
            this.f73454e = com.google.mlkit.vision.digitalink.internal.zzn.zza(zzb);
            this.f73452c = zza.zzd() ? zza.zzc().toString() : null;
            List asList = Arrays.asList(str.split("-"));
            int indexOf = asList.indexOf("x");
            if (indexOf >= 0) {
                this.f73455f = zzafu.zzb(asList.subList(indexOf + 1, asList.size()), "-");
            } else {
                this.f73455f = null;
            }
        } catch (zzbof | zzbog e) {
            throw new MlKitException("Invalid language code in BCP 47 language tag '" + str + "'.", 3, e);
        }
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ int m54744a(iop iopVar, iop iopVar2) {
        int i;
        String str;
        if (iopVar.f73450a.equals(iopVar2.f73450a)) {
            i = 17;
        } else {
            if (!iopVar2.f73450a.equals(iopVar.f73453d)) {
                return 0;
            }
            i = 1;
        }
        String str2 = iopVar.f73451b;
        if (str2 != null && (str = iopVar2.f73451b) != null) {
            if (str2.equals(str)) {
                i += 8;
            } else if (!iopVar2.f73451b.equals(iopVar.f73454e)) {
                return 0;
            }
        }
        String str3 = iopVar.f73452c;
        if ((str3 == null && iopVar2.f73452c == null) || (str3 != null && str3.equals(iopVar2.f73452c))) {
            i += 4;
        } else if (com.google.mlkit.vision.digitalink.internal.zzn.zze(iopVar2.f73452c, iopVar.f73452c)) {
            i += 2;
        } else if (iopVar.f73452c != null && iopVar2.f73452c != null) {
            return 0;
        }
        int i2 = i;
        String str4 = iopVar.f73455f;
        return (!(str4 == null && iopVar2.f73455f == null) && (str4 == null || !str4.equals(iopVar2.f73455f))) ? i2 : i2 + 1;
    }

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ String m54745b(iop iopVar) {
        return iopVar.f73450a;
    }

    /* renamed from: c */
    public static /* bridge */ /* synthetic */ String m54746c(iop iopVar) {
        return iopVar.f73453d;
    }

    /* renamed from: d */
    public static /* bridge */ /* synthetic */ String m54747d(iop iopVar) {
        return iopVar.f73452c;
    }

    /* renamed from: e */
    public static /* bridge */ /* synthetic */ String m54748e(iop iopVar) {
        return iopVar.f73451b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (iop.class != obj.getClass()) {
            return false;
        }
        iop iopVar = (iop) obj;
        return Objects.equal(this.f73450a, iopVar.f73450a) && Objects.equal(this.f73451b, iopVar.f73451b) && Objects.equal(this.f73452c, iopVar.f73452c) && Objects.equal(this.f73453d, iopVar.f73453d) && Objects.equal(this.f73454e, iopVar.f73454e) && Objects.equal(this.f73455f, iopVar.f73455f);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(super.hashCode()), this.f73450a, this.f73451b, this.f73452c, this.f73453d, this.f73454e, this.f73455f);
    }
}
