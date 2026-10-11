package com.onyx.android.sdk.data.account;

import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.account.action.LoadLocalAccountListAction;
import com.onyx.android.sdk.data.account.action.UpdateAccountPermissionAction;
import com.onyx.android.sdk.data.account.action.UpdateAccountQuotaAction;
import com.onyx.android.sdk.data.account.bean.AccountPermission;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.AccountPermissions;
import com.onyx.android.sdk.data.account.bean.AccountQuota;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItem;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.bean.AccountQuotaSubItem;
import com.onyx.android.sdk.data.account.bean.AccountVerifyArgs;
import com.onyx.android.sdk.data.account.bean.AccountVerifyMethods;
import com.onyx.android.sdk.data.account.bean.UserRoleItem;
import com.onyx.android.sdk.data.account.bean.UserRoleItemKt;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.account.request.local.GetLoggedInAccountRequest;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00000\u001dJ\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\n\u0010!\u001a\u0004\u0018\u00010\u0017H\u0007J\b\u0010\"\u001a\u0004\u0018\u00010\u001fJ\b\u0010#\u001a\u0004\u0018\u00010\u001fJ\b\u0010$\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010%\u001a\u00020\u001fJ\b\u0010&\u001a\u00020\u0017H\u0002J\u0006\u0010'\u001a\u00020(J\b\u0010)\u001a\u0004\u0018\u00010\u001fJ\u0012\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000f0+J\b\u0010,\u001a\u00020-H\u0002J\b\u0010.\u001a\u0004\u0018\u00010\u0017J\u0006\u0010/\u001a\u00020\u001fJ\u0006\u00100\u001a\u00020\u001fJ\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00170\u000fJ\u0006\u00102\u001a\u000203J\f\u00104\u001a\b\u0012\u0004\u0012\u0002030\u000fJ\u0006\u00105\u001a\u00020\u001fJ\n\u00106\u001a\u0004\u0018\u00010\u001fH\u0007J\u0006\u00107\u001a\u000203J\n\u00108\u001a\u0004\u0018\u00010\u001fH\u0007J\u000e\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020\u001fJ\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u00020\u001aJ\u0006\u0010=\u001a\u00020\u001aJ\u0006\u0010>\u001a\u00020\u001aJ\u0006\u0010?\u001a\u00020\u001aJ\b\u0010@\u001a\u00020\u001aH\u0002J\u0006\u0010A\u001a\u00020\u001aJ\u0006\u0010B\u001a\u00020\u001aJ\u0006\u0010C\u001a\u00020\u001aJ\u0006\u0010D\u001a\u00020\u001aJ\u0012\u0010E\u001a\u0004\u0018\u00010\u00172\u0006\u0010F\u001a\u00020\u001fH\u0007J\u0006\u0010G\u001a\u00020HJ\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00000\u001dJ\u0006\u0010J\u001a\u00020HJ\u0012\u0010K\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000f0\u001dJ\u0006\u0010L\u001a\u00020HJ\u000e\u0010M\u001a\u00020H2\u0006\u0010N\u001a\u00020\u0001J\u000e\u0010O\u001a\u00020H2\u0006\u0010P\u001a\u00020\u0001J\u0010\u0010Q\u001a\u00020\u00002\b\u0010R\u001a\u0004\u0018\u00010\u0017J\u000e\u0010S\u001a\u00020H2\u0006\u0010P\u001a\u00020\u0001J\u0016\u0010T\u001a\u00020H2\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010\u000fJ\u0016\u0010W\u001a\u00020H2\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020Y\u0018\u00010\u000fJ\u0006\u0010Z\u001a\u00020HJ\n\u0010[\u001a\u00020H*\u00020\\R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000f0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006]"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "", "()V", "dataScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getDataScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "dataScheduler$delegate", "Lkotlin/Lazy;", "eventBusHolder", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder$delegate", "hwrActivationStates", "", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "getHwrActivationStates", "()Ljava/util/List;", "setHwrActivationStates", "(Ljava/util/List;)V", "localAccountList", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "onyxAccount", "accountUidExist", "", "canSync", "createDataObservable", "Lio/reactivex/rxjava3/core/Observable;", "getAccountAvatarUrl", "", "getAccountId", "getAccountModelFromDB", "getAccountName", "getAccountParentId", "getAccountToken", "getBearerToken", "getCurrentAccount", "getDataObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getDisplayName", "getLocalAccountList", "Landroidx/lifecycle/LiveData;", "getLoggedInAccount", "Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;", "getOnyxAccount", "getPrimaryUsername", "getPrimaryVerifyMethod", "getRecentLoginLocalAccountList", "getRoleBadgeFlag", "", "getRoleFlagList", "getSyncUserId", "getTokenFromDB", "getTopRoleFlag", "getUserIdFromDB", "getUserMMKVKey", "key", "hasEmail", "hasPermissions", "hasPhone", "hasPhoneAndEmail", "hasPhoneOrEmail", "hasSyncPermission", "isAlreadyLogin", "isNewUser", "isVIPPermanent", "isVipRole", "loadAccountByUid", CouchFieldKey.KEY_UID, "loadOnyxAccount", "", "loadOnyxAccountObservable", "loadRecentLoginAccountList", "loadRecentLoginAccountListObservable", "logoffAccount", "postEvent", NotificationCompat.CATEGORY_EVENT, "register", "subscriber", "setOnyxAccount", Pack200.Packer.LATEST, "unregister", "updateAccountPermission", "accountPermissionList", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "updateAccountQuota", "quotaDataItems", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "updateLocalLoginAt", "updateSupportedVerifyMethods", "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAccountDataBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,446:1\n766#2:447\n857#2,2:448\n1054#2:450\n766#2:451\n857#2,2:452\n1855#2:454\n1855#2,2:462\n1856#2:464\n1747#2,3:465\n1747#2,3:468\n1747#2,3:471\n1747#2,3:474\n1747#2,3:477\n1747#2,3:480\n1747#2,3:483\n1747#2,3:486\n1747#2,3:489\n1747#2,3:492\n372#3,7:455\n41#4,5:495\n41#4,5:500\n41#4,5:505\n41#4,5:510\n*S KotlinDebug\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n*L\n101#1:447\n101#1:448,2\n102#1:450\n104#1:451\n104#1:452,2\n160#1:454\n165#1:462,2\n160#1:464\n305#1:465,3\n309#1:468,3\n313#1:471,3\n324#1:474,3\n328#1:477,3\n332#1:480,3\n343#1:483,3\n347#1:486,3\n351#1:489,3\n360#1:492,3\n161#1:455,7\n383#1:495,5\n386#1:500,5\n440#1:505,5\n441#1:510,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AccountDataBundle {

    @Nullable
    private static OnyxAccountModel onyxAccount;

    @NotNull
    public static final AccountDataBundle INSTANCE = new AccountDataBundle();

    /* renamed from: eventBusHolder$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy eventBusHolder = LazyKt.lazy(new Function0<EventBusHolder>() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$eventBusHolder$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final EventBusHolder invoke() {
            return new EventBusHolder(null, 1, null);
        }
    });

    /* renamed from: dataScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy dataScheduler = LazyKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$dataScheduler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final RxScheduler invoke() {
            return RxScheduler.INSTANCE.newSingleThreadManager();
        }
    });

    @NotNull
    private static final MutableLiveData<List<OnyxAccountModel>> localAccountList = new MutableLiveData<>(CollectionsKt.emptyList());

    @NotNull
    private static List<HWRActivationModel> hwrActivationStates = CollectionsKt.emptyList();

    private AccountDataBundle() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OnyxAccountModel getCurrentAccount() {
        return CouchDBManager.INSTANCE.getOnyxAccountProvider().getCurrentAccount();
    }

    private final RxScheduler getDataScheduler() {
        return (RxScheduler) dataScheduler.getValue();
    }

    private final GetLoggedInAccountRequest getLoggedInAccount() throws Exception {
        GetLoggedInAccountRequest getLoggedInAccountRequest = new GetLoggedInAccountRequest();
        getLoggedInAccountRequest.execute();
        return getLoggedInAccountRequest;
    }

    private final boolean hasSyncPermission() {
        AccountPermission accountPermission;
        AccountPermissions accountPermissions = AccountPermissions.INSTANCE;
        OnyxAccountModel onyxAccountModel = onyxAccount;
        return accountPermissions.hasCloudSyncPermission((onyxAccountModel == null || (accountPermission = onyxAccountModel.getAccountPermission()) == null) ? null : accountPermission.getPermissionList());
    }

    public final boolean accountUidExist() {
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        return StringKt.isNotBlank(onyxAccount2 != null ? onyxAccount2.getUniqueId() : null);
    }

    public final boolean canSync() {
        return isAlreadyLogin() && hasSyncPermission();
    }

    @NotNull
    public final Observable<AccountDataBundle> createDataObservable() {
        Observable<AccountDataBundle> observeOn = Observable.just(this).observeOn(getDataObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @Nullable
    public final String getAccountAvatarUrl() {
        if (getOnyxAccount() == null) {
            return "";
        }
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null) {
            return onyxAccount2.getAvatarUrl();
        }
        return null;
    }

    @Nullable
    public final String getAccountId() {
        OnyxAccountModel onyxAccount2;
        if (getOnyxAccount() == null || (onyxAccount2 = getOnyxAccount()) == null) {
            return null;
        }
        return onyxAccount2.getUniqueId();
    }

    @WorkerThread
    @Nullable
    public final OnyxAccountModel getAccountModelFromDB() {
        return CouchDBManager.INSTANCE.getOnyxAccountProvider().getLoggedInAccount();
    }

    @Nullable
    public final String getAccountName() {
        OnyxAccountModel onyxAccountModel = onyxAccount;
        if (onyxAccountModel == null) {
            return "";
        }
        if (StringUtils.isNotBlank(onyxAccountModel != null ? onyxAccountModel.getNickname() : null)) {
            OnyxAccountModel onyxAccountModel2 = onyxAccount;
            if (onyxAccountModel2 != null) {
                return onyxAccountModel2.getNickname();
            }
            return null;
        }
        OnyxAccountModel onyxAccountModel3 = onyxAccount;
        if (!StringUtils.isNotBlank(onyxAccountModel3 != null ? onyxAccountModel3.getName() : null)) {
            return "";
        }
        OnyxAccountModel onyxAccountModel4 = onyxAccount;
        if (onyxAccountModel4 != null) {
            return onyxAccountModel4.getName();
        }
        return null;
    }

    @Nullable
    public final String getAccountParentId() {
        if (getOnyxAccount() == null) {
            return "";
        }
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null) {
            return onyxAccount2.getParent();
        }
        return null;
    }

    @Nullable
    public final String getAccountToken() {
        if (getOnyxAccount() == null) {
            return "";
        }
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null) {
            return onyxAccount2.getToken();
        }
        return null;
    }

    @NotNull
    public final String getBearerToken() {
        String accountToken = getAccountToken();
        return accountToken == null ? "" : BaseCloudRequest.INSTANCE.getBearerToken(accountToken);
    }

    @NotNull
    public final Scheduler getDataObserveOn() {
        return getDataScheduler().getObserveOn();
    }

    @Nullable
    public final String getDisplayName() {
        OnyxAccountModel onyxAccountModel = onyxAccount;
        if (onyxAccountModel == null) {
            return "";
        }
        if (onyxAccountModel != null) {
            return onyxAccountModel.getDisplayName();
        }
        return null;
    }

    @NotNull
    public final EventBusHolder getEventBusHolder() {
        return (EventBusHolder) eventBusHolder.getValue();
    }

    @NotNull
    public final List<HWRActivationModel> getHwrActivationStates() {
        return hwrActivationStates;
    }

    @NotNull
    public final LiveData<List<OnyxAccountModel>> getLocalAccountList() {
        return localAccountList;
    }

    @Nullable
    public final OnyxAccountModel getOnyxAccount() {
        return onyxAccount;
    }

    @NotNull
    public final String getPrimaryUsername() {
        String email;
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 == null) {
            return "";
        }
        if (!StringKt.isNotEmpty(onyxAccount2.getPhone())) {
            return (!StringKt.isNotEmpty(onyxAccount2.getEmail()) || (email = onyxAccount2.getEmail()) == null) ? "" : email;
        }
        String phone = onyxAccount2.getPhone();
        return phone == null ? "" : phone;
    }

    @NotNull
    public final String getPrimaryVerifyMethod() {
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 == null) {
            return "";
        }
        if (StringKt.isNotEmpty(onyxAccount2.getPhone())) {
            return AccountVerifyMethods.PHONE;
        }
        if (StringKt.isNotEmpty(onyxAccount2.getEmail())) {
            return AccountVerifyMethods.EMAIL;
        }
        if (onyxAccount2.getWechat() != null) {
            return AccountVerifyMethods.WECHAT;
        }
        return onyxAccount2.getHuawei() != null ? AccountVerifyMethods.HUAWEI : onyxAccount2.getHasPassword() ? AccountVerifyMethods.PASSWORD : "";
    }

    @NotNull
    public final List<OnyxAccountModel> getRecentLoginLocalAccountList() {
        List ensureList = CollectionKt.ensureList(getLocalAccountList().getValue());
        ArrayList arrayList = new ArrayList();
        for (Object obj : ensureList) {
            OnyxAccountModel onyxAccountModel = (OnyxAccountModel) obj;
            if ((Intrinsics.areEqual(onyxAccountModel.getUniqueId(), "share_user") || onyxAccountModel.getLogoff() || onyxAccountModel.getLoginAt() == null) ? false : true) {
                arrayList.add(obj);
            }
        }
        List take = CollectionsKt.take(CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$getRecentLoginLocalAccountList$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                OnyxAccountModel onyxAccountModel2 = (OnyxAccountModel) t2;
                Date localLoginAt = onyxAccountModel2.getLocalLoginAt();
                if (localLoginAt == null && (localLoginAt = onyxAccountModel2.getLoginAt()) == null) {
                    localLoginAt = new Date(0L);
                }
                OnyxAccountModel onyxAccountModel3 = (OnyxAccountModel) t;
                Date localLoginAt2 = onyxAccountModel3.getLocalLoginAt();
                if (localLoginAt2 == null && (localLoginAt2 = onyxAccountModel3.getLoginAt()) == null) {
                    localLoginAt2 = new Date(0L);
                }
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(localLoginAt, localLoginAt2);
                return compareValues;
            }
        }), 10);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : take) {
            if (((OnyxAccountModel) obj2).getLocalVisible()) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    public final int getRoleBadgeFlag() {
        List<UserRoleItem> roles;
        boolean z;
        boolean z2;
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null && (roles = onyxAccount2.getRoles()) != null) {
            List<UserRoleItem> list = roles;
            boolean z3 = list instanceof Collection;
            boolean z4 = false;
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it2.next()).getRole(), UserRoleItemKt.VIP_STAR)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                return 3;
            }
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it3.next()).getRole(), UserRoleItemKt.VIP_PERMANENT)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return 4;
            }
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it4 = list.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual(((UserRoleItem) it4.next()).getRole(), UserRoleItemKt.VIP_ONYX)) {
                        z4 = true;
                        break;
                    }
                }
            }
            if (z4) {
                return 2;
            }
        }
        return 1;
    }

    @NotNull
    public final List<Integer> getRoleFlagList() {
        List<UserRoleItem> roles;
        boolean z;
        boolean z2;
        boolean z3 = true;
        List<Integer> mutableListOf = CollectionsKt.mutableListOf(1);
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null && (roles = onyxAccount2.getRoles()) != null) {
            List<UserRoleItem> list = roles;
            boolean z4 = list instanceof Collection;
            if (!z4 || !list.isEmpty()) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it2.next()).getRole(), UserRoleItemKt.VIP_ONYX)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                mutableListOf.add(2);
            }
            if (!z4 || !list.isEmpty()) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it3.next()).getRole(), UserRoleItemKt.VIP_STAR)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                mutableListOf.add(3);
            }
            if (!z4 || !list.isEmpty()) {
                Iterator<T> it4 = list.iterator();
                while (it4.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it4.next()).getRole(), UserRoleItemKt.VIP_PERMANENT)) {
                        break;
                    }
                }
            }
            z3 = false;
            if (z3) {
                mutableListOf.add(4);
            }
        }
        return mutableListOf;
    }

    @NotNull
    public final String getSyncUserId() {
        String accountId = getAccountId();
        return accountId == null ? "share_user" : accountId;
    }

    @WorkerThread
    @Nullable
    public final String getTokenFromDB() {
        OnyxAccountModel accountModelFromDB = getAccountModelFromDB();
        if (accountModelFromDB != null) {
            return accountModelFromDB.getToken();
        }
        return null;
    }

    public final int getTopRoleFlag() {
        List<UserRoleItem> roles;
        boolean z;
        boolean z2;
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 != null && (roles = onyxAccount2.getRoles()) != null) {
            List<UserRoleItem> list = roles;
            boolean z3 = list instanceof Collection;
            boolean z4 = false;
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it2.next()).getRole(), UserRoleItemKt.VIP_PERMANENT)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                return 4;
            }
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it3 = list.iterator();
                while (it3.hasNext()) {
                    if (Intrinsics.areEqual(((UserRoleItem) it3.next()).getRole(), UserRoleItemKt.VIP_STAR)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return 3;
            }
            if (!z3 || !list.isEmpty()) {
                Iterator<T> it4 = list.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    if (Intrinsics.areEqual(((UserRoleItem) it4.next()).getRole(), UserRoleItemKt.VIP_ONYX)) {
                        z4 = true;
                        break;
                    }
                }
            }
            if (z4) {
                return 2;
            }
        }
        return 1;
    }

    @WorkerThread
    @Nullable
    public final String getUserIdFromDB() {
        OnyxAccountModel accountModelFromDB = getAccountModelFromDB();
        return accountModelFromDB == null ? "share_user" : accountModelFromDB.getUniqueId();
    }

    @NotNull
    public final String getUserMMKVKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSyncUserId() + '-' + key;
    }

    public final boolean hasEmail() {
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        return StringKt.isNotBlank(onyxAccount2 != null ? onyxAccount2.getEmail() : null);
    }

    public final boolean hasPermissions() {
        AccountPermission accountPermission;
        OnyxAccountModel onyxAccountModel = onyxAccount;
        return CollectionKt.isNonBlank((onyxAccountModel == null || (accountPermission = onyxAccountModel.getAccountPermission()) == null) ? null : accountPermission.getPermissionList());
    }

    public final boolean hasPhone() {
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        return StringKt.isNotBlank(onyxAccount2 != null ? onyxAccount2.getPhone() : null);
    }

    public final boolean hasPhoneAndEmail() {
        return hasEmail() && hasPhone();
    }

    public final boolean hasPhoneOrEmail() {
        return hasEmail() || hasPhone();
    }

    public final boolean isAlreadyLogin() {
        OnyxAccountModel onyxAccountModel = onyxAccount;
        if (onyxAccountModel != null) {
            if (!Intrinsics.areEqual(onyxAccountModel != null ? onyxAccountModel.getUniqueId() : null, "share_user")) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNewUser() {
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 == null) {
            return false;
        }
        String firstLoginDate = onyxAccount2.getFirstLoginDate();
        if (firstLoginDate != null) {
            try {
            } catch (Exception unused) {
                return false;
            }
        }
        return DateUtils.isSameDay(new Date(), DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z().parse(firstLoginDate));
    }

    public final boolean isVIPPermanent() {
        List<UserRoleItem> roles;
        OnyxAccountModel onyxAccount2 = getOnyxAccount();
        if (onyxAccount2 == null || (roles = onyxAccount2.getRoles()) == null) {
            return true;
        }
        List<UserRoleItem> list = roles;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext() && !Intrinsics.areEqual(((UserRoleItem) it2.next()).getRole(), UserRoleItemKt.VIP_PERMANENT)) {
        }
        return true;
    }

    public final boolean isVipRole() {
        OnyxAccountModel onyxAccountModel;
        List<UserRoleItem> roles;
        if (!isAlreadyLogin() || (onyxAccountModel = onyxAccount) == null || (roles = onyxAccountModel.getRoles()) == null) {
            return false;
        }
        CollectionKt.contains(roles, new Function1<UserRoleItem, Boolean>() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$isVipRole$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull UserRoleItem it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(UserRoleItemKt.getVIP_LIST().contains(it2.getRole()));
            }
        });
        return true;
    }

    @WorkerThread
    @Nullable
    public final OnyxAccountModel loadAccountByUid(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return CouchDBManager.INSTANCE.getOnyxAccountProvider().loadAccountByUid(uid);
    }

    public final void loadOnyxAccount() {
        loadOnyxAccountObservable().subscribe();
    }

    @NotNull
    public final Observable<AccountDataBundle> loadOnyxAccountObservable() {
        Observable<AccountDataBundle> observeOn = createDataObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$loadOnyxAccountObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final OnyxAccountModel apply(@NotNull AccountDataBundle it2) {
                OnyxAccountModel currentAccount;
                Intrinsics.checkNotNullParameter(it2, "it");
                currentAccount = AccountDataBundle.INSTANCE.getCurrentAccount();
                return currentAccount;
            }
        }).observeOn(AndroidSchedulers.mainThread()).map(new Function() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$loadOnyxAccountObservable$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final AccountDataBundle apply(@NotNull OnyxAccountModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return AccountDataBundle.INSTANCE.setOnyxAccount(it2);
            }
        }).observeOn(getDataObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    public final void loadRecentLoginAccountList() {
        RxjavaKt.subscribeWithDefault$default(loadRecentLoginAccountListObservable(), null, null, null, 7, null);
    }

    @NotNull
    public final Observable<List<OnyxAccountModel>> loadRecentLoginAccountListObservable() {
        Observable doOnNext = new LoadLocalAccountListAction().build().doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$loadRecentLoginAccountListObservable$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull List<OnyxAccountModel> it2) {
                MutableLiveData mutableLiveData;
                Intrinsics.checkNotNullParameter(it2, "it");
                mutableLiveData = AccountDataBundle.localAccountList;
                mutableLiveData.setValue(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void logoffAccount() {
        final OnyxAccountModel onyxAccountModel = onyxAccount;
        if (onyxAccountModel != null && onyxAccountModel.getHasLoggedIn()) {
            Observable<AccountDataBundle> doOnNext = createDataObservable().doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$logoffAccount$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(@NotNull AccountDataBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    OnyxAccountModel.this.setLogoff(true);
                    CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(OnyxAccountModel.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEventBusHolder().post(event);
    }

    public final void register(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        getEventBusHolder().register(subscriber);
    }

    public final void setHwrActivationStates(@NotNull List<HWRActivationModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        hwrActivationStates = list;
    }

    @NotNull
    public final AccountDataBundle setOnyxAccount(@Nullable OnyxAccountModel latest) {
        OnyxAccountModel onyxAccountModel = onyxAccount;
        if (Intrinsics.areEqual(onyxAccountModel != null ? Integer.valueOf(onyxAccountModel.getAccountId()) : null, latest != null ? Integer.valueOf(latest.getAccountId()) : null)) {
            AnyKt.whenNotNull(latest, new Function1<OnyxAccountModel, Unit>() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$setOnyxAccount$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(OnyxAccountModel onyxAccountModel2) {
                    invoke2(onyxAccountModel2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull OnyxAccountModel it2) {
                    OnyxAccountModel onyxAccountModel2;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    onyxAccountModel2 = AccountDataBundle.onyxAccount;
                    if (onyxAccountModel2 != null) {
                        onyxAccountModel2.updateAttribute(it2);
                    }
                }
            });
        } else {
            onyxAccount = latest;
            loadRecentLoginAccountList();
        }
        return this;
    }

    public final void unregister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        getEventBusHolder().unRegister(subscriber);
    }

    public final void updateAccountPermission(@Nullable List<AccountPermissionItem> accountPermissionList) {
        List<AccountPermissionItem> list = accountPermissionList;
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        OnyxAccountModel onyxAccountModel = onyxAccount;
        AccountPermission accountPermission = onyxAccountModel != null ? onyxAccountModel.getAccountPermission() : null;
        if (CollectionKt.elementsEqual(list, accountPermission != null ? accountPermission.getPermissionList() : null)) {
            return;
        }
        if (accountPermission == null) {
            accountPermission = new AccountPermission();
        }
        accountPermission.setPermissionList(accountPermissionList);
        OnyxAccountModel onyxAccountModel2 = onyxAccount;
        if (onyxAccountModel2 != null) {
            onyxAccountModel2.setAccountPermission(accountPermission);
        }
        RxBaseAction.execute$default(new UpdateAccountPermissionAction(accountPermission), null, null, null, 7, null);
    }

    public final void updateAccountQuota(@Nullable List<AccountQuotaItemData> quotaDataItems) {
        OnyxAccountModel onyxAccountModel;
        AccountQuota accountQuota;
        if (CollectionKt.isNullOrEmpty(quotaDataItems) || (onyxAccountModel = onyxAccount) == null || (accountQuota = onyxAccountModel.getAccountQuota()) == null) {
            return;
        }
        for (AccountQuotaItemData accountQuotaItemData : quotaDataItems) {
            Map<String, AccountQuotaItem> quotaMap = accountQuota.getQuotaMap();
            String category = accountQuotaItemData.getCategory();
            AccountQuotaItem accountQuotaItem = quotaMap.get(category);
            if (accountQuotaItem == null) {
                accountQuotaItem = new AccountQuotaItem();
                quotaMap.put(category, accountQuotaItem);
            }
            AccountQuotaItem accountQuotaItem2 = accountQuotaItem;
            accountQuotaItem2.setCategory(accountQuotaItemData.getCategory());
            accountQuotaItem2.setTitle(accountQuotaItemData.getTitle());
            for (AccountQuotaSubItem accountQuotaSubItem : accountQuotaItemData.getSubItems()) {
                accountQuotaItem2.getSubItemMap().put(accountQuotaSubItem.getCategory(), accountQuotaSubItem);
            }
        }
        RxBaseAction.execute$default(new UpdateAccountQuotaAction(accountQuota), null, null, null, 7, null);
    }

    public final void updateLocalLoginAt() {
        final OnyxAccountModel onyxAccountModel = onyxAccount;
        if (onyxAccountModel != null && onyxAccountModel.getHasLoggedIn()) {
            Observable<AccountDataBundle> doOnNext = createDataObservable().doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.AccountDataBundle$updateLocalLoginAt$1
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(@NotNull AccountDataBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    OnyxAccountModel.this.setLocalLoginAt(new Date());
                    CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(OnyxAccountModel.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
        }
    }

    public final void updateSupportedVerifyMethods(@NotNull AccountVerifyArgs accountVerifyArgs) {
        OnyxAccountModel onyxAccount2;
        Intrinsics.checkNotNullParameter(accountVerifyArgs, "<this>");
        if (accountVerifyArgs.getAutoDecideVerifyMethods() && (onyxAccount2 = getOnyxAccount()) != null) {
            accountVerifyArgs.setEnablePasswordMethod(onyxAccount2.getHasPassword());
            accountVerifyArgs.setEnablePhoneMethod(StringKt.isNotEmpty(onyxAccount2.getPhone()));
            accountVerifyArgs.setEnableEmailMethod(StringKt.isNotEmpty(onyxAccount2.getEmail()));
            accountVerifyArgs.setEnableWechatMethod(onyxAccount2.getWechat() != null);
            accountVerifyArgs.setEnableHuaweiMethod(onyxAccount2.getHuawei() != null);
            if (StringKt.isEmpty(onyxAccount2.getPhone()) && StringKt.isEmpty(onyxAccount2.getEmail())) {
                accountVerifyArgs.setEnablePasswordMethod(false);
            }
        }
    }
}
