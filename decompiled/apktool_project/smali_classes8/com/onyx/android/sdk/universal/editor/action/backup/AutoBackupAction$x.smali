.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
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

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->g:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->f:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->g:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->h:Z

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$onErrorCloudAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;Ljava/util/Map;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$x;->a(Ljava/lang/Throwable;)V

    return-void
.end method
