.class public final Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;->a(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;->access$exportPageToPDFFile(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;->a(I)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
