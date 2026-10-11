.class public final Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n*L\n358#1:364,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudStorageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n1855#2,2:364\n*S KotlinDebug\n*F\n+ 1 CloudStorageManager.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageManager$loadCertificates$1\n*L\n358#1:364,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerCertificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;->f:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->initProviderContext(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$g;->a(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)V

    return-void
.end method
