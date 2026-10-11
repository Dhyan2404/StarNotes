.class public final synthetic Lcom/sunia/HTREnginev2/zlm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zlm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zlm;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/zlm;->g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zlm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zlm;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zlm;->g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->n(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method
