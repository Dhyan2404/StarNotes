.class public final Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010$\u001a\u00020\u0007J\u0006\u0010%\u001a\u00020&R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\r\"\u0004\u0008\u0014\u0010\u000fR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
        "",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "pageDisplayRectF",
        "Landroid/graphics/RectF;",
        "enableVerifyId",
        "",
        "invalidate",
        "isFullPageRender",
        "isEnabledEnsureDisplay",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZ)V",
        "getEnableVerifyId",
        "()Z",
        "setEnableVerifyId",
        "(Z)V",
        "getInvalidate",
        "setInvalidate",
        "setEnabledEnsureDisplay",
        "isEnabledPrintFailLog",
        "setEnabledPrintFailLog",
        "setFullPageRender",
        "noteRenderArgs",
        "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "getNoteRenderArgs",
        "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;",
        "setNoteRenderArgs",
        "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V",
        "getPageDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setPageDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "hasRenderInfo",
        "toDebugString",
        "",
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
.field private enableVerifyId:Z

.field private invalidate:Z

.field private isEnabledEnsureDisplay:Z

.field private isEnabledPrintFailLog:Z

.field private isFullPageRender:Z

.field private noteRenderArgs:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageDisplayRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->pageDisplayRectF:Landroid/graphics/RectF;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->enableVerifyId:Z

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->invalidate:Z

    .line 6
    iput-boolean p5, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender:Z

    .line 7
    iput-boolean p6, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledPrintFailLog:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, p8

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move v5, p8

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    const/4 p6, 0x1

    :cond_4
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final getEnableVerifyId()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->enableVerifyId:Z

    return p0
.end method

.method public final getInvalidate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->invalidate:Z

    return p0
.end method

.method public final getNoteRenderArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->noteRenderArgs:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-object p0
.end method

.method public final getPageDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->pageDisplayRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final hasRenderInfo()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->noteRenderArgs:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabledEnsureDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay:Z

    return p0
.end method

.method public final isEnabledPrintFailLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledPrintFailLog:Z

    return p0
.end method

.method public final isFullPageRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender:Z

    return p0
.end method

.method public final setEnableVerifyId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->enableVerifyId:Z

    return-void
.end method

.method public final setEnabledEnsureDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay:Z

    return-void
.end method

.method public final setEnabledPrintFailLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledPrintFailLog:Z

    return-void
.end method

.method public final setFullPageRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender:Z

    return-void
.end method

.method public final setInvalidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->invalidate:Z

    return-void
.end method

.method public final setNoteRenderArgs(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->noteRenderArgs:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    return-void
.end method

.method public final setPageDisplayRectF(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->pageDisplayRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceRenderNoteDirtyArgs: virtualPage.id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, noteId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, virtualPage.visibleRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, pageDisplayRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->pageDisplayRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, enableVerifyId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->enableVerifyId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n, invalidate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->invalidate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n, isFullPageRender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n, isEnabledEnsureDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
