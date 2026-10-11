.class public final synthetic Lcom/sunia/HTREnginev2/zfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zfm;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zfm;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;->access$canSelectByLasso(Lcom/onyx/android/sdk/universal/editor/action/selection/SelectShapesAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method
