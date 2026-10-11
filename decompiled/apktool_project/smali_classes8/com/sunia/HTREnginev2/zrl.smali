.class public final synthetic Lcom/sunia/HTREnginev2/zrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zrl;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    iput p2, p0, Lcom/sunia/HTREnginev2/zrl;->f:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zrl;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;

    iget p0, p0, Lcom/sunia/HTREnginev2/zrl;->f:F

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;->l(Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;FZ)V

    return-void
.end method
