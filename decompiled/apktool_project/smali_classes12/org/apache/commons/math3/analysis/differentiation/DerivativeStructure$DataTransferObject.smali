.class Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133049aL


# instance fields
.field private final data:[D

.field private final order:I

.field private final variables:I


# direct methods
.method public constructor <init>(II[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->variables:I

    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->order:I

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->data:[D

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->variables:I

    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->order:I

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;->data:[D

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method
