.class public final Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;",
        "",
        "",
        "userId",
        "",
        "initProviderAccountProvider",
        "Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;",
        "providerAccountProvider",
        "Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;",
        "getProviderAccountProvider",
        "()Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;",
        "setProviderAccountProvider",
        "(Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;)V",
        "a",
        "Ljava/lang/String;",
        "PROVIDER_ACCOUNT_DB_NAME",
        "<init>",
        "()V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "provider_account_db_name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static providerAccountProvider:Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProviderAccountProvider()Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->providerAccountProvider:Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "providerAccountProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initProviderAccountProvider(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    const-string v1, "provider_account_db_name"

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserScopeProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;-><init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->setProviderAccountProvider(Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;)V

    return-void
.end method

.method public final setProviderAccountProvider(Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->providerAccountProvider:Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;

    return-void
.end method
