package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.Locale;
import java.util.MissingResourceException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzbf {

    @NotNull
    public static final zzbe zza = new zzbe(null);

    @Nullable
    private static zzmo zzb;

    @NotNull
    private final String zzc;

    @NotNull
    private final zzac zzd;

    @NotNull
    private final zznc zze;
    private final long zzf;

    public zzbf(@NotNull zzbb zzbbVar, @NotNull String str, @NotNull zzac zzacVar) {
        this.zzc = str;
        this.zzd = zzacVar;
        zznc zzi = zznf.zzi();
        this.zze = zzi;
        this.zzf = System.currentTimeMillis();
        zzi.zzp(zzbbVar.zza());
        zzi.zzd(zzbbVar.zzb());
        zzi.zzr(zzbbVar.zzc());
        if (zzbbVar.zzd() != null) {
            zzi.zzu(zzbbVar.zzd());
        }
        zzi.zzt(zzmg.zzc(zzmg.zzb(System.currentTimeMillis())));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:19:0x0047
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    private static final com.google.android.recaptcha.internal.zzmo zzb(android.content.Context r8) {
        /*
            java.lang.String r0 = "unknown"
            r1 = 33
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            java.lang.String r3 = "com.google.android.gms.version"
            r4 = -1
            if (r2 < r1) goto L2b
            android.content.pm.PackageManager r2 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            java.lang.String r5 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            r6 = 128(0x80, double:6.32E-322)
            android.content.pm.PackageManager$ApplicationInfoFlags r6 = com.sunia.HTREnginev2.bip.m53275a(r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.content.pm.ApplicationInfo r2 = com.sunia.HTREnginev2.cip.m53462a(r2, r5, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.os.Bundle r2 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            int r2 = r2.getInt(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            if (r2 != r4) goto L26
            goto L47
        L26:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            goto L48
        L2b:
            android.content.pm.PackageManager r2 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            java.lang.String r5 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            r6 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r5, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            android.os.Bundle r2 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            int r2 = r2.getInt(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            if (r2 != r4) goto L42
            goto L47
        L42:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L47
            goto L48
        L47:
            r2 = r0
        L48:
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            if (r3 < r1) goto L67
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            r3 = 0
            android.content.pm.PackageManager$PackageInfoFlags r3 = com.sunia.HTREnginev2.jie.m54921a(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            android.content.pm.PackageInfo r8 = com.sunia.HTREnginev2.kie.m55222a(r1, r8, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            long r3 = r8.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            goto L7c
        L67:
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            r3 = 0
            android.content.pm.PackageInfo r8 = r1.getPackageInfo(r8, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            long r3 = r8.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L7c
        L7c:
            com.google.android.recaptcha.internal.zzmn r8 = com.google.android.recaptcha.internal.zzmo.zzf()
            int r1 = android.os.Build.VERSION.SDK_INT
            r8.zzd(r1)
            r8.zzq(r2)
            java.lang.String r1 = "18.4.0"
            r8.zzs(r1)
            java.lang.String r1 = android.os.Build.MODEL
            r8.zzp(r1)
            java.lang.String r1 = android.os.Build.MANUFACTURER
            r8.zzr(r1)
            r8.zze(r0)
            com.google.android.recaptcha.internal.zzit r8 = r8.zzj()
            com.google.android.recaptcha.internal.zzmo r8 = (com.google.android.recaptcha.internal.zzmo) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzbf.zzb(android.content.Context):com.google.android.recaptcha.internal.zzmo");
    }

    @NotNull
    public final zznf zza(@NotNull int i, @Nullable zzmr zzmrVar, @NotNull Context context) {
        String str;
        String str2 = "";
        long currentTimeMillis = System.currentTimeMillis() - this.zzf;
        zznc zzncVar = this.zze;
        zzncVar.zze(currentTimeMillis);
        zzncVar.zzv(i);
        if (zzmrVar != null) {
            this.zze.zzq(zzmrVar);
        }
        if (zzb == null) {
            zzb = zzb(context);
        }
        try {
            str = Locale.getDefault().getISO3Language();
        } catch (MissingResourceException unused) {
            str = "";
        }
        try {
            str2 = Locale.getDefault().getISO3Country();
        } catch (MissingResourceException unused2) {
        }
        zznc zzncVar2 = this.zze;
        String str3 = this.zzc;
        zznq zzf = zznr.zzf();
        zzf.zzq(str3);
        zzmo zzmoVar = zzb;
        if (zzmoVar == null) {
            zzmoVar = zzb(context);
        }
        zzf.zzd(zzmoVar);
        zzf.zzp(str);
        zzf.zze(str2);
        zzncVar2.zzs((zznr) zzf.zzj());
        return (zznf) this.zze.zzj();
    }
}
