.class public abstract Lcom/blankj/utilcode/util/SpanUtils$c;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3


# instance fields
.field public final e:I

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 5
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->e:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/blankj/utilcode/util/SpanUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/SpanUtils$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils$c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->f:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method

.method public abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int p4, p8, p6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p9

    if-ge p9, p4, :cond_3

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->e:I

    const/4 p4, 0x3

    if-ne p0, p4, :cond_0

    int-to-float p0, p6

    goto :goto_1

    :cond_0
    const/4 p4, 0x2

    if-ne p0, p4, :cond_1

    add-int/2addr p8, p6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p8, p0

    div-int/2addr p8, p4

    :goto_0
    int-to-float p0, p8

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    if-ne p0, p4, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p7, p0

    int-to-float p0, p7

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p8, p0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_3
    int-to-float p0, p6

    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p5, :cond_2

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$c;->e:I

    const/4 p3, 0x3

    if-ne p0, p3, :cond_0

    iget p0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p0, p2

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p0, p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    neg-int p0, p0

    div-int/2addr p0, p3

    div-int/lit8 p2, p2, 0x4

    sub-int/2addr p0, p2

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, p3

    sub-int/2addr p0, p2

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    neg-int p0, p0

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p0, p2

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_0
    iget p0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->right:I

    return p0
.end method
