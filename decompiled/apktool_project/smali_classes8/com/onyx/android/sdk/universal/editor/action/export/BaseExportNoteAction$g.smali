.class public final Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->export(Lcom/onyx/android/sdk/base/data/Tree;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

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

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->getExportFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->access$getProgressSubject$p(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction$g;->a(Ljava/lang/Throwable;)V

    return-void
.end method
