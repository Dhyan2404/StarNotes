package androidx.work.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class OperationImpl implements Operation {

    /* renamed from: a */
    public final MutableLiveData<Operation.State> f11454a = new MutableLiveData<>();

    /* renamed from: b */
    public final SettableFuture<Operation.State.SUCCESS> f11455b = SettableFuture.create();

    public OperationImpl() {
        markState(Operation.IN_PROGRESS);
    }

    @Override // androidx.work.Operation
    @NonNull
    public ListenableFuture<Operation.State.SUCCESS> getResult() {
        return this.f11455b;
    }

    @Override // androidx.work.Operation
    @NonNull
    public LiveData<Operation.State> getState() {
        return this.f11454a;
    }

    public void markState(@NonNull Operation.State state) {
        this.f11454a.postValue(state);
        if (state instanceof Operation.State.SUCCESS) {
            this.f11455b.set((Operation.State.SUCCESS) state);
        } else if (state instanceof Operation.State.FAILURE) {
            this.f11455b.setException(((Operation.State.FAILURE) state).getThrowable());
        }
    }
}
