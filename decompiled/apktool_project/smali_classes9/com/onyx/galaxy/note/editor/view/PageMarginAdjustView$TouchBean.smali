.class public final Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchBean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        "a",
        "Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        "getType",
        "()Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;",
        "setType",
        "(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;)V",
        "type",
        "Landroid/graphics/RectF;",
        "b",
        "Landroid/graphics/RectF;",
        "getControlRectF",
        "()Landroid/graphics/RectF;",
        "setControlRectF",
        "(Landroid/graphics/RectF;)V",
        "controlRectF",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V",
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
.field public a:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->a:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->b:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final getControlRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getType()Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->a:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    return-object p0
.end method

.method public final setControlRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setType(Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView$TouchBean;->a:Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;

    return-void
.end method
