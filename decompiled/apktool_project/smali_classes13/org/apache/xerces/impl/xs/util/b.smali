.class public Lorg/apache/xerces/impl/xs/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public final synthetic f:Lorg/apache/xerces/impl/xs/util/a;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/util/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/b;->f:Lorg/apache/xerces/impl/xs/util/a;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/xs/util/b;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/b;->e:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/b;->f:Lorg/apache/xerces/impl/xs/util/a;

    invoke-static {p0}, Lorg/apache/xerces/impl/xs/util/a;->a(Lorg/apache/xerces/impl/xs/util/a;)I

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

    iget v0, p0, Lorg/apache/xerces/impl/xs/util/b;->e:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/util/b;->f:Lorg/apache/xerces/impl/xs/util/a;

    invoke-static {v1}, Lorg/apache/xerces/impl/xs/util/a;->a(Lorg/apache/xerces/impl/xs/util/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/util/b;->f:Lorg/apache/xerces/impl/xs/util/a;

    invoke-static {v0}, Lorg/apache/xerces/impl/xs/util/a;->b(Lorg/apache/xerces/impl/xs/util/a;)[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;

    move-result-object v0

    iget v1, p0, Lorg/apache/xerces/impl/xs/util/b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/util/b;->e:I

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
