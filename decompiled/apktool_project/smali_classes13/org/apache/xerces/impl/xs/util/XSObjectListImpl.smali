.class public Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSObjectList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;
    }
.end annotation


# static fields
.field public static final EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public static final g:Ljava/util/ListIterator;

.field public static final h:I = 0x4


# instance fields
.field public e:[Lorg/apache/xerces/xs/XSObject;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/xerces/xs/XSObject;

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    new-instance v0, Lorg/apache/xerces/impl/xs/util/c;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/util/c;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->g:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/xerces/xs/XSObject;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    return-void
.end method

.method public constructor <init>([Lorg/apache/xerces/xs/XSObject;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lorg/apache/xerces/xs/XSObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    return-object p0
.end method


# virtual methods
.method public addXSObject(ILorg/apache/xerces/xs/XSObject;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aput-object p2, p0, p1

    return-void
.end method

.method public addXSObject(Lorg/apache/xerces/xs/XSObject;)V
    .locals 4

    .line 2
    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x4

    new-array v2, v2, [Lorg/apache/xerces/xs/XSObject;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final c()Z
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clearXSObjectList()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    iput v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->d(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final e(I)Ljava/util/ListIterator;
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->g:Ljava/util/ListIterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;-><init>(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final g([Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aget-object p0, p0, p1

    return-object p0

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

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    return p0
.end method

.method public item(I)Lorg/apache/xerces/xs/XSObject;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e:[Lorg/apache/xerces/xs/XSObject;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .line 2
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->e(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0

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

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->g([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 2
    array-length v0, p1

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->g([Ljava/lang/Object;)V

    array-length v0, p1

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->f:I

    if-le v0, p0, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_1
    return-object p1
.end method
