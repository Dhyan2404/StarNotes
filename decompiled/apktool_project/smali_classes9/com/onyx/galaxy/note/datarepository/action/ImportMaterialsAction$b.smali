.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "library"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$a;

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    invoke-direct {v1, v2, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;-><init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;->a(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
