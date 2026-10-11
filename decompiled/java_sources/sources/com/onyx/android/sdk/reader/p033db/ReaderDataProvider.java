package com.onyx.android.sdk.reader.p033db;

import com.couchbase.lite.Expression;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J,\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;", "", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "T", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "Ljava/lang/Class;", "cls", "", "loadModelList", "", "getModelCount", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "getCouchHolder", "()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderDataProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CouchHolder couchHolder;

    public ReaderDataProvider(@NotNull CouchHolder couchHolder) {
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        this.couchHolder = couchHolder;
    }

    @NotNull
    public final CouchHolder getCouchHolder() {
        return this.couchHolder;
    }

    public final long getModelCount(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Expression whereEx = queryArgs.getWhereEx();
        if (whereEx == null) {
            whereEx = CouchUtils.INSTANCE.uniqueIdValued();
        }
        return CouchUtils.INSTANCE.queryDocumentCount(this.couchHolder.ensureDB(), whereEx);
    }

    @NotNull
    public final <T extends BaseReplicatorModel> List<T> loadModelList(@NotNull CBQueryArgs queryArgs, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        Intrinsics.checkNotNullParameter(cls, "cls");
        return CouchUtils.INSTANCE.queryModelList(this.couchHolder.ensureDB(), queryArgs, cls);
    }
}
