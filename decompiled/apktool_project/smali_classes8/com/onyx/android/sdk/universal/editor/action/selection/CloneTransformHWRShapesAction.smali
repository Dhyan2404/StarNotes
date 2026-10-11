.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloneTransformHWRShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1855#2,2:39\n*S KotlinDebug\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n*L\n31#1:39,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0015B-\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "h",
        "Ljava/lang/String;",
        "notePageId",
        "i",
        "Ljava/util/List;",
        "hwrTextShapes",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "j",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V",
        "Companion",
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
        "SMAP\nCloneTransformHWRShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,38:1\n1855#2,2:39\n*S KotlinDebug\n*F\n+ 1 CloneTransformHWRShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction\n*L\n31#1:39,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:F


# instance fields
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction$Companion;

    const v0, 0x3da3d70a    # 0.08f

    sput v0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->k:F

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrTextShapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->i:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->j:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CHAR_SPACING$cp()F
    .locals 1

    sget v0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->k:F

    return v0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getShapeHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->j:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    sget v2, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->k:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setCharSpacing(Ljava/lang/Float;)V

    new-instance v1, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->j:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;->format(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    instance-of v2, v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "just(...)"

    if-nez v0, :cond_1

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setPageUniqueId(Ljava/lang/String;)V

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->generateUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->resetConnection()V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
