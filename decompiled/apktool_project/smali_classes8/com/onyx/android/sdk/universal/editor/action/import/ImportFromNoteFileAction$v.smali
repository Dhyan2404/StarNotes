.class public final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->V(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Ljava/util/zip/ZipFile;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Ljava/util/zip/ZipFile;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->f:Ljava/util/zip/ZipFile;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 5
    .param p1    # Ljava/util/zip/ZipEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "zipEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->f:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$b;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$c;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$c;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$d;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$e;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$g;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "onErrorReturn(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$h;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$i;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v;->a(Ljava/util/zip/ZipEntry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
