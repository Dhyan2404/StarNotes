package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbn extends IOException {
    static final Interceptor zza = new Interceptor() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbm
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            return zzcbn.zza(chain);
        }
    };

    public zzcbn(Throwable th) {
        super(th);
    }

    public static /* synthetic */ Response zza(Interceptor.Chain chain) throws IOException {
        try {
            return chain.proceed(chain.request());
        } catch (Error | RuntimeException e) {
            throw new zzcbn(e);
        }
    }
}
