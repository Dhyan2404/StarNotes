.class final Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanStack"
.end annotation


# instance fields
.field private fData:[Z

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    if-nez v0, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-gt v1, p1, :cond_1

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Z

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    return-void
.end method

.method public pop()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    aget-boolean p0, v0, v1

    return p0
.end method

.method public push(Z)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    return p0
.end method
