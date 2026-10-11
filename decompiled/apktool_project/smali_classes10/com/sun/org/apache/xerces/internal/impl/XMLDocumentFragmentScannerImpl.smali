.class public Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentScanner;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.implements Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;
.implements Lcom/sun/xml/internal/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$FragmentContentDriver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;,
        Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_COALESCE:Z = false

.field private static final DEBUG_DISPATCHER:Z = false

.field protected static final DEBUG_NEXT:Z = false

.field private static final DEBUG_SCANNER_STATE:Z = false

.field static final DEBUG_SKIP_ALGORITHM:Z = false

.field protected static final DEBUG_START_END_ELEMENT:Z = false

.field static final ELEMENT_ARRAY_LENGTH:S = 0xc8s

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field static final MAX_DEPTH_LIMIT:S = 0x5s

.field static final MAX_POINTER_AT_A_DEPTH:S = 0x4s

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_ATTRIBUTE:I = 0x1d

.field protected static final SCANNER_STATE_ATTRIBUTE_VALUE:I = 0x1e

.field protected static final SCANNER_STATE_BUILT_IN_REFS:I = 0x29

.field protected static final SCANNER_STATE_CDATA:I = 0x23

.field protected static final SCANNER_STATE_CHARACTER_DATA:I = 0x25

.field protected static final SCANNER_STATE_CHAR_REFERENCE:I = 0x28

.field protected static final SCANNER_STATE_COMMENT:I = 0x1b

.field protected static final SCANNER_STATE_CONTENT:I = 0x16

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x18

.field protected static final SCANNER_STATE_END_ELEMENT_TAG:I = 0x27

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x21

.field protected static final SCANNER_STATE_PI:I = 0x17

.field protected static final SCANNER_STATE_REFERENCE:I = 0x1c

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x1a

.field protected static final SCANNER_STATE_START_ELEMENT_TAG:I = 0x26

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x15

.field protected static final SCANNER_STATE_TERMINATED:I = 0x22

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x24

.field protected static final SCANNER_STATE_XML_DECL:I = 0x19

.field protected static final cdata:[C

.field protected static final endTag:[C

.field protected static final xmlDecl:[C


# instance fields
.field protected dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

.field protected fAdd:Z

.field protected fAddDefaultAttr:Z

.field protected fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

.field protected fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field protected fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

.field protected fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fCurrentEntityName:Ljava/lang/String;

.field protected fDeclaredEncoding:Ljava/lang/String;

.field protected fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field protected fDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

.field fElementArray:[Ljava/lang/String;

.field protected fElementAttributeLimit:I

.field fElementPointer:S

.field protected fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field protected fElementRawname:Ljava/lang/String;

.field protected fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fElementStack2:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;

.field protected fEmptyElement:Z

.field protected fEntityStack:[I

.field protected fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

.field protected fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsCoalesce:Z

.field fLastPointerLocation:S

.field protected fLastSectionWasCData:Z

.field protected fLastSectionWasCharacterData:Z

.field protected fLastSectionWasEntityReference:Z

.field protected fMarkupDepth:I

.field protected fNotifyBuiltInRefs:Z

.field protected fPIData:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fPITarget:Ljava/lang/String;

.field fPointerInfo:[[S

.field protected fReadingAttributes:Z

.field protected fReplaceEntityReferences:Z

.field protected fReportCdataEvent:Z

.field protected fScanToEnd:Z

.field protected fScannerLastState:I

.field protected fScannerState:I

.field protected fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field protected fShouldSkip:Z

.field private final fSingleChar:[C

.field protected fSkip:Z

.field protected fStandalone:Z

.field protected fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field protected fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;

.field protected fSupportExternalEntities:Z

.field private fTempAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field protected fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field protected fUsebuffer:Z

.field protected fVersion:Ljava/lang/String;

.field protected foundBuiltInRefs:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    const-string v1, "report-cdata-event"

    const-string v2, "http://xml.org/sax/features/namespaces"

    const-string v3, "http://xml.org/sax/features/validation"

    const-string v4, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    const-string v2, "http://apache.org/xml/properties/internal/entity-manager"

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    filled-new-array {v4, v4, v4}, [Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->cdata:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->xmlDecl:[C

    new-array v0, v5, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->endTag:[C

    return-void

    :array_0
    .array-data 2
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x3cs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack2;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPIData:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->createContentDriver()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScanToEnd:Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/16 v2, 0xc8

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/4 v2, 0x5

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-void
.end method

.method private handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p3, p2, v1, v1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    invoke-virtual {p1, p3, v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public static pr(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/String;)V
    .locals 4

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->storePointerForADepth(S)S

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short p1, p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->resetPointer(SS)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/4 v0, 0x0

    aput-object v0, p1, p0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    :cond_1
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    add-int/2addr p1, v3

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    :cond_2
    return-void
.end method

.method public canStore(SS)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object p0, p0, p1

    aget-short p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createContentDriver()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$FragmentContentDriver;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->endEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const-string p2, "MarkupEntityMismatch"

    invoke-virtual {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fScanningAttribute:Z

    if-nez p2, :cond_1

    const-string p2, "[xml]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0, v1, v2}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    return-object p0
.end method

.method public getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public getDriverName(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)Ljava/lang/String;
    .locals 0

    const-string p0, "null"

    return-object p0
.end method

.method public getElementPointer(SS)S
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object p0, p0, p1

    aget-short p0, p0, p2

    return p0
.end method

.method public getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerLastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->getLastPoppedElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPIData()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    return-object p0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

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

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getScannerStateName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "??? ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "SCANNER_STATE_END_ELEMENT_TAG"

    return-object p0

    :pswitch_2
    const-string p0, "SCANNER_STATE_START_ELEMENT_TAG"

    return-object p0

    :pswitch_3
    const-string p0, "SCANNER_STATE_CHARACTER_DATA"

    return-object p0

    :pswitch_4
    const-string p0, "SCANNER_STATE_TEXT_DECL"

    return-object p0

    :pswitch_5
    const-string p0, "SCANNER_STATE_CDATA"

    return-object p0

    :pswitch_6
    const-string p0, "SCANNER_STATE_TERMINATED"

    return-object p0

    :pswitch_7
    const-string p0, "SCANNER_STATE_END_OF_INPUT"

    return-object p0

    :pswitch_8
    const-string p0, "SCANNER_STATE_ATTRIBUTE_VALUE"

    return-object p0

    :pswitch_9
    const-string p0, "SCANNER_STATE_ATTRIBUTE"

    return-object p0

    :pswitch_a
    const-string p0, "SCANNER_STATE_REFERENCE"

    return-object p0

    :pswitch_b
    const-string p0, "SCANNER_STATE_COMMENT"

    return-object p0

    :pswitch_c
    const-string p0, "SCANNER_STATE_ROOT_ELEMENT"

    return-object p0

    :pswitch_d
    const-string p0, "SCANNER_STATE_DOCTYPE"

    return-object p0

    :pswitch_e
    const-string p0, "SCANNER_STATE_PI"

    return-object p0

    :pswitch_f
    const-string p0, "SCANNER_STATE_CONTENT"

    return-object p0

    :pswitch_10
    const-string p0, "SCANNER_STATE_START_OF_MARKUP"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getString()Lcom/sun/org/apache/xerces/internal/xni/XMLString;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->initialCacheCount:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->attributeValueCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->attributeValueCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->attributeValueCache:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandAlone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    return p0
.end method

.method public next()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->refresh(I)V

    return-void
.end method

.method public refresh(I)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->refresh()V

    .line 4
    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v0, 0x25

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    .line 6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 v0, 0x0

    iput v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    :cond_1
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    const-string v0, "javax.xml.stream.isNamespaceAware"

    .line 31
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 33
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 35
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 36
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 37
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 38
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 39
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 40
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    const-string v2, "javax.xml.stream.isReplacingEntityReferences"

    .line 41
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    const-string v2, "javax.xml.stream.isSupportingExternalEntities"

    .line 43
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    const-string v2, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    .line 45
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    :cond_0
    const-string v2, "javax.xml.stream.isCoalescing"

    .line 47
    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    .line 49
    :cond_1
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz p1, :cond_4

    goto :goto_1

    .line 50
    :cond_4
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    :goto_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 51
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    .line 52
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "report-cdata-event"

    .line 2
    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "http://apache.org/xml/properties/security-manager"

    .line 5
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6
    :catch_1
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->getElementAttrLimit()I

    move-result v2

    goto :goto_2

    :cond_0
    move v2, v3

    :goto_2
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementAttributeLimit:I

    :try_start_2
    const-string v2, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    .line 8
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 9
    :catch_2
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :goto_3
    :try_start_3
    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 10
    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    instance-of v2, p1, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    goto :goto_4

    :cond_1
    move-object p1, v1

    :goto_4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 12
    :catch_3
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    .line 13
    :goto_5
    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 14
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 15
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 16
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 17
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 18
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 19
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 20
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 21
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 22
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    .line 23
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    .line 24
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 25
    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    const/16 p1, 0x16

    .line 26
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 27
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 28
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    .line 29
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    return-void
.end method

.method public resetPointer(SS)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aput-short p1, p0, p2

    return-void
.end method

.method public scanAttribute(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "EqRequiredInAttribute"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getString()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    move-object v2, p0

    move-object v3, v0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanAttributeValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;IZ)V

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "AttributeNotUnique"

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, v3, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setValue(ILjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    invoke-interface {p1, v3, v9}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->setSpecified(IZ)V

    return-void
.end method

.method public scanCDATASection(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const-string v0, "]]>"

    invoke-virtual {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->isInvalidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanSurrogates(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "InvalidCharInCDSect"

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    :cond_2
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p0, :cond_3

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    :cond_3
    return v0
.end method

.method public scanCharReference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanCharReferenceValue(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)I

    move-result v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v1, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->removeAllItems()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempAugmentations:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    const-string v2, "CHAR_REF_PROBABLE_WS"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public scanComment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanComment(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return-void
.end method

.method public scanContent(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanContent(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iput v1, v2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    const/16 v2, 0xd

    const/4 v3, -0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    int-to-char p0, v0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    :goto_0
    move v0, v3

    goto :goto_2

    :cond_0
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CDEndInContent"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public scanDocument(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPIData()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :goto_0
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->next()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    if-nez p1, :cond_0

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public scanEndElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ETagRequired"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ETagUnterminated"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    const-string v2, "ElementEntityMismatch"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_4
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p0
.end method

.method public scanEntityReference(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "NameRequiredInReference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SemicolonRequiredInReference"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {v1, v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ReferenceToUnparsedEntity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    const/16 v2, 0x29

    if-ne v0, v1, :cond_3

    const/16 v0, 0x26

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3c

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_5

    const/16 v0, 0x3e

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    const/16 v0, 0x22

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {p1, v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {p1, v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-eqz p1, :cond_a

    :cond_9
    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    if-eqz p1, :cond_b

    :cond_a
    const/16 p1, 0x1c

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void

    :cond_b
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {p1, v0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "EntityNotDeclared"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_c
    const-string p1, "EntityNotDeclared"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    return-void
.end method

.method public scanPIData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return-void
.end method

.method public scanStartElement()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->getNext()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->push()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->matchElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->seekCloseOfStartTag()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fStringBufferIndex:I

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    :cond_6
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanAttribute(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v3

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementAttributeLimit:I

    if-le v3, v5, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "ElementAttributeLimit"

    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->seekCloseOfStartTag()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    :cond_8
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v3, v4

    aget v2, v2, v3

    if-ge v0, v2, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0, v2, v3}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_c
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_d
    :goto_2
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    return p0
.end method

.method public scanXMLDeclOrTextDecl(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    iput-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v5, "yes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setStandalone(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v1, v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3, v4, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setVersion(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public seekCloseOfStartTag()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    return v2

    :cond_0
    const/16 v4, 0x2f

    const-string v5, "ElementUnterminated"

    if-ne v1, v4, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public final setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scanner/notify-builtin-refs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    :cond_0
    return-void
.end method

.method public setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "$fragment$"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "internal/entity-manager"

    const/16 v3, 0x21

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const/16 v4, 0x17

    if-ne v1, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    return-void

    :cond_0
    const/16 v4, 0x18

    if-ne v1, v4, :cond_2

    const-string v1, "internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of p1, p2, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    :cond_3
    return-void
.end method

.method public final setScannerState(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    return-void
.end method

.method public skipElement()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    add-int/2addr v0, v2

    aget-object v0, v3, v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    add-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    return v2

    .line 6
    :cond_1
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->skipElement(S)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public skipElement(S)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v0, v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 9
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    return v2

    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_3

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    return v2

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_0

    .line 15
    :cond_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    return v2
.end method

.method public skipFromTheBuffer(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    int-to-char v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementRawname:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public skipQElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getChar(I)I

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v2, v0, v1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/sun/xml/internal/stream/XMLEntityStorage;

    invoke-virtual {p4, p1}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fScanningAttribute:Z

    if-nez p4, :cond_2

    const-string p4, "[xml]"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    const/4 p4, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method public storePointerForADepth(S)S
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->canStore(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object p0, p0, v0

    aput-short p1, p0, v1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
