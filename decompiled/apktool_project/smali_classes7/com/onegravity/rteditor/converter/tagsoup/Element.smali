.class public Lcom/onegravity/rteditor/converter/tagsoup/Element;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

.field public b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

.field public c:Lcom/onegravity/rteditor/converter/tagsoup/Element;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-direct {p1}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->c:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->d:Z

    return-void
.end method


# virtual methods
.method public anonymize()V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->removeAttribute(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public atts()Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    return-object p0
.end method

.method public canContain(Lcom/onegravity/rteditor/converter/tagsoup/Element;)Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    iget-object p1, p1, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->canContain(Lcom/onegravity/rteditor/converter/tagsoup/ElementType;)Z

    move-result p0

    return p0
.end method

.method public clean()V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v2, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;->removeAttribute(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public flags()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->flags()I

    move-result p0

    return p0
.end method

.method public isPreclosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->d:Z

    return p0
.end method

.method public localName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->localName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public memberOf()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->memberOf()I

    move-result p0

    return p0
.end method

.method public model()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->model()I

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public namespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->namespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Lcom/onegravity/rteditor/converter/tagsoup/Element;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->c:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    return-object p0
.end method

.method public parent()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->parent()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    move-result-object p0

    return-object p0
.end method

.method public preclose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->d:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->b:Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/ElementType;->setAttribute(Lcom/onegravity/rteditor/converter/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNext(Lcom/onegravity/rteditor/converter/tagsoup/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->c:Lcom/onegravity/rteditor/converter/tagsoup/Element;

    return-void
.end method

.method public type()Lcom/onegravity/rteditor/converter/tagsoup/ElementType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/Element;->a:Lcom/onegravity/rteditor/converter/tagsoup/ElementType;

    return-object p0
.end method
