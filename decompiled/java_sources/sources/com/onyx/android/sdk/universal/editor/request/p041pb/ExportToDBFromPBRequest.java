package com.onyx.android.sdk.universal.editor.request.p041pb;

import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/pb/ExportToDBFromPBRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "workBundle", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", "execute", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExportToDBFromPBRequest extends RxBaseAppRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExportToDBFromPBRequest(@NotNull WorkBundle workBundle) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        PBFactory.INSTANCE.exportToDBFromPB(new PBDataContext(workBundle.getNoteBundle().getNoteDoc().getProviderHolder(), workBundle.getOpenDocArgs().getDocumentId()));
    }
}
