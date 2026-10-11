.class public Lcom/sunia/HTREnginev2/u0;
.super Lcom/sunia/HTREnginev2/k;
.source "SourceFile"


# instance fields
.field public final e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u0;->e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/u0;->e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "placeholder"

    return-object p0
.end method
