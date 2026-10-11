package com.google.mlkit.vision.digitalink.internal;

import com.google.mlkit.vision.digitalink.Ink;
import com.google.mlkit.vision.digitalink.RecognitionContext;
import java.util.concurrent.Callable;

/* loaded from: classes6.dex */
public final /* synthetic */ class zzj implements Callable {
    public final /* synthetic */ DigitalInkRecognizerImpl zza;
    public final /* synthetic */ DigitalInkRecognizerJni zzb;
    public final /* synthetic */ Ink zzc;
    public final /* synthetic */ RecognitionContext zzd;

    public /* synthetic */ zzj(DigitalInkRecognizerImpl digitalInkRecognizerImpl, DigitalInkRecognizerJni digitalInkRecognizerJni, Ink ink, RecognitionContext recognitionContext) {
        this.zza = digitalInkRecognizerImpl;
        this.zzb = digitalInkRecognizerJni;
        this.zzc = ink;
        this.zzd = recognitionContext;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zza.m28581f(this.zzb, this.zzc, this.zzd);
    }
}
