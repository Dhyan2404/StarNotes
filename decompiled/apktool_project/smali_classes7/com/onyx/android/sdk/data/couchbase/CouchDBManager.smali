.class public final Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;",
        "",
        "()V",
        "couchHolderManager",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;",
        "onyxAccountProvider",
        "Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;",
        "getOnyxAccountProvider",
        "()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;",
        "onyxAccountProvider$delegate",
        "Lkotlin/Lazy;",
        "closeCouchHolder",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "info",
        "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;",
        "dumpCouchDB",
        "",
        "getCouchHolder",
        "newOnyxAccountProvider",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static couchHolderManager:Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onyxAccountProvider$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->couchHolderManager:Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager$onyxAccountProvider$2;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager$onyxAccountProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->onyxAccountProvider$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$newOnyxAccountProvider(Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;)Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->newOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object p0

    return-object p0
.end method

.method private final newOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getAppProviderInfo()Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    return-object v0
.end method


# virtual methods
.method public final closeCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->couchHolderManager:Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;->closeCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    return-object p0
.end method

.method public final dumpCouchDB()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->couchHolderManager:Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;->dumpCouchDB()V

    return-void
.end method

.method public final getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->couchHolderManager:Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;->getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->onyxAccountProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    return-object p0
.end method
