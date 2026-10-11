.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nCloudBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$create$8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$create$8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getEditorBundle$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;->access$getBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/BackupContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/BackupContext;->setThrowable(Ljava/lang/Throwable;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudBackupCompleteEvent;-><init>(Lcom/onyx/android/sdk/universal/ui/data/BackupContext;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$h;->a(Ljava/lang/Throwable;)V

    return-void
.end method
