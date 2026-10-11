package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class zzbph {

    @Nullable
    private static zzajm zza;
    private static final zzajp zzb = zzajp.zzf("optional-module-barcode", OptionalModuleUtils.BARCODE_MODULE_ID);
    private final String zzc;
    private final String zzd;
    private final zzbpa zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;
    private final Map zzk = new HashMap();
    private final Map zzl = new HashMap();

    public zzbph(Context context, final SharedPrefManager sharedPrefManager, zzbpa zzbpaVar, String str) {
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzbpaVar;
        zzbrx.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpe
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzbph.this.zza();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        sharedPrefManager.getClass();
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.getMlSdkInstanceId();
            }
        });
        zzajp zzajpVar = zzb;
        this.zzj = zzajpVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzajpVar.get(str)) : -1;
    }

    @NonNull
    private static synchronized zzajm zzd() {
        synchronized (zzbph.class) {
            zzajm zzajmVar = zza;
            if (zzajmVar != null) {
                return zzajmVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzaji zzajiVar = new zzaji();
            for (int i = 0; i < locales.size(); i++) {
                zzajiVar.zze(CommonUtils.languageTagFromLocale(locales.get(i)));
            }
            zzajm zzh = zzajiVar.zzh();
            zza = zzh;
            return zzh;
        }
    }

    public final /* synthetic */ String zza() throws Exception {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    public final /* synthetic */ void zzb(zzbpk zzbpkVar, int i, String str) {
        zzbpkVar.zze(i);
        String zza2 = zzbpkVar.zza();
        zzbou zzbouVar = new zzbou();
        zzbouVar.zzb(this.zzc);
        zzbouVar.zzc(this.zzd);
        zzbouVar.zzf(zzd());
        zzbouVar.zze(Boolean.TRUE);
        zzbouVar.zzj(zza2);
        zzbouVar.zzh(str);
        zzbouVar.zzg(this.zzh.isSuccessful() ? (String) this.zzh.getResult() : this.zzf.getMlSdkInstanceId());
        zzbouVar.zzd(10);
        zzbouVar.zzi(Integer.valueOf(this.zzj));
        zzbpkVar.zzd(zzbouVar);
        this.zze.zza(zzbpkVar);
    }

    public final void zzc(final zzbpk zzbpkVar, final int i) {
        final String version = this.zzg.isSuccessful() ? (String) this.zzg.getResult() : LibraryVersion.getInstance().getVersion(this.zzi);
        final byte[] bArr = null;
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable(zzbpkVar, i, version, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpg
            public final /* synthetic */ String zzb;
            public final /* synthetic */ int zzc;
            public final /* synthetic */ zzbpk zzd;

            @Override // java.lang.Runnable
            public final void run() {
                zzbph.this.zzb(this.zzd, this.zzc, this.zzb);
            }
        });
    }
}
