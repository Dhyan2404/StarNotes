.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->e:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->e:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uploadToCloud fail; e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->getFailedProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$l;->a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    move-result-object p0

    return-object p0
.end method
