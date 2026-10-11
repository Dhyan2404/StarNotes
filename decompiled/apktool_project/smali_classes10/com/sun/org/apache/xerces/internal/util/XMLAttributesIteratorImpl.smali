.class public Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;
.super Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected fCurrent:I

.field protected fLastReturnedItem:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->fAttributes:[Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAttributeAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public removeAllAttributes()V
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAllAttributes()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->fCurrent:I

    return-void
.end method
