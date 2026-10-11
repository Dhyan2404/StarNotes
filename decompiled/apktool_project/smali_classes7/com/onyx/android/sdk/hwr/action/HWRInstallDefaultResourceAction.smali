.class public final Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRInstallDefaultResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,57:1\n637#2:58\n*S KotlinDebug\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n*L\n43#1:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000c\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "engine",
        "m",
        "l",
        "e",
        "Ljava/lang/String;",
        "lang",
        "",
        "f",
        "Ljava/util/List;",
        "engines",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRInstallDefaultResourceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,57:1\n637#2:58\n*S KotlinDebug\n*F\n+ 1 HWRInstallDefaultResourceAction.kt\ncom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction\n*L\n43#1:58\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engines"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$initMlKit(Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$installDefaultResource(Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->m(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$b;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$c;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const-string v1, "GoogleML"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setTextEnable(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setShapeEnable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setGestureEnable(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->Companion:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle$Companion;->getEmpty()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/onyx/android/sdk/hwr/action/HWREnsureInitAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$d;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$d;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
