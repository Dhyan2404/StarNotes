.class public Lorg/apache/commons/math3/complex/ComplexField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/complex/ComplexField$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/complex/Complex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55136c62a451b03eL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/complex/ComplexField$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/complex/ComplexField;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/complex/ComplexField;
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField$b;->a()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField$b;->a()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexField;->getOne()Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public getOne()Lorg/apache/commons/math3/complex/Complex;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/complex/Complex;->ONE:Lorg/apache/commons/math3/complex/Complex;

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
            "Lorg/apache/commons/math3/complex/Complex;",
            ">;>;"
        }
    .end annotation

    const-class p0, Lorg/apache/commons/math3/complex/Complex;

    return-object p0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexField;->getZero()Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public getZero()Lorg/apache/commons/math3/complex/Complex;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object p0
.end method
