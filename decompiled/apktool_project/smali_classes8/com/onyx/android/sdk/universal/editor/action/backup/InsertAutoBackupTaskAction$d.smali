.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;->access$setAutoBackupTaskProvider$p(Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction;Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/InsertAutoBackupTaskAction$d;->a(Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;)V

    return-void
.end method
