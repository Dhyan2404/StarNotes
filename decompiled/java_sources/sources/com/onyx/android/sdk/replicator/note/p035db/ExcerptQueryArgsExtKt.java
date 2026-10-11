package com.onyx.android.sdk.replicator.note.p035db;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u0006\u0010\u0005\u001a\u00020\u0001\u001a\u000e\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004\u001a\u0016\u0010\t\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, m61528d2 = {"loadDocExcerptCollectionQuery", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "docIdList", "", "", "loadEmptyRevisionIdExcerptCollectionQuery", "loadExcerptCollectionListByQuoteIdQuery", EditorConstants.ARGS_DOC_ID, "quoteId", "loadExcerptCollectionListBySourceShapeIdQuery", CouchFieldKey.KEY_SOURCE_SHAPE_ID, "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExcerptQueryArgsExtKt {
    @NotNull
    public static final CBQueryArgs loadDocExcerptCollectionQuery(@NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<String> list = docIdList;
        return cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_QUOTE_DOC_ID, list).m9761or(couchUtils.inExpression(CouchFieldKey.KEY_SOURCE_DOC_ID, list)));
    }

    @NotNull
    public static final CBQueryArgs loadEmptyRevisionIdExcerptCollectionQuery() {
        return new CBQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, ""));
    }

    @NotNull
    public static final CBQueryArgs loadExcerptCollectionListByQuoteIdQuery(@NotNull String docId, @NotNull String quoteId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_QUOTE_DOC_ID, docId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_QUOTE_SHAPE_ID, quoteId));
    }

    @NotNull
    public static final CBQueryArgs loadExcerptCollectionListBySourceShapeIdQuery(@NotNull String docId, @NotNull String sourceShapeId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(sourceShapeId, "sourceShapeId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_SOURCE_DOC_ID, docId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_SOURCE_SHAPE_ID, sourceShapeId));
    }

    @NotNull
    public static final CBQueryArgs loadExcerptCollectionListByQuoteIdQuery(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_QUOTE_DOC_ID, docId));
    }
}
