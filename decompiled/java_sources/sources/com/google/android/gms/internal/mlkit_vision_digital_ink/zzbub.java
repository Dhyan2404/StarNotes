package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbub;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui;
import java.io.IOException;

/* loaded from: classes5.dex */
public class zzbub<MessageType extends zzbui<MessageType, BuilderType>, BuilderType extends zzbub<MessageType, BuilderType>> extends zzbsc<MessageType, BuilderType> {
    protected zzbui zza;
    private final zzbui zzb;

    public zzbub(MessageType messagetype) {
        this.zzb = messagetype;
        if (messagetype.zzag()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = messagetype.zzS();
    }

    private static void zza(Object obj, Object obj2) {
        zzbwe.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    public final void zzA() {
        if (this.zza.zzag()) {
            return;
        }
        zzB();
    }

    public void zzB() {
        zzbui zzS = this.zzb.zzS();
        zza(zzS, this.zza);
        this.zza = zzS;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvv
    public final /* synthetic */ zzbvu zzak() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvv
    public final boolean zzal() {
        return zzbui.zzaf(this.zza, false);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsc
    public final /* synthetic */ zzbsc zzo(zzbsd zzbsdVar) {
        zzt((zzbui) zzbsdVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsc, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    public final /* bridge */ /* synthetic */ zzbvt zzq(zzbtf zzbtfVar, zzbtr zzbtrVar) throws IOException {
        if (!this.zza.zzag()) {
            zzB();
        }
        try {
            zzbwe.zza().zzb(this.zza.getClass()).zzh(this.zza, zzbtg.zzq(zzbtfVar), zzbtrVar);
            return this;
        } catch (RuntimeException e) {
            if (e.getCause() instanceof IOException) {
                throw ((IOException) e.getCause());
            }
            throw e;
        }
    }

    public final zzbub zzr() {
        if (this.zzb.zzag()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = this.zzb.zzS();
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsc
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final zzbub zzn() {
        zzbub zzbubVar = (zzbub) this.zzb.zzb(5, null, null);
        zzbubVar.zza = zzy();
        return zzbubVar;
    }

    public final zzbub zzt(zzbui zzbuiVar) {
        if (!this.zzb.equals(zzbuiVar)) {
            if (!this.zza.zzag()) {
                zzB();
            }
            zza(this.zza, zzbuiVar);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final MessageType zzx() {
        MessageType zzy = zzy();
        if (zzy.zzal()) {
            return zzy;
        }
        throw new zzbxb(zzy);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    /* renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public MessageType zzy() {
        if (!this.zza.zzag()) {
            return (MessageType) this.zza;
        }
        this.zza.zzab();
        return (MessageType) this.zza;
    }

    public final zzbui zzw() {
        return this.zzb;
    }
}
