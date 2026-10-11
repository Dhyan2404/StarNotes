.class public final synthetic Lcom/sunia/HTREnginev2/qbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->n(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method
