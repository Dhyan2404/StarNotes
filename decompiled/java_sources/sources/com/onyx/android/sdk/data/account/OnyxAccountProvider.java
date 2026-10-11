package com.onyx.android.sdk.data.account;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0006\u0010\f\u001a\u00020\bJ\b\u0010\r\u001a\u0004\u0018\u00010\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\nJ\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bJ\u0014\u0010\u001d\u001a\u00020\n2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u0014¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "couchHolder", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "deleteAccount", "", "model", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "deleteDuplicatedAccount", "", "accountModel", "getCurrentAccount", "getLoggedInAccount", "getOnyxAccountCollection", "Lcom/couchbase/lite/Collection;", "loadAccountByUid", CouchFieldKey.KEY_UID, "", "loadAccountList", "", "cbQueryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "logIn", "logOut", "reason", "", "removeAll", "saveAccount", "saveAccountList", "modelList", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nOnyxAccountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n48#2,5:93\n1549#3:98\n1620#3,3:99\n*S KotlinDebug\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n*L\n53#1:93,5\n82#1:98\n82#1:99,3\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxAccountProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxAccountProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    private final void deleteDuplicatedAccount(OnyxAccountModel accountModel) {
        List<String> listOf;
        if (accountModel.getUniqueId().length() == 0) {
            return;
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection onyxAccountCollection = getOnyxAccountCollection();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(accountModel.getUniqueId());
        couchCollections.deleteListByIds(onyxAccountCollection, listOf);
    }

    private final Collection getOnyxAccountCollection() {
        return ensureCollection(SyncConstant.COLLECTION_ONYX_ACCOUNT_MODEL);
    }

    public final boolean deleteAccount(@NotNull OnyxAccountModel model) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection onyxAccountCollection = getOnyxAccountCollection();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(model.getUniqueId());
        couchCollections.deleteListByIds(onyxAccountCollection, listOf);
        return true;
    }

    @NotNull
    public final OnyxAccountModel getCurrentAccount() {
        OnyxAccountModel loggedInAccount = getLoggedInAccount();
        if (loggedInAccount != null) {
            return loggedInAccount;
        }
        OnyxAccountModel loadAccountByUid = loadAccountByUid("share_user");
        if (loadAccountByUid != null) {
            return loadAccountByUid;
        }
        OnyxAccountModel onyxAccountModel = new OnyxAccountModel();
        onyxAccountModel.setUniqueId("share_user");
        saveAccount(onyxAccountModel);
        return onyxAccountModel;
    }

    @Nullable
    public final OnyxAccountModel getLoggedInAccount() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadAccountList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_IS_LOGGED_IN, Boolean.TRUE))));
        return (OnyxAccountModel) firstOrNull;
    }

    @Nullable
    public final OnyxAccountModel loadAccountByUid(@NotNull String uid) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(uid, "uid");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadAccountList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, uid))));
        return (OnyxAccountModel) firstOrNull;
    }

    @NotNull
    public final List<OnyxAccountModel> loadAccountList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection onyxAccountCollection = getOnyxAccountCollection();
        if (onyxAccountCollection == null || (str = onyxAccountCollection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(onyxAccountCollection, cbQueryArgs), OnyxAccountModel.class, str);
    }

    public final void logIn(@NotNull OnyxAccountModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        deleteDuplicatedAccount(model);
        model.setHasLoggedIn(true);
        model.setLoginAt(new Date());
        model.setLocalLoginAt(new Date());
        saveAccount(model);
    }

    public final void logOut(int reason) {
        OnyxAccountModel loggedInAccount = getLoggedInAccount();
        if (loggedInAccount == null) {
            return;
        }
        loggedInAccount.setHasLoggedIn(false);
        loggedInAccount.setLogOutAt(new Date());
        loggedInAccount.setLogoutReason(reason);
        saveAccount(loggedInAccount);
    }

    public final void removeAll() {
        int collectionSizeOrDefault;
        List<OnyxAccountModel> loadAccountList = loadAccountList(new CBQueryArgs());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadAccountList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadAccountList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((OnyxAccountModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(getOnyxAccountCollection(), arrayList);
    }

    public final void saveAccount(@NotNull OnyxAccountModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(getOnyxAccountCollection(), (Collection) model);
    }

    public final void saveAccountList(@NotNull List<OnyxAccountModel> modelList) {
        Intrinsics.checkNotNullParameter(modelList, "modelList");
        CouchCollections.INSTANCE.saveList(getOnyxAccountCollection(), getDatabase(), modelList);
    }
}
