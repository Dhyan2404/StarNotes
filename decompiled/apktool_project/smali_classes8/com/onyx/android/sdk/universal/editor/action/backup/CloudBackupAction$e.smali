.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getEditorBundle$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setExportStashArchivedData(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setUpdateLastTime(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setCloudBackup(Z)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$e;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
