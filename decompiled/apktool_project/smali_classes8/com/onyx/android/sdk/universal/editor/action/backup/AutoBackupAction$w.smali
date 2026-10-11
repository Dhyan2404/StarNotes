.class public final Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->L()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$prepareAutoBackupContext$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,437:1\n1#2:438\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAutoBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$prepareAutoBackupContext$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,437:1\n1#2:438\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;->access$getAutoBackupContext$p(Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;->setCloudBackup(Z)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/backup/AutoBackupAction$w;->a(Ljava/util/List;)Lcom/onyx/android/sdk/universal/ui/data/AutoBackupContext;

    move-result-object p0

    return-object p0
.end method
