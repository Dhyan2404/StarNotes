.class public final Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;->s()Lio/reactivex/rxjava3/core/Observable;
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;->access$getPageIndexList$p(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$h;->a(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
