package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.WorkManagerImpl;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class PruneWorkRunnable implements Runnable {

    /* renamed from: e */
    public final WorkManagerImpl f11944e;

    /* renamed from: f */
    public final OperationImpl f11945f = new OperationImpl();

    public PruneWorkRunnable(@NonNull WorkManagerImpl workManagerImpl) {
        this.f11944e = workManagerImpl;
    }

    @NonNull
    public Operation getOperation() {
        return this.f11945f;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f11944e.getWorkDatabase().workSpecDao().pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();
            this.f11945f.markState(Operation.SUCCESS);
        } catch (Throwable th) {
            this.f11945f.markState(new Operation.State.FAILURE(th));
        }
    }
}
