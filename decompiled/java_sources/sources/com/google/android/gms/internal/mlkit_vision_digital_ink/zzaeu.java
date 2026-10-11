package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.TargetApi;
import android.os.Trace;
import android.text.TextUtils;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;
import java.util.Locale;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes5.dex */
public final class zzaeu {
    public static final /* synthetic */ int zzb = 0;
    private static final zzaka zzc = zzaka.zzi();
    static final zzxv zza = new zzxv("tiktok_systrace");

    @GuardedBy("allThreadStates")
    private static final WeakHashMap zzd = new WeakHashMap();
    private static final ThreadLocal zze = new zzaet();
    private static final Deque zzf = new ArrayDeque();
    private static final Deque zzg = new ArrayDeque();
    private static final Object zzh = new Object();
    private static final Runnable zzi = new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaer
        @Override // java.lang.Runnable
        public final void run() {
            zzaeu.zzi();
        }
    };
    private static final Runnable zzj = new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaes
        @Override // java.lang.Runnable
        public final void run() {
            zzaeu.zzj();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(29)
    /* loaded from: classes5.dex */
    public final class zza {
        public static boolean zza() {
            return Trace.isEnabled();
        }
    }

    public static zzaeh zza() {
        return ((zzaev) zze.get()).zzb;
    }

    public static zzaeh zzb() {
        zzaeh zza2 = zza();
        return zza2 != null ? zza2 : new zzadu();
    }

    public static zzaeh zzc(zzaeh zzaehVar) {
        return zzd((zzaev) zze.get(), zzaehVar);
    }

    public static zzaeh zzd(zzaev zzaevVar, zzaeh zzaehVar) {
        zzaeh zzaehVar2 = zzaevVar.zzb;
        if (zzaehVar2 == zzaehVar) {
            return zzaehVar;
        }
        if (zzaehVar2 == null) {
            zzaevVar.zza = zza.zza();
        }
        if (zzaevVar.zza) {
            zzo(zzaehVar2, zzaehVar);
        }
        zzaevVar.zzb = zzaehVar;
        return zzaehVar2;
    }

    public static zzaev zze() {
        return (zzaev) zze.get();
    }

    public static String zzf(zzaeh zzaehVar) {
        String str;
        zzaeh zzaehVar2 = zzaehVar;
        int i = 0;
        int i2 = 0;
        while (zzaehVar2 != null) {
            i++;
            i2 += zzaehVar2.zzb().length();
            zzaehVar2 = zzaehVar2.zza();
            if (zzaehVar2 != null) {
                i2 += 4;
            }
        }
        if (i > 250) {
            String[] strArr = new String[i];
            zzaeh zzaehVar3 = zzaehVar;
            for (int i3 = i - 1; i3 >= 0; i3--) {
                strArr[i3] = zzaehVar3.zzb();
                zzaehVar3 = zzaehVar3.zza();
            }
            zzajo zzajoVar = new zzajo();
            zzalx it2 = zzaka.zzh(strArr).iterator();
            int i4 = 0;
            while (it2.hasNext()) {
                zzajoVar.zzb(it2.next(), Integer.valueOf(i4));
                i4++;
            }
            zzajp zze2 = zzajoVar.zze();
            int i5 = i >> 2;
            zzaef zzaefVar = null;
            if (zze2.size() <= i5) {
                int[] iArr = new int[i + 1];
                for (int i6 = 0; i6 < i; i6++) {
                    iArr[i6] = ((Integer) zze2.get(strArr[i6])).intValue();
                }
                iArr[i] = zze2.size();
                zzaef zza2 = zzaeg.zzb(iArr).zza();
                if (zza2.zzc * (zza2.zzb - zza2.zza) >= i5) {
                    zzaefVar = zza2;
                }
            }
            str = "";
            if (zzaefVar != null) {
                int i7 = zzaefVar.zzb;
                int i8 = zzaefVar.zza;
                int i9 = (i7 - i8) * zzaefVar.zzc;
                String concat = i8 > 0 ? String.valueOf(TextUtils.join(AlphabetConverter.f109940d, Arrays.copyOf(strArr, i8))).concat(AlphabetConverter.f109940d) : "";
                int i10 = zzaefVar.zza + i9;
                str = String.format(Locale.US, "%s{%s}x%d%s", concat, TextUtils.join(AlphabetConverter.f109940d, Arrays.copyOfRange(strArr, zzaefVar.zza, zzaefVar.zzb)), Integer.valueOf(zzaefVar.zzc), i10 < i ? AlphabetConverter.f109940d.concat(String.valueOf(TextUtils.join(AlphabetConverter.f109940d, Arrays.copyOfRange(strArr, i10, i)))) : "");
            }
            if (!str.isEmpty()) {
                return str;
            }
        }
        char[] cArr = new char[i2];
        while (zzaehVar != null) {
            String zzb2 = zzaehVar.zzb();
            i2 -= zzb2.length();
            zzb2.getChars(0, zzb2.length(), cArr, i2);
            zzaehVar = zzaehVar.zza();
            if (zzaehVar != null) {
                i2 -= 4;
                AlphabetConverter.f109940d.getChars(0, 4, cArr, i2);
            }
        }
        return new String(cArr);
    }

    public static void zzh(zzaeh zzaehVar) {
        zzaev zzaevVar = (zzaev) zze.get();
        zzaeh zzaehVar2 = zzaevVar.zzb;
        zzagg.zzd(zzaehVar2, "Tried to end span %s, but there was no active span", zzaehVar.zzb());
        String zzb2 = zzaehVar.zzb();
        String zzb3 = zzaehVar2.zzb();
        if (zzaehVar != zzaehVar2) {
            throw new IllegalStateException(zzagz.zzb("Tried to end span %s, but that span is not the current span. The current span is %s.", zzb2, zzb3));
        }
        zzd(zzaevVar, zzaehVar2.zza());
    }

    public static /* synthetic */ void zzi() {
        Object remove = zzf.remove();
        if (remove == zzh) {
            zzg.pop();
        } else {
            zzg.push((zzaeh) remove);
        }
    }

    public static /* synthetic */ void zzj() {
        zzc(null);
        zzf.clear();
        zzxz.zza().removeCallbacks(zzi);
        zzg.clear();
    }

    public static zzady zzk(String str, int i, zzaeb zzaebVar, boolean z) {
        boolean z2;
        zzaev zzaevVar = (zzaev) zze.get();
        zzaeh zzaehVar = zzaevVar.zzb;
        if (zzaehVar == zzadw.zza) {
            zzaehVar = null;
            zzd(zzaevVar, null);
            z2 = true;
        } else {
            z2 = false;
        }
        zzaeh zzadvVar = zzaehVar == null ? new zzadv(str, zzaebVar, false) : zzaehVar instanceof zzadm ? ((zzadm) zzaehVar).zzd(str, zzaebVar, false) : zzaehVar.zzg(str, zzaebVar, zzaevVar);
        zzd(zzaevVar, zzadvVar);
        return new zzady(zzadvVar, z2);
    }

    @TargetApi(18)
    private static void zzl(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    @TargetApi(18)
    private static void zzm(zzaeh zzaehVar) {
        if (zzaehVar.zza() != null) {
            zzm(zzaehVar.zza());
        }
        zzl(zzaehVar.zzb());
    }

    @TargetApi(18)
    private static void zzn(zzaeh zzaehVar) {
        Trace.endSection();
        if (zzaehVar.zza() != null) {
            zzn(zzaehVar.zza());
        }
    }

    @TargetApi(18)
    private static void zzo(zzaeh zzaehVar, zzaeh zzaehVar2) {
        if (zzaehVar != null) {
            if (zzaehVar2 != null) {
                if (zzaehVar.zza() == zzaehVar2) {
                    Trace.endSection();
                    return;
                } else if (zzaehVar == zzaehVar2.zza()) {
                    zzl(zzaehVar2.zzb());
                    return;
                }
            }
            zzn(zzaehVar);
        }
        if (zzaehVar2 != null) {
            zzm(zzaehVar2);
        }
    }
}
