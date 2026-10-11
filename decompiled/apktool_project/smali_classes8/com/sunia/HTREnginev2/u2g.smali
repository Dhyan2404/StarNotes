.class public final synthetic Lcom/sunia/HTREnginev2/u2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

.field public final synthetic c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic d:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u2g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u2g;->b:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/u2g;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/u2g;->d:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u2g;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/u2g;->b:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/u2g;->c:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u2g;->d:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->K(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
