.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->getArgs()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    const-string v2, "excerpt_provider"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeShapeProvider(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->access$getExcerptCollectionList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->access$getNoteModelList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, v0, p1, v3, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
