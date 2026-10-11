.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->b(Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;->e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;->f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;->e:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;->f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setLastCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2$b;->a(Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V

    return-void
.end method
