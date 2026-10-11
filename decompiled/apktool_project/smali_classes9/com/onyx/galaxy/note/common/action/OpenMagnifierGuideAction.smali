.class public final Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002R\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/app/Activity;",
        "activity",
        "",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "guideInfoList",
        "",
        "m",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "g",
        "Lkotlin/Lazy;",
        "l",
        "()Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "option",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:Z


# instance fields
.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->Companion:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$option$2;->INSTANCE:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$option$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getOption(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->l()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShown$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->h:Z

    return v0
.end method

.method public static final synthetic access$setShown$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->h:Z

    return-void
.end method

.method public static final synthetic access$showGuideDialog(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->m(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "empty(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$a;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$a;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;-><init>(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$c;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$c;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$d;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;-><init>(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$f;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$f;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$g;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$h;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$h;-><init>(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$i;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$i;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final m(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog;->Companion:Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog$Companion;->create(Ljava/util/List;)Lcom/onyx/galaxy/note/member/dialog/MagnifierFeatureDialog;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->h:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->l()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    sget-boolean p1, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->h:Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
