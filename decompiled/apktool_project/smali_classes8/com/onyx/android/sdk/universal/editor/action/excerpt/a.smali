.class public final synthetic Lcom/onyx/android/sdk/universal/editor/action/excerpt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    return-void
.end method
