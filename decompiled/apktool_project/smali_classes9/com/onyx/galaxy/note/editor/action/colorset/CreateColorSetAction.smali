.class public final Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;
.super Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0003H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;",
        "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "p",
        "n",
        "",
        "o",
        "q",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "r",
        "generateName",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "activityContext",
        "",
        "",
        "f",
        "Ljava/util/List;",
        "colorsList",
        "g",
        "Ljava/lang/String;",
        "colorSetName",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;",
        "h",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;",
        "provider",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createColorSet(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->n()V

    return-void
.end method

.method public static final synthetic access$generateName(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->generateName()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->h:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    return-object p0
.end method

.method public static final synthetic access$queryCustomColorSetCount(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setColorSetName$p(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->h:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->r()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->m(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Z)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->p()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;->ensureColorProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ege;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ege;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$c;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$g;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$h;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$h;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final generateName()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "colorSetName"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set_hint:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->g:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_NAME_LENGTH()I

    move-result v5

    new-instance v6, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$generateName$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$generateName$1;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$i;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "colorSetName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setColors(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setPreset(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->o()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->setOrderIndex(J)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->h:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    if-nez p0, :cond_1

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->saveColorSet(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public final o()J
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final p()V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->favored_color_set_exceed_max_count_tips:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_COUNT()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void
.end method

.method public final q()J
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "colors"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->listNotEmptyExpression(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    const-string v2, "preset"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    const-string v1, "and(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->h:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    if-nez p0, :cond_0

    const-string p0, "provider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->queryCount(Lcom/couchbase/lite/Expression;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final r()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->e:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_NAME_LENGTH()I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p0, v4, v2, v3}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setMaxLength$default(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;IZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setHideCounterDisplay(Z)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set_hint:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditHint(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$showDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$showDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$showDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$showDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->create()Lcom/onyx/android/sdk/ui/NameEditDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
