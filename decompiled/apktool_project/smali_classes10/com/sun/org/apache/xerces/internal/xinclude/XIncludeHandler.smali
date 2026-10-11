.class public Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentFilter;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;,
        Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field public static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final CURRENT_BASE_URI:Ljava/lang/String; = "currentBaseURI"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field public static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final INITIAL_SIZE:I = 0x8

.field public static final NEW_NS_ATTR_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STATE_EXPECT_FALLBACK:I = 0x3

.field private static final STATE_IGNORE:I = 0x2

.field private static final STATE_NORMAL_PROCESSING:I = 0x1

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_HREF:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_PARSE:Ljava/lang/String;

.field public static final XINCLUDE_BASE:Ljava/lang/String;

.field public static final XINCLUDE_DEFAULT_CONFIGURATION:Ljava/lang/String; = "com.sun.org.apache.xerces.internal.parsers.XIncludeParserConfiguration"

.field public static final XINCLUDE_FALLBACK:Ljava/lang/String;

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field public static final XINCLUDE_INCLUDE:Ljava/lang/String;

.field public static final XINCLUDE_INCLUDED:Ljava/lang/String;

.field public static final XINCLUDE_LANG:Ljava/lang/String;

.field public static final XINCLUDE_NS_URI:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_TEXT:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_XML:Ljava/lang/String;

.field public static final XML_BASE_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public static final XML_LANG_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public static final XPOINTER:Ljava/lang/String; = "xpointer"

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# instance fields
.field protected fBaseURI:Ljava/util/Stack;

.field protected fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

.field protected fBufferSize:I

.field protected fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

.field protected fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

.field protected fCurrentLanguage:Ljava/lang/String;

.field protected fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

.field protected fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

.field private fDepth:I

.field protected fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

.field protected fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field protected fExpandedSystemID:Ljava/util/Stack;

.field private fFixupBaseURIs:Z

.field private fFixupLanguage:Z

.field private fInDTD:Z

.field private fIsXML11:Z

.field protected fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

.field protected fLanguageStack:Ljava/util/Stack;

.field protected fLiteralSystemID:Ljava/util/Stack;

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

.field private fNeedCopyFeatures:Z

.field private fNotations:Ljava/util/ArrayList;

.field protected fParentRelativeURI:Ljava/lang/String;

.field protected fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

.field private fResultDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field protected fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field private fSeenRootElement:Z

.field private fSendUEAndNotationEvents:Z

.field protected fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

.field private fState:[I

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fUnparsedEntities:Ljava/util/ArrayList;

.field protected fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

.field protected fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

.field protected fXIncludeChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

.field protected fXIncludeMessageFormatter:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

.field protected fXPointerChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

.field protected fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    const-string v0, "include"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    const-string v0, "fallback"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    const-string v0, "href"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    const-string v0, "parse"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    const-string v0, "accept"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    const-string v0, "accept-language"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    const-string v0, "[included]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    const-string v0, "base"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const-string v0, "lang"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v5}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const-string v0, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string v1, "http://apache.org/xml/features/xinclude/fixup-language"

    const-string v2, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v0, "http://apache.org/xml/properties/security-manager"

    const-string v1, "http://apache.org/xml/properties/input-buffer-size"

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    filled-new-array {v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    sput-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    new-array v1, v0, [C

    sput-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    new-array v0, v0, [C

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gHexChs:[C

    const/16 v0, 0xa

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-char v4, v1, v2

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aput-boolean v3, v5, v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    sget-object v6, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v7, v6, v7

    aput-char v7, v5, v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    const/16 v1, 0x8

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    new-array v3, v1, [Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v5, v3, v5

    aput-boolean v5, v2, v5

    aput v4, v1, v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method private checkMultipleRootElements()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultipleRootElements"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void
.end method

.method private checkWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V
    .locals 3

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "ContentIllegalAtTopLevel"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;)V
    .locals 1

    .line 1
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-interface {p3, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p4, p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 1

    .line 5
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-interface {p3, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 8
    :try_start_0
    invoke-interface {p4, p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "Accept"

    invoke-virtual {p0, p1, p4}, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "Accept-Language"

    invoke-virtual {p0, p1, p5}, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private escapeHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p0, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x7e

    const/16 v5, 0x25

    if-ge v2, p0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v4, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v3, :cond_1

    return-object p1

    :cond_1
    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    int-to-char v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v2, p0, :cond_e

    move v6, v2

    :goto_3
    if-ge v6, p0, :cond_a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v3, :cond_4

    if-le v7, v4, :cond_8

    :cond_4
    const/16 v8, 0xa0

    if-lt v7, v8, :cond_5

    const v8, 0xd7ff

    if-le v7, v8, :cond_8

    :cond_5
    const v8, 0xf900

    if-lt v7, v8, :cond_6

    const v8, 0xfdcf

    if-le v7, v8, :cond_8

    :cond_6
    const v8, 0xfdf0

    if-lt v7, v8, :cond_7

    const v8, 0xffef

    if-gt v7, v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v6, v6, 0x1

    if-ge v6, p0, :cond_9

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_9

    int-to-char v7, v7

    int-to-char v8, v8

    invoke-static {v7, v8}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result v7

    const/high16 v8, 0xf0000

    if-ge v7, v8, :cond_9

    const v8, 0xffff

    and-int/2addr v7, v8

    const v8, 0xfffd

    if-gt v7, v8, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    return-object p1

    :cond_a
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, p0

    :goto_5
    if-ge v1, v2, :cond_d

    aget-byte v3, p0, v1

    if-gez v3, :cond_b

    add-int/lit16 v3, v3, 0x100

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_b
    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_c
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    move p0, v2

    goto :goto_7

    :catch_0
    return-object p1

    :cond_e
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq v1, p0, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    return-object p1
.end method

.method private getIncludeParentBaseURI()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getBaseURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIncludeParentDepth()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getIncludeParentLanguage()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResultDepth()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    return p0
.end method

.method private getRootElementProcessed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSeenRootElement:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isValidInHTTPHeader(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7e

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz p0, :cond_0

    const-string v0, "http://www.w3.org/TR/xinclude"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method private scopeOfBaseURI(I)I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->elementAt(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private scopeOfLanguage(I)I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->elementAt(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz p1, :cond_0

    const-string v0, "http://www.w3.org/TR/xinclude"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    :cond_0
    return-void
.end method

.method private setRootElementProcessed(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSeenRootElement:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void
.end method


# virtual methods
.method public addNotation(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUnparsedEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iput-object p4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAndSendNotation(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p0, v1, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->isDuplicate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NonDuplicateNotation"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkAndSendNotation(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkAndSendUnparsedEntity(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_2

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    invoke-interface {p0, v1, v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->isDuplicate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NonDuplicateUnparsedEntity"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkNotation(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkAndSendNotation(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$Notation;)V

    :cond_0
    return-void
.end method

.method public checkUnparsedEntity(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler$UnparsedEntity;)V

    :cond_0
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public copyFeatures(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://apache.org/xml/features/"

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;)V

    .line 3
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/"

    .line 4
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;)V

    return-void
.end method

.method public copyFeatures(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://apache.org/xml/features/"

    .line 6
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    .line 7
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/"

    .line 8
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLLangAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->handleIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "NoFallback"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isFallbackElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "IncludeChild"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "FallbackChild"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_a
    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr p1, v1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result p1

    if-lez p1, :cond_b

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->peek()I

    move-result p2

    if-ne p1, p2, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_b
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    return-void
.end method

.method public endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endAttlist(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endConditional(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endDTD(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fInDTD:Z

    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSeenRootElement:Z

    if-nez v0, :cond_0

    const-string v0, "RootElementRequired"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NoFallback"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isFallbackElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr p1, v1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->peek()I

    move-result p2

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->peek()I

    move-result p2

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->restoreLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    :cond_4
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    return-void
.end method

.method public endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getBaseURI(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDTDHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-object p0
.end method

.method public getDTDSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->scopeOfLanguage(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

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

    sget-object p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRelativeBaseURI()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getRelativeURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_8

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz v0, :cond_9

    const/16 p0, 0x3f

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    if-eqz v1, :cond_a

    const/16 p0, 0x23

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v1
.end method

.method public getRelativeURI(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "file"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/URI;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSawFallback(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-boolean p0, p0, p1

    return p0
.end method

.method public getSawInclude(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-boolean p0, p0, p1

    return p0
.end method

.method public getState()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    aget p0, v0, p0

    return p0
.end method

.method public getState(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    aget p0, p0, p1

    return p0
.end method

.method public handleFallbackElement()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const-string v0, "FallbackParent"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MultipleFallbacks"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    :cond_3
    return-void
.end method

.method public handleIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "HrefFragmentIdentifierIllegal"

    const-string v8, "TextResourceError"

    iget v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v7, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "IncludeChild"

    invoke-virtual {v7, v3, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    return v9

    :cond_1
    iget v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v7, v2, v9}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "xpointer"

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    :cond_2
    move-object v12, v3

    if-nez v2, :cond_3

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v13, "XMLResourceError"

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v3, :cond_6

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v11, :cond_4

    const-string v3, "XpointerMissing"

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v14

    :goto_0
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    const-string v3, "XPointerStreamability"

    invoke-virtual {v1, v0, v3, v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :cond_6
    :goto_1
    :try_start_0
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v3, v2, v9}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-direct {v7, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->escapeHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "HrefSyntacticallyInvalid"

    if-eq v2, v3, :cond_8

    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v2, v3, v9}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object v6, v3

    goto :goto_4

    :cond_8
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_3
    move-object v6, v2

    :goto_4
    if-eqz v4, :cond_a

    invoke-direct {v7, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "AcceptMalformed"

    invoke-virtual {v7, v1, v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v16, v14

    goto :goto_5

    :cond_a
    move-object/from16 v16, v4

    :goto_5
    if-eqz v5, :cond_b

    invoke-direct {v7, v5}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "AcceptLanguageMalformed"

    invoke-virtual {v7, v1, v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v17, v14

    goto :goto_6

    :cond_b
    move-object/from16 v17, v5

    :goto_6
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz v1, :cond_e

    :try_start_2
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v15}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v14, v6, v2, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;->resolveEntity(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v1

    if-eqz v1, :cond_d

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/HTTPInputSource;

    if-nez v2, :cond_d

    if-nez v16, :cond_c

    if-eqz v17, :cond_d

    :cond_c
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object v10, v6

    move-object/from16 v6, v17

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_d
    move-object v10, v6

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v10, v6

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :cond_e
    move-object v10, v6

    move-object v1, v14

    :goto_8
    if-nez v1, :cond_11

    if-nez v16, :cond_10

    if-eqz v17, :cond_f

    goto :goto_9

    :cond_f
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v14, v10, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v2, 0x0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v1

    :cond_11
    :goto_a
    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v11, :cond_12

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPointerChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_13

    :cond_12
    if-nez v11, :cond_1a

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-nez v0, :cond_1a

    :cond_13
    if-eqz v11, :cond_14

    const-string v0, "com.sun.org.apache.xerces.internal.parsers.XPointerParserConfiguration"

    goto :goto_b

    :cond_14
    const-string v0, "com.sun.org.apache.xerces.internal.parsers.XIncludeParserConfiguration"

    :goto_b
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/xinclude/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/sun/org/apache/xerces/internal/xinclude/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eqz v2, :cond_15

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    if-eqz v0, :cond_16

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz v0, :cond_17

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v3, v4, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-interface {v0, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v3, Ljava/lang/Integer;

    iget v4, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    const-string v4, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-interface {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-boolean v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    const-string v5, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-interface {v0, v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-boolean v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    const-string v6, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-interface {v0, v6, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-eqz v11, :cond_19

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/xpointer-handler"

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v8, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-direct {v4, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, v5, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, v6, v4}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v3, :cond_18

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;

    invoke-virtual {v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setParent(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPointerChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    goto :goto_c

    :cond_19
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setParent(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    :cond_1a
    :goto_c
    if-eqz v11, :cond_1b

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPointerChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    :try_start_4
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    invoke-interface {v0, v11}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;->parseXPointer(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :cond_1b
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    :goto_d
    iget-boolean v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    if-eqz v0, :cond_1c

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-virtual {v7, v0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    :cond_1c
    iput-boolean v15, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    :try_start_5
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->pushScope()V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v0, :cond_1d

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    :cond_1d
    if-eqz v11, :cond_1f

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXPtrProcessor:Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xpointer/XPointerProcessor;->isXPointerResolved()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_e

    :cond_1e
    move-object v0, v14

    :goto_e
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;

    const-string v2, "XPointerResolutionUnsuccessful"

    invoke-virtual {v1, v0, v2, v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->popScope()V

    return v15

    :cond_1f
    :goto_f
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->popScope()V

    goto/16 :goto_19

    :catchall_0
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    :try_start_6
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v1, :cond_20

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    :cond_20
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-virtual {v7, v13, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->popScope()V

    return v15

    :catch_6
    :try_start_7
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v0, :cond_21

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    :cond_21
    const-string v0, "XMLParseError"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    :goto_10
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->popScope()V

    throw v0

    :cond_22
    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    :try_start_8
    iget-boolean v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fIsXML11:Z

    if-nez v0, :cond_24

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-nez v0, :cond_23

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    iget v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;I)V

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    goto :goto_11

    :cond_23
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    :goto_11
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    goto :goto_13

    :cond_24
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-nez v0, :cond_25

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XInclude11TextReader;

    iget v2, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v0, v1, v7, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XInclude11TextReader;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;I)V

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    goto :goto_12

    :cond_25
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    :goto_12
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/CharConversionException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_13
    move-object v1, v0

    :try_start_9
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->parse()V
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/CharConversionException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :catch_8
    move-exception v0

    move-object v14, v1

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v14, v1

    goto :goto_16

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :catch_a
    move-exception v0

    :goto_14
    const/4 v1, 0x2

    :try_start_b
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-virtual {v7, v8, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v14, :cond_26

    :try_start_c
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    :goto_15
    return v15

    :catch_c
    move-object v1, v14

    :catch_d
    :try_start_d
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v14, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v1, :cond_29

    :try_start_e
    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_19

    :catch_e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :catchall_2
    move-exception v0

    move-object v14, v1

    goto :goto_17

    :catch_f
    move-exception v0

    :goto_16
    :try_start_f
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v14, :cond_29

    :try_start_10
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :goto_17
    if-eqz v14, :cond_27

    :try_start_11
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_18

    :catch_11
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v15

    :cond_27
    :goto_18
    throw v0

    :cond_28
    const-string v0, "InvalidParseValue"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    :goto_19
    return v9
.end method

.method public hasXIncludeNamespace(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne p0, v1, :cond_0

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

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->ignoredCharacters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public isFallbackElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z
    .locals 2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRootDocument()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopLevelIncludedItem()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaInclude()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaFallback()Z

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

.method public isTopLevelIncludedItemViaFallback()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result p0

    return p0
.end method

.method public isTopLevelIncludedItemViaInclude()Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    return-object p0
.end method

.method public modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Z)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    move-object p1, p0

    .line 4
    :cond_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public processAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->sameBaseURIAsIncludeParent()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setSpecified(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->sameLanguageAsIncludeParent()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setSpecified(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;->getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_4

    if-eqz p1, :cond_4

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v2, v3, :cond_6

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p1, v5, v6}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iput-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iput-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v3, v4

    :cond_5
    invoke-interface {p1, v5, v6, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setSpecified(IZ)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-interface {p1, v5, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v2, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object v3, v4

    :cond_8
    invoke-interface {p1, v5, v6, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setSpecified(IZ)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3, v2, v4}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_9
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_d

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    if-ne v2, v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    :cond_a
    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-ne v2, v4, :cond_b

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v2, v4, :cond_c

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return-object p1
.end method

.method public processXMLBaseAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v1, "base"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->saveBaseURI()V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public processXMLLangAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v1, "lang"

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reportFatalError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;S)V

    return-void
.end method

.method public reportResourceError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;S)V

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "http://apache.org/xml/features/validation/schema"

    const-string v3, "http://apache.org/xml/properties/security-manager"

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v7, "http://apache.org/xml/features/xinclude/fixup-language"

    const-string v8, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const-string v9, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const-string v10, "http://apache.org/xml/properties/input-buffer-size"

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    const/4 v12, 0x0

    iput v12, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-direct {v13}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getResultDepth()I

    move-result v13

    :goto_0
    iput v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    iput-object v11, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    iput-boolean v12, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fIsXML11:Z

    iput-boolean v12, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fInDTD:Z

    iput-boolean v12, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSeenRootElement:Z

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v13}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v13}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->clear()V

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->clear()V

    move v13, v12

    :goto_1
    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    array-length v15, v14

    const/4 v11, 0x1

    if-ge v13, v15, :cond_1

    aput v11, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_2
    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v15, v14

    if-ge v13, v15, :cond_2

    aput-boolean v12, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move v13, v12

    :goto_3
    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v15, v14

    if-ge v13, v15, :cond_3

    aput-boolean v12, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    :try_start_0
    const-string v13, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {v1, v13}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_4

    return-void

    :catch_0
    :cond_4
    iput-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    :try_start_1
    invoke-interface {v1, v9}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v14, :cond_5

    invoke-interface {v14, v9, v13}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    :try_start_2
    invoke-interface {v1, v8}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v13, :cond_6

    invoke-interface {v13, v8, v9}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    iput-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    :cond_6
    :goto_4
    :try_start_3
    invoke-interface {v1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v9, :cond_7

    invoke-interface {v9, v7, v8}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    iput-boolean v11, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    :cond_7
    :goto_5
    :try_start_4
    invoke-interface {v1, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    if-eqz v7, :cond_8

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_8

    invoke-interface {v8, v6, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    :cond_8
    :goto_6
    :try_start_5
    invoke-interface {v1, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    if-eqz v6, :cond_9

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v7, :cond_9

    invoke-interface {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    :cond_9
    :goto_7
    :try_start_6
    invoke-interface {v1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz v5, :cond_a

    iput-object v5, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_a

    invoke-interface {v6, v4, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :catch_6
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    :cond_a
    :goto_8
    :try_start_7
    invoke-interface {v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz v4, :cond_b

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v5, :cond_b

    invoke-interface {v5, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_9

    :catch_7
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    :cond_b
    :goto_9
    :try_start_8
    invoke-interface {v1, v10}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_d

    invoke-interface {v4, v10, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_a

    :catch_8
    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    :cond_d
    :goto_a
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_e

    iget v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_e
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_f

    iget v4, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_f
    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;-><init>()V

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->copyFeatures(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;)V

    :try_start_9
    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    invoke-virtual {v3, v2, v12}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    invoke-virtual {v0, v1, v11}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_10
    return-void
.end method

.method public restoreBaseURI()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->pop()I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public restoreLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->pop()I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public sameBaseURIAsIncludeParent()Z
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sameLanguageAsIncludeParent()Z
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public saveBaseURI()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURIScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->push(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageScope:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->push(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public searchForRecursiveIncludes(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Z
    .locals 4

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ExpandedSystemId"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Z

    move-result p0

    return p0
.end method

.method public setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSettings:Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setParent(Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setErrorReporter(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fEntityResolver:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    const-string v0, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fChildConfig:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude10TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_9
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fXInclude11TextReader:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;

    if-eqz p1, :cond_a

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_a
    return-void
.end method

.method public setSawFallback(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Z

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setSawInclude(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Z

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setState(I)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fState:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    aput p1, v0, p0

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startConditional(SLcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fInDTD:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startDTD(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RecursiveInclude"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p3, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    if-nez v0, :cond_1

    const-string v0, "IncompatibleNamespaceContext"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeNamespaceSupport;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->saveBaseURI()V

    if-nez p4, :cond_2

    new-instance p4, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {p4}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    :cond_2
    const-string v0, "currentBaseURI"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentBaseURI:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p4, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processXMLLangAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->handleIncludeElement(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->setState(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isFallbackElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "IncludeChild"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDepth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "FallbackChild"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->modifyAugmentations(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->processAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "ENTITY_SKIPPED"

    invoke-interface {p4, p2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "UnexpandedEntityReferenceIllegal"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDTDHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fIsXML11:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    return-void
.end method
