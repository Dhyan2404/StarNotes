.class public final Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocateSrcViewRectInTargetPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateSrcViewRectInTargetPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "srcEditorBundle",
        "Landroid/graphics/RectF;",
        "i",
        "Landroid/graphics/RectF;",
        "viewRect",
        "",
        "j",
        "Ljava/lang/String;",
        "targetId",
        "targetEditorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nLocateSrcViewRectInTargetPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocateSrcViewRectInTargetPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcEditorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetEditorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->i:Landroid/graphics/RectF;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, ""

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->m(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static final m(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2

    const-string v0, "$shapeRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->i:Landroid/graphics/RectF;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$1;

    new-instance v3, Lcom/sunia/HTREnginev2/v1j;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/v1j;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$3;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$4;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->j:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_1
    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_2
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$findBoxInfo$boxInfo$2;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$findBoxInfo$boxInfo$2;-><init>(Ljava/util/List;)V

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElseNull(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
