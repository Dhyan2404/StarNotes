.class public Lcom/sunia/HTREnginev2/xzn$b;
.super Ljavax/xml/validation/TypeInfoProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/xzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/xni/Augmentations;

.field public b:Lorg/apache/xerces/xni/XMLAttributes;

.field public c:Z

.field public d:Z

.field public final synthetic e:Lcom/sunia/HTREnginev2/xzn;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/xzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/xml/validation/TypeInfoProvider;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn$b;->e:Lcom/sunia/HTREnginev2/xzn;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/xzn$b;->c:Z

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/xzn$b;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/xzn;Lcom/sunia/HTREnginev2/wzn;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;-><init>(Lcom/sunia/HTREnginev2/xzn;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->d:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public b(Lorg/apache/xerces/xni/Augmentations;Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->c:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->e:Lcom/sunia/HTREnginev2/xzn;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/xzn;->o(Lcom/sunia/HTREnginev2/xzn;)Lcom/sunia/HTREnginev2/tlo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "TypeInfoProviderIllegalStateAttribute"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->e:Lcom/sunia/HTREnginev2/xzn;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/xzn;->o(Lcom/sunia/HTREnginev2/xzn;)Lcom/sunia/HTREnginev2/tlo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "TypeInfoProviderIllegalStateElement"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public e(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/AttributePSVI;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/AttributePSVI;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public finishEndElement()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public finishStartElement()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method public g()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    if-eqz p0, :cond_0

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/ElementPSVI;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getAttributeType(I)Lorg/w3c/dom/TypeInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ATTRIBUTE_PSVI"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xs/AttributePSVI;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->h(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getElementTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->d()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$b;->a:Lorg/apache/xerces/xni/Augmentations;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "ELEMENT_PSVI"

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xs/ElementPSVI;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/xzn$b;->h(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getValidity()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of p1, v0, Lorg/w3c/dom/TypeInfo;

    if-eqz p1, :cond_1

    move-object p0, v0

    check-cast p0, Lorg/w3c/dom/TypeInfo;

    :cond_1
    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/w3c/dom/TypeInfo;

    if-eqz v0, :cond_3

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/TypeInfo;

    :cond_3
    return-object p0
.end method

.method public isIdAttribute(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$b;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result p0

    return p0
.end method

.method public isSpecified(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xzn$b;->c()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$b;->b:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0
.end method
