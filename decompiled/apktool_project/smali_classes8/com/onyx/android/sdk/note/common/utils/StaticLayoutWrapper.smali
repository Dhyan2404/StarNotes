.class public Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000c\n\u0002\u0008\u001f\u0008\u0016\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0007\u00a2\u0006\u0004\u0008[\u0010\\J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0002JF\u0010\u0013\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u001e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u000eJ\u0010\u0010#\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0006\u0010%\u001a\u00020\nJ\u000e\u0010\'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0018\u0010*\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\n2\u0006\u0010)\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016J\u0010\u0010,\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016J\u000e\u0010-\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0010\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\nH\u0016J\u000e\u00100\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\nJ\u0008\u00101\u001a\u0004\u0018\u00010\u0006J\u0010\u00102\u001a\u00020\n2\u0006\u0010.\u001a\u00020\nH\u0016J\u0018\u00104\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n2\u0006\u00103\u001a\u00020\u000eH\u0016J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000eJ\u0006\u00106\u001a\u00020\u000eJ\u0010\u00107\u001a\u00020\u001a2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u00108\u001a\u00020\u001a2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u000e\u0010:\u001a\u00020\u001a2\u0006\u00109\u001a\u00020\u000eJ\u0010\u0010;\u001a\u00020\u001a2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010<\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010=\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010>\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010A\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020?J\u0006\u0010B\u001a\u00020\u000eJ\u0006\u0010C\u001a\u00020\u000eJ\u000e\u0010D\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\nJ\u0010\u0010F\u001a\u00020\u00112\u0006\u0010E\u001a\u00020?H\u0016R\u0014\u0010I\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0014\u0010K\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008J\u0010HR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010LR\u0016\u0010O\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u00109\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010NR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010NR\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010NR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;",
        "",
        "Landroid/text/StaticLayout;",
        "layout",
        "setLayout",
        "getLayout",
        "",
        "source",
        "Landroid/text/TextPaint;",
        "paint",
        "",
        "widthInt",
        "Landroid/text/Layout$Alignment;",
        "align",
        "",
        "spacingmult",
        "spacingadd",
        "",
        "includepad",
        "createStaticLayout",
        "getWidth",
        "getHeight",
        "Landroid/graphics/Canvas;",
        "canvas",
        "scaleX",
        "scaleY",
        "",
        "draw",
        "Landroid/graphics/Matrix;",
        "matrix",
        "updateFactor",
        "textSize",
        "setTextSize",
        "",
        "content",
        "measureText",
        "textPaint",
        "getLineCount",
        "line",
        "getLineBaseline",
        "Landroid/graphics/RectF;",
        "bounds",
        "getLineBounds",
        "getLineStart",
        "getLineEnd",
        "getLineDescent",
        "offset",
        "getPrimaryHorizontal",
        "getSecondaryHorizontal",
        "getText",
        "getLineForOffset",
        "horiz",
        "getOffsetForHorizontal",
        "scale",
        "getFactor",
        "setSource",
        "setPaint",
        "width",
        "setWidth",
        "setAlign",
        "setSpacingmult",
        "setSpacingadd",
        "setIncludepad",
        "",
        "c",
        "getFontWidth",
        "getBaseLineHeight",
        "getDescentHeight",
        "getLineHeight",
        "ch",
        "needRotate",
        "a",
        "I",
        "DEFAULT_FACTOR_NORMAL",
        "b",
        "DEFAULT_FACTOR_LITTLE",
        "Landroid/text/StaticLayout;",
        "d",
        "F",
        "factor",
        "e",
        "Ljava/lang/CharSequence;",
        "f",
        "Landroid/text/TextPaint;",
        "g",
        "h",
        "Landroid/text/Layout$Alignment;",
        "i",
        "j",
        "k",
        "Z",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/text/StaticLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:F

.field public e:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:F

.field public h:Landroid/text/Layout$Alignment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:F

.field public j:F

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->Companion:Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->a:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    return-void
.end method


# virtual methods
.method public createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)Landroid/text/StaticLayout;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/text/StaticLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p0
.end method

.method public final draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getBaseLineHeight()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    const/4 v1, 0x0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getDescentHeight()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method public final getFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    return p0
.end method

.method public final getFontWidth(C)F
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    aget p1, v0, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr v0, p0

    return v0
.end method

.method public final getLayout()Landroid/text/StaticLayout;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->c:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->g:F

    iget v1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v4, v0

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->e:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->h:Landroid/text/Layout$Alignment;

    iget v6, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->i:F

    iget v7, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->j:F

    iget-boolean v8, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->k:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->c:Landroid/text/StaticLayout;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->c:Landroid/text/StaticLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLineBaseline(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public getLineBounds(ILandroid/graphics/RectF;)F
    .locals 4
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    sget-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr v1, v3

    invoke-virtual {v0, p2, v2, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->scale(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final getLineCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method public final getLineDescent(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public getLineEnd(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    return p0
.end method

.method public getLineForOffset(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    return p0
.end method

.method public final getLineHeight(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getFactor()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getLineStart(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p0

    return p0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    mul-float/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final getSecondaryHorizontal(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p1

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr v0, p0

    return v0
.end method

.method public final measureText(Landroid/text/TextPaint;Ljava/lang/String;)F
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 3
    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    div-float/2addr p1, p0

    return p1
.end method

.method public final measureText(Ljava/lang/String;)F
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "getPaint(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->measureText(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public needRotate(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlign(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->h:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public final setIncludepad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->k:Z

    return-void
.end method

.method public final setLayout(Landroid/text/StaticLayout;)Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;
    .locals 0
    .param p1    # Landroid/text/StaticLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->c:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public final setPaint(Landroid/text/TextPaint;)V
    .locals 0
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->f:Landroid/text/TextPaint;

    return-void
.end method

.method public final setSource(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setSpacingadd(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->j:F

    return-void
.end method

.method public final setSpacingmult(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->i:F

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->getLayout()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->g:F

    return-void
.end method

.method public final updateFactor(F)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 4
    iget p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->b:I

    int-to-float p1, p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->d:F

    :cond_0
    return-void
.end method

.method public final updateFactor(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;->updateFactor(F)V

    return-void
.end method
