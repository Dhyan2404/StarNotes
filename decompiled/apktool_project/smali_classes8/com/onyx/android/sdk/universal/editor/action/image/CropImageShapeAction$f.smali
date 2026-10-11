.class public final Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->m(Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$f;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
