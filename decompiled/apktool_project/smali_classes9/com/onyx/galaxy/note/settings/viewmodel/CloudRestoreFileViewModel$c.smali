.class public final Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->ensureCloudStorageProvider()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nCloudRestoreFileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n223#2,2:213\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n*L\n120#1:213,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudRestoreFileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n223#2,2:213\n*S KotlinDebug\n*F\n+ 1 CloudRestoreFileViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$ensureCloudStorageProvider$1\n*L\n120#1:213,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$c;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "authProviders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$c;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    invoke-interface {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->access$getProvider$p(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$c;->a(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;

    move-result-object p0

    return-object p0
.end method
