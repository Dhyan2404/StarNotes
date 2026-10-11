.class public Lorg/apache/xerces/stax/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:Z

.field public final synthetic f:Lorg/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/stax/DefaultNamespaceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/stax/a;->f:Lorg/apache/xerces/stax/DefaultNamespaceContext;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/stax/a;->e:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/stax/a;->e:Z

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/stax/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/stax/a;->e:Z

    const-string p0, "xml"

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
