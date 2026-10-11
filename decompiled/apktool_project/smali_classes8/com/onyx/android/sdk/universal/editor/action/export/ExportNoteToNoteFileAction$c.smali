.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->access$onExportErrorReturn(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Ljava/lang/Throwable;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$c;->a(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
