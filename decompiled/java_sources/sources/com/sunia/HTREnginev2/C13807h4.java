package com.sunia.HTREnginev2;

import com.couchbase.lite.AbstractReplicator;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;

/* renamed from: com.sunia.HTREnginev2.h4 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C13807h4 implements C4Replicator.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractReplicator f71788a;

    public /* synthetic */ C13807h4(AbstractReplicator abstractReplicator) {
        this.f71788a = abstractReplicator;
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.StatusListener
    public final void statusChanged(C4Replicator c4Replicator, C4ReplicatorStatus c4ReplicatorStatus) {
        this.f71788a.dispatchStatusChange(c4Replicator, c4ReplicatorStatus);
    }
}
