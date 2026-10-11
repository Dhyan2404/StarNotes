package com.onyx.android.sdk.replicator.event;

import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/SyncReaderProgressChangedEvent;", "", "list", "", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncReaderProgressChangedEvent {
    public SyncReaderProgressChangedEvent(@NotNull List<SyncProgressModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
    }
}
