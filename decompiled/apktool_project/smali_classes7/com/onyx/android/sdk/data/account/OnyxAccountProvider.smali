.class public final Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxAccountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n48#2,5:93\n1549#3:98\n1620#3,3:99\n*S KotlinDebug\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n*L\n53#1:93,5\n82#1:98\n82#1:99,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002J\u0006\u0010\u000c\u001a\u00020\u0008J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\nJ\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\u001d\u001a\u00020\n2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "couchHolder",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "deleteAccount",
        "",
        "model",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "deleteDuplicatedAccount",
        "",
        "accountModel",
        "getCurrentAccount",
        "getLoggedInAccount",
        "getOnyxAccountCollection",
        "Lcom/couchbase/lite/Collection;",
        "loadAccountByUid",
        "uid",
        "",
        "loadAccountList",
        "",
        "cbQueryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "logIn",
        "logOut",
        "reason",
        "",
        "removeAll",
        "saveAccount",
        "saveAccountList",
        "modelList",
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
        "SMAP\nOnyxAccountProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n48#2,5:93\n1549#3:98\n1620#3,3:99\n*S KotlinDebug\n*F\n+ 1 OnyxAccountProvider.kt\ncom/onyx/android/sdk/data/account/OnyxAccountProvider\n*L\n53#1:93,5\n82#1:98\n82#1:99,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "couchHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-void
.end method

.method private final deleteDuplicatedAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteListByIds(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    return-void
.end method

.method private final getOnyxAccountCollection()Lcom/couchbase/lite/Collection;
    .locals 1

    const-string v0, "ONYX_ACCOUNT_MODEL"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteListByIds(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "share_user"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->loadAccountByUid(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_1
    return-object v1
.end method

.method public final getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "hasLoggedIn"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->loadAccountList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final loadAccountByUid(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "uid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->loadAccountList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    return-object p0
.end method

.method public final loadAccountList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cbQueryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "_default"

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryResultList(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {v2, p0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final logIn(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->deleteDuplicatedAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setHasLoggedIn(Z)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLoginAt(Ljava/util/Date;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLocalLoginAt(Ljava/util/Date;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public final logOut(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getLoggedInAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setHasLoggedIn(Z)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLogOutAt(Ljava/util/Date;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLogoutReason(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public final removeAll()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->loadAccountList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->deleteListByIds(Lcom/couchbase/lite/Collection;Ljava/util/List;)V

    return-void
.end method

.method public final saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveDocument(Lcom/couchbase/lite/Collection;Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)V

    return-void
.end method

.method public final saveAccountList(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modelList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->getOnyxAccountCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->saveList(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Database;Ljava/util/Collection;)J

    return-void
.end method
