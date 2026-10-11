.class final Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;->this$0:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;->this$0:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->access$getDocManagerBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;->this$0:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->access$getExportArgsList$p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

    move-result-object p0

    return-object p0
.end method
