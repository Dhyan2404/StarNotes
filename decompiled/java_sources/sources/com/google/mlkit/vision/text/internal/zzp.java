package com.google.mlkit.vision.text.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzun;
import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.sunia.HTREnginev2.akp;
import com.sunia.HTREnginev2.jjp;

/* loaded from: classes6.dex */
public final class zzp extends LazyInstanceMap {

    /* renamed from: a */
    public final MlKitContext f36840a;

    public zzp(MlKitContext mlKitContext) {
        this.f36840a = mlKitContext;
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object create(Object obj) {
        TextRecognizerOptionsInterface textRecognizerOptionsInterface = (TextRecognizerOptionsInterface) obj;
        zzuc zzb = zzun.zzb(textRecognizerOptionsInterface.getLoggingLibraryName());
        Context applicationContext = this.f36840a.getApplicationContext();
        return new TextRecognizerTaskWithResource(zzb, (GoogleApiAvailabilityLight.getInstance().getApkVersion(applicationContext) >= 204700000 || textRecognizerOptionsInterface.getIsThickClient()) ? new jjp(applicationContext, textRecognizerOptionsInterface, zzb) : new akp(applicationContext), textRecognizerOptionsInterface);
    }
}
