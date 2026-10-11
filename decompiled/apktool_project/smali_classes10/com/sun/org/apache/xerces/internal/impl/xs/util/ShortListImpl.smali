.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/ShortList;


# instance fields
.field private fArray:[S

.field private fLength:I


# direct methods
.method public constructor <init>([SI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fArray:[S

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    return-void
.end method


# virtual methods
.method public contains(S)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    return p0
.end method

.method public item(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xs/XSException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fLength:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;->fArray:[S

    aget-short p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xs/XSException;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xs/XSException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
