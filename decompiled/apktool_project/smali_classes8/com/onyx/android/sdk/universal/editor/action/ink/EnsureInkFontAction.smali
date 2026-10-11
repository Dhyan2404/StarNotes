.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0000H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "o",
        "fonts",
        "n",
        "p",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$downloadAbsentFont(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadFontList(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;->m(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;->p()Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ink_beautify_font_downloaded"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->getComposedKey$default(Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "flatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$create$2;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$create$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xqf;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnComplete(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "fromIterable(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$downloadAbsentFont$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$downloadAbsentFont$1;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$downloadAbsentFont$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$downloadAbsentFont$2;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/ink/LoadInkFontListAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/ink/LoadInkFontListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$d;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$loadFontList$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$loadFontList$2;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$loadFontList$3;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$loadFontList$3;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction$e;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ink_beautify_font_downloaded"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->getComposedKey$default(Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-object p0
.end method
