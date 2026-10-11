package com.sunia.HTREnginev2;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;

/* loaded from: classes6.dex */
public class l2h implements fym {

    /* renamed from: a */
    public final TaskCompletionSource<String> f76072a;

    public l2h(TaskCompletionSource<String> taskCompletionSource) {
        this.f76072a = taskCompletionSource;
    }

    @Override // com.sunia.HTREnginev2.fym
    /* renamed from: a */
    public boolean mo28159a(PersistedInstallationEntry persistedInstallationEntry) {
        if (!persistedInstallationEntry.isUnregistered() && !persistedInstallationEntry.isRegistered() && !persistedInstallationEntry.isErrored()) {
            return false;
        }
        this.f76072a.trySetResult(persistedInstallationEntry.getFirebaseInstallationId());
        return true;
    }

    @Override // com.sunia.HTREnginev2.fym
    public boolean onException(Exception exc) {
        return false;
    }
}
