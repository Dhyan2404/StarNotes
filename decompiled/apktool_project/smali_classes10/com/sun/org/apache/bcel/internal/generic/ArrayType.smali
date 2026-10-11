.class public final Lcom/sun/org/apache/bcel/internal/generic/ArrayType;
.super Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;
.source "SourceFile"


# instance fields
.field private basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

.field private dimensions:I


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;->getType(B)Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V
    .locals 3

    const-string v0, "<dummy>"

    const/16 v1, 0xd

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0xff

    if-gt p2, v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    .line 5
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    .line 8
    iget v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    .line 9
    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    .line 10
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 11
    :goto_1
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    if-ge p2, v0, :cond_1

    const/16 v0, 0x5b

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->signature:Ljava/lang/String;

    return-void

    .line 15
    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Invalid type: void[]"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid number of dimensions: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    iget v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public getDimensions()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    return p0
.end method

.method public getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0

    :cond_0
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    sub-int/2addr v0, v1

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-object v2
.end method

.method public hashcode()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->basic_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->dimensions:I

    xor-int/2addr p0, v0

    return p0
.end method
