package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes5.dex */
public final class zbb implements Runnable {

    /* renamed from: g */
    public static final Logger f28969g = new Logger("RevokeAccessOperation", new String[0]);

    /* renamed from: e */
    public final String f28970e;

    /* renamed from: f */
    public final StatusPendingResult f28971f = new StatusPendingResult((GoogleApiClient) null);

    public zbb(String str) {
        this.f28970e = Preconditions.checkNotEmpty(str);
    }

    public static PendingResult zba(@Nullable String str) {
        if (str == null) {
            return PendingResults.immediateFailedResult(new Status(4), null);
        }
        zbb zbbVar = new zbb(str);
        new Thread(zbbVar).start();
        return zbbVar.f28971f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://accounts.google.com/o/oauth2/revoke?token=" + this.f28970e).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                f28969g.m22191e("Unable to revoke access!", new Object[0]);
            }
            f28969g.m22189d("Response Code: " + responseCode, new Object[0]);
        } catch (IOException e) {
            f28969g.m22191e("IOException when revoking access: ".concat(String.valueOf(e.toString())), new Object[0]);
        } catch (Exception e2) {
            f28969g.m22191e("Exception when revoking access: ".concat(String.valueOf(e2.toString())), new Object[0]);
        }
        this.f28971f.setResult(status);
    }
}
