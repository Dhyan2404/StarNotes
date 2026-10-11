package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsc;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsd;
import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class zzbsc<MessageType extends zzbsd<MessageType, BuilderType>, BuilderType extends zzbsc<MessageType, BuilderType>> implements zzbvt {
    @Override // 
    public abstract zzbsc zzn();

    public abstract zzbsc zzo(zzbsd zzbsdVar);

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    public final /* bridge */ /* synthetic */ zzbvt zzp(zzbvu zzbvuVar) {
        if (zzak().getClass().isInstance(zzbvuVar)) {
            return zzo((zzbsd) zzbvuVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    public /* bridge */ /* synthetic */ zzbvt zzq(zzbtf zzbtfVar, zzbtr zzbtrVar) throws IOException {
        throw null;
    }
}
