package com.google.mlkit.vision.digitalink.downloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzas;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzau;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzav;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqs;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqt;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzf;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzg;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes6.dex */
public final class DigitalInkRecognitionFileDependencyManager implements zzbqs {

    /* renamed from: a */
    public final Context f36764a;

    /* renamed from: b */
    public final DigitalInkRecognitionManifestParser f36765b;

    /* renamed from: c */
    public Map f36766c = new HashMap();

    /* renamed from: d */
    public final Map f36767d = new HashMap();

    /* loaded from: classes6.dex */
    public static class DownloadWorker extends Worker {
        public DownloadWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
            super(context, workerParameters);
        }

        @Override // androidx.work.Worker
        @NonNull
        public final ListenableWorker.Result doWork() {
            return zzbqt.zza(getApplicationContext(), getInputData());
        }
    }

    public DigitalInkRecognitionFileDependencyManager(Context context) {
        if (Log.isLoggable("DIRecoDownload", 4)) {
            Log.i("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager()");
        }
        this.f36764a = context;
        this.f36765b = new DigitalInkRecognitionManifestParser(context);
    }

    @NonNull
    public static final String zzd(@NonNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        return (digitalInkRecognitionModel.getModelIdentifier() == null || digitalInkRecognitionModel.getModelIdentifier().getLanguageTag() == null) ? "" : digitalInkRecognitionModel.getModelIdentifier().getLanguageTag();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqs
    @Nullable
    public final zzav zza(String str) {
        if (!this.f36767d.containsKey(str)) {
            return null;
        }
        zzf zzfVar = (zzf) Preconditions.checkNotNull((zzf) this.f36767d.get(str));
        zzau zzc = zzav.zzc();
        zzc.zzb((String) Preconditions.checkNotNull(zzfVar.zzc()));
        zzc.zza((zzas) Preconditions.checkNotNull((zzas) this.f36766c.get(zzfVar.zzf())));
        zzc.zza((zzas) Preconditions.checkNotNull((zzas) this.f36766c.get(zzfVar.zze())));
        if (!zzfVar.zzd().isEmpty()) {
            zzc.zza((zzas) Preconditions.checkNotNull((zzas) this.f36766c.get(zzfVar.zzd())));
        }
        return (zzav) zzc.zzx();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqs
    public final zzajg zzb() {
        if (Log.isLoggable("DIRecoDownload", 4)) {
            Log.i("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager: getAllFileGroupNames(). # Entries = " + this.f36767d.size());
        }
        return zzaka.zzg(this.f36767d.keySet());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqs
    public final boolean zzc() {
        if (Log.isLoggable("DIRecoDownload", 4)) {
            Log.i("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager.initialize(): Parse Manifest");
        }
        try {
            this.f36766c = this.f36765b.m28580a();
            if (Log.isLoggable("DIRecoDownload", 4)) {
                Log.i("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager.initialize(): Parse packmapping");
            }
            try {
                InputStream open = this.f36764a.getAssets().open("packmapping.pb");
                try {
                    for (zzf zzfVar : ((zzg) zzg.zzc().zzc(open)).zzd()) {
                        this.f36767d.put(zzfVar.zzc(), zzfVar);
                    }
                    if (Log.isLoggable("DIRecoDownload", 4)) {
                        Log.i("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager.initialize(): Read " + this.f36767d.size() + " pack mapping entries");
                    }
                    if (open != null) {
                        open.close();
                    }
                    return true;
                } catch (Throwable th) {
                    if (open != null) {
                        try {
                            open.close();
                        } catch (Throwable th2) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                Log.e("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager.initialize(): Error reading pack mapping.", e);
                return false;
            }
        } catch (IOException e2) {
            Log.e("DIRecoDownload", "DigitalInkRecognitionFileDependencyManager.initialize(): Error parsing manifest.", e2);
            return false;
        }
    }
}
