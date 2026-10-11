package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u000e\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "createObservable", "getReplicatorManager", "", "documentId", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "ensureReplicatorObservable", "e", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseReplicatorManagerAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ReplicatorManager replicatorManager;

    public BaseReplicatorManagerAction(@NotNull ReplicatorManager replicatorManager) {
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
        this.replicatorManager = replicatorManager;
    }

    @NotNull
    public final Observable<ReplicatorManager> createObservable() {
        return getReplicatorManager().createObservable();
    }

    @NotNull
    public final Observable<DocReplicator> ensureReplicatorObservable(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return getReplicatorManager().ensureReplicatorObservable(documentId);
    }

    @NotNull
    public final ReplicatorManager getReplicatorManager() {
        return this.replicatorManager;
    }
}
