.class public final Lcom/onyx/android/sdk/data/account/AccountDataBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountDataBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,446:1\n766#2:447\n857#2,2:448\n1054#2:450\n766#2:451\n857#2,2:452\n1855#2:454\n1855#2,2:462\n1856#2:464\n1747#2,3:465\n1747#2,3:468\n1747#2,3:471\n1747#2,3:474\n1747#2,3:477\n1747#2,3:480\n1747#2,3:483\n1747#2,3:486\n1747#2,3:489\n1747#2,3:492\n372#3,7:455\n41#4,5:495\n41#4,5:500\n41#4,5:505\n41#4,5:510\n*S KotlinDebug\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n*L\n101#1:447\n101#1:448,2\n102#1:450\n104#1:451\n104#1:452,2\n160#1:454\n165#1:462,2\n160#1:464\n305#1:465,3\n309#1:468,3\n313#1:471,3\n324#1:474,3\n328#1:477,3\n332#1:480,3\n343#1:483,3\n347#1:486,3\n351#1:489,3\n360#1:492,3\n161#1:455,7\n383#1:495,5\n386#1:500,5\n440#1:505,5\n441#1:510,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001dJ\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0008\u0010 \u001a\u0004\u0018\u00010\u001fJ\n\u0010!\u001a\u0004\u0018\u00010\u0017H\u0007J\u0008\u0010\"\u001a\u0004\u0018\u00010\u001fJ\u0008\u0010#\u001a\u0004\u0018\u00010\u001fJ\u0008\u0010$\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010%\u001a\u00020\u001fJ\u0008\u0010&\u001a\u00020\u0017H\u0002J\u0006\u0010\'\u001a\u00020(J\u0008\u0010)\u001a\u0004\u0018\u00010\u001fJ\u0012\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000f0+J\u0008\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u0004\u0018\u00010\u0017J\u0006\u0010/\u001a\u00020\u001fJ\u0006\u00100\u001a\u00020\u001fJ\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000fJ\u0006\u00102\u001a\u000203J\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u0002030\u000fJ\u0006\u00105\u001a\u00020\u001fJ\n\u00106\u001a\u0004\u0018\u00010\u001fH\u0007J\u0006\u00107\u001a\u000203J\n\u00108\u001a\u0004\u0018\u00010\u001fH\u0007J\u000e\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020\u001fJ\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u00020\u001aJ\u0006\u0010=\u001a\u00020\u001aJ\u0006\u0010>\u001a\u00020\u001aJ\u0006\u0010?\u001a\u00020\u001aJ\u0008\u0010@\u001a\u00020\u001aH\u0002J\u0006\u0010A\u001a\u00020\u001aJ\u0006\u0010B\u001a\u00020\u001aJ\u0006\u0010C\u001a\u00020\u001aJ\u0006\u0010D\u001a\u00020\u001aJ\u0012\u0010E\u001a\u0004\u0018\u00010\u00172\u0006\u0010F\u001a\u00020\u001fH\u0007J\u0006\u0010G\u001a\u00020HJ\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001dJ\u0006\u0010J\u001a\u00020HJ\u0012\u0010K\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000f0\u001dJ\u0006\u0010L\u001a\u00020HJ\u000e\u0010M\u001a\u00020H2\u0006\u0010N\u001a\u00020\u0001J\u000e\u0010O\u001a\u00020H2\u0006\u0010P\u001a\u00020\u0001J\u0010\u0010Q\u001a\u00020\u00002\u0008\u0010R\u001a\u0004\u0018\u00010\u0017J\u000e\u0010S\u001a\u00020H2\u0006\u0010P\u001a\u00020\u0001J\u0016\u0010T\u001a\u00020H2\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010\u000fJ\u0016\u0010W\u001a\u00020H2\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020Y\u0018\u00010\u000fJ\u0006\u0010Z\u001a\u00020HJ\n\u0010[\u001a\u00020H*\u00020\\R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000f0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
        "",
        "()V",
        "dataScheduler",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getDataScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "dataScheduler$delegate",
        "Lkotlin/Lazy;",
        "eventBusHolder",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder$delegate",
        "hwrActivationStates",
        "",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "getHwrActivationStates",
        "()Ljava/util/List;",
        "setHwrActivationStates",
        "(Ljava/util/List;)V",
        "localAccountList",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "onyxAccount",
        "accountUidExist",
        "",
        "canSync",
        "createDataObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "getAccountAvatarUrl",
        "",
        "getAccountId",
        "getAccountModelFromDB",
        "getAccountName",
        "getAccountParentId",
        "getAccountToken",
        "getBearerToken",
        "getCurrentAccount",
        "getDataObserveOn",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getDisplayName",
        "getLocalAccountList",
        "Landroidx/lifecycle/LiveData;",
        "getLoggedInAccount",
        "Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;",
        "getOnyxAccount",
        "getPrimaryUsername",
        "getPrimaryVerifyMethod",
        "getRecentLoginLocalAccountList",
        "getRoleBadgeFlag",
        "",
        "getRoleFlagList",
        "getSyncUserId",
        "getTokenFromDB",
        "getTopRoleFlag",
        "getUserIdFromDB",
        "getUserMMKVKey",
        "key",
        "hasEmail",
        "hasPermissions",
        "hasPhone",
        "hasPhoneAndEmail",
        "hasPhoneOrEmail",
        "hasSyncPermission",
        "isAlreadyLogin",
        "isNewUser",
        "isVIPPermanent",
        "isVipRole",
        "loadAccountByUid",
        "uid",
        "loadOnyxAccount",
        "",
        "loadOnyxAccountObservable",
        "loadRecentLoginAccountList",
        "loadRecentLoginAccountListObservable",
        "logoffAccount",
        "postEvent",
        "event",
        "register",
        "subscriber",
        "setOnyxAccount",
        "latest",
        "unregister",
        "updateAccountPermission",
        "accountPermissionList",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
        "updateAccountQuota",
        "quotaDataItems",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        "updateLocalLoginAt",
        "updateSupportedVerifyMethods",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountDataBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,446:1\n766#2:447\n857#2,2:448\n1054#2:450\n766#2:451\n857#2,2:452\n1855#2:454\n1855#2,2:462\n1856#2:464\n1747#2,3:465\n1747#2,3:468\n1747#2,3:471\n1747#2,3:474\n1747#2,3:477\n1747#2,3:480\n1747#2,3:483\n1747#2,3:486\n1747#2,3:489\n1747#2,3:492\n372#3,7:455\n41#4,5:495\n41#4,5:500\n41#4,5:505\n41#4,5:510\n*S KotlinDebug\n*F\n+ 1 AccountDataBundle.kt\ncom/onyx/android/sdk/data/account/AccountDataBundle\n*L\n101#1:447\n101#1:448,2\n102#1:450\n104#1:451\n104#1:452,2\n160#1:454\n165#1:462,2\n160#1:464\n305#1:465,3\n309#1:468,3\n313#1:471,3\n324#1:474,3\n328#1:477,3\n332#1:480,3\n343#1:483,3\n347#1:486,3\n351#1:489,3\n360#1:492,3\n161#1:455,7\n383#1:495,5\n386#1:500,5\n440#1:505,5\n441#1:510,5\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dataScheduler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final eventBusHolder$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static hwrActivationStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final localAccountList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$eventBusHolder$2;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$eventBusHolder$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->eventBusHolder$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$dataScheduler$2;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$dataScheduler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->dataScheduler$delegate:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->localAccountList:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hwrActivationStates:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentAccount(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalAccountList$p()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->localAccountList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$getOnyxAccount$p()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object v0
.end method

.method private final getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    return-object p0
.end method

.method private final getDataScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->dataScheduler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method private final getLoggedInAccount()Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;->execute()Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;

    return-object p0
.end method

.method private final hasSyncPermission()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;->getPermissionList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->hasCloudSyncPermission(Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final accountUidExist()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final canSync()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasSyncPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final createDataObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAccountAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getAccountModelFromDB()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final getAccountParentId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getParent()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAccountToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBearerToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->eventBusHolder$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public final getHwrActivationStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hwrActivationStates:Ljava/util/List;

    return-object p0
.end method

.method public final getLocalAccountList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->localAccountList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final getPrimaryUsername()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getPrimaryVerifyMethod()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Phone"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Email"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    const-string p0, "Wechat"

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    if-eqz v2, :cond_6

    const-string p0, "Huawei"

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasPassword()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Password"

    return-object p0

    :cond_7
    return-object v0
.end method

.method public final getRecentLoginLocalAccountList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getLocalAccountList()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "share_user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLogoff()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLoginAt()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$getRecentLoginLocalAccountList$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle$getRecentLoginLocalAccountList$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getLocalVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public final getRoleBadgeFlag()I
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v4

    const-string v5, "galaxyStarNoteMember"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v0

    :goto_0
    if-eqz v3, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz v1, :cond_6

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v4

    const-string v5, "galaxyStarNotePermanentMember"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v0

    :goto_1
    if-eqz v3, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    if-eqz v1, :cond_9

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v1

    const-string v3, "galaxyOnyxMember"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v2, v0

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    :goto_3
    return v0
.end method

.method public final getRoleFlagList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v5

    const-string v6, "galaxyOnyxMember"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v0

    :goto_0
    if-eqz v4, :cond_4

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_6

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v5

    const-string v6, "galaxyStarNoteMember"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v0

    :goto_1
    if-eqz v4, :cond_8

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_a

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v0, v3

    goto :goto_2

    :cond_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v2

    const-string v4, "galaxyStarNotePermanentMember"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_2
    if-eqz v0, :cond_c

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    return-object v1
.end method

.method public final getSyncUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "share_user"

    :cond_0
    return-object p0
.end method

.method public final getTokenFromDB()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountModelFromDB()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTopRoleFlag()I
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v4

    const-string v5, "galaxyStarNotePermanentMember"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v0

    :goto_0
    if-eqz v3, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    if-eqz v1, :cond_6

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v4

    const-string v5, "galaxyStarNoteMember"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v0

    :goto_1
    if-eqz v3, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    if-eqz v1, :cond_9

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v1

    const-string v3, "galaxyOnyxMember"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v2, v0

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    :goto_3
    return v0
.end method

.method public final getUserIdFromDB()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountModelFromDB()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "share_user"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUserMMKVKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasEmail()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final hasPermissions()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;->getPermissionList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final hasPhone()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final hasPhoneAndEmail()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPhoneOrEmail()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasEmail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isAlreadyLogin()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "share_user"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isNewUser()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getFirstLoginDate()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_T_HHMMSS_Z()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final isVIPPermanent()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;->getRole()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galaxyStarNotePermanentMember"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public final isVipRole()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getRoles()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$isVipRole$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$isVipRole$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    const v0, 0x1

    :cond_1
    return v0
.end method

.method public final loadAccountByUid(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "uid"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->loadAccountByUid(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    return-object p0
.end method

.method public final loadOnyxAccount()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/AccountDataBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->createDataObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadOnyxAccountObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadOnyxAccountObservable$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadOnyxAccountObservable$2;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadOnyxAccountObservable$2;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadRecentLoginAccountList()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadRecentLoginAccountListObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadRecentLoginAccountListObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/account/action/LoadLocalAccountListAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/LoadLocalAccountListAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadRecentLoginAccountListObservable$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$loadRecentLoginAccountListObservable$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final logoffAccount()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->createDataObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle$logoffAccount$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle$logoffAccount$1;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final register(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHwrActivationStates(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hwrActivationStates:Ljava/util/List;

    return-void
.end method

.method public final setOnyxAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Lcom/onyx/android/sdk/data/account/AccountDataBundle;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle$setOnyxAccount$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle$setOnyxAccount$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->whenNotNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sput-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadRecentLoginAccountList()V

    :goto_1
    return-object p0
.end method

.method public final unregister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateAccountPermission(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;)V"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;->getPermissionList()Ljava/util/List;

    move-result-object v1

    :cond_2
    check-cast v1, Ljava/util/Collection;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->elementsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;-><init>()V

    :cond_4
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermission;->setPermissionList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setAccountPermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermission;)V

    :goto_1
    new-instance v1, Lcom/onyx/android/sdk/data/account/action/UpdateAccountPermissionAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountPermissionAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountPermission;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateAccountQuota(Ljava/util/List;)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;)V"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAccountQuota()Lcom/onyx/android/sdk/data/account/bean/AccountQuota;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuota;->getQuotaMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;

    invoke-direct {v3}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v3, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;->getSubItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItem;->getSubItemMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_5
    :goto_1
    return-void
.end method

.method public final updateLocalLoginAt()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->onyxAccount:Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->createDataObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle$updateLocalLoginAt$1;-><init>(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateSupportedVerifyMethods(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getAutoDecideVerifyMethods()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHasPassword()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnablePasswordMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnablePhoneMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnableEmailMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnableWechatMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnableHuaweiMethod(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setEnablePasswordMethod(Z)V

    :cond_4
    return-void
.end method
