package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.inject.Provider;

/* loaded from: classes5.dex */
public final class zzbpp implements zzbpa {

    @Nullable
    private Provider zza;
    private final Provider zzb;
    private final zzbpc zzc;

    public zzbpp(Context context, zzbpc zzbpcVar) {
        this.zzc = zzbpcVar;
        CCTDestination cCTDestination = CCTDestination.INSTANCE;
        TransportRuntime.initialize(context);
        final TransportFactory newFactory = TransportRuntime.getInstance().newFactory(cCTDestination);
        if (cCTDestination.getSupportedEncodings().contains(Encoding.m17394of("json"))) {
            this.zza = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpm
                @Override // com.google.firebase.inject.Provider
                public final Object get() {
                    return TransportFactory.this.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m17394of("json"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpo
                        @Override // com.google.android.datatransport.Transformer
                        public final Object apply(Object obj) {
                            return (byte[]) obj;
                        }
                    });
                }
            });
        }
        this.zzb = new Lazy(new Provider() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpn
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return TransportFactory.this.getTransport("FIREBASE_ML_SDK", byte[].class, Encoding.m17394of("proto"), new Transformer() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpl
                    @Override // com.google.android.datatransport.Transformer
                    public final Object apply(Object obj) {
                        return (byte[]) obj;
                    }
                });
            }
        });
    }

    @VisibleForTesting
    public static Event zzb(zzbpc zzbpcVar, zzbpk zzbpkVar) {
        return Event.ofTelemetry(zzbpkVar.zzb(zzbpcVar.zza(), false));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpa
    public final void zza(zzbpk zzbpkVar) {
        if (this.zzc.zza() != 0) {
            ((Transport) this.zzb.get()).send(zzb(this.zzc, zzbpkVar));
            return;
        }
        Provider provider = this.zza;
        if (provider != null) {
            ((Transport) provider.get()).send(zzb(this.zzc, zzbpkVar));
        }
    }
}
