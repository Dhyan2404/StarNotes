package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/BaseUserPBDocument;", "T", "Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "()V", "checkArgsNotComplete", "", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class BaseUserPBDocument<T> extends BasePBDocument<T> {
    public BaseUserPBDocument() {
        setPbDirPath(AppFilePaths.INSTANCE.appFilesPath());
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.BasePBDocument
    public boolean checkArgsNotComplete(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!StringUtils.isEmpty(args.getRevisionId())) {
            return false;
        }
        Debug.INSTANCE.m32044e(getClass(), "empty revisionId", new Object[0]);
        return true;
    }
}
