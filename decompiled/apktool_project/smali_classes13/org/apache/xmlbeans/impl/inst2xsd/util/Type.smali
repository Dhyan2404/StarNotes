.class public Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMPLEX_TYPE_COMPLEX_CONTENT:I = 0x3

.field public static final COMPLEX_TYPE_EMPTY_CONTENT:I = 0x5

.field public static final COMPLEX_TYPE_MIXED_CONTENT:I = 0x4

.field public static final COMPLEX_TYPE_SIMPLE_CONTENT:I = 0x2

.field public static final PARTICLE_CHOICE_UNBOUNDED:I = 0x2

.field public static final PARTICLE_SEQUENCE:I = 0x1

.field public static final SIMPLE_TYPE_SIMPLE_CONTENT:I = 0x1


# instance fields
.field private _acceptsEnumerationValue:Z

.field private _attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private _elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;",
            ">;"
        }
    .end annotation
.end field

.field private _enumerationQNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private _enumerationValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

.field private _isGlobal:Z

.field private _kind:I

.field private _name:Ljavax/xml/namespace/QName;

.field private _topParticleForComplexOrMixedContent:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    return-void
.end method

.method public static createNamedType(Ljavax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    return-object v0
.end method

.method public static createUnnamedType(I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    return-object v0
.end method

.method private ensureAttributes()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureElements()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureEnumerationValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEnumerationsFrom(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationQNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureAttributes()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEnumerationValue(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/jvl;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/jvl;-><init>(Lorg/apache/xmlbeans/XmlCursor;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Ljavax/xml/namespace/QName;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeEnumeration()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    return-void
.end method

.method public getAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;
    .locals 2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureAttributes()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    return-object p0
.end method

.method public getContentType()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    return p0
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    return-object p0
.end method

.method public getEnumerationQNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    return-object p0
.end method

.method public getEnumerationValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    return-object p0
.end method

.method public getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getTopParticleForComplexOrMixedContent()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    return p0
.end method

.method public hasSimpleContent()Z
    .locals 2

    iget p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isComplexType()Z
    .locals 1

    iget p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEnumeration()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobal()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    return p0
.end method

.method public isQNameEnumeration()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isEnumeration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContentType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setExtensionType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-void
.end method

.method public setGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public setTopParticleForComplexOrMixedContent(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type{_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _extensionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _kind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", _elements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
