.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->access$prepareDrawPage(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$f;->a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
