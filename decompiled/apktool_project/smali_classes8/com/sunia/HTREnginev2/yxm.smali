.class public final synthetic Lcom/sunia/HTREnginev2/yxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yxm;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yxm;->f:Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yxm;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yxm;->f:Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;->l(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V

    return-void
.end method
