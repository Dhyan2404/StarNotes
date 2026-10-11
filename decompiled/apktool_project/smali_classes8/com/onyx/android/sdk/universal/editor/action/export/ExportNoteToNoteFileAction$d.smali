.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->Q(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

.field public final synthetic h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->g:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->h:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->g:Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->h:Ljava/util/List;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->access$savePagesAsPdf(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$d;->a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
