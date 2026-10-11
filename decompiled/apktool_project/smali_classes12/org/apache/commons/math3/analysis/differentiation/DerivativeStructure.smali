.class public Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133049aL


# instance fields
.field private transient compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

.field private final data:[D


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 10
    iget-object v3, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 11
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v4, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 12
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v9, 0x0

    iget-object v12, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v13, 0x0

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v15, 0x0

    move-wide/from16 v6, p1

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v15}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DI[DI)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    .line 13
    iget-object v4, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 14
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v5, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 15
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v5, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 16
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v9, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v10, 0x0

    iget-object v13, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v14, 0x0

    iget-object v1, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/16 v18, 0x0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/16 v20, 0x0

    move-wide/from16 v7, p1

    move-wide/from16 v11, p4

    move-wide/from16 v15, p7

    move-object/from16 v17, v1

    move-object/from16 v19, v0

    invoke-virtual/range {v6 .. v20}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DID[DI[DI)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    move-wide/from16 v6, p1

    move-wide/from16 v10, p4

    move-wide/from16 v14, p7

    move-wide/from16 v18, p10

    .line 17
    iget-object v5, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 18
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 19
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 20
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 21
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v8, v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v9, 0x0

    iget-object v12, v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v13, 0x0

    iget-object v1, v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    move-object/from16 v16, v1

    const/16 v17, 0x0

    iget-object v1, v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    move-object/from16 v20, v1

    const/16 v21, 0x0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v5 .. v23}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->linearCombination(D[DID[DID[DID[DI[DI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II)V

    .line 6
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 p1, 0x0

    aput-wide p3, p0, p1

    return-void
.end method

.method public constructor <init>(IIID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    if-ge p3, p1, :cond_1

    if-lez p2, :cond_0

    .line 8
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {p3, p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    aput-wide p2, p0, p1

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public varargs constructor <init>(II[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II)V

    .line 23
    array-length p1, p3

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v0, p2

    if-ne p1, v0, :cond_0

    .line 24
    array-length p0, p2

    const/4 p1, 0x0

    invoke-static {p3, p1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length p0, p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method private constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 28
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    return-object p0
.end method

.method public static atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public static hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public static pow(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9

    .line 4
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 5
    iget-object v2, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v5, p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    move-wide v3, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow(D[DI[DI)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$DataTransferObject;-><init>(II[D)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->acos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public acos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->acos([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->acosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public acosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->acosh([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 4
    iget-object p0, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    add-double/2addr v2, p1

    aput-wide v2, p0, v1

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 6
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->asin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public asin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->asin([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->asinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public asinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->asinh([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public atan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public atan2(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan2([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->atanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public atanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atanh([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public cbrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->ceil()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public ceil()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public varargs compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->copySign(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->copySign(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public copySign(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public copySign(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 4
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v0, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public cos()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->cos([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->cosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public cosh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->cosh([DI[DI)V

    return-object v0
.end method

.method public createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->divide(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->divide(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public divide(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    const/4 p0, 0x0

    .line 4
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v1

    if-ge p0, v2, :cond_0

    .line 5
    aget-wide v2, v1, p0

    div-double/2addr v2, p1

    aput-wide v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 7
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->equals([D[D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public exp()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->expm1()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public expm1()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->expm1([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->floor()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public floor()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public getAllDerivatives()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getExponent()I
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result p0

    return p0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$a;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    return-object v0
.end method

.method public getFreeParameters()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result p0

    return p0
.end method

.method public getOrder()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result p0

    return p0
.end method

.method public varargs getPartialDerivative([I)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex([I)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public getReal()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe5

    add-int/lit16 v0, v0, 0xe3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe9

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result p0

    mul-int/lit16 p0, p0, 0xef

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public hypot(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getExponent()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getExponent()I

    move-result v1

    add-int/lit8 v2, v1, 0x1b

    if-le v0, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v0, 0x1b

    if-le v1, v2, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->abs()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    .line 9
    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    .line 10
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    :goto_0
    new-instance p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result p0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p1, v0, p0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object p1

    .line 15
    :cond_5
    :goto_1
    new-instance p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result p0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p1, v0, p0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p12, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p7, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p8, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 7
    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 8
    check-cast p1, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->linearCombination([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 37
    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    move-wide v0, p1

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    .line 38
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object p1

    const/4 p2, 0x0

    .line 40
    aput-wide v0, p1, p2

    .line 41
    new-instance p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    invoke-direct {p2, p3, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object p2
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 47
    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    move-wide v0, p1

    move-wide/from16 v4, p4

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    move-wide v2, p1

    move-object v4, p3

    .line 48
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    aput-wide v0, v2, v3

    .line 51
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;DLorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 57
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p9 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-virtual/range {p12 .. p12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    move-wide/from16 v0, p1

    move-wide/from16 v4, p4

    move-wide/from16 v8, p7

    move-wide/from16 v12, p10

    invoke-static/range {v0 .. v15}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    .line 58
    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    move-wide/from16 v3, p10

    move-object/from16 v5, p12

    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v2

    const/4 v3, 0x0

    .line 60
    aput-wide v0, v2, v3

    .line 61
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual {p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    .line 33
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    aput-wide v0, p1, p2

    .line 36
    new-instance p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result p3

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    invoke-direct {p2, p3, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object p2
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual {p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    .line 43
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v2

    const/4 v3, 0x0

    .line 45
    aput-wide v0, v2, v3

    .line 46
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v10

    invoke-virtual/range {p7 .. p7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v12

    invoke-virtual/range {p8 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v14

    invoke-static/range {v0 .. v15}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v0

    .line 53
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    invoke-virtual/range {p7 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v2

    const/4 v3, 0x0

    .line 55
    aput-wide v0, v2, v3

    .line 56
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 22
    array-length p0, p2

    new-array p0, p0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 23
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 24
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v1

    .line 26
    aget-object p0, p2, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v3, v0

    .line 27
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 28
    aget-object v4, p2, v3

    aget-wide v5, p1, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object p1

    .line 30
    aput-wide v1, p1, v0

    .line 31
    new-instance p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    invoke-direct {p2, v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object p2
.end method

.method public linearCombination([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 9
    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 10
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 11
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    array-length v1, p2

    new-array v1, v1, [D

    move v2, v0

    .line 13
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 14
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p0, v1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v1

    .line 16
    aget-object p0, p1, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v3, v0

    .line 17
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 18
    aget-object v4, p1, v3

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object p1

    .line 20
    aput-wide v1, p1, v0

    .line 21
    new-instance p2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p0

    invoke-direct {p2, v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object p2
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->log()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public log()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    return-object v0
.end method

.method public log10()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log10([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->log1p()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public log1p()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log1p([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 5
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    const/4 p0, 0x0

    .line 6
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v2, v1

    if-ge p0, v2, :cond_0

    .line 7
    aget-wide v2, v1, p0

    mul-double/2addr v2, p1

    aput-wide v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 2

    int-to-double v0, p1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 9
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 10
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->pow(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public pow(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9

    .line 6
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DID[DI)V

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8

    .line 8
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 9
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 11
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 12
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public reciprocal()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->remainder(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->remainder(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public remainder(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 4
    iget-object p0, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide p1

    aput-wide p1, p0, v1

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 6
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->remainder([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rint()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public rint()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v4, 0x0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    return-object v0
.end method

.method public round()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public scalb(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->signum()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public signum()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public sin()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sin([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public sinh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sinh([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public sqrt()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0

    neg-double p1, p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 5
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->tan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public tan()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->tan([DI[DI)V

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->tanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method public tanh()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    .line 3
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    invoke-virtual {v1, p0, v2, v3, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->tanh([DI[DI)V

    return-object v0
.end method

.method public varargs taylor([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->taylor([DI[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public toDegrees()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toRadians()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
