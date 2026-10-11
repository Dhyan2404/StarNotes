.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$b;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$3;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$3;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$4;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->f:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;Ljava/util/List;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction$buildIndex$1;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
