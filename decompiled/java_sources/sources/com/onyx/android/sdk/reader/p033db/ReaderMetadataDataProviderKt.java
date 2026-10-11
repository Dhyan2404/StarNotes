package com.onyx.android.sdk.reader.p033db;

import com.couchbase.lite.Expression;
import com.onyx.android.sdk.data.common.data.QueryResult;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.reader.sync.model.SyncMetadataModel;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\f"}, m61528d2 = {"metadataExpression", "Lcom/couchbase/lite/Expression;", "getMetadataCount", "", "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadMetadataList", "", "Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataModel;", "loadMetadataResult", "Lcom/onyx/android/sdk/data/common/data/QueryResult;", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderMetadataDataProviderKt {
    public static final long getMetadataCount(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.getModelCount(queryArgs.andWith(metadataExpression()));
    }

    @NotNull
    public static final List<SyncMetadataModel> loadMetadataList(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.loadModelList(queryArgs, SyncMetadataModel.class);
    }

    @NotNull
    public static final QueryResult<SyncMetadataModel> loadMetadataResult(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        List<SyncMetadataModel> mutableList;
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        QueryResult<SyncMetadataModel> queryResult = new QueryResult<>();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) loadMetadataList(readerDataProvider, queryArgs));
        queryResult.setList(mutableList);
        queryResult.setCount(getMetadataCount(readerDataProvider, queryArgs));
        return queryResult;
    }

    @NotNull
    public static final Expression metadataExpression() {
        return CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_MODE_TYPE, 4);
    }
}
