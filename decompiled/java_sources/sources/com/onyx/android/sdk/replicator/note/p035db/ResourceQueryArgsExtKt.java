package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0014\u0010\u0007\u001a\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u001a\u0016\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003¨\u0006\f"}, m61528d2 = {"docDuplicatedNameResourceListQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", EditorConstants.ARGS_DOC_ID, "", "title", "loadDocResourceListQuery", "loadEmptyRevisionResourceListQuery", "loadResourceByIds", "resourceIds", "", "loadResourceByLocalPath", CouchFieldKey.KEY_LOCAL_PATH, "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ResourceQueryArgsExtKt {
    @NotNull
    public static final CBQueryArgs docDuplicatedNameResourceListQuery(@NotNull String docId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(title, "title");
        CBQueryArgs loadDocResourceListQuery = loadDocResourceListQuery(docId);
        loadDocResourceListQuery.andWith(CouchUtils.INSTANCE.equalExpression("title", title));
        return loadDocResourceListQuery;
    }

    @NotNull
    public static final CBQueryArgs loadDocResourceListQuery(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("documentId", docId));
    }

    @NotNull
    public static final CBQueryArgs loadEmptyRevisionResourceListQuery(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("documentId", docId)).andWith(couchUtils.nullOrMissing(CouchFieldKey.KEY_REVISION_ID));
    }

    @NotNull
    public static final CBQueryArgs loadResourceByIds(@NotNull List<String> resourceIds) {
        Intrinsics.checkNotNullParameter(resourceIds, "resourceIds");
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, resourceIds));
    }

    @NotNull
    public static final CBQueryArgs loadResourceByLocalPath(@NotNull String docId, @NotNull String localPath) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("documentId", docId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_LOCAL_PATH, localPath));
    }
}
