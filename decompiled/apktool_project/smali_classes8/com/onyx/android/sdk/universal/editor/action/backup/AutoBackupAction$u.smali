.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$getAutoBackupResult$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupResult;->setLocalBackupResult(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$u;->a(Lkotlin/Unit;)V

    return-void
.end method
