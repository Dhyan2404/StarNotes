.class public final Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;->e:Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;->e:Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;->access$collectTasks(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction$a;->a(Lcom/onyx/galaxy/note/datarepository/action/DownloadShareResourceAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
