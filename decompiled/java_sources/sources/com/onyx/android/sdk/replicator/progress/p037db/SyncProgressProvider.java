package com.onyx.android.sdk.replicator.progress.p037db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\r\u001a\u00020\fJ\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u0011\u001a\u00020\u0010H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "model", "", "saveSyncProgressModel", "", "list", "saveSyncProgressModelList", "", "documentId", "loadSyncProgressModel", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "loadProgressList", "loadProgressListInBatch", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSyncProgressProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncProgressProvider.kt\ncom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,57:1\n48#2,5:58\n48#2,5:63\n*S KotlinDebug\n*F\n+ 1 SyncProgressProvider.kt\ncom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider\n*L\n41#1:58,5\n45#1:63,5\n*E\n"})
/* loaded from: classes8.dex */
public final class SyncProgressProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncProgressProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35587a() {
        return ensureCollection(SyncConstant.COLLECTION_SYNC_PROGRESS_MODEL);
    }

    @NotNull
    public final List<SyncProgressModel> loadProgressList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35587a = m35587a();
        if (m35587a == null || (str = m35587a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35587a, queryArgs), SyncProgressModel.class, str);
    }

    @NotNull
    public final List<SyncProgressModel> loadProgressListInBatch(@NotNull CBQueryArgs queryArgs) {
        List<SyncProgressModel> loadProgressList;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        ArrayList arrayList = new ArrayList();
        do {
            loadProgressList = loadProgressList(queryArgs);
            arrayList.addAll(loadProgressList);
            queryArgs.m72252setOffset(queryArgs.getOffset() + loadProgressList.size());
        } while (loadProgressList.size() >= queryArgs.getLimit());
        return arrayList;
    }

    @Nullable
    public final SyncProgressModel loadSyncProgressModel(@NotNull String documentId) {
        String str;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, documentId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35587a = m35587a();
        if (m35587a == null || (str = m35587a.getName()) == null) {
            str = "_default";
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) couchUtils.fromResultList(couchCollections.queryResultList(m35587a, andWith), SyncProgressModel.class, str));
        return (SyncProgressModel) firstOrNull;
    }

    public final void saveSyncProgressModel(@NotNull SyncProgressModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.beforeSave();
        CouchCollections.INSTANCE.saveDocument(m35587a(), (Collection) model);
    }

    public final void saveSyncProgressModelList(@NotNull List<SyncProgressModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        CouchCollections.INSTANCE.saveList(m35587a(), getDatabase(), list);
    }
}
