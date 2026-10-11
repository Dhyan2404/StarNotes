.class public final Lorg/apache/xerces/impl/xs/util/ShortListImpl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/ShortList;


# static fields
.field public static final EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/ShortListImpl;


# instance fields
.field public final e:[S

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    const/4 v1, 0x0

    new-array v2, v1, [S

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    sput-object v0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    return-void
.end method

.method public constructor <init>([SI)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->e:[S

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    return-void
.end method


# virtual methods
.method public contains(S)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->e:[S

    aget-short v2, v2, v1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/apache/xerces/xs/ShortList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/apache/xerces/xs/ShortList;

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    invoke-interface {p1}, Lorg/apache/xerces/xs/ShortList;->getLength()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    if-lt v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->e:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v1}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/Short;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->e:[S

    aget-short p0, p0, p1

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    return p0
.end method

.method public item(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->f:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->e:[S

    aget-short p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Lorg/apache/xerces/xs/XSException;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->getLength()I

    move-result p0

    return p0
.end method
