.class final Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->refreshPage(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $isSameVisibleRectF:Z

.field final synthetic $pageNodeInfo:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

.field final synthetic $pageSliceInfo:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

.field final synthetic $renderNodeSizeChanged:Z

.field final synthetic $updateSliceInfoResult:Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

.field final synthetic $virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;ZZLcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$updateSliceInfoResult:Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$renderNodeSizeChanged:Z

    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$isSameVisibleRectF:Z

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$pageNodeInfo:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    iput-object p6, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$pageSliceInfo:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshPage, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateSliceInfoSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$updateSliceInfoResult:Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;->getSuccess()Z

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderNodeSizeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$renderNodeSizeChanged:Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSliceOutOfDate = false\n, isSameVisibleRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$isSameVisibleRectF:Z

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n, rn.visibleRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$pageNodeInfo:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, pageSliceInfo.visibleRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$refreshPage$1;->$pageSliceInfo:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
