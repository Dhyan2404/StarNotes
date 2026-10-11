.class public final Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 6
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$loadCoverDataFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$loadPaperDataFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$loadResourceFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$loadCoverResourceRelationFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$loadPaperResourceRelationFromCloud(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    new-instance v5, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;-><init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function5;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
