package com.google.mlkit.vision.text.internal;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_text_common.zzep;
import com.google.android.gms.internal.mlkit_vision_text_common.zzeq;
import com.google.android.gms.internal.mlkit_vision_text_common.zzes;
import com.google.android.gms.internal.mlkit_vision_text_common.zznw;
import com.google.android.gms.internal.mlkit_vision_text_common.zzoa;
import com.google.android.gms.internal.mlkit_vision_text_common.zzob;
import com.google.android.gms.internal.mlkit_vision_text_common.zzoh;
import com.google.android.gms.internal.mlkit_vision_text_common.zzot;
import com.google.android.gms.internal.mlkit_vision_text_common.zzou;
import com.google.android.gms.internal.mlkit_vision_text_common.zzov;
import com.google.android.gms.internal.mlkit_vision_text_common.zzow;
import com.google.android.gms.internal.mlkit_vision_text_common.zzrx;
import com.google.android.gms.internal.mlkit_vision_text_common.zzrz;
import com.google.android.gms.internal.mlkit_vision_text_common.zzsa;
import com.google.android.gms.internal.mlkit_vision_text_common.zztr;
import com.google.android.gms.internal.mlkit_vision_text_common.zzub;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzue;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuf;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.TaskQueue;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.sunia.HTREnginev2.app;
import java.util.concurrent.Executor;

/* loaded from: classes6.dex */
public class TextRecognizerTaskWithResource extends MLTask<Text, InputImage> {

    /* renamed from: h */
    @VisibleForTesting
    public static boolean f36831h = true;

    /* renamed from: c */
    @NonNull
    @GuardedBy("this")
    public final app f36833c;

    /* renamed from: d */
    public final zzuc f36834d;

    /* renamed from: e */
    public final zzue f36835e;

    /* renamed from: f */
    public final TextRecognizerOptionsInterface f36836f;

    /* renamed from: i */
    public static final ImageUtils f36832i = ImageUtils.getInstance();

    /* renamed from: g */
    @KeepForSdk
    public static final TaskQueue f36830g = new TaskQueue();

    public TextRecognizerTaskWithResource(@NonNull zzuc zzucVar, @NonNull app appVar, @NonNull TextRecognizerOptionsInterface textRecognizerOptionsInterface) {
        super((textRecognizerOptionsInterface.getLoggingLanguageOption() == 8 || textRecognizerOptionsInterface.getLoggingLanguageOption() == 7) ? new TaskQueue() : f36830g);
        this.f36834d = zzucVar;
        this.f36833c = appVar;
        this.f36835e = zzue.zza(MlKitContext.getInstance().getApplicationContext());
        this.f36836f = textRecognizerOptionsInterface;
    }

    /* renamed from: c */
    public final /* synthetic */ zztr m28588c(long j, zzou zzouVar, InputImage inputImage) {
        zzrx zzrxVar = new zzrx();
        zzoh zzohVar = new zzoh();
        zzohVar.zzc(Long.valueOf(j));
        zzohVar.zzd(zzouVar);
        zzohVar.zze(Boolean.valueOf(f36831h));
        Boolean bool = Boolean.TRUE;
        zzohVar.zza(bool);
        zzohVar.zzb(bool);
        zzrxVar.zzd(zzohVar.zzf());
        ImageUtils imageUtils = f36832i;
        int mobileVisionImageFormat = imageUtils.getMobileVisionImageFormat(inputImage);
        int mobileVisionImageSize = imageUtils.getMobileVisionImageSize(inputImage);
        zzoa zzoaVar = new zzoa();
        zzoaVar.zza(mobileVisionImageFormat != -1 ? mobileVisionImageFormat != 35 ? mobileVisionImageFormat != 842094169 ? mobileVisionImageFormat != 16 ? mobileVisionImageFormat != 17 ? zzob.UNKNOWN_FORMAT : zzob.NV21 : zzob.NV16 : zzob.YV12 : zzob.YUV_420_888 : zzob.BITMAP);
        zzoaVar.zzb(Integer.valueOf(mobileVisionImageSize));
        zzrxVar.zzc(zzoaVar.zzd());
        zzsa zzsaVar = new zzsa();
        zzsaVar.zza(LoggingUtils.m28585a(this.f36836f.getLoggingLanguageOption()));
        zzrxVar.zze(zzsaVar.zzc());
        zzrz zzf = zzrxVar.zzf();
        zzow zzowVar = new zzow();
        zzowVar.zze(this.f36836f.getIsThickClient() ? zzot.TYPE_THICK : zzot.TYPE_THIN);
        zzowVar.zzh(zzf);
        return zzuf.zzf(zzowVar);
    }

    /* renamed from: d */
    public final /* synthetic */ zztr m28589d(zzes zzesVar, int i, zznw zznwVar) {
        zzow zzowVar = new zzow();
        zzowVar.zze(this.f36836f.getIsThickClient() ? zzot.TYPE_THICK : zzot.TYPE_THIN);
        zzep zzepVar = new zzep();
        zzepVar.zza(Integer.valueOf(i));
        zzepVar.zzc(zzesVar);
        zzepVar.zzb(zznwVar);
        zzowVar.zzd(zzepVar.zze());
        return zzuf.zzf(zzowVar);
    }

    @WorkerThread
    /* renamed from: e */
    public final void m28590e(final zzou zzouVar, long j, final InputImage inputImage) {
        final long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        this.f36834d.zzf(new zzub() { // from class: com.google.mlkit.vision.text.internal.zzq
            @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzub
            public final zztr zza() {
                return TextRecognizerTaskWithResource.this.m28588c(elapsedRealtime, zzouVar, inputImage);
            }
        }, zzov.ON_DEVICE_TEXT_DETECT);
        zzeq zzeqVar = new zzeq();
        zzeqVar.zza(zzouVar);
        zzeqVar.zzb(Boolean.valueOf(f36831h));
        zzsa zzsaVar = new zzsa();
        zzsaVar.zza(LoggingUtils.m28585a(this.f36836f.getLoggingLanguageOption()));
        zzeqVar.zzc(zzsaVar.zzc());
        final zzes zzd = zzeqVar.zzd();
        final zzr zzrVar = new zzr(this);
        final zzov zzovVar = zzov.AGGREGATED_ON_DEVICE_TEXT_DETECTION;
        Executor workerThreadExecutor = MLTaskExecutor.workerThreadExecutor();
        final zzuc zzucVar = this.f36834d;
        workerThreadExecutor.execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_text_common.zzua
            @Override // java.lang.Runnable
            public final void run() {
                zzuc.this.zzh(zzovVar, zzd, elapsedRealtime, zzrVar);
            }
        });
        long currentTimeMillis = System.currentTimeMillis();
        this.f36835e.zzc(this.f36836f.getLoggingEventId(), zzouVar.zza(), currentTimeMillis - elapsedRealtime, currentTimeMillis);
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    @WorkerThread
    public final synchronized void load() throws MlKitException {
        this.f36833c.zzb();
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    @WorkerThread
    public final synchronized void release() {
        f36831h = true;
        this.f36833c.zzc();
    }

    @Override // com.google.mlkit.common.sdkinternal.MLTask
    @NonNull
    @WorkerThread
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final synchronized Text run(@NonNull InputImage inputImage) throws MlKitException {
        Text mo53028a;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            mo53028a = this.f36833c.mo53028a(inputImage);
            m28590e(zzou.NO_ERROR, elapsedRealtime, inputImage);
            f36831h = false;
        } catch (MlKitException e) {
            m28590e(e.getErrorCode() == 14 ? zzou.MODEL_NOT_DOWNLOADED : zzou.UNKNOWN_ERROR, elapsedRealtime, inputImage);
            throw e;
        }
        return mo53028a;
    }
}
