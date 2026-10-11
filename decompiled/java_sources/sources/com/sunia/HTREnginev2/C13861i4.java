package com.sunia.HTREnginev2;

import com.couchbase.lite.AbstractReplicator;
import com.couchbase.lite.internal.core.C4Replicator;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.i4 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C13861i4 implements C4Replicator.DocEndsListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractReplicator f72848a;

    public /* synthetic */ C13861i4(AbstractReplicator abstractReplicator) {
        this.f72848a = abstractReplicator;
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.DocEndsListener
    public final void documentsEnded(List list, boolean z) {
        this.f72848a.dispatchDocumentsEnded(list, z);
    }
}
