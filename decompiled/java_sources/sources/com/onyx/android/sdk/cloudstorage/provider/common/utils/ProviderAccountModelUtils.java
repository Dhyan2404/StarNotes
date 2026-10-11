package com.onyx.android.sdk.cloudstorage.provider.common.utils;

import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageDBBundle;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000bJ\u001c\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;", "", "()V", "deleteAccount", "", CouchFieldKey.KEY_PROVIDER_NAME, "", "accountId", "queryAccount", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "queryAccountInfo", "", "saveAccount", "", "authAccountInfoList", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nProviderAccountModelUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderAccountModelUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1549#2:58\n1620#2,3:59\n*S KotlinDebug\n*F\n+ 1 ProviderAccountModelUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils\n*L\n33#1:58\n33#1:59,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ProviderAccountModelUtils {

    @NotNull
    public static final ProviderAccountModelUtils INSTANCE = new ProviderAccountModelUtils();

    public final long deleteAccount(@NotNull String providerName, @NotNull String accountId) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return CloudStorageDBBundle.INSTANCE.getProviderAccountProvider().deleteProviderAccountList(cBQueryArgs.andWith(couchUtils.equalExpression("accountId", accountId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER_NAME, providerName)));
    }

    @Nullable
    public final ProviderAccountModel queryAccount(@NotNull String providerName, @NotNull String accountId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) CloudStorageDBBundle.INSTANCE.getProviderAccountProvider().loadProviderAccountList(cBQueryArgs.andWith(couchUtils.equalExpression("accountId", accountId)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER_NAME, providerName))));
        return (ProviderAccountModel) firstOrNull;
    }

    @NotNull
    public final List<ProviderAccountModel> queryAccountInfo() {
        return CloudStorageDBBundle.INSTANCE.getProviderAccountProvider().loadProviderAccountList(new CBQueryArgs());
    }

    public final void saveAccount(@NotNull List<ProviderAccountModel> authAccountInfoList, @NotNull String providerName) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(authAccountInfoList, "authAccountInfoList");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        List<ProviderAccountModel> list = authAccountInfoList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ProviderAccountModel) it2.next()).getAccountId());
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression("accountId", arrayList)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PROVIDER_NAME, providerName));
        CloudStorageDBBundle cloudStorageDBBundle = CloudStorageDBBundle.INSTANCE;
        cloudStorageDBBundle.getProviderAccountProvider().deleteProviderAccountList(andWith);
        cloudStorageDBBundle.getProviderAccountProvider().saveProviderAccountList(authAccountInfoList);
    }
}
