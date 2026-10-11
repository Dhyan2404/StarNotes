.class public final Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0006\u0010\n\u001a\u00020\u0008H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;",
        "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "n",
        "newName",
        "l",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "f",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "colorSetModel",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;",
        "g",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;",
        "provider",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V",
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

.field public final f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorSetModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    return-void
.end method

.method public static final synthetic access$getColorSetModel$p(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->g:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    return-object p0
.end method

.method public static final synthetic access$rename(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$save(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->m()V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->g:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->n()Lio/reactivex/rxjava3/subjects/PublishSubject;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;->ensureColorProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$f;->e:Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$f;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set_hint:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;

    sget-object v0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_NAME_LENGTH()I

    move-result v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$rename$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$rename$1;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$g;-><init>(Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->g:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;

    if-nez v0, :cond_0

    const-string v0, "provider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->saveColorSet(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public final n()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 6
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

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->getMAX_COLOR_SET_NAME_LENGTH()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setMaxLength$default(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;IZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setHideCounterDisplay(Z)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->color_title_naming_color_set_hint:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setEditHint(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$showDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$showDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$showDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/action/colorset/RenameColorSetAction$showDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->create()Lcom/onyx/android/sdk/ui/NameEditDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
