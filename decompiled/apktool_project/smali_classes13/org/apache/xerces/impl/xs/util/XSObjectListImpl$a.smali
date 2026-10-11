.class public final Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-static {p0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->a(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrevious()Z
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-static {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->a(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->b(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->f:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->b(Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)[Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl$a;->e:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
