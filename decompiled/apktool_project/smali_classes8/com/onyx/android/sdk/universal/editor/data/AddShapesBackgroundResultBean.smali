.class public final Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\'\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
        "",
        "()V",
        "forceRenderNoteDirtyRectToDisplay",
        "",
        "getForceRenderNoteDirtyRectToDisplay",
        "()Z",
        "setForceRenderNoteDirtyRectToDisplay",
        "(Z)V",
        "hasBottomUnderContentShape",
        "getHasBottomUnderContentShape",
        "setHasBottomUnderContentShape",
        "hitTestSupportSingleTapShapeList",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getHitTestSupportSingleTapShapeList",
        "()Ljava/util/List;",
        "setHitTestSupportSingleTapShapeList",
        "(Ljava/util/List;)V",
        "isSingleTap",
        "setSingleTap",
        "postShapeChangedEvent",
        "getPostShapeChangedEvent",
        "setPostShapeChangedEvent",
        "setZOrder",
        "getSetZOrder",
        "setSetZOrder",
        "undoRedoCommand",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "getUndoRedoCommand",
        "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "setUndoRedoCommand",
        "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "canAddShape",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private forceRenderNoteDirtyRectToDisplay:Z

.field private hasBottomUnderContentShape:Z

.field private hitTestSupportSingleTapShapeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSingleTap:Z

.field private postShapeChangedEvent:Z

.field private setZOrder:Z

.field private undoRedoCommand:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hitTestSupportSingleTapShapeList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->postShapeChangedEvent:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setZOrder:Z

    return-void
.end method


# virtual methods
.method public final canAddShape()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hitTestSupportSingleTapShapeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final getForceRenderNoteDirtyRectToDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->forceRenderNoteDirtyRectToDisplay:Z

    return p0
.end method

.method public final getHasBottomUnderContentShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hasBottomUnderContentShape:Z

    return p0
.end method

.method public final getHitTestSupportSingleTapShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hitTestSupportSingleTapShapeList:Ljava/util/List;

    return-object p0
.end method

.method public final getPostShapeChangedEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->postShapeChangedEvent:Z

    return p0
.end method

.method public final getSetZOrder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setZOrder:Z

    return p0
.end method

.method public final getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->undoRedoCommand:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isSingleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->isSingleTap:Z

    return p0
.end method

.method public final setForceRenderNoteDirtyRectToDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->forceRenderNoteDirtyRectToDisplay:Z

    return-void
.end method

.method public final setHasBottomUnderContentShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hasBottomUnderContentShape:Z

    return-void
.end method

.method public final setHitTestSupportSingleTapShapeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->hitTestSupportSingleTapShapeList:Ljava/util/List;

    return-void
.end method

.method public final setPostShapeChangedEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->postShapeChangedEvent:Z

    return-void
.end method

.method public final setSetZOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setZOrder:Z

    return-void
.end method

.method public final setSingleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->isSingleTap:Z

    return-void
.end method

.method public final setUndoRedoCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->undoRedoCommand:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
