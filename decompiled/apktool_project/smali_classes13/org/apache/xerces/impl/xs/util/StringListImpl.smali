.class public final Lorg/apache/xerces/impl/xs/util/StringListImpl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/StringList;


# static fields
.field public static final EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;


# instance fields
.field public final e:[Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    move p1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-lt p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_1
    iget v3, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-lt v2, v3, :cond_4

    :goto_2
    return v0

    :cond_4
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
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

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    return p0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/util/StringListImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/StringListImpl;->a([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/util/StringListImpl;->a([Ljava/lang/Object;)V

    array-length v0, p1

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->f:I

    if-le v0, p0, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_2
    return-object p1
.end method
