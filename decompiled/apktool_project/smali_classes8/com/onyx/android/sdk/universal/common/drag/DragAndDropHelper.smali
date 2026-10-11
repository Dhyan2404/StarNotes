.class public final Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;",
        "",
        "Landroid/view/View;",
        "v",
        "Landroid/view/DragEvent;",
        "event",
        "",
        "onDrag",
        "",
        "a",
        "F",
        "getLastDragX",
        "()F",
        "setLastDragX",
        "(F)V",
        "lastDragX",
        "b",
        "getLastDragY",
        "setLastDragY",
        "lastDragY",
        "",
        "c",
        "Z",
        "isEntered",
        "()Z",
        "setEntered",
        "(Z)V",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastDragX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->a:F

    return p0
.end method

.method public final getLastDragY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->b:F

    return p0
.end method

.method public final isEntered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->c:Z

    return p0
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 p2, 0x4

    const/4 v2, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->c:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->c:Z

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->a:F

    iput v1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->b:F

    iput-boolean v2, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->c:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->a:F

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->b:F

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->a:F

    iput v1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->b:F

    :goto_0
    return-void
.end method

.method public final setEntered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->c:Z

    return-void
.end method

.method public final setLastDragX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->a:F

    return-void
.end method

.method public final setLastDragY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/common/drag/DragAndDropHelper;->b:F

    return-void
.end method
