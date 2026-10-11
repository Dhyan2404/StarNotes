.class public Lcom/onegravity/rteditor/media/crop/HighlightView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String; = "HighlightView"

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x4

.field public static final v:I = 0x8

.field public static final w:I = 0x10

.field public static final x:I = 0x20


# instance fields
.field public a:Landroid/view/View;

.field public b:Z

.field public c:Z

.field public d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/Matrix;

.field public i:Z

.field public j:F

.field public k:Z

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/graphics/drawable/Drawable;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->k:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->k:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v5, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float/2addr v3, v6

    add-float/2addr v4, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v5, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_b
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    const/16 v2, -0x7600

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    sget-object v1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Grow:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->k:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x3

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v10, v8

    iget-object v8, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v11, v1, v4

    sub-int v12, v10, v5

    add-int/2addr v1, v4

    add-int/2addr v10, v5

    invoke-virtual {v8, v11, v12, v1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v5, v2, v4

    add-int/2addr v2, v4

    invoke-virtual {v1, v5, v12, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v2, v9, v7

    sub-int v4, v3, v6

    add-int/2addr v9, v7

    add-int/2addr v3, v6

    invoke-virtual {v1, v2, v4, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v6

    add-int/2addr v0, v6

    invoke-virtual {v1, v2, v3, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public d(FF)I
    .locals 7

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->k:Z

    const/16 v2, 0x20

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v1, 0x2

    div-int/2addr p0, v1

    sub-int v5, v0, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p0, p0, v0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    cmpg-float p0, p2, v0

    if-gez p0, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x10

    goto/16 :goto_2

    :cond_1
    cmpg-float p0, p1, v0

    if-gez p0, :cond_2

    move v2, v1

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x4

    goto/16 :goto_2

    :cond_3
    if-ge v0, p0, :cond_4

    goto/16 :goto_2

    :cond_4
    move v2, v4

    goto/16 :goto_2

    :cond_5
    iget p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p0, v3

    cmpl-float p0, p2, p0

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    add-float/2addr p0, v3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_6

    move p0, v4

    goto :goto_0

    :cond_6
    move p0, v1

    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    sub-float/2addr v6, v3

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_7

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7

    move v1, v4

    :cond_7
    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_8

    if-eqz p0, :cond_8

    const/4 v5, 0x3

    goto :goto_1

    :cond_8
    move v5, v4

    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_9

    if-eqz p0, :cond_9

    or-int/lit8 v5, v5, 0x4

    :cond_9
    iget p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_a

    if-eqz v1, :cond_a

    or-int/lit8 v5, v5, 0x8

    :cond_a
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_b

    if-eqz v1, :cond_b

    or-int/lit8 v5, v5, 0x10

    :cond_b
    if-ne v5, v4, :cond_c

    float-to-int p0, p1

    float-to-int p1, p2

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :cond_c
    move v2, v5

    :goto_2
    return v2
.end method

.method public e()Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    return-object p0
.end method

.method public f(FF)V
    .locals 5

    iget-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    div-float p2, p1, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    mul-float/2addr p1, p2

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v2, p1, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, p1, v3

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    iget-boolean v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    if-eqz v2, :cond_2

    iget p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    div-float p2, p1, p2

    :cond_2
    cmpl-float v2, p2, v1

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v4, p2, v3

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr p2, v2

    div-float/2addr p2, v3

    iget-boolean v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    mul-float/2addr p1, p2

    :cond_3
    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x41c80000    # 25.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float p1, p2, p1

    neg-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4
    iget-boolean p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    div-float/2addr p2, p1

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_7

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_7
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_8

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_9

    sub-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    :cond_9
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_a

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public g(IFF)V
    .locals 4

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Lcom/onegravity/rteditor/media/crop/HighlightView;->k(FF)V

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p1, 0x6

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move p2, v3

    :cond_2
    and-int/lit8 v2, p1, 0x18

    if-nez v2, :cond_3

    move p3, v3

    :cond_3
    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr p2, v2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float/2addr p3, v2

    and-int/lit8 v0, p1, 0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    int-to-float p1, v1

    mul-float/2addr p1, p3

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/media/crop/HighlightView;->f(FF)V

    :goto_1
    return-void
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->b:Z

    return p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onegravity/rteditor/R$drawable;->camera_crop_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/onegravity/rteditor/R$drawable;->camera_crop_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/onegravity/rteditor/R$drawable;->indicator_autocrop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public k(FF)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/16 p1, -0xa

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->b:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->c:Z

    return-void
.end method

.method public n(Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public o(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p5, v0

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->h:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->f:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->i:Z

    iput-boolean p4, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->k:Z

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->g:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->j:F

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->a()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->e:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->o:Landroid/graphics/Paint;

    const/16 p2, 0x7d

    const/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/HighlightView;->d:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->i()V

    return-void
.end method
