.class public final Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->d(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;)V
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
    value = "SMAP\nShareResourceViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2:82\n1855#2,2:83\n1856#2:85\n*S KotlinDebug\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n*L\n67#1:82\n68#1:83,2\n67#1:85\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShareResourceViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1855#2:82\n1855#2,2:83\n1856#2:85\n*S KotlinDebug\n*F\n+ 1 ShareResourceViewModel.kt\ncom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$initAttachmentData$1\n*L\n67#1:82\n68#1:83,2\n67#1:85\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->getDownloadProgress()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    new-instance v5, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v5}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    invoke-direct {v4, v2, v5}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->getAttachmentData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;->e:Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->getDownloadProgress()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel$a;->a(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;)V

    return-void
.end method
