.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->q(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TouchPointList;

.field public final synthetic g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final synthetic h:Lio/reactivex/rxjava3/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lio/reactivex/rxjava3/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->f:Lcom/onyx/android/sdk/base/data/TouchPointList;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->h:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->f:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionPointsByType(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->access$getSelectAllShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setSelectAllShapes(Z)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->getSelectionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setSelectionType(I)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    new-instance v1, Lcom/sunia/HTREnginev2/zfm;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zfm;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setShapePredicate(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->h:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->setSelectedPredicate(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction$e;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;

    move-result-object p0

    return-object p0
.end method
