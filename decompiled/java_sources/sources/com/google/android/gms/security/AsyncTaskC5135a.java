package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.sun.org.apache.xalan.internal.templates.Constants;

/* renamed from: com.google.android.gms.security.a */
/* loaded from: classes5.dex */
public final class AsyncTaskC5135a extends AsyncTask {

    /* renamed from: a */
    public final /* synthetic */ Context f30049a;

    /* renamed from: b */
    public final /* synthetic */ ProviderInstaller.ProviderInstallListener f30050b;

    public AsyncTaskC5135a(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.f30049a = context;
        this.f30050b = providerInstallListener;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        try {
            ProviderInstaller.installIfNeeded(this.f30049a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            return Integer.valueOf(e.errorCode);
        } catch (GooglePlayServicesRepairableException e2) {
            return Integer.valueOf(e2.getConnectionStatusCode());
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            this.f30050b.onProviderInstalled();
            return;
        }
        Context context = this.f30049a;
        googleApiAvailabilityLight = ProviderInstaller.f30045a;
        this.f30050b.onProviderInstallFailed(num.intValue(), googleApiAvailabilityLight.getErrorResolutionIntent(context, num.intValue(), Constants.ELEMNAME_PI_OLD_STRING));
    }
}
