.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->C()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

.field public final synthetic h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/ui/data/BackupContext;",
            "Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->h:Ljava/util/List;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->i:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->isError()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$onErrorLocalAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$onCompleteLocalAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->i:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->e:Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->isError()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$s;->a(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
