package com.onyx.android.sdk.p029db;

import androidx.annotation.WorkerThread;
import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.OnyxStatisticModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\r\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002J\u0006\u0010\u000f\u001a\u00020\u000eJ\b\u0010\u0011\u001a\u00020\u0010H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/data/OnyxStatisticModel;", "list", "", "saveOnyxStatisticList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadOnyxStatisticList", "deleteOnyxStatisticList", "", "idList", "deleteOnyxStatisticByIds", "", "loadOnyxStatisticCount", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOnyxStatisticProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxStatisticProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,53:1\n1855#2,2:54\n48#3,5:56\n*S KotlinDebug\n*F\n+ 1 OnyxStatisticProvider.kt\ncom/onyx/android/sdk/db/OnyxStatisticProvider\n*L\n31#1:54,2\n36#1:56,5\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxStatisticProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxStatisticProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m32982a() {
        return ensureCollection(SyncConstant.COLLECTION_PROVIDER_ONYX_STATISTIC_MODEL);
    }

    public final void deleteOnyxStatisticByIds(@NotNull List<String> idList) {
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return;
        }
        CouchCollections.INSTANCE.deleteListByIds(m32982a(), idList);
    }

    public final void deleteOnyxStatisticList(@NotNull CBQueryArgs cbQueryArgs) {
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections.INSTANCE.deleteByExpression(m32982a(), getDatabase(), cbQueryArgs);
    }

    public final long loadOnyxStatisticCount() {
        return CouchCollections.INSTANCE.countAll(m32982a());
    }

    @NotNull
    public final List<OnyxStatisticModel> loadOnyxStatisticList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32982a = m32982a();
        if (m32982a == null || (str = m32982a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32982a, cbQueryArgs), OnyxStatisticModel.class, str);
    }

    @WorkerThread
    public final void saveOnyxStatisticList(@NotNull List<OnyxStatisticModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((OnyxStatisticModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m32982a(), getDatabase(), list);
    }
}
