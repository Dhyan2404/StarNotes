.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;->l(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;->access$getMirrorType$p(Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;)Lcom/onyx/android/sdk/geometry/data/MirrorType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getCenterPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->mirror(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/MirrorType;Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction$c;->a(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-void
.end method
