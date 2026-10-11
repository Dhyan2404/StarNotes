.class public abstract Lcom/sunia/HTREnginev2/bzo;
.super Lorg/jsoup/nodes/Node;
.source "SourceFile"


# static fields
.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/bzo;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzo;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    new-instance v1, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_0
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/bzo;->b()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzo;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzo;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/bzo;->b()V

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    :goto_0
    return-object p0
.end method

.method public final attributes()Lorg/jsoup/nodes/Attributes;
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/bzo;->b()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    check-cast p0, Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public childNodeSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public doClone(Lorg/jsoup/nodes/Node;)Lcom/sunia/HTREnginev2/bzo;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/bzo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzo;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    check-cast p0, Lorg/jsoup/nodes/Attributes;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object p0

    iput-object p0, p1, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/bzo;->doClone(Lorg/jsoup/nodes/Node;)Lcom/sunia/HTREnginev2/bzo;

    move-result-object p0

    return-object p0
.end method

.method public doSetBaseUri(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public empty()Lorg/jsoup/nodes/Node;
    .locals 0

    return-object p0
.end method

.method public ensureChildNodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/sunia/HTREnginev2/bzo;->n:Ljava/util/List;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/bzo;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/bzo;->b()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzo;->m:Ljava/lang/Object;

    instance-of p0, p0, Lorg/jsoup/nodes/Attributes;

    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/bzo;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/bzo;->b()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p0

    return-object p0
.end method
