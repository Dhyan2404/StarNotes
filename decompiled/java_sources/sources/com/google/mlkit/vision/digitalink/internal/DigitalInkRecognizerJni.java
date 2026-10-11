package com.google.mlkit.vision.digitalink.internal;

import android.content.res.AssetFileDescriptor;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzafa;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagy;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaty;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpj;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzzz;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.ModelResource;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionCandidate;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.google.mlkit.vision.digitalink.RecognitionResult;
import com.google.mlkit.vision.digitalink.WritingArea;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes6.dex */
public class DigitalInkRecognizerJni extends ModelResource {

    /* renamed from: h */
    public static final DigitalInkRecognitionModel f36784h = DigitalInkRecognitionModel.builder(DigitalInkRecognitionModelIdentifier.EN_US).build();

    /* renamed from: c */
    public final DigitalInkRecognitionModel f36785c;

    /* renamed from: d */
    @Nullable
    public final com.google.mlkit.vision.digitalink.downloading.zzb f36786d;

    /* renamed from: e */
    public final zzc f36787e;

    /* renamed from: f */
    public final zzb f36788f;

    @NonNull
    @VisibleForTesting
    public final AtomicLong zza = new AtomicLong();

    /* renamed from: g */
    public final zzbpj f36789g = zzbpj.zza(MlKitContext.getInstance().getApplicationContext());

    static {
        try {
            System.loadLibrary("digitalink");
        } catch (UnsatisfiedLinkError e) {
            Log.e("DIRecoJni", "Native library loading failed: ".concat(e.toString()));
        }
    }

    @VisibleForTesting
    public DigitalInkRecognizerJni(DigitalInkRecognitionModel digitalInkRecognitionModel, com.google.mlkit.vision.digitalink.downloading.zzb zzbVar, zzc zzcVar) {
        this.f36785c = digitalInkRecognitionModel;
        this.f36786d = zzbVar;
        this.f36787e = zzcVar;
        zzb zzbVar2 = new zzb(zzcVar, 315, null);
        zzbVar2.zzm(zzaty.RECOGNITION_SUCCESS);
        zzbVar2.zzh(30L);
        zzbVar2.zzi(digitalInkRecognitionModel);
        this.f36788f = zzbVar2;
    }

    @NonNull
    @VisibleForTesting
    public native RecognitionCandidate[] callNativeRecognizer(long j, @NonNull float[][][] fArr, float f, float f2, @NonNull String str, int i, boolean z) throws Exception;

    @VisibleForTesting
    public native void deinitNativeRecognizer(long j);

    @VisibleForTesting
    public native long initNativeRecognizer(@NonNull FileInputStream fileInputStream, @NonNull FileInputStream fileInputStream2, @Nullable FileInputStream fileInputStream3) throws Exception;

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final void load() throws MlKitException {
        if (this.zza.get() != 0) {
            return;
        }
        zzagy zzb = zzagy.zzb(zzafa.zza());
        zzb zzbVar = new zzb(this.f36787e, 313, null);
        zzbVar.zzi(this.f36785c);
        try {
            try {
                com.google.mlkit.vision.digitalink.downloading.zzc zzcVar = (com.google.mlkit.vision.digitalink.downloading.zzc) Tasks.await(((com.google.mlkit.vision.digitalink.downloading.zzb) Preconditions.checkNotNull(this.f36786d)).zzb(this.f36785c));
                try {
                    try {
                        try {
                            FileInputStream createInputStream = ((AssetFileDescriptor) zzcVar.zzc((zzyf) Preconditions.checkNotNull(zzzz.zza()))).createInputStream();
                            try {
                                FileInputStream createInputStream2 = ((AssetFileDescriptor) zzcVar.zzb((zzyf) Preconditions.checkNotNull(zzzz.zza()))).createInputStream();
                                try {
                                    FileInputStream zza = zzcVar.zza();
                                    try {
                                        this.zza.set(initNativeRecognizer(createInputStream, createInputStream2, zza));
                                        zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_SUCCESS);
                                        if (zza != null) {
                                            zza.close();
                                        }
                                        if (createInputStream2 != null) {
                                            createInputStream2.close();
                                        }
                                        if (createInputStream != null) {
                                            createInputStream.close();
                                        }
                                        zzbVar.zzg(zzb.zza(TimeUnit.MILLISECONDS));
                                        zzbVar.zzn();
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (Throwable th) {
                                if (createInputStream != null) {
                                    try {
                                        createInputStream.close();
                                    } catch (Throwable th2) {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e) {
                            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_IO_EXCEPTION);
                            throw new MlKitException("Exception occurred reading model files from storage.", 13, e);
                        }
                    } catch (Throwable th3) {
                        if (th3 instanceof InternalError) {
                            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_INTERNAL_ERROR);
                        } else if (th3 instanceof RuntimeException) {
                            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_RUNTIME_EXCEPTION);
                        } else {
                            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_UNKNOWN_EXCEPTION);
                        }
                        throw new MlKitException("An internal error occurred during initialization.", 13, th3);
                    }
                } catch (zzo e2) {
                    zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_NATIVE_HANDWRITING_EXCEPTION);
                    zzbVar.zzj(e2);
                    throw new MlKitException("An internal error occurred during initialization.", 13, e2);
                }
            } catch (Throwable th4) {
                zzbVar.zzg(zzb.zza(TimeUnit.MILLISECONDS));
                zzbVar.zzn();
                throw th4;
            }
        } catch (InterruptedException e3) {
            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_IO_EXCEPTION);
            throw new MlKitException("An internal error occurred during initialization.", 13, e3);
        } catch (ExecutionException e4) {
            zzbVar.zzm(zzaty.RECOGNIZER_INITIALIZE_IO_EXCEPTION);
            throw new MlKitException("An internal error occurred during initialization.", 13, e4.getCause());
        }
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final void release() {
        this.f36788f.zze();
        long andSet = this.zza.getAndSet(0L);
        if (andSet != 0) {
            deinitNativeRecognizer(andSet);
        }
    }

    @NonNull
    public final RecognitionResult zzc(@NonNull Ink ink, @NonNull RecognitionContext recognitionContext, @NonNull DigitalInkRecognizerOptions digitalInkRecognizerOptions) throws MlKitException {
        long j;
        zzagy zzb = zzagy.zzb(zzafa.zza());
        SystemClock.elapsedRealtime();
        try {
            WritingArea writingArea = recognitionContext.getWritingArea();
            long j2 = this.zza.get();
            int size = ink.getStrokes().size();
            float[][][] fArr = new float[size][];
            boolean z = false;
            Long l = null;
            for (int i = 0; i < size; i++) {
                Ink.Stroke stroke = ink.getStrokes().get(i);
                int size2 = stroke.getPoints().size();
                float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, size2, 4);
                int i2 = 0;
                while (i2 < size2) {
                    Ink.Point point = (Ink.Point) Preconditions.checkNotNull(stroke.getPoints().get(i2));
                    if (point.getTimestamp() != null) {
                        j = ((Long) Preconditions.checkNotNull(point.getTimestamp())).longValue();
                    } else {
                        j = 0;
                        z = true;
                    }
                    if (l == null) {
                        l = Long.valueOf(j);
                    }
                    fArr2[i2][0] = point.getX();
                    fArr2[i2][1] = point.getY();
                    fArr2[i2][2] = (float) (j - l.longValue());
                    fArr2[i2][3] = 0.0f;
                    i2++;
                    z = z;
                    l = l;
                }
                fArr[i] = fArr2;
            }
            if (z) {
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    int i5 = 0;
                    while (true) {
                        float[][] fArr3 = fArr[i4];
                        if (i5 < fArr3.length) {
                            fArr3[i5][2] = i3 * 20.0f;
                            i5++;
                            i3++;
                        }
                    }
                }
            }
            RecognitionResult recognitionResult = new RecognitionResult(Arrays.asList(callNativeRecognizer(j2, fArr, writingArea == null ? 0.0f : writingArea.getWidth(), writingArea == null ? 0.0f : writingArea.getHeight(), recognitionContext.getPreContext(), digitalInkRecognizerOptions.zza(), digitalInkRecognizerOptions.zzb().zza())));
            zzb zzbVar = this.f36788f;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            zzbVar.zzc(ink, recognitionResult, zzb.zza(timeUnit));
            zzbVar.zzf();
            long currentTimeMillis = System.currentTimeMillis();
            this.f36789g.zzc(24309, zzaty.RECOGNITION_SUCCESS.zza(), currentTimeMillis - zzb.zza(timeUnit), currentTimeMillis);
            return recognitionResult;
        } catch (Throwable th) {
            zzb zzbVar2 = new zzb(this.f36787e, 315, null);
            zzbVar2.zzl(ink);
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            zzbVar2.zzg(zzb.zza(timeUnit2));
            zzbVar2.zzk(digitalInkRecognizerOptions);
            if (th instanceof zzo) {
                zzbVar2.zzm(zzaty.RECOGNITION_NATIVE_HANDWRITING_EXCEPTION);
                zzbVar2.zzj(th);
            } else if (th instanceof InternalError) {
                zzbVar2.zzm(zzaty.RECOGNITION_INTERNAL_ERROR);
            } else if (th instanceof RuntimeException) {
                zzbVar2.zzm(zzaty.RECOGNITION_RUNTIME_EXCEPTION);
            } else {
                zzbVar2.zzm(zzaty.RECOGNITION_UNKNOWN_EXCEPTION);
            }
            zzbVar2.zzn();
            long currentTimeMillis2 = System.currentTimeMillis();
            this.f36789g.zzc(24309, zzbVar2.zza().zza(), currentTimeMillis2 - zzb.zza(timeUnit2), currentTimeMillis2);
            throw new MlKitException("An internal error occurred during recognition.", 13, th);
        }
    }
}
