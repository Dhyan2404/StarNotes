package com.sunia.HTREnginev2;

import android.os.Bundle;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.auth.api.signin.internal.zbv;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes5.dex */
public final class vep implements LoaderManager.LoaderCallbacks {

    /* renamed from: a */
    public final /* synthetic */ SignInHubActivity f87430a;

    public /* synthetic */ vep(SignInHubActivity signInHubActivity, zbv zbvVar) {
        this.f87430a = signInHubActivity;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final Loader onCreateLoader(int i, Bundle bundle) {
        return new com.google.android.gms.auth.api.signin.internal.zbc(this.f87430a, GoogleApiClient.getAllClients());
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final /* bridge */ /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        SignInHubActivity signInHubActivity = this.f87430a;
        signInHubActivity.setResult(SignInHubActivity.m21897z(signInHubActivity), SignInHubActivity.m21896A(signInHubActivity));
        this.f87430a.finish();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(Loader loader) {
    }
}
