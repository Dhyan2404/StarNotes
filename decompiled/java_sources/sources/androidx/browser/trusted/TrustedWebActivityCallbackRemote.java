package androidx.browser.trusted;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.trusted.ITrustedWebActivityCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class TrustedWebActivityCallbackRemote {

    /* renamed from: a */
    public final ITrustedWebActivityCallback f2428a;

    public TrustedWebActivityCallbackRemote(@NonNull ITrustedWebActivityCallback iTrustedWebActivityCallback) {
        this.f2428a = iTrustedWebActivityCallback;
    }

    @Nullable
    /* renamed from: a */
    public static TrustedWebActivityCallbackRemote m1267a(@Nullable IBinder iBinder) {
        ITrustedWebActivityCallback asInterface = iBinder == null ? null : ITrustedWebActivityCallback.Stub.asInterface(iBinder);
        if (asInterface == null) {
            return null;
        }
        return new TrustedWebActivityCallbackRemote(asInterface);
    }

    public void runExtraCallback(@NonNull String str, @NonNull Bundle bundle) throws RemoteException {
        this.f2428a.onExtraCallback(str, bundle);
    }
}
