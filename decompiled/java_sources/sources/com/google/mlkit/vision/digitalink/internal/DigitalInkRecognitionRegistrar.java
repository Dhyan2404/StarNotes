package com.google.mlkit.vision.digitalink.internal;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbps;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.model.RemoteModelManager;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import java.util.List;

@KeepForSdk
/* loaded from: classes6.dex */
public class DigitalInkRecognitionRegistrar implements ComponentRegistrar {
    public static final /* synthetic */ int zza = 0;

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    public final List getComponents() {
        Log.d("DIRecoRegistrar", "DigitalInkRecognitionRegistrar.getComponents()");
        return zzajm.zzs(Component.builder(com.google.mlkit.vision.digitalink.downloading.zzb.class).add(Dependency.required((Class<?>) Context.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zzd
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new com.google.mlkit.vision.digitalink.downloading.zzb((Context) componentContainer.get(Context.class));
            }
        }).build(), Component.builder(com.google.mlkit.vision.digitalink.downloading.zza.class).add(Dependency.required((Class<?>) MlKitContext.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zze
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new com.google.mlkit.vision.digitalink.downloading.zza((MlKitContext) componentContainer.get(MlKitContext.class));
            }
        }).build(), Component.intoSetBuilder(RemoteModelManager.RemoteModelManagerRegistration.class).add(Dependency.requiredProvider((Class<?>) com.google.mlkit.vision.digitalink.downloading.zzb.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zzf
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new RemoteModelManager.RemoteModelManagerRegistration(DigitalInkRecognitionModel.class, componentContainer.getProvider(com.google.mlkit.vision.digitalink.downloading.zzb.class));
            }
        }).build(), Component.builder(zzc.class).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zzg
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new zzc(zzbps.zzb("digital-ink-recognition"));
            }
        }).build(), Component.builder(zzm.class).add(Dependency.required((Class<?>) com.google.mlkit.vision.digitalink.downloading.zzb.class)).add(Dependency.required((Class<?>) zzc.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zzh
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new zzm((com.google.mlkit.vision.digitalink.downloading.zzb) componentContainer.get(com.google.mlkit.vision.digitalink.downloading.zzb.class), (zzc) componentContainer.get(zzc.class));
            }
        }).build(), Component.builder(zzk.class).add(Dependency.required((Class<?>) zzm.class)).add(Dependency.required((Class<?>) ExecutorSelector.class)).factory(new ComponentFactory() { // from class: com.google.mlkit.vision.digitalink.internal.zzi
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return new zzk((zzm) componentContainer.get(zzm.class), (ExecutorSelector) componentContainer.get(ExecutorSelector.class));
            }
        }).build());
    }
}
