package com.onyx.android.sdk.reader.p033db;

import com.couchbase.lite.Expression;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.reader.sync.model.SyncAnnotationModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, m61528d2 = {"annotationExpression", "Lcom/couchbase/lite/Expression;", "getAnnotationCount", "", "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "loadAnnotationList", "", "Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderAnnotationDataProviderKt {
    @NotNull
    public static final Expression annotationExpression() {
        return CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_MODE_TYPE, 1);
    }

    public static final long getAnnotationCount(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.getModelCount(queryArgs.andWith(annotationExpression()));
    }

    @NotNull
    public static final List<SyncAnnotationModel> loadAnnotationList(@NotNull ReaderDataProvider readerDataProvider, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(readerDataProvider, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return readerDataProvider.loadModelList(queryArgs, SyncAnnotationModel.class);
    }
}
