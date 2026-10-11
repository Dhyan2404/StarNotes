.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->o(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;->f:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;->access$delayTask(Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/ExecuteAutoBackupTaskAction$b;->a(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    move-result-object p0

    return-object p0
.end method
