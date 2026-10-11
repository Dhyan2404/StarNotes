package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.NonNull;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzadz implements OnFailureListener {
    public zzadz(zzadx zzadxVar) {
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        Logger logger;
        logger = zzadx.zza;
        logger.m22191e("SmsRetrieverClient failed to start: " + exc.getMessage(), new Object[0]);
    }
}
