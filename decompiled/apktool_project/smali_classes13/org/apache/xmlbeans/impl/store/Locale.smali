.class public final Lorg/apache/xmlbeans/impl/store/Locale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;
.implements Lorg/apache/xmlbeans/impl/common/XmlLocale;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;,
        Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;,
        Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;,
        Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;,
        Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;,
        Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;,
        Lorg/apache/xmlbeans/impl/store/Locale$Ref;,
        Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;,
        Lorg/apache/xmlbeans/impl/store/Locale$nthCache;,
        Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;,
        Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;,
        Lorg/apache/xmlbeans/impl/store/Locale$DocProps;,
        Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;,
        Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ATTR:I = 0x3

.field static final COMMENT:I = 0x4

.field static final ELEM:I = 0x2

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field static final PROCINST:I = 0x5

.field static final ROOT:I = 0x1

.field static final TEXT:I = 0x0

.field static final _openFragUri:Ljava/lang/String; = "http://www.openuri.org/fragment"

.field static final _openuriFragment:Ljavax/xml/namespace/QName;

.field static final _xml1998Uri:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final _xmlFragment:Ljavax/xml/namespace/QName;

.field static final _xmlnsUri:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field static final _xsi:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field static final _xsiLoc:Ljavax/xml/namespace/QName;

.field static final _xsiNil:Ljavax/xml/namespace/QName;

.field static final _xsiNoLoc:Ljavax/xml/namespace/QName;

.field static final _xsiType:Ljavax/xml/namespace/QName;

.field private static final tl_scrubBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field _cchSrc:I

.field _changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

.field private _charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

.field _curPool:Lorg/apache/xmlbeans/impl/store/Cur;

.field _curPoolCount:I

.field _domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

.field _domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

.field private _entryCount:I

.field _locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

.field _noSync:Z

.field _nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

.field _nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

.field _numTempFramesLeft:I

.field _offSrc:I

.field _ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field _posTemp:I

.field _qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

.field private _refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/apache/xmlbeans/impl/store/Locale$Ref;",
            ">;"
        }
    .end annotation
.end field

.field _registered:Lorg/apache/xmlbeans/impl/store/Cur;

.field _saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

.field _schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field _tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

.field _validateOnSet:Z

.field _versionAll:J

.field _versionSansText:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "nil"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v3, "xsi"

    invoke-direct {v0, v2, v1, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "type"

    invoke-direct {v0, v2, v1, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "schemaLocation"

    invoke-direct {v0, v2, v1, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiLoc:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "noNamespaceSchemaLocation"

    invoke-direct {v0, v2, v1, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNoLoc:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "fragment"

    const-string v2, "frag"

    const-string v3, "http://www.openuri.org/fragment"

    invoke-direct {v0, v3, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_openuriFragment:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "xml-fragment"

    invoke-direct {v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xmlFragment:Ljavax/xml/namespace/QName;

    new-instance v0, Lcom/sunia/HTREnginev2/d1j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d1j;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isUnsynchronized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isValidateOnSet()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_validateOnSet:Z

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getSaaj()Lorg/apache/xmlbeans/impl/store/Saaj;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->setCallback(Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$newSaxHandler$6(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600()Lorg/apache/logging/log4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->LOG:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method private static addNamespace(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "<no namespace>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static applyNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/Cur;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static applyWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :goto_1
    if-ge v0, v1, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge v2, v1, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3

    :cond_7
    :goto_4
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_5
    return-object p0
.end method

.method public static associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getDocumentSourceName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setSourceName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getDocumentType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXsiTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p2

    :cond_4
    :goto_1
    if-nez v0, :cond_8

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasAttrs()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, p2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-eqz v1, :cond_8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->isValidSubstitution(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lorg/apache/xmlbeans/XmlException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Element "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a valid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " document or a valid substitution."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeType(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move-object v0, p2

    :cond_a
    if-nez v0, :cond_b

    move-object v0, p1

    :cond_b
    if-nez v0, :cond_c

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->NO_TYPE:Lorg/apache/xmlbeans/SchemaType;

    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    if-eqz p1, :cond_e

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->verifyDocumentType(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;)V

    goto :goto_4

    :cond_d
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->verifyAttributeType(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public static synthetic b(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$parseToXmlObject$4(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static beginsWithXml(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_3

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x6c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x4c

    if-ne p0, v1, :cond_3

    :cond_2
    move v2, v0

    :cond_3
    return v2
.end method

.method public static synthetic c()Ljava/lang/ref/SoftReference;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$static$7()Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method private static checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is not an XmlBeans node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearThreadLocals()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static synthetic d(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$parseToXmlObject$3(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method private doAttributes(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doNamespaces(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const-string v3, "xmlns"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v2, v1, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic e(Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$newInstance$0(Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$parseToXmlObject$1(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$parseToXmlObject$2(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static getAllNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/Cur;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public static getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v1
.end method

.method public static getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getUseSameLocale()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;-><init>(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/apache/xmlbeans/XmlTokenSource;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/apache/xmlbeans/XmlTokenSource;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale;

    :goto_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    if-ne v1, p0, :cond_7

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getSaaj()Lorg/apache/xmlbeans/impl/store/Saaj;

    move-result-object v1

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same saaj"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget-boolean p0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_validateOnSet:Z

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isValidateOnSet()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same validate on set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same schema type loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source locale not understood: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->isLoadUseDefaultResolver()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->getGlobalEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    :cond_1
    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->getLoadUseXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/SAXHelper;->newXMLReader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    const-string v1, "Problem creating XMLReader"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_0
    new-instance p0, Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;-><init>(Lorg/xml/sax/XMLReader;)V

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_4
    return-object p0
.end method

.method public static getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;-><init>()V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->init(I)V

    return-object v1
.end method

.method public static getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;[CII)I
    .locals 1

    .line 11
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v0, 0x0

    if-gtz p3, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0, v0, p3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return p3
.end method

.method public static getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isComment()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isProcinst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v2, v2, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/xmlbeans/XmlOptions;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->lambda$parseToXmlObject$5(Lorg/apache/xmlbeans/XmlOptions;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static isFragment(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/store/Locale;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    move v2, v3

    goto :goto_3

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    :cond_4
    :goto_2
    move v2, v0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-nez v2, :cond_5

    if-eq v1, v3, :cond_6

    :cond_5
    move v0, v3

    :cond_6
    return v0
.end method

.method public static isFragmentQName(Ljavax/xml/namespace/QName;)Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_openuriFragment:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xmlFragment:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static isWhiteSpace(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isXmlns(Ljavax/xml/namespace/QName;)Z
    .locals 4

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static synthetic lambda$newInstance$0(Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p2

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->getDocumentType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    :cond_0
    move-object p0, p1

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    :goto_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method private static synthetic lambda$newSaxHandler$6(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;

    invoke-direct {v0, p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method private static synthetic lambda$parseToXmlObject$1(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object p0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p3, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private static synthetic lambda$parseToXmlObject$2(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p3, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->loadXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static synthetic lambda$parseToXmlObject$3(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p3, v1, p0}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method private static synthetic lambda$parseToXmlObject$4(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p3, v1, p0}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method private static synthetic lambda$parseToXmlObject$5(Lorg/apache/xmlbeans/XmlOptions;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    invoke-direct {v0, p3, p0}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p3, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0
.end method

.method private static synthetic lambda$static$7()Ljava/lang/ref/SoftReference;
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 2

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->lineNumber(III)V

    :cond_0
    return-void
.end method

.method private load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method private loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isLoadLineNumbers()Z

    move-result v0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move-object v4, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled xml event type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doNamespaces(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doAttributes(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->text(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v4

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :cond_0
    move v6, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    :pswitch_5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->comment(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_1

    :pswitch_6
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v7

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v8

    invoke-virtual {v1, v2, v7, v8}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->text([CII)V

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_1

    :pswitch_7
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_1

    :pswitch_8
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->endElement()V

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_1

    :pswitch_9
    add-int/lit8 v5, v5, 0x1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->startElement(Ljavax/xml/namespace/QName;)V

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doAttributes(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doNamespaces(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :cond_2
    :goto_1
    :pswitch_a
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    if-gtz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setStandalone(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private static namespacesSame(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDomImplementation(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/c0;

    invoke-direct {v0, p2, p1}, Lorg/apache/xmlbeans/impl/store/c0;-><init>(Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newSaxHandler(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/a0;

    invoke-direct {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/a0;-><init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-static {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlSaxHandler;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static nodeToCursor(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public static nodeToXmlObject(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static nodeToXmlStream(Lorg/w3c/dom/Node;)Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/impl/store/f0;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/f0;-><init>(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/xmlbeans/impl/store/b0;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/b0;-><init>(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/z;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/xmlbeans/impl/store/z;-><init>(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/d0;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/xmlbeans/impl/store/d0;-><init>(Ljavax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/e0;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/e0;-><init>(Lorg/apache/xmlbeans/XmlOptions;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-static {p0, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private pollQueue()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->scrub(Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->getResultAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static streamToNode(Ljavax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->nodeFromStream(Ljavax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private static syncWrap(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/xmlbeans/SchemaTypeLoader;",
            "Lorg/apache/xmlbeans/XmlOptions;",
            "Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-interface {p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;->parse(Lorg/apache/xmlbeans/impl/store/Locale;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;->parse(Lorg/apache/xmlbeans/impl/store/Locale;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public static toChild(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;I)Z
    .locals 3

    if-ltz p2, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4

    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4
.end method

.method public static toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static toLastChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastChild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toPrevSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return v1
.end method

.method public static toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    if-ltz v0, :cond_5

    if-ne v0, v3, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_3
    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    .line 10
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return v1
.end method

.method public static toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Xobj;)Z
    .locals 5

    .line 12
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 13
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    .line 16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result p1

    if-ltz p1, :cond_4

    if-ne p1, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-lez p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    .line 20
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static toPrevNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormalAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toPrevSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    move v1, v3

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return v1
.end method

.method private static verifyAttributeType(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "The document is not a "

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " got "

    const-string v5, "expected "

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, ": attribute namespace mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->namespacesSame(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ": attribute local name mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string p1, ": attribute element mismatch "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "got "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ": no attributes"

    goto :goto_1

    :cond_5
    const-string p1, ": multiple attributes"

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void

    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    throw p1
.end method

.method private static verifyDocumentType(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "The document is not a "

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " got "

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, ": document element namespace mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuilder;Ljavax/xml/namespace/QName;)V

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->namespacesSame(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ": document element local name mismatch expected "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string p1, ": document element mismatch got "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ": no document element"

    goto :goto_1

    :cond_5
    const-string p1, ": multiple document elements"

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void

    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    throw p1
.end method

.method public static xmlnsPrefix(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public count(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {p3, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_2
    return v0
.end method

.method public createCdataNode()Lorg/apache/xmlbeans/impl/store/CdataNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CdataNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/CdataNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/SaajCdataNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/SaajCdataNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    :goto_0
    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSoapElement(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/TextNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/TextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/SaajTextNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/SaajTextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    :goto_0
    return-object v0
.end method

.method public createXmlns(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "xmlns"

    const-string v3, "http://www.w3.org/2000/xmlns/"

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p1, v2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public domLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v0

    if-gt v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->length(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->length(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p1

    :goto_0
    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :cond_2
    return p1
.end method

.method public embedCurs()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x2

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enter()V
    .locals 4

    .line 3
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/store/Cur;

    .line 5
    array-length v3, v0

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    .line 6
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    .line 8
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pollQueue()V

    .line 10
    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    :cond_1
    return-void
.end method

.method public enter(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    if-eq p1, p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :cond_0
    return-void
.end method

.method public entered()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v0, v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public exit()V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v0, v1

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public exit(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    if-eq p1, p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_0
    return-void
.end method

.method public findDomNthChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x28

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, -0x28

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    const-wide/16 v4, -0x1

    if-gt v0, v1, :cond_4

    if-nez v3, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2, v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2, v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    :goto_2
    if-ne v0, v1, :cond_6

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :cond_6
    return-object p1
.end method

.method public findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->distance(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->distance(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->fetch(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->fetch(Lorg/apache/xmlbeans/impl/store/Xobj;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    :goto_0
    if-ne v0, v1, :cond_2

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    :cond_2
    return-object p1
.end method

.method public getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    return-object p0
.end method

.method public getCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "DOM Level 3 Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSaajData(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object p0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public importSoapElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLjavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$400(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$400(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    :cond_1
    return-void
.end method

.method public load(Ljava/io/InputStream;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/Reader;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->comment(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_2

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->text(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected node"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->startElement(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->endElement()V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public makeQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public makeQNameNoCheck(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 3

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public noSync()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    return p0
.end method

.method public notifyChange()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->notifyChange()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->notifyChange()V

    return-void
.end method

.method public final refQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/apache/xmlbeans/impl/store/Locale$Ref;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method public registerForChange(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    if-nez v0, :cond_0

    invoke-interface {p1, p1}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    :cond_1
    return-void
.end method

.method public setSaajData(Lorg/w3c/dom/Node;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V

    return-void
.end method

.method public sync()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    return-object p0
.end method

.method public tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v2, v1

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 4
    aget-object p0, v1, v2

    .line 5
    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz p0, :cond_0

    .line 6
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    .line 7
    :cond_0
    aput-object v0, v1, v2

    .line 8
    iput v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    .line 9
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public version()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    return-wide v0
.end method

.method public weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$Ref;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    return-object p0
.end method
