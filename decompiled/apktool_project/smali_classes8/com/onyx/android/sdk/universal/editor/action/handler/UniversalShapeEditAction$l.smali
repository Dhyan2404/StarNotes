.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->r(Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final synthetic g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->g:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->g:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l$a;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$l;->a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
