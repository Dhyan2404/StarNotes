.class public Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field private static final INITIAL_SIZE:I = 0x8

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final XPOINTER_SCHEMA:Ljava/lang/String; = "http://apache.org/xml/properties/xpointer-schema"


# instance fields
.field private elemCount:I

.field fCurrentToken:I

.field fCurrentTokenString:Ljava/lang/String;

.field fCurrentTokenType:I

.field fCurrentTokenint:I

.field protected fDTDGrammar:Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;

.field private fDepth:I

.field protected fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field fElementCount:I

.field protected fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fGrammarDesc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

.field protected fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

.field protected fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

.field protected fPointer:Ljava/lang/StringBuffer;

.field fPointerToken:Ljava/util/Stack;

.field private fRootDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field fSchemaName:Ljava/lang/String;

.field fSchemaPointer:Ljava/lang/String;

.field protected fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

.field private fState:[I

.field fSubResourceIdentified:Z

.field foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field ftempCurrentElement:Ljava/util/Stack;

.field includeElement:Z

.field skip:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v1, "http://apache.org/xml/properties/xpointer-schema"

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    const/16 v1, 0x8

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSawInclude:[Z

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSawFallback:[Z

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fState:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenint:I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->ftempCurrentElement:Ljava/util/Stack;

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fRootDepth:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSawFallback:[Z

    aput-boolean v0, v1, v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSawInclude:[Z

    aput-boolean v0, v1, v0

    const-string v0, "element"

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaName:Ljava/lang/String;

    return-void
.end method

.method private isIdAttribute(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z
    .locals 0

    const-string p0, "ID_ATTRIBUTE"

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "ID"

    invoke-interface {p1, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz p1, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;-><init>()V

    const-string v0, "http://www.w3.org/TR/xinclude"

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->ftempCurrentElement:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public checkIntegerToken(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenint:I

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->hasMoreToken()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    return v2

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSubResourceIdentified:Z

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->addQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    :cond_2
    return v1
.end method

.method public checkStringToken(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z
    .locals 7

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v4

    invoke-interface {p2, v3, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    invoke-direct {p0, p2, v4, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->isIdAttribute(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->hasMoreToken()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    return v1

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSubResourceIdentified:Z

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->ftempCurrentElement:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->empty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->ftempCurrentElement:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->ftempCurrentElement:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextToken()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenint:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    :goto_0
    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-object p0
.end method

.method public getTokens()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    const-string v2, "/"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getXPointerSchemaPointer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    return-object p0
.end method

.method public getXpointerSchemaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaName:Ljava/lang/String;

    return-object p0
.end method

.method public hasMoreToken()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public isRootDocument()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubResourceIndentified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSubResourceIdentified:Z

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public reportFatalError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    const-string v2, "http://www.w3.org/TR/xinclude"

    const/4 v5, 0x2

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenint:I

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fElementCount:I

    .line 7
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentToken:I

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    .line 9
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSubResourceIdentified:Z

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    .line 14
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDepth:I

    .line 15
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fRootDepth:I

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fPointerToken:Ljava/util/Stack;

    .line 17
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenint:I

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenString:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->foundElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 21
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    .line 22
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->skip:Z

    .line 23
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSubResourceIdentified:Z

    :try_start_0
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 24
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :goto_0
    :try_start_1
    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 26
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 27
    :catch_1
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :goto_1
    :try_start_2
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 28
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 29
    :catch_2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    .line 30
    :goto_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    .line 31
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .line 32
    :catch_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 35
    :try_start_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :cond_0
    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setParent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fGrammarPool:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;

    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    :cond_2
    return-void
.end method

.method public setXPointerSchemaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaName:Ljava/lang/String;

    return-void
.end method

.method public setXPointerSchemaPointer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fSchemaPointer:Ljava/lang/String;

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->getTokens()V

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->getNextToken()Z

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fCurrentTokenType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->checkIntegerToken(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->checkStringToken(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->hasMoreToken()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->getNextToken()Z

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->elemCount:I

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_4
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;->includeElement:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method
