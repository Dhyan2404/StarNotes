package com.google.mlkit.vision.digitalink.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizer;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import com.google.mlkit.vision.digitalink.RecognitionResult;
import com.google.mlkit.vision.digitalink.WritingArea;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public class DigitalInkRecognizerImpl implements DigitalInkRecognizer {

    @NonNull
    @VisibleForTesting
    public static final RecognitionContext zza;

    /* renamed from: e */
    public final DigitalInkRecognizerOptions f36781e;

    /* renamed from: f */
    public final Executor f36782f;

    /* renamed from: g */
    public final CancellationTokenSource f36783g = new CancellationTokenSource();

    @NonNull
    @VisibleForTesting
    public final AtomicReference zzb;

    static {
        RecognitionContext.Builder builder = RecognitionContext.builder();
        builder.setPreContext("");
        builder.setWritingArea(new WritingArea(0.0f, 0.0f));
        zza = builder.build();
    }

    public DigitalInkRecognizerImpl(@NonNull DigitalInkRecognizerJni digitalInkRecognizerJni, @NonNull DigitalInkRecognizerOptions digitalInkRecognizerOptions, @NonNull Executor executor) {
        this.zzb = new AtomicReference(digitalInkRecognizerJni);
        this.f36781e = digitalInkRecognizerOptions;
        this.f36782f = executor;
        digitalInkRecognizerJni.pin();
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizer, java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void close() {
        DigitalInkRecognizerJni digitalInkRecognizerJni = (DigitalInkRecognizerJni) this.zzb.getAndSet(null);
        if (digitalInkRecognizerJni != null) {
            digitalInkRecognizerJni.unpin(this.f36782f);
        }
    }

    /* renamed from: f */
    public final /* synthetic */ RecognitionResult m28581f(DigitalInkRecognizerJni digitalInkRecognizerJni, Ink ink, RecognitionContext recognitionContext) throws Exception {
        return digitalInkRecognizerJni.zzc(ink, recognitionContext, this.f36781e);
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizer
    @NonNull
    public final Task<RecognitionResult> recognize(@NonNull Ink ink) {
        RecognitionContext recognitionContext = zza;
        DigitalInkRecognizerJni digitalInkRecognizerJni = (DigitalInkRecognizerJni) this.zzb.get();
        Preconditions.checkState(digitalInkRecognizerJni != null, "Recognizer has been closed");
        return digitalInkRecognizerJni.callAfterLoad(this.f36782f, new zzj(this, digitalInkRecognizerJni, ink, recognitionContext), this.f36783g.getToken());
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizer
    @NonNull
    public final Task<RecognitionResult> recognize(@NonNull Ink ink, @NonNull RecognitionContext recognitionContext) {
        DigitalInkRecognizerJni digitalInkRecognizerJni = (DigitalInkRecognizerJni) this.zzb.get();
        Preconditions.checkState(digitalInkRecognizerJni != null, "Recognizer has been closed");
        return digitalInkRecognizerJni.callAfterLoad(this.f36782f, new zzj(this, digitalInkRecognizerJni, ink, recognitionContext), this.f36783g.getToken());
    }
}
