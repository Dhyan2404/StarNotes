.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

.field public final synthetic f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->f:Ljava/util/Set;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ")",
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

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$a;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$b;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->f:Ljava/util/Set;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$b;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$3;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$3;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$4;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->g:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->f:Ljava/util/Set;

    invoke-direct {v1, v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;Ljava/util/List;Ljava/util/Set;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$extractFTSContent$1;->a(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
