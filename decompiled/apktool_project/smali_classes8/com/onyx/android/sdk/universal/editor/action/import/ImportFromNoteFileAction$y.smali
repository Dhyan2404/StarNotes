.class public final Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->W(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$y;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->access$getNoteTreeMap$p(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction$y;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
