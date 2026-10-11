.class public final Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->i(Ljava/util/List;)V
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;->e:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;->startTask()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$a;-><init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$b;->e:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$c;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a$c;-><init>(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager$a;->a(Lcom/onyx/galaxy/note/datarepository/download/DownloadTask;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
