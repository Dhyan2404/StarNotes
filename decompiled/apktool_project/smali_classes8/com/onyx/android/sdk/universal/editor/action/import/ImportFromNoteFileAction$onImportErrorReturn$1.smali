.class final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->g0(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/io/File;Ljava/lang/String;Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;",
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
.field final synthetic $noteFileDir:Ljava/io/File;

.field final synthetic $noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;->$noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;->$noteFileDir:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;->$noteImportArgs:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getNoteProgressInfoMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;->$noteFileDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$onImportErrorReturn$1;->invoke()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object p0

    return-object p0
.end method
