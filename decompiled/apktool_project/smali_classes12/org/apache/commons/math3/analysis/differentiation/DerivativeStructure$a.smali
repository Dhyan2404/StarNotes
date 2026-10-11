.class public Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public b()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->e:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result p0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->a()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/math3/FieldElement<",
            "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
            ">;>;"
        }
    .end annotation

    const-class p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    return-object p0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;->b()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method
