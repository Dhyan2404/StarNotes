package com.google.mlkit.vision.digitalink.downloading;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzajp;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaty;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqr;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzq;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class zza extends zzbqr {

    /* renamed from: b */
    public static final Map f36771b;

    /* renamed from: c */
    public static final Map f36772c;

    /* renamed from: d */
    public static final Map f36773d;

    /* renamed from: a */
    public final com.google.mlkit.vision.digitalink.internal.zzc f36774a;

    static {
        zzq zzqVar = zzq.PENDING;
        zzaty zzatyVar = zzaty.DOWNLOAD_PENDING;
        zzq zzqVar2 = zzq.UNSPECIFIED;
        zzaty zzatyVar2 = zzaty.DOWNLOAD_UNSPECIFIED;
        zzq zzqVar3 = zzq.DOWNLOADED;
        f36771b = zzajp.zzg(zzqVar, zzatyVar, zzqVar2, zzatyVar2, zzqVar3, zzaty.DOWNLOAD_DOWNLOADED);
        f36772c = zzajp.zzg(zzqVar, zzaty.GET_DOWNLOADED_FILES_PENDING, zzqVar2, zzaty.GET_DOWNLOADED_FILES_UNSPECIFIED, zzqVar3, zzaty.GET_DOWNLOADED_FILES_DOWNLOADED);
        f36773d = zzajp.zzg(zzqVar, zzaty.IS_MODEL_DOWNLOADED_PENDING, zzqVar2, zzaty.IS_MODEL_DOWNLOADED_UNSPECIFIED, zzqVar3, zzaty.IS_MODEL_DOWNLOADED_DOWNLOADED);
    }

    public zza(MlKitContext mlKitContext) {
        this.f36774a = (com.google.mlkit.vision.digitalink.internal.zzc) mlKitContext.get(com.google.mlkit.vision.digitalink.internal.zzc.class);
    }

    public static zza zzb() {
        return (zza) MlKitContext.getInstance().get(zza.class);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqr
    public final void zza(boolean z, long j) {
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(z ? zzaty.GET_DOWNLOADED_MODELS_SUCCESS : zzaty.GET_DOWNLOADED_MODELS_FAILURE);
        zzc.zzg(j);
        zzc.zzn();
    }

    public final void zzc(DigitalInkRecognitionModel digitalInkRecognitionModel, zzagb zzagbVar, long j) {
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzagbVar.zzc() ? ((Boolean) zzagbVar.zza()).booleanValue() ? zzaty.DELETE_DOWNLOADED_MODEL_SUCCESS : zzaty.DELETE_DOWNLOADED_MODEL_FAILURE : zzaty.DELETE_DOWNLOADED_MODEL_NULL_RESULT);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzg(j);
        zzc.zzn();
    }

    public final void zzd(DigitalInkRecognitionModel digitalInkRecognitionModel, long j) {
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzaty.DELETE_DOWNLOADED_MODEL_MAINTENANCE_COMPLETED);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzg(j);
        zzc.zzn();
    }

    public final void zze(DigitalInkRecognitionModel digitalInkRecognitionModel, DownloadConditions downloadConditions, zzagb zzagbVar, List list, long j) {
        zzaty zzatyVar = zzagbVar.zzc() ? (zzaty) f36771b.get(zzagbVar.zza()) : null;
        if (zzatyVar == null) {
            zzatyVar = zzaty.DOWNLOAD_NULL_RESULT;
        }
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzatyVar);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzg(j);
        if (!list.isEmpty()) {
            zzc.zzb(list);
        }
        zzc.zzn();
    }

    public final void zzf(DigitalInkRecognitionModel digitalInkRecognitionModel, DownloadConditions downloadConditions) {
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzaty.DOWNLOAD_MODEL_STARTED);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzn();
    }

    public final void zzg(DigitalInkRecognitionModel digitalInkRecognitionModel, zzagb zzagbVar, long j) {
        zzaty zzatyVar = zzagbVar.zzc() ? (zzaty) f36772c.get(zzagbVar.zza()) : null;
        if (zzatyVar == null) {
            zzatyVar = zzaty.GET_DOWNLOADED_FILES_NULL_RESULT;
        }
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzatyVar);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzg(j);
        zzc.zzn();
    }

    public final void zzh(DigitalInkRecognitionModel digitalInkRecognitionModel, zzagb zzagbVar, long j) {
        zzaty zzatyVar = zzagbVar.zzc() ? (zzaty) f36773d.get(zzagbVar.zza()) : null;
        if (zzatyVar == null) {
            zzatyVar = zzaty.IS_MODEL_DOWNLOADED_NULL_RESULT;
        }
        com.google.mlkit.vision.digitalink.internal.zzb zzc = this.f36774a.zzc(314);
        zzc.zzm(zzatyVar);
        zzc.zzi(digitalInkRecognitionModel);
        zzc.zzg(j);
        zzc.zzn();
    }
}
