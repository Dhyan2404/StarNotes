package com.onyx.android.sdk.cloudstorage.p020db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007J\b\u0010\r\u001a\u00020\fH\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "list", "", "saveProviderAccountList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "loadProviderAccountList", "", "deleteProviderAccountList", "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nProviderAccountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderAccountProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,36:1\n1855#2,2:37\n1549#2:44\n1620#2,3:45\n48#3,5:39\n*S KotlinDebug\n*F\n+ 1 ProviderAccountProvider.kt\ncom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider\n*L\n20#1:37,2\n31#1:44\n31#1:45,3\n27#1:39,5\n*E\n"})
/* loaded from: classes7.dex */
public final class ProviderAccountProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProviderAccountProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m32310a() {
        return ensureCollection(SyncConstant.COLLECTION_PROVIDER_ACCOUNT_MODEL);
    }

    public final int deleteProviderAccountList(@NotNull CBQueryArgs cbQueryArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        List<ProviderAccountModel> loadProviderAccountList = loadProviderAccountList(cbQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadProviderAccountList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadProviderAccountList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ProviderAccountModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m32310a(), arrayList);
        return arrayList.size();
    }

    @NotNull
    public final List<ProviderAccountModel> loadProviderAccountList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m32310a = m32310a();
        if (m32310a == null || (str = m32310a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m32310a, cbQueryArgs), ProviderAccountModel.class, str);
    }

    public final void saveProviderAccountList(@NotNull List<ProviderAccountModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (ProviderAccountModel providerAccountModel : list) {
            providerAccountModel.beforeSave();
            providerAccountModel.ensureUniqueIdExist();
        }
        CouchCollections.INSTANCE.saveList(m32310a(), getDatabase(), list);
    }
}
