.class public final Lcom/onyx/android/sdk/genericshape/PageMargins;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nJ\u0006\u0010!\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/PageMargins;",
        "",
        "()V",
        "layoutRect",
        "Landroid/graphics/RectF;",
        "getLayoutRect",
        "()Landroid/graphics/RectF;",
        "setLayoutRect",
        "(Landroid/graphics/RectF;)V",
        "paddingBottom",
        "",
        "getPaddingBottom",
        "()F",
        "setPaddingBottom",
        "(F)V",
        "paddingLeft",
        "getPaddingLeft",
        "setPaddingLeft",
        "paddingRight",
        "getPaddingRight",
        "setPaddingRight",
        "paddingTop",
        "getPaddingTop",
        "setPaddingTop",
        "pagePaddingRect",
        "getPagePaddingRect",
        "setPagePaddingRect",
        "spacing",
        "getSpacing",
        "setSpacing",
        "applyPadding",
        "",
        "padding",
        "loadContentRect",
        "sdk-genericshape_overseasRelease"
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
.field private layoutRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F

.field private pagePaddingRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private spacing:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->layoutRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->pagePaddingRect:Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->spacing:F

    return-void
.end method


# virtual methods
.method public final applyPadding(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingLeft:F

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingTop:F

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingRight:F

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingBottom:F

    return-void
.end method

.method public final getLayoutRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->layoutRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPaddingBottom()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingBottom:F

    return p0
.end method

.method public final getPaddingLeft()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingLeft:F

    return p0
.end method

.method public final getPaddingRight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingRight:F

    return p0
.end method

.method public final getPaddingTop()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingTop:F

    return p0
.end method

.method public final getPagePaddingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->pagePaddingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->spacing:F

    return p0
.end method

.method public final loadContentRect()Landroid/graphics/RectF;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->layoutRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingLeft:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingTop:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingRight:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingBottom:F

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final setLayoutRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->layoutRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPaddingBottom(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingBottom:F

    return-void
.end method

.method public final setPaddingLeft(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingLeft:F

    return-void
.end method

.method public final setPaddingRight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingRight:F

    return-void
.end method

.method public final setPaddingTop(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->paddingTop:F

    return-void
.end method

.method public final setPagePaddingRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->pagePaddingRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/PageMargins;->spacing:F

    return-void
.end method
