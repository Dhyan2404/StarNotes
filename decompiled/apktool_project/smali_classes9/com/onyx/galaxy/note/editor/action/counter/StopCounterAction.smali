.class public final Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B+\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "o",
        "",
        "n",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "f",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "",
        "g",
        "Z",
        "isAbort",
        "h",
        "isManualStop",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V",
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
.field public final e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "counterEntry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    .line 5
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->g:Z

    .line 6
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V

    return-void
.end method

.method public static final synthetic access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-object p0
.end method

.method public static final synthetic access$getCounterEntry$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    return-object p0
.end method

.method public static final synthetic access$isAbort$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->g:Z

    return p0
.end method

.method public static final synthetic access$isManualStop$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->h:Z

    return p0
.end method

.method public static final synthetic access$openCounterPanel(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->n()V

    return-void
.end method

.method public static final synthetic access$saveRecord(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(ZLcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->m(ZLcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    return-void
.end method

.method public static final m(ZLcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getHasCounterNewRecordOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;ZLjava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$3;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$3;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    new-instance v4, Lcom/sunia/HTREnginev2/yzm;

    invoke-direct {v4, v0}, Lcom/sunia/HTREnginev2/yzm;-><init>(Z)V

    invoke-static {v1, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$6;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$7;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$create$7;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->f:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
