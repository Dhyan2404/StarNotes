package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzez;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public class zzfa extends zzcu {
    private final zzez zza;
    private final zzxv zzb;

    @Nullable
    private final Integer zzc;

    private zzfa(zzez zzezVar, zzxv zzxvVar, @Nullable Integer num) {
        this.zza = zzezVar;
        this.zzb = zzxvVar;
        this.zzc = num;
    }

    public static zzfa zza(zzez zzezVar, @Nullable Integer num) throws GeneralSecurityException {
        zzxv zza;
        if (zzezVar.zzb() == zzez.zza.zza) {
            if (num != null) {
                zza = zzxv.zza(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else {
            if (zzezVar.zzb() != zzez.zza.zzb) {
                throw new GeneralSecurityException("Unknown Variant: " + String.valueOf(zzezVar.zzb()));
            }
            if (num == null) {
                zza = zzxv.zza(new byte[0]);
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        }
        return new zzfa(zzezVar, zza, num);
    }

    public final zzez zzb() {
        return this.zza;
    }

    public final zzxv zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    public final Integer zza() {
        return this.zzc;
    }
}
