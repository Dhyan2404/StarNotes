.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->O(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

.field public final synthetic g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->g:Ljava/util/Map;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$onCompleteCloudAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$y;->a(Lcom/onyx/android/sdk/universal/editor/action/backup/UploadBackupFileToCloudAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
