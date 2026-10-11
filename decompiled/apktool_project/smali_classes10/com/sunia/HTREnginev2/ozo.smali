.class public final synthetic Lcom/sunia/HTREnginev2/ozo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ozo;->e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iput p2, p0, Lcom/sunia/HTREnginev2/ozo;->f:F

    iput p3, p0, Lcom/sunia/HTREnginev2/ozo;->g:F

    iput p4, p0, Lcom/sunia/HTREnginev2/ozo;->h:F

    iput p5, p0, Lcom/sunia/HTREnginev2/ozo;->i:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ozo;->e:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v1, p0, Lcom/sunia/HTREnginev2/ozo;->f:F

    iget v2, p0, Lcom/sunia/HTREnginev2/ozo;->g:F

    iget v3, p0, Lcom/sunia/HTREnginev2/ozo;->h:F

    iget v4, p0, Lcom/sunia/HTREnginev2/ozo;->i:F

    move-object v5, p1

    check-cast v5, Lcom/sunia/HTREnginev2/s1;

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/p1;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;FFFFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    return-object p0
.end method
