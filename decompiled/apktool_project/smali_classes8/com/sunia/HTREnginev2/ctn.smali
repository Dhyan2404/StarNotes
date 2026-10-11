.class public final synthetic Lcom/sunia/HTREnginev2/ctn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Landroid/graphics/RectF;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

.field public final synthetic g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ctn;->e:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ctn;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ctn;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ctn;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ctn;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ctn;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->n(Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method
