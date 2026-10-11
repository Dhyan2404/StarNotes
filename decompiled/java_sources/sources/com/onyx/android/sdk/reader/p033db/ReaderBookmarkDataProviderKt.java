package com.onyx.android.sdk.reader.p033db;

import com.couchbase.lite.Expression;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.reader.sync.model.SyncBookmarkModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f\u001a\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000e*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a,\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000e*\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, m61528d2 = {"bookmarkExpression", "Lcom/couchbase/lite/Expression;", "getBookmarkCount", "", "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadBookmark", "Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;", "associationId", "", CouchFieldKey.KEY_PAGE_NUMBER, "", "loadBookmarkList", "", "orderBy", Constants.ATTRVAL_ORDER_ASCENDING, "", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderBookmarkDataProviderKt {
    @NotNull
    public static final Expression bookmarkExpression() {
        return CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_MODE_TYPE, 2);
    }

    public static final long getBookmarkCount(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.getModelCount(queryArgs.andWith(bookmarkExpression()));
    }

    @Nullable
    public static final SyncBookmarkModel loadBookmark(@NotNull ReaderDataProvider readerDataProvider, @NotNull String associationId, int i) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(associationId, "associationId");
        CBQueryArgs andWith = new CBQueryArgs().andWith(bookmarkExpression());
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadBookmarkList(readerDataProvider, andWith.andWith(couchUtils.equalExpression("documentId", associationId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_NUMBER, Integer.valueOf(i))).setLimit(1)));
        return (SyncBookmarkModel) firstOrNull;
    }

    @NotNull
    public static final List<SyncBookmarkModel> loadBookmarkList(@NotNull ReaderDataProvider readerDataProvider, @NotNull String associationId, @NotNull String orderBy, boolean z) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(associationId, "associationId");
        Intrinsics.checkNotNullParameter(orderBy, "orderBy");
        CBQueryArgs andWith = new CBQueryArgs().setMaxLimit().andWith(bookmarkExpression());
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadBookmarkList(readerDataProvider, andWith.andWith(couchUtils.equalExpression("documentId", associationId)).setVarargOrdering(couchUtils.getOrdering(orderBy, z)));
    }

    public static /* synthetic */ List loadBookmarkList$default(ReaderDataProvider readerDataProvider, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = CouchFieldKey.KEY_PAGE_NUMBER;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return loadBookmarkList(readerDataProvider, str, str2, z);
    }

    @NotNull
    public static final List<SyncBookmarkModel> loadBookmarkList(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.loadModelList(queryArgs, SyncBookmarkModel.class);
    }
}
