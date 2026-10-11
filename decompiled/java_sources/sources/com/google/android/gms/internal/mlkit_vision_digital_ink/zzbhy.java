package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes5.dex */
public class zzbhy {
    @Deprecated
    public zzbhy() {
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            zzboa zzboaVar = new zzboa(stringWriter);
            zzboaVar.zzj(true);
            zzbnb.zzV.zzb(zzboaVar, this);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
