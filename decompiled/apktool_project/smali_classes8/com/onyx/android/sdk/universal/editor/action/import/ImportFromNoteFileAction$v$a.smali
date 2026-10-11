.class public final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic f:Ljava/util/zip/ZipFile;

.field public final synthetic g:Ljava/util/zip/ZipEntry;

.field public final synthetic h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->f:Ljava/util/zip/ZipFile;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->g:Ljava/util/zip/ZipEntry;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipEntry;)V
    .locals 2
    .param p1    # Ljava/util/zip/ZipEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->f:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->g:Ljava/util/zip/ZipEntry;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->h:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->access$unzipNoteEntry(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$v$a;->a(Ljava/util/zip/ZipEntry;)V

    return-void
.end method
