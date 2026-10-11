package com.google.mlkit.vision.digitalink.internal;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;

/* loaded from: classes6.dex */
public final class zzm extends LazyInstanceMap {

    /* renamed from: a */
    public final com.google.mlkit.vision.digitalink.downloading.zzb f36802a;

    /* renamed from: b */
    public final zzc f36803b;

    public zzm(com.google.mlkit.vision.digitalink.downloading.zzb zzbVar, zzc zzcVar) {
        this.f36802a = zzbVar;
        this.f36803b = zzcVar;
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object create(Object obj) {
        return new DigitalInkRecognizerJni((DigitalInkRecognitionModel) obj, this.f36802a, this.f36803b);
    }
}
