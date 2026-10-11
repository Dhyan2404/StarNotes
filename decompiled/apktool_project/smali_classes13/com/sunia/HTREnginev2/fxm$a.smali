.class public final Lcom/sunia/HTREnginev2/fxm$a;
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
    name = "a"
.end annotation


# instance fields
.field public e:Lorg/apache/xerces/xni/XMLAttributes;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/sunia/HTREnginev2/fxm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/fxm;Lorg/apache/xerces/xni/XMLAttributes;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fxm$a;->e:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sunia/HTREnginev2/fxm$a;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/fxm$a;->g:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/fxm$a;->f:I

    iget v1, p0, Lcom/sunia/HTREnginev2/fxm$a;->g:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/fxm$a;->e:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fxm$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm$a;->e:Lorg/apache/xerces/xni/XMLAttributes;

    iget v1, p0, Lcom/sunia/HTREnginev2/fxm$a;->f:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/fxm;->o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/fxm;->p(Lcom/sunia/HTREnginev2/fxm;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/fxm;->o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/fxm;->o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/fxm;->o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/fxm$a;->h:Lcom/sunia/HTREnginev2/fxm;

    invoke-static {v3}, Lcom/sunia/HTREnginev2/fxm;->o(Lcom/sunia/HTREnginev2/fxm;)Lorg/apache/xerces/xni/QName;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/fxm$a;->e:Lorg/apache/xerces/xni/XMLAttributes;

    iget v5, p0, Lcom/sunia/HTREnginev2/fxm$a;->f:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sunia/HTREnginev2/fxm$a;->f:I

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object p0

    return-object p0

    :cond_1
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
