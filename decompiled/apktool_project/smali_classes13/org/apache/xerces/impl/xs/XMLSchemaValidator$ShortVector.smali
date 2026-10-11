.class public final Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortVector"
.end annotation


# instance fields
.field public a:I

.field public b:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [S

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    if-nez v0, :cond_0

    const/16 p1, 0x8

    new-array p1, p1, [S

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    :cond_1
    :goto_0
    return-void
.end method

.method public add(S)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a(I)V

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    iget v1, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    aput-short p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    return-void
.end method

.method public contains(S)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    aget-short v2, v2, v1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->a:I

    return p0
.end method

.method public valueAt(I)S
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->b:[S

    aget-short p0, p0, p1

    return p0
.end method
