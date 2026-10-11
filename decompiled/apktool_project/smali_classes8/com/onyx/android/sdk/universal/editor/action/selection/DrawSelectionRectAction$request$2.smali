.class final Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;",
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
.field final synthetic $editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    .line 6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getShapeList()Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$request$2;->invoke()Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object p0

    return-object p0
.end method
