.class public final Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,126:1\n36#2:127\n*S KotlinDebug\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n*L\n76#1:127\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCropImageShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,126:1\n36#2:127\n*S KotlinDebug\n*F\n+ 1 CropImageShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$createImageShape$2\n*L\n76#1:127\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->f:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setAddToCmdStack(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setSourceShapeList(Ljava/util/List;)V

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p1, v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;->setInsertPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;Lcom/onyx/android/sdk/universal/editor/action/image/CreateImageShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$g;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
