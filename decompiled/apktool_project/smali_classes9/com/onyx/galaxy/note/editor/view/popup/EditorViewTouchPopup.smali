.class public Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\u00088\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Landroid/view/View;",
        "anchor",
        "",
        "locationOffset",
        "",
        "show",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "q",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTouchPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method


# virtual methods
.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->show(Landroid/view/View;[I)V

    return-void
.end method

.method public show(Landroid/view/View;[I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationOffset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getContentView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    aget v1, p2, v3

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getTranslationX(Landroid/view/View;ZZ)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 3
    aget p2, p2, v1

    .line 4
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;->q:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->show(Landroid/view/View;Lcom/onyx/android/sdk/base/data/TouchPoint;II)V

    return-void
.end method
