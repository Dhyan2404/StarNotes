.class public Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$a;->e:Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0
.end method

.method public b()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$a;->a()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

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
            "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
            ">;>;"
        }
    .end annotation

    const-class p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    return-object p0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$a;->b()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0
.end method
