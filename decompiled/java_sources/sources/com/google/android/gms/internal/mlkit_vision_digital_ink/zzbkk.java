package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzbkk {
    public static zzbhy zza(zzbny zzbnyVar) throws zzbic {
        boolean z;
        try {
            try {
                zzbnyVar.zzt();
                z = false;
            } catch (EOFException e) {
                e = e;
                z = true;
            }
            try {
                return (zzbhy) zzbnb.zzV.zza(zzbnyVar);
            } catch (EOFException e2) {
                e = e2;
                if (z) {
                    return zzbia.zza;
                }
                throw new zzbif(e);
            }
        } catch (zzbob e3) {
            throw new zzbif(e3);
        } catch (IOException e4) {
            throw new zzbhz(e4);
        } catch (NumberFormatException e5) {
            throw new zzbif(e5);
        }
    }
}
