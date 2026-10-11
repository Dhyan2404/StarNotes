.class public final Lcom/onyx/android/sdk/ui/ShadowCreateArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0008R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/ShadowCreateArgs;",
        "",
        "Landroid/view/View;",
        "sourceView",
        "Landroid/view/View$DragShadowBuilder;",
        "createDragDropShadow",
        "",
        "a",
        "F",
        "outerRectPadding",
        "b",
        "roundRectRadius",
        "c",
        "shadowBlurRadius",
        "d",
        "shadowDx",
        "e",
        "shadowDy",
        "",
        "f",
        "I",
        "shadowColor",
        "g",
        "strokeWidth",
        "Landroid/graphics/Paint;",
        "h",
        "Landroid/graphics/Paint;",
        "fillPaint",
        "i",
        "clearPaint",
        "<init>",
        "(FFFFFIF)V",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:F

.field public final h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;-><init>(FFFFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFFIF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->a:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->b:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->c:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->d:F

    .line 7
    iput p5, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->e:F

    .line 8
    iput p6, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->f:I

    .line 9
    iput p7, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->g:F

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 p2, -0x1000000

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 14
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->h:Landroid/graphics/Paint;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->i:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(FFFFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 21
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p9, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, p9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 22
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p9, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p2, p9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    .line 23
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    .line 24
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_0:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p4

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    .line 25
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p5

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    .line 26
    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_05:I

    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p6

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    .line 27
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p7

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    .line 28
    invoke-direct/range {p2 .. p9}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;-><init>(FFFFFIF)V

    return-void
.end method

.method public static final synthetic access$getClearPaint$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->i:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getFillPaint$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->a:F

    return p0
.end method

.method public static final synthetic access$getRoundRectRadius$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->b:F

    return p0
.end method


# virtual methods
.method public final createDragDropShadow(Landroid/view/View;)Landroid/view/View$DragShadowBuilder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sourceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)V

    return-object v0
.end method
