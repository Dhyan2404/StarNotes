package com.onyx.android.sdk.replicator.note.proto.p036pb;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseAppPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBData;", "()V", "collectDataExportToFile", "", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/proto/pb/AppPBDataContext;", "copyPBToDB", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BaseAppPBData implements AppPBData {
    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public void collectDataExportToFile(@NotNull AppPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.AppPBData
    public void copyPBToDB(@NotNull AppPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
    }
}
