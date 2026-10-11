.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->f:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->g:Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$onErrorLocalAutoBackup(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;)Z

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$t;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
