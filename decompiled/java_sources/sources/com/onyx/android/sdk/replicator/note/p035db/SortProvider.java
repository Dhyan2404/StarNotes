package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\f\u001a\u00020\u00042\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bJ\b\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;", "sortModel", "", "saveSortModel", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "loadSortList", "deleteSortList", "list", "saveSortList", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSortProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortProvider.kt\ncom/onyx/android/sdk/replicator/note/db/SortProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,44:1\n48#2,5:45\n*S KotlinDebug\n*F\n+ 1 SortProvider.kt\ncom/onyx/android/sdk/replicator/note/db/SortProvider\n*L\n32#1:45,5\n*E\n"})
/* loaded from: classes8.dex */
public final class SortProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35184a() {
        return ensureCollection(SyncConstant.COLLECTION_SORT_MODEL);
    }

    public final void deleteSortList(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections.INSTANCE.deleteByExpression(m35184a(), getDatabase(), queryArgs);
    }

    @NotNull
    public final List<SortModel> loadSortList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35184a = m35184a();
        if (m35184a == null || (str = m35184a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35184a, queryArgs), SortModel.class, str);
    }

    public final void saveSortList(@Nullable List<SortModel> list) {
        CouchCollections.INSTANCE.saveList(m35184a(), getDatabase(), list);
    }

    public final void saveSortModel(@NotNull SortModel sortModel) {
        Intrinsics.checkNotNullParameter(sortModel, "sortModel");
        CouchCollections.INSTANCE.saveDocument(m35184a(), (Collection) sortModel);
    }
}
