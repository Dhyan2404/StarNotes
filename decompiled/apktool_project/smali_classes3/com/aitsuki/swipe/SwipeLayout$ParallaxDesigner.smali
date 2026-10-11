.class public final Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aitsuki/swipe/SwipeLayout$Designer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aitsuki/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallaxDesigner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u000f\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016J \u0010\u0011\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;",
        "Lcom/aitsuki/swipe/SwipeLayout$Designer;",
        "Lcom/aitsuki/swipe/SwipeLayout;",
        "parent",
        "Landroid/view/View;",
        "leftMenu",
        "rightMenu",
        "",
        "onInit",
        "menuView",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "Landroid/view/ViewGroup;",
        "a",
        "b",
        "Landroid/view/View;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;II)V
    .locals 5

    sub-int/2addr p3, p2

    int-to-float p0, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2, v0, v1, p3, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    sub-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, p2, v4}, Landroid/view/View;->layout(IIII)V

    move-object p2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;II)V
    .locals 4

    sub-int/2addr p3, p2

    int-to-float p0, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sub-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    if-ltz p3, :cond_1

    :goto_0
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, p2, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p3

    move p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onInit(Lcom/aitsuki/swipe/SwipeLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/aitsuki/swipe/SwipeLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;->a:Landroid/view/View;

    const/4 p0, 0x4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onLayout(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "menuView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int p3, p4, p2

    if-lez p3, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    const/4 p5, 0x4

    :goto_0
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p5, p0, Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;->a:Landroid/view/View;

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int p0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p4

    invoke-virtual {p1, p0, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, p3, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p5, 0x1

    if-le p3, p5, :cond_4

    invoke-virtual {p0, p1, p2, p4}, Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;->a(Landroid/view/ViewGroup;II)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p4, p0, p2, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, p3, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {p0, p1, p2, p4}, Lcom/aitsuki/swipe/SwipeLayout$ParallaxDesigner;->b(Landroid/view/ViewGroup;II)V

    :cond_4
    :goto_1
    return-void
.end method
