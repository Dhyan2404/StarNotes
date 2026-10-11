.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;
.super Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u00083\u00104J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\tH\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010&\u001a\u00020\u000b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0016\u0010.\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00100\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u0010-\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "q",
        "r",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "w",
        "",
        "s",
        "filePath",
        "p",
        "fileBean",
        "v",
        "t",
        "u",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "baseCloudStorageProvider",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "g",
        "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
        "backupContext",
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
        "h",
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
        "recordProvider",
        "Ljava/io/File;",
        "noteFile",
        "Ljava/io/File;",
        "getNoteFile",
        "()Ljava/io/File;",
        "setNoteFile",
        "(Ljava/io/File;)V",
        "noteFileName",
        "Ljava/lang/String;",
        "getNoteFileName",
        "()Ljava/lang/String;",
        "setNoteFileName",
        "(Ljava/lang/String;)V",
        "i",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "backupDirCloudFileBean",
        "j",
        "uploadCloudFileBean",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

.field public i:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field public j:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field public noteFile:Ljava/io/File;

.field public noteFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/ui/data/BackupContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baseCloudStorageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    return-void
.end method

.method public static final synthetic access$deleteLocalFile(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->q()V

    return-void
.end method

.method public static final synthetic access$deleteOldNote(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBaseCloudStorageProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    return-object p0
.end method

.method public static final synthetic access$getRecordProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->h:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    return-object p0
.end method

.method public static final synthetic access$setBackupDirCloudFileBean$p(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->i:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$setRecordProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->h:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    return-void
.end method

.method public static final synthetic access$setUploadCloudFileBean$p(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->j:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$upload(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->o(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->n()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getBackupProviderObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mxn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mxn;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNoteFile()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->noteFile:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "noteFile"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNoteFileName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->noteFileName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "noteFileName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()V
    .locals 2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final p(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getProviderFromPath(Ljava/lang/String;)Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setLocalFilePath(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Lonyx/org/apache/commons/io/FileUtils;->isDirectory(Ljava/io/File;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setName(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_LOCAL:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSyncStatus(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setCloudFilePath(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->v(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final q()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->j:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-nez v0, :cond_0

    const-string v0, "uploadCloudFileBean"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->s()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->isAutoBackup()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->t()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->u()V

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->setOrigin(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->setPath(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;-><init>()V

    const-class v2, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSimpleName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getEnsureSelectedModel(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->toggleSelectData(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->setDataJson(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->setCloudOperate(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->setAccountId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->deleteFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;->getDriveLocalBackupDir(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->getNoteFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setNoteFile(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->noteFile:Ljava/io/File;

    return-void
.end method

.method public final setNoteFileName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->noteFileName:Ljava/lang/String;

    return-void
.end method

.method public final t()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->h:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "recordProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;->loadNoteCloudRecord(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;->getCloudFileBean()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->h:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "recordProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->g:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getDocumentId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->j:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-nez p0, :cond_1

    const-string p0, "uploadCloudFileBean"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/cloudstorage/db/NoteCloudRecordProviderKt;->saveNoteCloudRecord(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSize(J)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Safely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMd5(Ljava/lang/String;)V

    return-void
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->getNoteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->p(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->i:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-nez v1, :cond_0

    const-string v1, "backupDirCloudFileBean"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setParentId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->uploadFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$j;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
