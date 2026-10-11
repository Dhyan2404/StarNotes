.class public final Lcom/sunia/HTREnginev2/fxm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/fxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public e:Ljavax/xml/namespace/NamespaceContext;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/sunia/HTREnginev2/fxm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/fxm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm$b;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/fxm;->q(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm$b;->e:Ljavax/xml/namespace/NamespaceContext;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sunia/HTREnginev2/fxm$b;->f:I

    iput p2, p0, Lcom/sunia/HTREnginev2/fxm$b;->g:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/fxm$b;->f:I

    iget v1, p0, Lcom/sunia/HTREnginev2/fxm$b;->g:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fxm$b;->e:Ljavax/xml/namespace/NamespaceContext;

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fxm$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm$b;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/fxm;->q(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/fxm$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/fxm$b;->f:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fxm$b;->e:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {v1, v0}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fxm$b;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fxm;->p(Lcom/sunia/HTREnginev2/fxm;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object p0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {p0, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object p0

    return-object p0

    :cond_3
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
