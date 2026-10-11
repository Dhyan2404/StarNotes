.class public final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->a(Ljava/util/zip/ZipEntry;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public final synthetic g:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/zip/ZipEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->g:Ljava/util/zip/ZipEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->g:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->access$completeIgnoredNoteProgressInfo(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->access$import(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;->a(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
