.class final Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->m()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/graphics/Bitmap;",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction$getSelectionBitmap$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/QuickCopyAction;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->setUpdateSelectionBitmap(Z)V

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->setRenderingShapeTypes(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 6
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
