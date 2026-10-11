.class public Lorg/apache/commons/math3/util/BigRealField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/BigRealField$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42023cdab7cf97f7L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/util/BigRealField$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/util/BigRealField;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/util/BigRealField;
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField$b;->a()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField$b;->a()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigRealField;->getOne()Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public getOne()Lorg/apache/commons/math3/util/BigReal;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/util/BigReal;->ONE:Lorg/apache/commons/math3/util/BigReal;

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
            "Lorg/apache/commons/math3/util/BigReal;",
            ">;>;"
        }
    .end annotation

    const-class p0, Lorg/apache/commons/math3/util/BigReal;

    return-object p0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigRealField;->getZero()Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public getZero()Lorg/apache/commons/math3/util/BigReal;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/util/BigReal;->ZERO:Lorg/apache/commons/math3/util/BigReal;

    return-object p0
.end method
