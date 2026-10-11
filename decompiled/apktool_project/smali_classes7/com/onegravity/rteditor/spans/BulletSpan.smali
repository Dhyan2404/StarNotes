.class public Lcom/onegravity/rteditor/spans/BulletSpan;
.super Lcom/sunia/HTREnginev2/rn;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Lcom/onegravity/rteditor/spans/RTSpan;
.implements Lcom/onegravity/rteditor/spans/RTParagraphSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/rn;",
        "Landroid/text/style/LeadingMarginSpan;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static g:Landroid/graphics/Path;


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/rn;-><init>()V

    .line 7
    iput p1, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->e:I

    .line 8
    iput-boolean p2, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->f:Z

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/rn;-><init>()V

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->e:I

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->f:Z

    .line 4
    sget-object p0, Lcom/onegravity/rteditor/spans/BulletSpan;->g:Landroid/graphics/Path;

    if-nez p0, :cond_1

    .line 5
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    sput-object p0, Lcom/onegravity/rteditor/spans/BulletSpan;->g:Landroid/graphics/Path;

    :cond_1
    return-void
.end method


# virtual methods
.method public createClone()Lcom/onegravity/rteditor/spans/BulletSpan;
    .locals 2

    .line 2
    new-instance v0, Lcom/onegravity/rteditor/spans/BulletSpan;

    iget v1, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->e:I

    iget-boolean p0, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->f:Z

    invoke-direct {v0, v1, p0}, Lcom/onegravity/rteditor/spans/BulletSpan;-><init>(IZ)V

    return-object v0
.end method

.method public bridge synthetic createClone()Lcom/onegravity/rteditor/spans/RTParagraphSpan;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/BulletSpan;->createClone()Lcom/onegravity/rteditor/spans/BulletSpan;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 3

    sget-object p0, Lcom/onegravity/rteditor/spans/BulletSpan;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    sget-object p0, Lcom/onegravity/rteditor/spans/BulletSpan;->g:Landroid/graphics/Path;

    int-to-float v0, p7

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/2addr p4, p7

    add-int/2addr p3, p4

    int-to-float p0, p3

    add-int/2addr p5, p6

    int-to-float p3, p5

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object p0, Lcom/onegravity/rteditor/spans/BulletSpan;->g:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 10

    move-object v0, p0

    move-object v8, p2

    move/from16 v1, p9

    move-object/from16 v2, p8

    check-cast v2, Landroid/text/Spanned;

    iget-boolean v3, v0, Lcom/onegravity/rteditor/spans/BulletSpan;->f:Z

    if-nez v3, :cond_0

    invoke-interface {v2, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    move/from16 v4, p10

    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/sunia/HTREnginev2/rn;->a(Landroid/text/Spanned;IIF)F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/onegravity/rteditor/spans/BulletSpan;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget-boolean p1, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->f:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/onegravity/rteditor/spans/BulletSpan;->e:I

    :goto_0
    return p0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/BulletSpan;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
