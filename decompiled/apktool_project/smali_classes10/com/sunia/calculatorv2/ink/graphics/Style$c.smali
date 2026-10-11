.class public Lcom/sunia/calculatorv2/ink/graphics/Style$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/calculatorv2/ink/graphics/Style;->createStrokeDashProperty([FF)Lcom/sunia/HTREnginev2/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:F


# direct methods
.method public constructor <init>([FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;->a:[F

    iput p2, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/p;
    .locals 0

    .line 1
    sget-object p0, Lcom/sunia/HTREnginev2/p;->d:Lcom/sunia/HTREnginev2/p;

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/i1;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;->a:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;->a:[F

    iget p0, p0, Lcom/sunia/calculatorv2/ink/graphics/Style$c;->b:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
