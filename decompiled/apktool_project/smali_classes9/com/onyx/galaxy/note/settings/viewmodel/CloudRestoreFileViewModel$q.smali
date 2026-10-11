.class public final Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->n(Ljava/lang/String;)V
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$q;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$q;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->getSearchList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$q;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)V

    return-void
.end method
