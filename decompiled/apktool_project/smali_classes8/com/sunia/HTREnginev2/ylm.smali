.class public final synthetic Lcom/sunia/HTREnginev2/ylm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ylm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ylm;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ylm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ylm;->f:Ljava/util/List;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->l(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method
