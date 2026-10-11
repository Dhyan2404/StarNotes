.class public final Lorg/apache/xerces/impl/xs/util/LSInputListImpl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/LSInputList;


# static fields
.field public static final EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/LSInputListImpl;


# instance fields
.field public final e:[Lorg/w3c/dom/ls/LSInput;

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/w3c/dom/ls/LSInput;

    invoke-direct {v0, v2, v1}, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;-><init>([Lorg/w3c/dom/ls/LSInput;I)V

    sput-object v0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/LSInputListImpl;

    return-void
.end method

.method public constructor <init>([Lorg/w3c/dom/ls/LSInput;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->e:[Lorg/w3c/dom/ls/LSInput;

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->e:[Lorg/w3c/dom/ls/LSInput;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->e:[Lorg/w3c/dom/ls/LSInput;

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

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    return p0
.end method

.method public item(I)Lorg/w3c/dom/ls/LSInput;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->e:[Lorg/w3c/dom/ls/LSInput;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->a([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 2
    array-length v0, p1

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->a([Ljava/lang/Object;)V

    array-length v0, p1

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/LSInputListImpl;->f:I

    if-le v0, p0, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_1
    return-object p1
.end method
