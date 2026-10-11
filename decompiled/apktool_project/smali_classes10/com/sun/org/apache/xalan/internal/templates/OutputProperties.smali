.class public Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x60cd2713ce100890L


# instance fields
.field private m_properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "xml"

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 7
    new-instance v0, Ljava/util/Properties;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public static getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;
    .locals 7

    .line 3
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 4
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 8
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/QName;->getQNameFromString(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v5

    .line 11
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->reset()V

    goto :goto_2

    :cond_0
    const/16 v6, 0x7b

    if-ne v6, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x7d

    if-ne v6, v5, :cond_2

    move v4, v2

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(C)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getQNameFromString(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->reset()V

    :cond_5
    return-object p1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getQNameFromString(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLegalPropertyKey(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "cdata-section-elements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "media-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "standalone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne v2, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public copyFrom(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    return-void
.end method

.method public copyFrom(Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    return-void
.end method

.method public copyFrom(Ljava/util/Properties;Z)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v3, "method"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "cdata-section-elements"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public getBooleanProperty(Lcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getBooleanProperty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result p0

    return p0
.end method

.method public getIntProperty(Lcom/sun/org/apache/xml/internal/utils/QName;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getIntProperty(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    move-result p0

    return p0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-object p0
.end method

.method public getProperty(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "{http://xml.apache.org/xslt}"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQNameProperties(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/util/Vector;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getQNameProperty(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQNameProperty(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeOutput(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V

    return-void
.end method

.method public setBooleanProperty(Lcom/sun/org/apache/xml/internal/utils/QName;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    if-eqz p2, :cond_0

    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIntProperty(Lcom/sun/org/apache/xml/internal/utils/QName;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setIntProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setIntProperty(Ljava/lang/String;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMethodDefaults(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    :cond_1
    return-void
.end method

.method public setProperty(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "method"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    :cond_0
    const-string v0, "{http://xml.apache.org/xslt}"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setQNameProperties(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/util/Vector;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 3
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/utils/QName;

    .line 5
    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x20

    .line 6
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(C)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setQNameProperty(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/QName;)V

    return-void
.end method

.method public setQNameProperty(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
