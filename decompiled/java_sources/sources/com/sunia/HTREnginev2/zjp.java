package com.sunia.HTREnginev2;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.FirebaseAuthException;

/* loaded from: classes6.dex */
public final class zjp implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f91885a;

    public zjp(com.google.firebase.auth.internal.zza zzaVar, TaskCompletionSource taskCompletionSource) {
        this.f91885a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        String str;
        str = com.google.firebase.auth.internal.zza.f35701b;
        Log.e(str, String.format("Failed to get reCAPTCHA token with error [%s]- calling backend without app verification", exc.getMessage()));
        if ((exc instanceof FirebaseAuthException) && ((FirebaseAuthException) exc).getErrorCode().endsWith("UNAUTHORIZED_DOMAIN")) {
            this.f91885a.setException(exc);
        } else {
            this.f91885a.setResult(new xmp().zza());
        }
    }
}
