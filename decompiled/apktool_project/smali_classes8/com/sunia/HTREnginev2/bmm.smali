.class public final synthetic Lcom/sunia/HTREnginev2/bmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

.field public final synthetic f:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bmm;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bmm;->f:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bmm;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bmm;->f:Ljava/util/Map$Entry;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$addCrossPageShapes$1;->a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method
