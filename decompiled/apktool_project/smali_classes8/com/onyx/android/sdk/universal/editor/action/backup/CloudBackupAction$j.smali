.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->u(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->e:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->c(Ljava/io/File;)V

    return-void
.end method

.method public static final c(Ljava/io/File;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->b(Ljava/io/File;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/io/File;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->e:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getEditorBundle$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->setNoteFile(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->setNoteFileName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupIoObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/nvd;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/nvd;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
