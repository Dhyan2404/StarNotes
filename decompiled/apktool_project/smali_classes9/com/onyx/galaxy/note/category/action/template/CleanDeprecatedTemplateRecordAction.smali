.class public final Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "()V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    return-void
.end method

.method public static final create$lambda$0(Z)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->resetCoverOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;->n(Z)V

    return-void
.end method

.method public static synthetic m(Z)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction;->create$lambda$0(Z)V

    return-void
.end method

.method public static final n(Z)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->resetTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)V

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$a;->e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$b;->e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/kud;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kud;-><init>()V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;->e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$c;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$d;->e:Lcom/onyx/galaxy/note/category/action/template/CleanDeprecatedTemplateRecordAction$d;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/lud;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lud;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
