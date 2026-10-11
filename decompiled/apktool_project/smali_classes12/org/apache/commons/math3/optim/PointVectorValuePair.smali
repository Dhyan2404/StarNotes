.class public Lorg/apache/commons/math3/optim/PointVectorValuePair;
.super Lorg/apache/commons/math3/util/Pair;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/util/Pair<",
        "[D[D>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# direct methods
.method public constructor <init>([D[D)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    return-void
.end method

.method public constructor <init>([D[DZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValue()[D

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;-><init>([D[D)V

    return-object v0
.end method


# virtual methods
.method public getPoint()[D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getPointRef()[D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointVectorValuePair;->getValue()[D

    move-result-object p0

    return-object p0
.end method

.method public getValue()[D
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getValueRef()[D
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method
