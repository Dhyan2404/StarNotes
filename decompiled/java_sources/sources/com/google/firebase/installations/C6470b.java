package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.sunia.HTREnginev2.fym;

/* renamed from: com.google.firebase.installations.b */
/* loaded from: classes6.dex */
public class C6470b implements fym {

    /* renamed from: a */
    public final Utils f35934a;

    /* renamed from: b */
    public final TaskCompletionSource<InstallationTokenResult> f35935b;

    public C6470b(Utils utils, TaskCompletionSource<InstallationTokenResult> taskCompletionSource) {
        this.f35934a = utils;
        this.f35935b = taskCompletionSource;
    }

    @Override // com.sunia.HTREnginev2.fym
    /* renamed from: a */
    public boolean mo28159a(PersistedInstallationEntry persistedInstallationEntry) {
        if (!persistedInstallationEntry.isRegistered() || this.f35934a.isAuthTokenExpired(persistedInstallationEntry)) {
            return false;
        }
        this.f35935b.setResult(InstallationTokenResult.builder().setToken(persistedInstallationEntry.getAuthToken()).setTokenExpirationTimestamp(persistedInstallationEntry.getExpiresInSecs()).setTokenCreationTimestamp(persistedInstallationEntry.getTokenCreationEpochInSecs()).build());
        return true;
    }

    @Override // com.sunia.HTREnginev2.fym
    public boolean onException(Exception exc) {
        this.f35935b.trySetException(exc);
        return true;
    }
}
