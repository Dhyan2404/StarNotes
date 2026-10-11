.class public final synthetic Lcom/sunia/HTREnginev2/s4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s4h;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s4h;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s4h;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s4h;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;->l(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)V

    return-void
.end method
