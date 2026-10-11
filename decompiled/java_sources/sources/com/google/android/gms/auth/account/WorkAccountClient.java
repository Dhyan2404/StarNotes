package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.internal.auth.zzal;
import com.google.android.gms.tasks.Task;

/* loaded from: classes5.dex */
public class WorkAccountClient extends GoogleApi<Api.ApiOptions.NoOptions> {

    /* renamed from: a */
    public final WorkAccountApi f28856a;

    public WorkAccountClient(@NonNull Activity activity) {
        super(activity, WorkAccount.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f28856a = new zzal();
    }

    @NonNull
    public Task<Account> addWorkAccount(@NonNull String str) {
        return PendingResultUtil.toTask(this.f28856a.addWorkAccount(asGoogleApiClient(), str), new C5046a(this));
    }

    @NonNull
    public Task<Void> removeWorkAccount(@NonNull Account account) {
        return PendingResultUtil.toVoidTask(this.f28856a.removeWorkAccount(asGoogleApiClient(), account));
    }

    @NonNull
    public Task<Void> setWorkAuthenticatorEnabled(boolean z) {
        return PendingResultUtil.toVoidTask(this.f28856a.setWorkAuthenticatorEnabledWithResult(asGoogleApiClient(), z));
    }

    public WorkAccountClient(@NonNull Context context) {
        super(context, WorkAccount.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.f28856a = new zzal();
    }
}
