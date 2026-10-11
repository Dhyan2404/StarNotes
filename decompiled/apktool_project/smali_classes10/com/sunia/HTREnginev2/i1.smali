.class public Lcom/sunia/HTREnginev2/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/sunia/HTREnginev2/k1;


# direct methods
.method public constructor <init>(FLcom/sunia/HTREnginev2/k1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/sunia/HTREnginev2/i1;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/sunia/HTREnginev2/i1;->d:Lcom/sunia/HTREnginev2/k1;

    .line 4
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i1;->a:Landroid/graphics/Paint;

    .line 5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i1;->b:Landroid/graphics/Paint;

    .line 8
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p0, -0x777778

    .line 9
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 11
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p0, 0x41900000    # 18.0f

    .line 13
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Lcom/sunia/HTREnginev2/k1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sunia/HTREnginev2/i1;->a:Landroid/graphics/Paint;

    .line 16
    iput-object p2, p0, Lcom/sunia/HTREnginev2/i1;->b:Landroid/graphics/Paint;

    .line 17
    iput-object p3, p0, Lcom/sunia/HTREnginev2/i1;->c:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/sunia/HTREnginev2/i1;->d:Lcom/sunia/HTREnginev2/k1;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/i1;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public a(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/HTREnginev2/i1;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/i1;->d:Lcom/sunia/HTREnginev2/k1;

    invoke-virtual {v0, p1, p0}, Lcom/sunia/HTREnginev2/k1;->b(Ljava/lang/String;Lcom/sunia/HTREnginev2/i1;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i1;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i1;->c:Ljava/lang/String;

    return-object p0
.end method
