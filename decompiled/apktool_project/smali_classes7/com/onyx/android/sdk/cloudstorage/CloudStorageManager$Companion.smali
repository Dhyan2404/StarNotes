.class public final Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;",
        "",
        "()V",
        "ourInstance",
        "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;",
        "getOurInstance",
        "()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "initCloudNote",
        "",
        "appContext",
        "Landroid/content/Context;",
        "syncUserId",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$getOurInstance$cp()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$getUserId$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initCloudNote(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->setUserId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->initProviderAccountProvider(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->initProviderContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$loadAuthProviders(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$loadCertificates(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$setUserId$cp(Ljava/lang/String;)V

    return-void
.end method
