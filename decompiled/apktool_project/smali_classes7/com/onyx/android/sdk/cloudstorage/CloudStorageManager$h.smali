.class public final Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->loadSupportFeatures(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n*L\n189#1:364,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadSupportFeatures$1\n*L\n189#1:364,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)Ljava/util/Map;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;",
            ")",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$getProviderMap$p(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getSupportFeatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$h;->a(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
