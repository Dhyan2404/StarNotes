.class public abstract Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;
.super Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 6

    .line 3
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string p2, "http://apache.org/xml/features/internal/parser-settings"

    const-string v0, "http://xml.org/sax/features/validation"

    const-string v1, "http://xml.org/sax/features/namespaces"

    const-string v2, "http://xml.org/sax/features/external-general-entities"

    const-string v3, "http://xml.org/sax/features/external-parameter-entities"

    .line 9
    filled-new-array {p2, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 11
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "http://apache.org/xml/properties/internal/error-handler"

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v1, "http://xml.org/sax/properties/xml-string"

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 16
    filled-new-array {v1, v2, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 20
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-super {p0, v4, v5}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_4

    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-super {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public checkFeature(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1f

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    const-string v0, "internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method public checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "xml-string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public getDTDContentModelHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-object p0
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getEntityResolver()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    return-object p0
.end method

.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public abstract parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLastComponent:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    invoke-interface {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
