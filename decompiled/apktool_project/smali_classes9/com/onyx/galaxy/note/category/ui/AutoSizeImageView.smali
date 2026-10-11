.class public final Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 B\u001b\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008\u001f\u0010#B#\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010$\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001f\u0010%J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0014J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002R\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001c\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "",
        "getWidthRadio",
        "getHeightRadio",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "",
        "onMeasure",
        "widthSize",
        "heightSize",
        "",
        "a",
        "h",
        "I",
        "getOrientation",
        "()I",
        "setOrientation",
        "(I)V",
        "orientation",
        "i",
        "Lkotlin/Lazy;",
        "getWidthRatio",
        "()F",
        "widthRatio",
        "j",
        "getHeightRatio",
        "heightRatio",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public h:I

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->h:I

    .line 5
    sget-object p1, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView$widthRatio$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView$widthRatio$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->i:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView$heightRatio$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView$heightRatio$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->j:Lkotlin/Lazy;

    return-void
.end method

.method private final getHeightRadio()F
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getHeightRatio()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getWidthRatio()F

    move-result p0

    :goto_0
    return p0
.end method

.method private final getHeightRatio()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getWidthRadio()F
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getWidthRatio()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getHeightRatio()F

    move-result p0

    :goto_0
    return p0
.end method

.method private final getWidthRatio()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getWidthRadio()F

    move-result v0

    div-float/2addr p1, v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getHeightRadio()F

    move-result p0

    mul-float/2addr p1, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->h:I

    return p0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->a(II)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    int-to-float p2, v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getWidthRadio()F

    move-result v0

    div-float/2addr p2, v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getHeightRadio()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getHeightRadio()F

    move-result v0

    div-float/2addr p1, v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->getWidthRadio()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/AutoSizeImageView;->h:I

    return-void
.end method
