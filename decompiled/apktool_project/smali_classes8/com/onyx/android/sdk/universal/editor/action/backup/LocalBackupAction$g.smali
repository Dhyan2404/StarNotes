.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->create()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$create$9\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocalBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$create$9\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->access$getEditorBundle$p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;->access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setThrowable(Ljava/lang/Throwable;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/LocalBackupCompleteEvent;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/LocalBackupCompleteEvent;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalBackupAction$g;->a(Ljava/lang/Throwable;)V

    return-void
.end method
