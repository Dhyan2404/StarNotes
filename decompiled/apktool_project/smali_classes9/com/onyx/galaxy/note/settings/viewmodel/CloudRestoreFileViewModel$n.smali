.class public final Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;->e:Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;->access$ensureBackupDirCloudFileBean(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel$n;->a(Lcom/onyx/galaxy/note/settings/viewmodel/CloudRestoreFileViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
