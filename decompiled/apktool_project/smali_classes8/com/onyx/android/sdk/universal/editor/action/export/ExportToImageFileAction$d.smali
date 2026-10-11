.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

.field public final synthetic h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->g:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportDraftPageArgs()Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getPageIndexMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->g:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;->access$exportSinglePageToFile(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToImageFileAction$d;->a(I)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
